@interface IDSCKRecordZoneSubscription
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKRecordZoneSubscription

+ (Class)__class
{
  if (qword_1EB2BBEA8 != -1)
  {
    sub_1A7E1863C();
  }

  v3 = qword_1EB2BBEA0;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end