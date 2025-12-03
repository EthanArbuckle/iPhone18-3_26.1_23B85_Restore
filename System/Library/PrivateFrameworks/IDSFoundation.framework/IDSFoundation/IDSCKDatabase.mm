@interface IDSCKDatabase
+ (Class)__class;
+ (IDSCKDatabase)alloc;
@end

@implementation IDSCKDatabase

+ (Class)__class
{
  if (qword_1EB2BBD78 != -1)
  {
    sub_1A7E184C0();
  }

  v3 = qword_1EB2BBD70;

  return v3;
}

+ (IDSCKDatabase)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end