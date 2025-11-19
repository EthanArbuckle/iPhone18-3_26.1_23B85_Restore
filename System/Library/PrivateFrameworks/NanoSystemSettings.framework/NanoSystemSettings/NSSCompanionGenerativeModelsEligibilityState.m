@interface NSSCompanionGenerativeModelsEligibilityState
+ (id)currentState;
- (NSSCompanionGenerativeModelsEligibilityState)init;
@end

@implementation NSSCompanionGenerativeModelsEligibilityState

+ (id)currentState
{
  sub_25B6C25DC();
  v2 = sub_25B6C2EDC();

  return v2;
}

- (NSSCompanionGenerativeModelsEligibilityState)init
{
  v3.receiver = self;
  v3.super_class = NSSCompanionGenerativeModelsEligibilityState;
  return [(NSSCompanionGenerativeModelsEligibilityState *)&v3 init];
}

@end