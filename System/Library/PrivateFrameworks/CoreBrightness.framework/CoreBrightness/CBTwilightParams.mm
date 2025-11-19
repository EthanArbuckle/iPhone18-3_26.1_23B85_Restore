@interface CBTwilightParams
- (CBTwilightParams)initWithParser:(id)a3;
@end

@implementation CBTwilightParams

- (CBTwilightParams)initWithParser:(id)a3
{
  v5 = [(CBChromaticCorrectionParams *)self initFromParser:a3 withName:@"twilight" andPrefix:@"tw"];
  if (v5)
  {
    v5->_nightShiftAdaptation = [[CBTwilightNightShiftAdaptationParams alloc] initWithParser:a3];
  }

  return v5;
}

@end