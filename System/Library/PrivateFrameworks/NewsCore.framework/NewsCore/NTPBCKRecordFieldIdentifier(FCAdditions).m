@interface NTPBCKRecordFieldIdentifier(FCAdditions)
- (id)initWithName:()FCAdditions;
@end

@implementation NTPBCKRecordFieldIdentifier(FCAdditions)

- (id)initWithName:()FCAdditions
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_1F2EE9D48;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    [v5 setName:v4];
  }

  return v6;
}

@end