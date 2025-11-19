@interface FBSDeviceEmulationDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation FBSDeviceEmulationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableEmulation"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"FBSEnableDeviceEmulation" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceIsD22ChecksToPass"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"FBSForceIsD22ChecksToPass" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedDisplayHeight"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"FBSEmulatedDisplayHeight" toDefaultValue:&unk_1F15AE940 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedDisplayWidth"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"FBSEmulatedDisplayWidth" toDefaultValue:&unk_1F15AE940 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedDisplayCornerRadius"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"FBSEmulatedDisplayCornerRadius" toDefaultValue:&unk_1F15AE958 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"scalingStyle"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"FBSDeviceEmulationScalingStyle" toDefaultValue:&unk_1F15AE940 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customScaleFactorX"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"FBSCustomXScaleFactor" toDefaultValue:&unk_1F15AE940 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customScaleFactorY"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"FBSCustomYScaleFactor" toDefaultValue:&unk_1F15AE940 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customTranslationOffsetX"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"FBSCustomXTranslationOffset" toDefaultValue:&unk_1F15AE940 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customTranslationOffsetY"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"FBSCustomYTranslationOffset" toDefaultValue:&unk_1F15AE940 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bezelImageName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"FBSBezelImageName" toDefaultValue:0 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"maskImageName"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"FBSMaskImageName" toDefaultValue:0 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageContainingBundleIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"FBSImageContainingBundleIdentifier" toDefaultValue:0 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"rootLayerBackgroundColorString"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"FBSDeviceEmulationBackgroundColorString" toDefaultValue:0 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedHomeButtonType"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"FBSEmulatedHomeButtonType" toDefaultValue:&unk_1F15AE970 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedDeviceClass"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"FBSEmulatedDeviceClass" toDefaultValue:&unk_1F15AE958 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"emulatedArtworkSubtype"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"FBSEmulatedArtworkSubtype" toDefaultValue:&unk_1F15AE958 options:1];
}

@end