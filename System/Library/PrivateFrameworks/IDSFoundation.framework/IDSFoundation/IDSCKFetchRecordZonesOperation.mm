@interface IDSCKFetchRecordZonesOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKFetchRecordZonesOperation

+ (Class)__class
{
  if (qword_1EB2BBE58 != -1)
  {
    sub_1A7E185D8();
  }

  v3 = qword_1EB2BBE50;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end