@interface NTPBFetchRecordSpec(FCAdditions)
- (void)initWithRecordType:()FCAdditions desiredFields:linkedFields:;
@end

@implementation NTPBFetchRecordSpec(FCAdditions)

- (void)initWithRecordType:()FCAdditions desiredFields:linkedFields:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = &off_1F2EE7F88;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = v11;
  if (v11)
  {
    [v11 setRecordType:v8];
    v13 = [v9 mutableCopy];
    [v12 setDesiredFields:v13];

    v14 = [v10 mutableCopy];
    [v12 setLinkedFields:v14];
  }

  return v12;
}

@end