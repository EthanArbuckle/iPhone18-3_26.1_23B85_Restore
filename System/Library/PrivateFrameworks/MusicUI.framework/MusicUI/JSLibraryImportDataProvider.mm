@interface JSLibraryImportDataProvider
- (JSValue)mliDidCompleteTransfer;
- (JSValue)mliReview;
- (JSValue)mliSessionID;
- (void)setMliReview:(void *)review;
@end

@implementation JSLibraryImportDataProvider

- (void)setMliReview:(void *)review
{
  reviewCopy = review;
  selfCopy = self;
}

- (JSValue)mliDidCompleteTransfer
{
  selfCopy = self;
  v3 = sub_21699CA9C();

  return v3;
}

- (JSValue)mliReview
{
  selfCopy = self;
  v3 = sub_21699CB84();

  return v3;
}

- (JSValue)mliSessionID
{
  selfCopy = self;
  v3 = sub_21699CC0C();

  return v3;
}

@end