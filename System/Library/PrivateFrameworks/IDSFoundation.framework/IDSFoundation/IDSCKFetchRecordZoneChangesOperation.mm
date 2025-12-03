@interface IDSCKFetchRecordZoneChangesOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKFetchRecordZoneChangesOperation

+ (Class)__class
{
  if (qword_1EB2BBE28 != -1)
  {
    sub_1A7E1859C();
  }

  v3 = qword_1EB2BBE20;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end