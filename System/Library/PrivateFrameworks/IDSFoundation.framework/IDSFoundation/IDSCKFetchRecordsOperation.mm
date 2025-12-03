@interface IDSCKFetchRecordsOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKFetchRecordsOperation

+ (Class)__class
{
  if (qword_1EB2BBE38 != -1)
  {
    sub_1A7E185B0();
  }

  v3 = qword_1EB2BBE30;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end