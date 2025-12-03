@interface UIImage(Additions)
+ (id)imageWithColor:()Additions andSize:;
+ (void)transformForImageOrientation:()Additions andSize:;
- (BOOL)_isSRGB;
- (double)scaledSized:()Additions maintainAspectRatio:;
- (id)cropImage:()Additions;
- (id)extendedRangeSafeDrawInRect:()Additions opaque:scale:;
- (id)scaledImageEqualOrSmallerThanSize:()Additions maintainAspectRatio:normalizeOrientation:;
- (id)scaledImageWithMaxDimension:()Additions;
- (uint64_t)adjustFitInSize:()Additions normalizeOrientation:;
- (uint64_t)cropped16X9Image;
- (uint64_t)drawImageIntoSize:()Additions maintainAspectRatio:normalizeOrientation:;
- (uint64_t)extendedRangeSafeDrawInRect:()Additions;
- (uint64_t)scaledSizeEqualOrSmallerThanSize:()Additions maintainAspectRatio:normalizeOrientation:;
- (void)drawInRect:()Additions fromRect:blendMode:alpha:;
@end

@implementation UIImage(Additions)

- (void)drawInRect:()Additions fromRect:blendMode:alpha:
{
  cGImage = [self CGImage];
  v31.origin.x = a6;
  v31.origin.y = a7;
  v31.size.width = a8;
  v31.size.height = a9;
  if (CGRectIsEmpty(v31))
  {
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);

    compositeCGImageRefInRect(cGImage, a11, a2, a3, a4, a5, 0.0, 0.0, Width, Height, a12);
  }

  else
  {
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    v28 = CGImageCreateWithImageInRect(cGImage, v32);
    compositeCGImageRefInRect(v28, a11, a2, a3, a4, a5, a6, a7, a8, a9, a12);
    if (v28)
    {

      CFRelease(v28);
    }
  }
}

- (uint64_t)adjustFitInSize:()Additions normalizeOrientation:
{
  v7 = *a3;
  v8 = a3[1];
  [self size];
  v10 = v9;
  [self size];
  v13 = !CGRectCouldContainRect(0.0, 0.0, v7, v8, 0.0, 0.0, v10, v11);
  result = v13;
  v13 = v13 || a4 == 0;
  if (!v13)
  {
    result = [self imageOrientation];
    if (result)
    {
      [self size];
      *a3 = v14;
      [self size];
      *(a3 + 1) = v15;
      return 1;
    }
  }

  return result;
}

- (double)scaledSized:()Additions maintainAspectRatio:
{
  if (a5)
  {
    [self size];
    v9 = v7 / v8;
    if (v9 < 1.0)
    {
      v10 = a3 * v9;
      return floorf(v10);
    }
  }

  return a2;
}

