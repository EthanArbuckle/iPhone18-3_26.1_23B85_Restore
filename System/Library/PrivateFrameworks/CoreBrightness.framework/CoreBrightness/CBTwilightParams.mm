@interface CBTwilightParams
- (CBTwilightParams)initWithParser:(id)parser;
@end

@implementation CBTwilightParams

- (CBTwilightParams)initWithParser:(id)parser
{
  v5 = [(CBChromaticCorrectionParams *)self initFromParser:parser withName:@"twilight" andPrefix:@"tw"];
  if (v5)
  {
    v5->_nightShiftAdaptation = [[CBTwilightNightShiftAdaptationParams alloc] initWithParser:parser];
  }

  return v5;
}

@end