@interface _CUIThemePDFRendition
- (CGImage)createImageFromPDFRenditionWithScale:(double)a3;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIThemePDFRendition

- (void)dealloc
{
  CGPDFDocumentRelease(self->_pdfDocument);
  v3.receiver = self;
  v3.super_class = _CUIThemePDFRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v18.receiver = self;
  v18.super_class = _CUIThemePDFRendition;
  v6 = [(CUIThemeRendition *)&v18 _initWithCSIHeader:a3 version:*&a4];
  v7 = v6;
  if (a3->var6 != 1346651680)
  {
    [_CUIThemePDFRendition _initWithCSIHeader:v6 version:a2];
  }

  v8 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
  v9 = v8 + 180;
  if (*(v8 + 46))
  {
    [_CUIThemePDFRendition _initWithCSIHeader:v7 version:a2];
  }

  v10 = *(v9 + 2);
  v11 = bswap32(v10);
  if (*v9 == 1146569042)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v7 srcData], v9 - objc_msgSend(objc_msgSend(v7, "srcData"), "bytes") + 12, v12);
  if (v13)
  {
    v14 = v13;
    v15 = CGDataProviderCreateWithCFData(v13);
    if (v15)
    {
      v16 = v15;
      v7[27] = CGPDFDocumentCreateWithProvider(v15);
      CGDataProviderRelease(v16);
    }
  }

  return v7;
}

- (CGImage)createImageFromPDFRenditionWithScale:(double)a3
{
  v5 = [(_CUIThemePDFRendition *)self pdfDocument];
  if (!v5)
  {
    return 0;
  }

  Page = CGPDFDocumentGetPage(v5, 1uLL);
  v7 = CGPDFPageRetain(Page);
  Image = v7;
  if (v7)
  {
    BoxRect = CGPDFPageGetBoxRect(v7, kCGPDFCropBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    [(CUIThemeRendition *)self scale:BoxRect.origin.x];
    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    v12 = vcvtad_u64_f64(width * a3 / v11);
    v13 = vcvtad_u64_f64(height * a3 / v11);
    SRGB = _CUIColorSpaceGetSRGB();
    v17 = CUICGBitmapContextCreate(v12, v13, 8uLL, 4 * (v12 & 0x7FFFFFFFFFFFFFFLL), SRGB, 8194, v15, v16);
    if (v17)
    {
      v24 = v17;
      v28.origin.x = 0.0;
      v28.origin.y = 0.0;
      v28.size.width = width;
      v28.size.height = height;
      CGPDFPageGetDrawingTransform(&transform, Image, kCGPDFCropBox, v28, 0, 1);
      CGContextConcatCTM(v24, &transform);
      CGContextScaleCTM(v24, a3, a3);
      CGContextDrawPDFPage(v24, Image);
      CGPDFPageRelease(Image);
      Image = CGBitmapContextCreateImage(v24);
      CGContextRelease(v24);
      return Image;
    }

    _CUILog(4, "%s %d couldn't create bitmapcontext size:[%zu %zu] bpr %zu", v18, v19, v20, v21, v22, v23, "[_CUIThemePDFRendition createImageFromPDFRenditionWithScale:]");
    CGPDFPageRelease(Image);
    return 0;
  }

  return Image;
}

- (id)_initWithCSIHeader:(uint64_t)a1 version:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  return [(NSAssertionHandler *)v4 handleFailureInMethod:a2 object:a1 file:@"_CUIThemePDFRendition.m" lineNumber:43 description:@"CoreUI: [%@ %@] pixel format must be kCSIPixelFormatPDF", v6, NSStringFromSelector(a2)];
}

- (id)_initWithCSIHeader:(uint64_t)a1 version:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  return [(NSAssertionHandler *)v4 handleFailureInMethod:a2 object:a1 file:@"_CUIThemePDFRendition.m" lineNumber:46 description:@"CoreUI:[%@ %@]  data shouldn't be compressed here", v6, NSStringFromSelector(a2)];
}

@end