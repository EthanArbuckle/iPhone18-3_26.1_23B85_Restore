@interface CKShare(BRSharingAdditions)
- (BOOL)br_isCloudDocsShare;
@end

@implementation CKShare(BRSharingAdditions)

- (BOOL)br_isCloudDocsShare
{
  v1 = [self valueForKey:@"BRAssociatedURLWrapperDataKey"];
  v2 = v1 != 0;

  return v2;
}

@end