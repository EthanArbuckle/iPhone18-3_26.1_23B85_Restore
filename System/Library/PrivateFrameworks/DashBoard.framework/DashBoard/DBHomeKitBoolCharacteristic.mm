@interface DBHomeKitBoolCharacteristic
+ (void)load;
- (BOOL)BOOLValue;
- (id)formatedValue;
- (void)setBoolValue:(BOOL)a3;
@end

@implementation DBHomeKitBoolCharacteristic

+ (void)load
{
  v2.receiver = a1;
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
  v2 = [(DBHomeKitCharacteristic *)self value];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBoolValue:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(DBHomeKitCharacteristic *)self setValue:v4];
}

@end