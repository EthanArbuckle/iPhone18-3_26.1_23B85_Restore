@interface SNNMILValue
- (SNNMILValue)init;
@end

@implementation SNNMILValue

- (SNNMILValue)init
{
  v3.receiver = self;
  v3.super_class = SNNMILValue;
  return [(SNNMILValue *)&v3 init];
}

@end