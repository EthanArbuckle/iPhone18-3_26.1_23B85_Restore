@interface IDSCKQueryOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKQueryOperation

+ (Class)__class
{
  if (qword_1EB2BBDD8 != -1)
  {
    sub_1A7E18538();
  }

  v3 = qword_1EB2BBDD0;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end