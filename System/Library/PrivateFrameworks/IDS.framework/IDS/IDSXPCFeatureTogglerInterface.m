@interface IDSXPCFeatureTogglerInterface
+ (id)interface;
@end

@implementation IDSXPCFeatureTogglerInterface

+ (id)interface
{
  if (qword_1ED5DDDE8 != -1)
  {
    sub_195B41928();
  }

  v3 = qword_1ED5DDE90;

  return v3;
}

@end