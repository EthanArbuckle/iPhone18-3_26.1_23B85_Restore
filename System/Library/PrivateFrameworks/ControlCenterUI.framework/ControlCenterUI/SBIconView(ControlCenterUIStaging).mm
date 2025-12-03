@interface SBIconView(ControlCenterUIStaging)
- (id)ccui_disallowGlassGroupingForReason:()ControlCenterUIStaging;
@end

@implementation SBIconView(ControlCenterUIStaging)

- (id)ccui_disallowGlassGroupingForReason:()ControlCenterUIStaging
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self disallowGlassGroupingForReason:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end