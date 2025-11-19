@interface CRSUIClimateQuickControlRequestAction
- (CRSUIClimateQuickControlRequestAction)initWithClimateZone:(id)a3;
@end

@implementation CRSUIClimateQuickControlRequestAction

- (CRSUIClimateQuickControlRequestAction)initWithClimateZone:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = CRSUIClimateQuickControlRequestAction;
  v7 = [(CRSUIClimateQuickControlRequestAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

@end