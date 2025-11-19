@interface IDSCKRecord
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKRecord

+ (Class)__class
{
  if (qword_1EB2BBD88 != -1)
  {
    sub_1A7E184D4();
  }

  v3 = qword_1EB2BBD80;

  return v3;
}

+ (id)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end