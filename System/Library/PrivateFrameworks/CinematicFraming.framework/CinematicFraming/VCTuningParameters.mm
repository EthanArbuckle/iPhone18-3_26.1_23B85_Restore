@interface VCTuningParameters
- (VCTuningParameters)init;
- (VCTuningParameters)initWithDictionary:(id)dictionary;
@end

@implementation VCTuningParameters

- (VCTuningParameters)init
{
  v8.receiver = self;
  v8.super_class = VCTuningParameters;
  v2 = [(VCTuningParameters *)&v8 init];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"virtualCameraParameters" ofType:@"plist"];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  if (v4)
  {
    v2 = [(VCTuningParameters *)v2 initWithDictionary:v5];
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VCTuningParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = VCTuningParameters;
  v5 = [(VCTuningParameters *)&v20 init];
  plist = v5->_plist;
  v5->_plist = dictionaryCopy;
  v7 = dictionaryCopy;

  v8 = v5->_plist;
  v21 = 0;
  LODWORD(v9) = 1.0;
  [(NSDictionary *)v8 cmi_floatValueForKey:@"OneShotFramingDuration" defaultValue:&v21 found:v9];
  v5->_oneShotFramingDuration = v10;
  v11 = v5->_plist;
  v21 = 0;
  LODWORD(v12) = 1.0;
  [(NSDictionary *)v11 cmi_floatValueForKey:@"CameraResetDuration" defaultValue:&v21 found:v12];
  v5->_cameraResetDuration = v13;
  v14 = [(NSDictionary *)v5->_plist objectForKeyedSubscript:@"CameraSwitchingMargin"];

  v21 = 0;
  LODWORD(v15) = 1008981770;
  [v14 cmi_floatValueForKey:@"WideToSuperWide" defaultValue:&v21 found:v15];
  v5->_wideToSuperWideSwitchMargin = v16;
  v21 = 0;
  LODWORD(v17) = 1028443341;
  [v14 cmi_floatValueForKey:@"SuperWideToWide" defaultValue:&v21 found:v17];
  v5->_superWideToWideSwitchMargin = v18;

  return v5;
}

@end