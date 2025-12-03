@interface IDSCKModifyRecordZonesOperation
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKModifyRecordZonesOperation

+ (Class)__class
{
  if (qword_1EB2BBE48 != -1)
  {
    sub_1A7E185C4();
  }

  v3 = qword_1EB2BBE40;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end