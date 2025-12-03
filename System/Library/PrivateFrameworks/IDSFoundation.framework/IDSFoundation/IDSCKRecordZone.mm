@interface IDSCKRecordZone
+ (Class)__class;
+ (id)alloc;
@end

@implementation IDSCKRecordZone

+ (Class)__class
{
  if (qword_1EB2BBDF8 != -1)
  {
    sub_1A7E18560();
  }

  v3 = qword_1EB2BBDF0;

  return v3;
}

+ (id)alloc
{
  __class = [self __class];

  return [__class alloc];
}

@end