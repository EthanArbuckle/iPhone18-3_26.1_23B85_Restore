@interface MXMUnitFrame
+ (MXMUnitFrame)frames;
+ (MXMUnitFrame)passes;
@end

@implementation MXMUnitFrame

+ (MXMUnitFrame)frames
{
  v2 = [[MXMUnitFrame alloc] initWithSymbol:@"frames"];

  return v2;
}

+ (MXMUnitFrame)passes
{
  v2 = [[MXMUnitFrame alloc] initWithSymbol:@"passes"];

  return v2;
}

@end