@interface IDSCKRecordZoneID
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKRecordZoneID

+ (Class)__class
{
  if (qword_1EB2BBDE8 != -1)
  {
    sub_1A7E1854C();
  }

  v3 = qword_1EB2BBDE0;

  return v3;
}

+ (id)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end