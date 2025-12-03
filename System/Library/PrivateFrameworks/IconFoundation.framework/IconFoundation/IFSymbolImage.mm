@interface IFSymbolImage
- (CGImage)CGImage;
- (CGRect)alignmentRect;
- (CGRect)contentBounds;
- (CGSize)size;
- (IFSymbolImage)initWithNamedVectorGlyph:(id)glyph tintColor:(id)color;
- (void)dealloc;
@end

@implementation IFSymbolImage

- (IFSymbolImage)initWithNamedVectorGlyph:(id)glyph tintColor:(id)color
{
  glyphCopy = glyph;
  colorCopy = color;
  v30.receiver = self;
  v30.super_class = IFSymbolImage;
  _init = [(IFImage *)&v30 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 16, glyph);
    [glyphCopy scale];
    v10[7] = v11;
    if (colorCopy)
    {
      v12 = [glyphCopy imageWithTintColor:{objc_msgSend(colorCopy, "cgColor")}];
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      image = [glyphCopy image];
      if (!image)
      {
LABEL_8:
        [glyphCopy pointSize];
        v10[8] = v16;
        v10[9] = [glyphCopy glyphSize];
        v10[10] = [glyphCopy glyphWeight];
        [glyphCopy referencePointSize];
        v10[11] = v17;
        [glyphCopy fontMatchingScaleFactor];
        v10[12] = v18;
        [glyphCopy baselineOffset];
        v10[13] = v19;
        [glyphCopy baselineOffset];
        v10[14] = v20;
        [glyphCopy alignmentRect];
        v10[19] = v21;
        v10[20] = v22;
        v10[21] = v23;
        v10[22] = v24;
        [glyphCopy contentBounds];
        v10[23] = v25;
        v10[24] = v26;
        v10[25] = v27;
        v10[26] = v28;
        *(v10 + 40) = [glyphCopy isFlippable];
        v10[15] = [glyphCopy layoutDirection];
        goto LABEL_9;
      }

      v12 = image;
      CFRetain(image);
    }

    v10[6] = v12;
    v14 = CGImageGetWidth(v12) / *(v10 + 7);
    v15 = CGImageGetHeight(v12) / *(v10 + 7);
    *(v10 + 17) = v14;
    *(v10 + 18) = v15;
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (void)dealloc
{
  internalCGImage = self->_internalCGImage;
  if (internalCGImage)
  {
    CFRelease(internalCGImage);
  }

  v4.receiver = self;
  v4.super_class = IFSymbolImage;
  [(IFSymbolImage *)&v4 dealloc];
}

- (CGImage)CGImage
{
  v3 = [IFImage escapingCGImageWithCGImage:self->_internalCGImage];
  internalCGImage = self->_internalCGImage;
  if (v3 != internalCGImage)
  {
    CFAutorelease(internalCGImage);
    CFRetain(v3);
    self->_internalCGImage = v3;
  }

  return v3;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_internalSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)alignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end