- (id)scaledImageEqualOrSmallerThanSize:()Additions maintainAspectRatio:normalizeOrientation:
{
  v11 = a2;
  v12 = a3;
  if ([self adjustFitInSize:&v11 normalizeOrientation:?])
  {
    selfCopy = [self drawImageIntoSize:a5 maintainAspectRatio:a6 normalizeOrientation:{v11, v12}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)drawImageIntoSize:()Additions maintainAspectRatio:normalizeOrientation:
{
  [self scaledSized:? maintainAspectRatio:?];

  return [self extendedRangeSafeDrawInRect:{0.0, 0.0, v2, v3}];
}

- (uint64_t)scaledSizeEqualOrSmallerThanSize:()Additions maintainAspectRatio:normalizeOrientation:
{
  v8 = a2;
  v9 = a3;
  if ([self adjustFitInSize:&v8 normalizeOrientation:?])
  {
    return [self scaledSized:a5 maintainAspectRatio:{v8, v9}];
  }

  else
  {
    return [self size];
  }
}

- (id)scaledImageWithMaxDimension:()Additions
{
  selfCopy = self;
  [selfCopy size];
  v5 = v4;
  [selfCopy size];
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7 > a2)
  {
    [selfCopy size];
    v9 = v8;
    [selfCopy size];
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v20.width = v9;
    v23.size.width = a2;
    v23.size.height = a2;
    v21 = AVMakeRectWithAspectRatioInsideRect(v20, v23);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v14 = CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v15 = CGRectGetHeight(v22);
    LODWORD(v16) = 1.0;
    v17 = [selfCopy extendedRangeSafeDrawInRect:0 opaque:0.0 scale:{0.0, v14, v15, v16}];

    selfCopy = v17;
  }

  return selfCopy;
}

- (uint64_t)cropped16X9Image
{
  [self size];
  v3 = v2;
  [self size];
  v5 = v3 / v4;
  [self size];
  v8 = v7;
  if (v5 <= 1.7778)
  {
    [self size];
    v10 = v11 * 0.0625 * 9.0;
  }

  else
  {
    v8 = v6 / 9.0 * 16.0;
    [self size];
    v10 = v9;
  }

  [self size];
  v12 = 0.0;
  v13 = 0.0;
  if (v14 > v8)
  {
    [self size];
    v13 = (v15 - v8) * 0.5;
  }

  [self size];
  if (v16 > v10)
  {
    [self size];
    v12 = (v17 - v10) * 0.5;
  }

  return [self cropImage:{v13, v12, v8, v10}];
}

- (id)cropImage:()Additions
{
  selfCopy = self;
  [selfCopy size];
  if (a4 != v11 || a5 != v10)
  {
    [selfCopy size];
    v14 = v13;
    v16 = v15;
    [selfCopy scale];
    *&v18 = v17;
    v19 = [selfCopy extendedRangeSafeDrawInRect:1 opaque:-a2 scale:{-a3, v14, v16, v18}];

    selfCopy = v19;
  }

  return selfCopy;
}

+ (void)transformForImageOrientation:()Additions andSize:
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  if (self > 3)
  {
    if (self <= 5)
    {
      if (self != 4)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0x3FF0000000000000;
        *(a2 + 24) = xmmword_242B5BBC0;
        *(a2 + 40) = a4;
        return;
      }

      *a2 = 0xBFF0000000000000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0x3FF0000000000000;
      *(a2 + 32) = a3;
      goto LABEL_18;
    }

    if (self != 6)
    {
      if (self == 7)
      {
        *a2 = xmmword_242B5B850;
        *(a2 + 16) = 0x3FF0000000000000;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
      }

      return;
    }

    *a2 = xmmword_242B5BBB0;
    *(a2 + 16) = xmmword_242B5BBC0;
    *(a2 + 32) = a4;
LABEL_15:
    *(a2 + 40) = a3;
    return;
  }

  switch(self)
  {
    case 1:
      *a2 = 0xBFF0000000000000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xBFF0000000000000;
      *(a2 + 32) = a3;
      *(a2 + 40) = a4;
      return;
    case 2:
      *a2 = xmmword_242B5B850;
      *(a2 + 16) = xmmword_242B5BBC0;
      *(a2 + 32) = a4;
LABEL_18:
      *(a2 + 40) = 0;
      return;
    case 3:
      *a2 = xmmword_242B5BBB0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0x3FF0000000000000;
      goto LABEL_15;
  }
}

+ (id)imageWithColor:()Additions andSize:
{
  v7 = a5;
  if (NSClassFromString(&cfstr_Uigraphicsimag.isa))
  {
    defaultFormat = [MEMORY[0x277D75568] defaultFormat];
    v9 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:defaultFormat format:{0.0, 0.0, self, a2}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__UIImage_Additions__imageWithColor_andSize___block_invoke;
    v12[3] = &unk_278D7A8D8;
    v14 = 0;
    v15 = 0;
    v13 = v7;
    selfCopy = self;
    v17 = a2;
    v10 = [v9 imageWithActions:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)extendedRangeSafeDrawInRect:()Additions
{
  [self scale];

  *&v11 = v10;
  return [self extendedRangeSafeDrawInRect:0 opaque:a2 scale:{a3, a4, a5, v11}];
}

- (id)extendedRangeSafeDrawInRect:()Additions opaque:scale:
{
  if (NSClassFromString(&cfstr_Uigraphicsimag.isa))
  {
    defaultFormat = [MEMORY[0x277D75568] defaultFormat];
    [defaultFormat setOpaque:a8];
    [defaultFormat setScale:a6];
    if ([defaultFormat preferredRange] == 1 && objc_msgSend(self, "_isSRGB"))
    {
      [defaultFormat setPreferredRange:2];
    }

    v16 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:defaultFormat format:{a2, a3, a4, a5}];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__UIImage_Additions__extendedRangeSafeDrawInRect_opaque_scale___block_invoke;
    v19[3] = &unk_278D7A8D8;
    v19[4] = self;
    *&v19[5] = a2;
    *&v19[6] = a3;
    *&v19[7] = a4;
    *&v19[8] = a5;
    v17 = [v16 imageWithActions:v19];
  }

  else
  {
    if (extendedRangeSafeDrawInRect_opaque_scale__onceToken != -1)
    {
      [UIImage(Additions) extendedRangeSafeDrawInRect:opaque:scale:];
    }

    v21.width = a4;
    v21.height = a5;
    UIGraphicsBeginImageContextWithOptions(v21, a8, a6);
    [self drawInRect:{a2, a3, a4, a5}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v17;
}

- (BOOL)_isSRGB
{
  ColorSpace = CGImageGetColorSpace([self CGImage]);
  if (_isSRGB_onceToken != -1)
  {
    [UIImage(Additions) _isSRGB];
  }

  return CFEqual(ColorSpace, _isSRGB_s_sRGB) != 0;
}

@end