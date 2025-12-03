@interface UIImage(deepColor)
- (id)jfx_deepColorSafeImageDrawnInRect:()deepColor;
- (id)jfx_imageWithoutDeepColor;
- (id)jfx_renderedImageWithUpOrientation;
@end

@implementation UIImage(deepColor)

- (id)jfx_renderedImageWithUpOrientation
{
  if ([self imageOrientation])
  {
    v2 = *MEMORY[0x277CBF3A0];
    v3 = *(MEMORY[0x277CBF3A0] + 8);
    [self size];
    selfCopy = [self jfx_deepColorSafeImageDrawnInRect:{v2, v3, v4, v5}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)jfx_deepColorSafeImageDrawnInRect:()deepColor
{
  [self scale];

  v11 = v10;
  return jfx_drawInRect(self, 1, a2, a3, a4, a5, v11);
}

- (id)jfx_imageWithoutDeepColor
{
  if (self && (ColorSpace = CGImageGetColorSpace([self CGImage])) != 0 && CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    [self size];
    v6 = v5;
    v8 = v7;
    [self scale];
    v10 = v9;
    selfCopy = jfx_drawInRect(self, 0, v3, v4, v6, v8, v10);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end