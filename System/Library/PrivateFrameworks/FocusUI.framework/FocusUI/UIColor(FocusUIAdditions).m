@interface UIColor(FocusUIAdditions)
+ (id)fcui_colorForActivity:()FocusUIAdditions;
@end

@implementation UIColor(FocusUIAdditions)

+ (id)fcui_colorForActivity:()FocusUIAdditions
{
  v3 = [a3 activityColorName];
  v4 = NSSelectorFromString(v3);

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