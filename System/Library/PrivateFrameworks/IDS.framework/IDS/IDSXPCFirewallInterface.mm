@interface IDSXPCFirewallInterface
+ (id)interface;
@end

@implementation IDSXPCFirewallInterface

+ (id)interface
{
  if (qword_1ED5DDE00 != -1)
  {
    sub_195A0D8B0();
  }

  v3 = qword_1ED5DDEA8;

  return v3;
}

@end