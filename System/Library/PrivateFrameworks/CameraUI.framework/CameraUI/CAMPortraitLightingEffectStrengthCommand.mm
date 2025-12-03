@interface CAMPortraitLightingEffectStrengthCommand
- (CAMPortraitLightingEffectStrengthCommand)initWithCoder:(id)coder;
- (CAMPortraitLightingEffectStrengthCommand)initWithEffectStrength:(double)strength;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPortraitLightingEffectStrengthCommand

- (CAMPortraitLightingEffectStrengthCommand)initWithEffectStrength:(double)strength
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->_effectStrength = strength;
  }

  return result;
}

- (CAMPortraitLightingEffectStrengthCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMPortraitLightingEffectStrengthCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"CAMPortraitCommandLightingEffectStrength"];
    v5->_effectStrength = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"CAMPortraitCommandLightingEffectStrength" forKey:{self->_effectStrength, v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CAMPortraitLightingEffectStrengthCommand;
  result = [(CAMCaptureCommand *)&v5 copyWithZone:zone];
  *(result + 3) = *&self->_effectStrength;
  return result;
}

- (void)executeWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDeviceInput = [contextCopy currentVideoDeviceInput];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  [(CAMPortraitLightingEffectStrengthCommand *)self effectStrength];
  v8 = v7;
  [currentVideoDeviceFormat minPortraitLightingEffectStrength];
  v10 = v9;
  [currentVideoDeviceFormat maxPortraitLightingEffectStrength];
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
  [currentVideoDeviceInput setPortraitLightingEffectStrength:v12];
}

@end