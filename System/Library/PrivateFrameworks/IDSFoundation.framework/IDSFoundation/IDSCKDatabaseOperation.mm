@interface IDSCKDatabaseOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKDatabaseOperation

+ (Class)__class
{
  if (qword_1EB2BBDB8 != -1)
  {
    sub_1A7E18510();
  }

  v3 = qword_1EB2BBDB0;

  return v3;
}

+ (id)alloc
{
  v2 = [a1 __class];

  return [v2 alloc];
}

@end