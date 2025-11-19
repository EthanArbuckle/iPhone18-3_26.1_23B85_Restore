@interface IDSService
+ (id)mr_sharedGroupSessionService;
@end

@implementation IDSService

+ (id)mr_sharedGroupSessionService
{
  if (qword_1005292F0 != -1)
  {
    sub_1003A6A2C();
  }

  v3 = qword_1005292E8;

  return v3;
}

@end