@interface IDSCKRecordID
+ (Class)__class;
+ (IDSCKRecordID)alloc;
@end

@implementation IDSCKRecordID

+ (Class)__class
{
  if (qword_1EB2BBD98 != -1)
  {
    sub_1A7E184E8();
  }

  v3 = qword_1EB2BBD90;

  return v3;
}

+ (IDSCKRecordID)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end