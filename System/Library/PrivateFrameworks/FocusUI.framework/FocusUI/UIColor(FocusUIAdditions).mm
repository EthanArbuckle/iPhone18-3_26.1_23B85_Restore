@interface UIColor(FocusUIAdditions)
+ (id)fcui_colorForActivity:()FocusUIAdditions;
@end

@implementation UIColor(FocusUIAdditions)

+ (id)fcui_colorForActivity:()FocusUIAdditions
{
  activityColorName = [a3 activityColorName];
  v4 = NSSelectorFromString(activityColorName);

  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277D75348] performSelector:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end