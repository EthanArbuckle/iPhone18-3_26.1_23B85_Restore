@interface IDSCKServerChangeToken
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKServerChangeToken

+ (Class)__class
{
  if (qword_1EB2BBE08 != -1)
  {
    sub_1A7E18574();
  }

  v3 = qword_1EB2BBE00;

  return v3;
}

+ (id)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end