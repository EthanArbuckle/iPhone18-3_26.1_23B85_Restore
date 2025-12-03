@interface DBHomeKitDoorStateCharacteristic
+ (id)stringForDoorState:(int64_t)state;
+ (void)load;
- (id)formatedValue;
- (int64_t)doorStateValue;
- (void)setDoorStateValue:(int64_t)value;
@end

@implementation DBHomeKitDoorStateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___DBHomeKitDoorStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formatedValue
{
  doorStateValue = [(DBHomeKitDoorStateCharacteristic *)self doorStateValue];

  return [DBHomeKitDoorStateCharacteristic stringForDoorState:doorStateValue];
}

- (int64_t)doorStateValue
{
  value = [(DBHomeKitCharacteristic *)self value];
  integerValue = [value integerValue];

  return integerValue;
}

- (void)setDoorStateValue:(int64_t)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  [(DBHomeKitCharacteristic *)self setValue:v4];
}

+ (id)stringForDoorState:(int64_t)state
{
  if ((state - 1) > 3)
  {
    return @"Open";
  }

  else
  {
    return off_278F045F8[state - 1];
  }
}

@end