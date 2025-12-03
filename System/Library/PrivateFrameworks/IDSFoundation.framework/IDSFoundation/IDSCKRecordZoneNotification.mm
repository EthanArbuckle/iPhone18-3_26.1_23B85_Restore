@interface IDSCKRecordZoneNotification
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKRecordZoneNotification

+ (Class)__class
{
  if (qword_1EB2BBE78 != -1)
  {
    sub_1A7E18600();
  }

  v3 = qword_1EB2BBE70;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end