@interface CRSUIClimatePopoverAction
- (CRSUIClimatePopoverAction)init;
@end

@implementation CRSUIClimatePopoverAction

- (CRSUIClimatePopoverAction)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v3 setObject:0 forSetting:1];
  v6.receiver = self;
  v6.super_class = CRSUIClimatePopoverAction;
  v4 = [(CRSUIClimatePopoverAction *)&v6 initWithInfo:v3 responder:0];

  return v4;
}

@end