@interface CAMShutterUtilities
+ (id)spinnerAnimation;
+ (id)spinnerViewForLayoutStyle:(int64_t)style;
@end

@implementation CAMShutterUtilities

+ (id)spinnerViewForLayoutStyle:(int64_t)style
{
  if (style == 3)
  {
    v3 = @"CAMShutterButtonSpinner-d22";
  }

  else
  {
    v3 = @"CAMShutterButtonSpinner";
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = CAMCameraUIFrameworkBundle();
  v6 = [v4 imageNamed:v3 inBundle:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];

  return v7;
}

+ (id)spinnerAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
  [v2 setFromValue:&unk_1F16C8138];
  [v2 setToValue:&unk_1F16C8C88];
  [v2 setDuration:0.666];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v2 setTimingFunction:v3];

  LODWORD(v4) = 2139095040;
  [v2 setRepeatCount:v4];

  return v2;
}

@end