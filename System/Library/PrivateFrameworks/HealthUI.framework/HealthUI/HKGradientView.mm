@interface HKGradientView
+ (id)hk_verticalWaveformMaskGradientWithInsetLocation:(double)location;
- (HKGradientView)initWithGradient:(id)gradient;
- (void)_updateGradientLayer;
- (void)maskCorners:(unint64_t)corners radius:(double)radius;
- (void)setGradient:(id)gradient;
@end

@implementation HKGradientView

- (HKGradientView)initWithGradient:(id)gradient
{
  gradientCopy = gradient;
  v9.receiver = self;
  v9.super_class = HKGradientView;
  v6 = [(HKGradientView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, gradient);
    [(HKGradientView *)v7 _updateGradientLayer];
  }

  return v7;
}

- (void)setGradient:(id)gradient
{
  gradientCopy = gradient;
  v6 = gradientCopy;
  if (gradientCopy)
  {
    v7 = gradientCopy;
    gradientCopy = [gradientCopy isEqual:self->_gradient];
    v6 = v7;
    if ((gradientCopy & 1) == 0)
    {
      objc_storeStrong(&self->_gradient, gradient);
      gradientCopy = [(HKGradientView *)self _updateGradientLayer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](gradientCopy, v6);
}

- (void)maskCorners:(unint64_t)corners radius:(double)radius
{
  cornersCopy = corners;
  layer = [(HKGradientView *)self layer];
  [layer setCornerRadius:radius];

  layer2 = [(HKGradientView *)self layer];
  [layer2 setMaskedCorners:cornersCopy & 0xF];
}

- (void)_updateGradientLayer
{
  layer = [(HKGradientView *)self layer];
  gradient = [(HKGradientView *)self gradient];
  colors = [gradient colors];
  v5 = [colors hk_map:&__block_literal_global_41];
  [layer setColors:v5];

  gradient2 = [(HKGradientView *)self gradient];
  locations = [gradient2 locations];
  [layer setLocations:locations];
}

uint64_t __38__HKGradientView__updateGradientLayer__block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

+ (id)hk_verticalWaveformMaskGradientWithInsetLocation:(double)location
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = [HKGradient alloc];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v17[0] = clearColor;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v17[1] = blackColor;
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v17[2] = blackColor2;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v17[3] = clearColor2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v16[0] = &unk_1F43849F0;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:location];
  v16[1] = v10;
  location = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - location];
  v16[2] = location;
  v16[3] = &unk_1F4384A00;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v13 = [(HKGradient *)v4 initWithColors:v9 locations:v12];

  v14 = [[HKGradientView alloc] initWithGradient:v13];

  return v14;
}

@end