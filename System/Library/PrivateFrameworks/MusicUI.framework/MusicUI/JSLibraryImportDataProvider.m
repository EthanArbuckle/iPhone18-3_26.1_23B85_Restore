@interface JSLibraryImportDataProvider
- (JSValue)mliDidCompleteTransfer;
- (JSValue)mliReview;
- (JSValue)mliSessionID;
- (void)setMliReview:(void *)a3;
@end

@implementation JSLibraryImportDataProvider

- (void)setMliReview:(void *)a3
{
  v4 = a3;
  v5 = a1;
}

- (JSValue)mliDidCompleteTransfer
{
  v2 = self;
  v3 = sub_21699CA9C();

  return v3;
}

- (JSValue)mliReview
{
  v2 = self;
  v3 = sub_21699CB84();

  return v3;
}

- (JSValue)mliSessionID
{
  v2 = self;
  v3 = sub_21699CC0C();

  return v3;
}

@end