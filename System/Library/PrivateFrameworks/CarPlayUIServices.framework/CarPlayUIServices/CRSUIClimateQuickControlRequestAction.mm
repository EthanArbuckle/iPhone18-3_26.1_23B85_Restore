@interface CRSUIClimateQuickControlRequestAction
- (CRSUIClimateQuickControlRequestAction)initWithClimateZone:(id)zone;
@end

@implementation CRSUIClimateQuickControlRequestAction

- (CRSUIClimateQuickControlRequestAction)initWithClimateZone:(id)zone
{
  v4 = MEMORY[0x277CF0C80];
  zoneCopy = zone;
  v6 = objc_alloc_init(v4);
  [v6 setObject:zoneCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = CRSUIClimateQuickControlRequestAction;
  v7 = [(CRSUIClimateQuickControlRequestAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

@end