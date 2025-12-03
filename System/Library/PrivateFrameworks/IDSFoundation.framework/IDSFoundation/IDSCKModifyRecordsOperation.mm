@interface IDSCKModifyRecordsOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKModifyRecordsOperation

+ (Class)__class
{
  if (qword_1EB2BBDC8 != -1)
  {
    sub_1A7E18524();
  }

  v3 = qword_1EB2BBDC0;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end