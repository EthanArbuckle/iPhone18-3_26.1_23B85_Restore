@interface IDSXPCEventReportingInterface
+ (id)interface;
@end

@implementation IDSXPCEventReportingInterface

+ (id)interface
{
  if (qword_1ED5DDDD8 != -1)
  {
    sub_195B415F4();
  }

  v3 = qword_1ED5DDE80;

  return v3;
}

@end