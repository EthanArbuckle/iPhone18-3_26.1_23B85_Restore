@interface IDSCKQuerySubscription
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKQuerySubscription

+ (Class)__class
{
  if (qword_1EB2BBE98 != -1)
  {
    sub_1A7E18628();
  }

  v3 = qword_1EB2BBE90;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end