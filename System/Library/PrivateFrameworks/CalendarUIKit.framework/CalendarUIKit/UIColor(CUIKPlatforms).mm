@interface UIColor(CUIKPlatforms)
+ (id)cuik_nonTodayTimelineColor;
+ (id)cuik_timelineHourColor;
- (double)cuik_alphaComponent;
- (id)cuik_blendWithColor:()CUIKPlatforms;
- (uint64_t)cuik_colorWithAlphaScaled:()CUIKPlatforms;
@end

@implementation UIColor(CUIKPlatforms)

+ (id)cuik_timelineHourColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = CUIKBundle();
  v2 = [v0 colorNamed:@"timelineHourColor" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

- (double)cuik_alphaComponent
{
  cGColor = [self CGColor];

  return CGColorGetAlpha(cGColor);
}

+ (id)cuik_nonTodayTimelineColor
{
  cuik_todayTimelineColor = [self cuik_todayTimelineColor];
  v2 = [cuik_todayTimelineColor colorWithAlphaComponent:0.1];

  return v2;
}

- (uint64_t)cuik_colorWithAlphaScaled:()CUIKPlatforms
{
  [self cuik_alphaComponent];
  v5 = v4 * a2;

  return [self colorWithAlphaComponent:v5];
}

- (id)cuik_blendWithColor:()CUIKPlatforms
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v4 = a3;
  [self getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v4 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v5 = (1.0 - v8) * v12;
  if (v8 + v5 <= 0.0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [MEMORY[0x1E69DC888] colorWithRed:(v8 * v11 + v15 * v5) / (v8 + v5) green:(v8 * v10 + v14 * v5) / (v8 + v5) blue:(v8 * v9 + v13 * v5) / (v8 + v5) alpha:?];
  }

  return selfCopy;
}

@end