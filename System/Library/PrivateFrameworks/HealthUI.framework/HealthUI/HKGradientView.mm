@interface HKGradientView
+ (id)hk_verticalWaveformMaskGradientWithInsetLocation:(double)a3;
- (HKGradientView)initWithGradient:(id)a3;
- (void)_updateGradientLayer;
- (void)maskCorners:(unint64_t)a3 radius:(double)a4;
- (void)setGradient:(id)a3;
@end

@implementation HKGradientView

- (HKGradientView)initWithGradient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKGradientView;
  v6 = [(HKGradientView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, a3);
    [(HKGradientView *)v7 _updateGradientLayer];
  }

  return v7;
}

- (void)setGradient:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:self->_gradient];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_gradient, a3);
      v5 = [(HKGradientView *)self _updateGradientLayer];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)maskCorners:(unint64_t)a3 radius:(double)a4
{
  v5 = a3;
  v7 = [(HKGradientView *)self layer];
  [v7 setCornerRadius:a4];

  v8 = [(HKGradientView *)self layer];
  [v8 setMaskedCorners:v5 & 0xF];
}

- (void)_updateGradientLayer
{
  v8 = [(HKGradientView *)self layer];
  v3 = [(HKGradientView *)self gradient];
  v4 = [v3 colors];
  v5 = [v4 hk_map:&__block_literal_global_41];
  [v8 setColors:v5];

  v6 = [(HKGradientView *)self gradient];
  v7 = [v6 locations];
  [v8 setLocations:v7];
}

uint64_t __38__HKGradientView__updateGradientLayer__block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

+ (id)hk_verticalWaveformMaskGradientWithInsetLocation:(double)a3
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = [HKGradient alloc];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  v17[0] = v5;
  v6 = [MEMORY[0x1E69DC888] blackColor];
  v17[1] = v6;
  v7 = [MEMORY[0x1E69DC888] blackColor];
  v17[2] = v7;
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v17[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v16[0] = &unk_1F43849F0;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v16[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - a3];
  v16[2] = v11;
  v16[3] = &unk_1F4384A00;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v13 = [(HKGradient *)v4 initWithColors:v9 locations:v12];

  v14 = [[HKGradientView alloc] initWithGradient:v13];

  return v14;
}

@end