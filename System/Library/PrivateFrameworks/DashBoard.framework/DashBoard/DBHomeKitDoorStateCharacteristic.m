@interface DBHomeKitDoorStateCharacteristic
+ (id)stringForDoorState:(int64_t)a3;
+ (void)load;
- (id)formatedValue;
- (int64_t)doorStateValue;
- (void)setDoorStateValue:(int64_t)a3;
@end

@implementation DBHomeKitDoorStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___DBHomeKitDoorStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formatedValue
{
  v2 = [(DBHomeKitDoorStateCharacteristic *)self doorStateValue];

  return [DBHomeKitDoorStateCharacteristic stringForDoorState:v2];
}

- (int64_t)doorStateValue
{
  v2 = [(DBHomeKitCharacteristic *)self value];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setDoorStateValue:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(DBHomeKitCharacteristic *)self setValue:v4];
}

+ (id)stringForDoorState:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"Open";
  }

  else
  {
    return off_278F045F8[a3 - 1];
  }
}

@end