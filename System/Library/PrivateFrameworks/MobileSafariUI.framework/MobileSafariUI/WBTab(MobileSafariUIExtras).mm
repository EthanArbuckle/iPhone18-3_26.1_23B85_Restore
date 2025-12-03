@interface WBTab(MobileSafariUIExtras)
- (id)addressForNewBookmark;
@end

@implementation WBTab(MobileSafariUIExtras)

- (id)addressForNewBookmark
{
  v1 = [self url];
  safari_originalDataAsString = [v1 safari_originalDataAsString];

  return safari_originalDataAsString;
}

@end