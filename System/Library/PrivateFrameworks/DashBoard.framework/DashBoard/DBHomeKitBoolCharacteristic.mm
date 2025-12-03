@interface DBHomeKitBoolCharacteristic
+ (void)load;
- (BOOL)BOOLValue;
- (id)formatedValue;
- (void)setBoolValue:(BOOL)value;
@end

@implementation DBHomeKitBoolCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___DBHomeKitBoolCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formatedValue
{
  if ([(DBHomeKitBoolCharacteristic *)self BOOLValue])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return v2;
}

- (BOOL)BOOLValue
{
  value = [(DBHomeKitCharacteristic *)self value];
  bOOLValue = [value BOOLValue];

  return bOOLValue;
}

- (void)setBoolValue:(BOOL)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:value];
  [(DBHomeKitCharacteristic *)self setValue:v4];
}

@end