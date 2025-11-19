@interface IDSXPCDaemonInterface
+ (id)interface;
@end

@implementation IDSXPCDaemonInterface

+ (id)interface
{
  if (qword_1ED5DDDA8 != -1)
  {
    sub_195B2ACE0();
  }

  v3 = qword_1ED5DDE50;

  return v3;
}

@end