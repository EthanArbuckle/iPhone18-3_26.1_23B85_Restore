@interface UIImage(deepColor)
- (id)jfx_deepColorSafeImageDrawnInRect:()deepColor;
- (id)jfx_imageWithoutDeepColor;
- (id)jfx_renderedImageWithUpOrientation;
@end

@implementation UIImage(deepColor)

- (id)jfx_renderedImageWithUpOrientation
{
  if ([a1 imageOrientation])
  {
    v2 = *MEMORY[0x277CBF3A0];
    v3 = *(MEMORY[0x277CBF3A0] + 8);
    [a1 size];
    v6 = [a1 jfx_deepColorSafeImageDrawnInRect:{v2, v3, v4, v5}];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)jfx_deepColorSafeImageDrawnInRect:()deepColor
{
  [a1 scale];

  v11 = v10;
  return jfx_drawInRect(a1, 1, a2, a3, a4, a5, v11);
}

- (id)jfx_imageWithoutDeepColor
{
  if (a1 && (ColorSpace = CGImageGetColorSpace([a1 CGImage])) != 0 && CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    [a1 size];
    v6 = v5;
    v8 = v7;
    [a1 scale];
    v10 = v9;
    v11 = jfx_drawInRect(a1, 0, v3, v4, v6, v8, v10);
  }

  else
  {
    v11 = a1;
  }

  return v11;
}

@end