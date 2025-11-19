@interface IDSCKQuery
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKQuery

+ (Class)__class
{
  if (qword_1EB2BBDA8 != -1)
  {
    sub_1A7E184FC();
  }

  v3 = qword_1EB2BBDA0;

  return v3;
}

+ (id)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end