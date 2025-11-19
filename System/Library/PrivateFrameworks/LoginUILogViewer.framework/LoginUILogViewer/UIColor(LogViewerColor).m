@interface UIColor(LogViewerColor)
+ (id)logCyanColor;
+ (id)logPurpleColor;
+ (id)logYellowColor;
@end

@implementation UIColor(LogViewerColor)

+ (id)logPurpleColor
{
  v0 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.921568627 green:0.341176471 blue:0.968627451 alpha:1.0];

  return v0;
}

+ (id)logCyanColor
{
  v0 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.309803922 green:0.619607843 blue:0.619607843 alpha:1.0];

  return v0;
}

+ (id)logYellowColor
{
  v0 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.68627451 green:0.674509804 blue:0.258823529 alpha:1.0];

  return v0;
}

@end