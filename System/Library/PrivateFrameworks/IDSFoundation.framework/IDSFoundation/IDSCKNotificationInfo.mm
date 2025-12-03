@interface IDSCKNotificationInfo
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKNotificationInfo

+ (Class)__class
{
  if (qword_1EB2BBE88 != -1)
  {
    sub_1A7E18614();
  }

  v3 = qword_1EB2BBE80;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end