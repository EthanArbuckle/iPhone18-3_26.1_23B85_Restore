@interface CRSUIClusterPressAction
- (CRSUIClusterPressAction)initWithPressType:(unint64_t)type;
- (unint64_t)actionType;
@end

@implementation CRSUIClusterPressAction

- (CRSUIClusterPressAction)initWithPressType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = CRSUIClusterPressAction;
  v7 = [(CRSUIClusterPressAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (unint64_t)actionType
{
  info = [(CRSUIClusterPressAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end