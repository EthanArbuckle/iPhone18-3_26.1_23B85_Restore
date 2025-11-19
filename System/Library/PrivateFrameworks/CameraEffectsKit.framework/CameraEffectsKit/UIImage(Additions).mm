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
  v25 = [a1 CGImage];
  v31.origin.x = a6;
  v31.origin.y = a7;
  v31.size.width = a8;
  v31.size.height = a9;
  if (CGRectIsEmpty(v31))
  {
    Width = CGImageGetWidth(v25);
    Height = CGImageGetHeight(v25);

    compositeCGImageRefInRect(v25, a11, a2, a3, a4, a5, 0.0, 0.0, Width, Height, a12);
  }

  else
  {
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    v28 = CGImageCreateWithImageInRect(v25, v32);
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
  [a1 size];
  v10 = v9;
  [a1 size];
  v13 = !CGRectCouldContainRect(0.0, 0.0, v7, v8, 0.0, 0.0, v10, v11);
  result = v13;
  v13 = v13 || a4 == 0;
  if (!v13)
  {
    result = [a1 imageOrientation];
    if (result)
    {
      [a1 size];
      *a3 = v14;
      [a1 size];
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
    [a1 size];
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
  if ([a1 adjustFitInSize:&v11 normalizeOrientation:?])
  {
    v9 = [a1 drawImageIntoSize:a5 maintainAspectRatio:a6 normalizeOrientation:{v11, v12}];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (uint64_t)drawImageIntoSize:()Additions maintainAspectRatio:normalizeOrientation:
{
  [a1 scaledSized:? maintainAspectRatio:?];

  return [a1 extendedRangeSafeDrawInRect:{0.0, 0.0, v2, v3}];
}

- (uint64_t)scaledSizeEqualOrSmallerThanSize:()Additions maintainAspectRatio:normalizeOrientation:
{
  v8 = a2;
  v9 = a3;
  if ([a1 adjustFitInSize:&v8 normalizeOrientation:?])
  {
    return [a1 scaledSized:a5 maintainAspectRatio:{v8, v9}];
  }

  else
  {
    return [a1 size];
  }
}

- (id)scaledImageWithMaxDimension:()Additions
{
  v3 = a1;
  [v3 size];
  v5 = v4;
  [v3 size];
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
    [v3 size];
    v9 = v8;
    [v3 size];
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
    v17 = [v3 extendedRangeSafeDrawInRect:0 opaque:0.0 scale:{0.0, v14, v15, v16}];

    v3 = v17;
  }

  return v3;
}

- (uint64_t)cropped16X9Image
{
  [a1 size];
  v3 = v2;
  [a1 size];
  v5 = v3 / v4;
  [a1 size];
  v8 = v7;
  if (v5 <= 1.7778)
  {
    [a1 size];
    v10 = v11 * 0.0625 * 9.0;
  }

  else
  {
    v8 = v6 / 9.0 * 16.0;
    [a1 size];
    v10 = v9;
  }

  [a1 size];
  v12 = 0.0;
  v13 = 0.0;
  if (v14 > v8)
  {
    [a1 size];
    v13 = (v15 - v8) * 0.5;
  }

  [a1 size];
  if (v16 > v10)
  {
    [a1 size];
    v12 = (v17 - v10) * 0.5;
  }

  return [a1 cropImage:{v13, v12, v8, v10}];
}

- (id)cropImage:()Additions
{
  v9 = a1;
  [v9 size];
  if (a4 != v11 || a5 != v10)
  {
    [v9 size];
    v14 = v13;
    v16 = v15;
    [v9 scale];
    *&v18 = v17;
    v19 = [v9 extendedRangeSafeDrawInRect:1 opaque:-a2 scale:{-a3, v14, v16, v18}];

    v9 = v19;
  }

  return v9;
}

+ (void)transformForImageOrientation:()Additions andSize:
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a2 = *MEMORY[0x277CBF2C0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 != 4)
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

    if (a1 != 6)
    {
      if (a1 == 7)
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

  switch(a1)
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
    v8 = [MEMORY[0x277D75568] defaultFormat];
    v9 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:v8 format:{0.0, 0.0, a1, a2}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__UIImage_Additions__imageWithColor_andSize___block_invoke;
    v12[3] = &unk_278D7A8D8;
    v14 = 0;
    v15 = 0;
    v13 = v7;
    v16 = a1;
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
  [a1 scale];

  *&v11 = v10;
  return [a1 extendedRangeSafeDrawInRect:0 opaque:a2 scale:{a3, a4, a5, v11}];
}

- (id)extendedRangeSafeDrawInRect:()Additions opaque:scale:
{
  if (NSClassFromString(&cfstr_Uigraphicsimag.isa))
  {
    v15 = [MEMORY[0x277D75568] defaultFormat];
    [v15 setOpaque:a8];
    [v15 setScale:a6];
    if ([v15 preferredRange] == 1 && objc_msgSend(a1, "_isSRGB"))
    {
      [v15 setPreferredRange:2];
    }

    v16 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:v15 format:{a2, a3, a4, a5}];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__UIImage_Additions__extendedRangeSafeDrawInRect_opaque_scale___block_invoke;
    v19[3] = &unk_278D7A8D8;
    v19[4] = a1;
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
    [a1 drawInRect:{a2, a3, a4, a5}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v17;
}

- (BOOL)_isSRGB
{
  ColorSpace = CGImageGetColorSpace([a1 CGImage]);
  if (_isSRGB_onceToken != -1)
  {
    [UIImage(Additions) _isSRGB];
  }

  return CFEqual(ColorSpace, _isSRGB_s_sRGB) != 0;
}

@end