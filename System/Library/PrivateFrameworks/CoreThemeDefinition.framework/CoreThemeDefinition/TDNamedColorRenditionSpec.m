@interface TDNamedColorRenditionSpec
- (void)setColorPropertiesFromCGColor:(CGColor *)a3;
@end

@implementation TDNamedColorRenditionSpec

- (void)setColorPropertiesFromCGColor:(CGColor *)a3
{
  if (TDColorSpaceGetExtendedRangeSRGB___once != -1)
  {
    TDColorSpaceGetExtendedRangeSRGB_cold_1();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(TDColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace, kCGRenderingIntentRelativeColorimetric, a3, 0);
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"colorSpaceID"];
  [(TDNamedColorRenditionSpec *)self setColorSpaceID:4];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"colorSpaceID"];
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
  v8 = 1.0;
  if (NumberOfComponents > 1)
  {
    if (NumberOfComponents == 2)
    {
      v9 = *Components;
      v8 = Components[1];
      goto LABEL_13;
    }

    if (NumberOfComponents == 3)
    {
      v11 = *Components;
      v10 = Components[1];
      v9 = Components[2];
      goto LABEL_14;
    }

LABEL_10:
    v11 = *Components;
    v10 = Components[1];
    v9 = Components[2];
    v8 = Components[3];
    goto LABEL_14;
  }

  if (!NumberOfComponents)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    goto LABEL_14;
  }

  if (NumberOfComponents != 1)
  {
    goto LABEL_10;
  }

  v9 = *Components;
LABEL_13:
  v10 = v9;
  v11 = v9;
LABEL_14:
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"red"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"green"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"blue"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"alpha"];
  [(TDNamedColorRenditionSpec *)self setRed:v11];
  [(TDNamedColorRenditionSpec *)self setGreen:v10];
  [(TDNamedColorRenditionSpec *)self setBlue:v9];
  [(TDNamedColorRenditionSpec *)self setAlpha:v8];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"red"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"green"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"blue"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"alpha"];

  CGColorRelease(CopyByMatchingToColorSpace);
}

@end