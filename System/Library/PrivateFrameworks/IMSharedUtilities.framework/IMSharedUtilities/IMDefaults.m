@interface IMDefaults
+ (id)sharedInstance;
@end

@implementation IMDefaults

+ (id)sharedInstance
{
  if (qword_1ED8CA2C0 != -1)
  {
    sub_1A85EF0D0();
  }

  return qword_1ED8CA298;
}

@end