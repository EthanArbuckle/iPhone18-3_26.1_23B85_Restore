@interface CAMPortraitLightingEffectStrengthCommand
- (CAMPortraitLightingEffectStrengthCommand)initWithCoder:(id)a3;
- (CAMPortraitLightingEffectStrengthCommand)initWithEffectStrength:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPortraitLightingEffectStrengthCommand

- (CAMPortraitLightingEffectStrengthCommand)initWithEffectStrength:(double)a3
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_effectStrength = a3;
  }

  return result;
}

- (CAMPortraitLightingEffectStrengthCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPortraitLightingEffectStrengthCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"CAMPortraitCommandLightingEffectStrength"];
    v5->_effectStrength = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"CAMPortraitCommandLightingEffectStrength" forKey:{self->_effectStrength, v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  result = [(CAMCaptureCommand *)&v5 copyWithZone:a3];
  *(result + 3) = *&self->_effectStrength;
  return result;
}

- (void)executeWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDeviceInput];
  v6 = [v4 currentVideoDeviceFormat];

  [(CAMPortraitLightingEffectStrengthCommand *)self effectStrength];
  v8 = v7;
  [v6 minPortraitLightingEffectStrength];
  v10 = v9;
  [v6 maxPortraitLightingEffectStrength];
  v12 = v11;
  v13 = v10;
  if (v8 > v10)
  {
    v13 = v8;
  }

  if (v13 <= v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14 != v8)
  {
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = v8;
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Clamping portrait effect strength: %.2f->%.2f", &v16, 0x16u);
    }
  }

  *&v12 = v14;
  [v5 setPortraitLightingEffectStrength:v12];
}

@end