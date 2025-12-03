@interface UIImage
- (id)applyDarkEffect;
- (id)applyExtraLightEffect;
- (id)applyLightEffect;
- (id)applyTintEffectWithColor:(id)color;
@end

@implementation UIImage

- (id)applyLightEffect
{
  v3 = [UIColor colorWithWhite:1.0 alpha:0.300000012];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:30.0 maskImage:1.79999995];

  return v4;
}

- (id)applyExtraLightEffect
{
  v3 = [UIColor colorWithWhite:0.970000029 alpha:0.819999993];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.79999995];

  return v4;
}

- (id)applyDarkEffect
{
  v3 = [UIColor colorWithWhite:0.109999999 alpha:0.730000019];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.79999995];

  return v4;
}

- (id)applyTintEffectWithColor:(id)color
{
  colorCopy = color;
  if (CGColorGetNumberOfComponents([colorCopy CGColor]) == 2)
  {
    v11 = 0.0;
    v5 = colorCopy;
    if (![colorCopy getWhite:&v11 alpha:0])
    {
      goto LABEL_7;
    }

    v6 = [UIColor colorWithWhite:v11 alpha:0.600000024];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v5 = colorCopy;
    if (![colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:0])
    {
      goto LABEL_7;
    }

    v6 = [UIColor colorWithRed:v11 green:v10 blue:v9 alpha:0.600000024];
  }

  v5 = v6;

LABEL_7:
  v7 = [(UIImage *)self applyBlurWithRadius:v5 tintColor:0 saturationDeltaFactor:10.0 maskImage:-1.0];

  return v7;
}

@end