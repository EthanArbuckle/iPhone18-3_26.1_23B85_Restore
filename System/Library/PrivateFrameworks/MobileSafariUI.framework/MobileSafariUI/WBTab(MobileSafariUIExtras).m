@interface WBTab(MobileSafariUIExtras)
- (id)addressForNewBookmark;
@end

@implementation WBTab(MobileSafariUIExtras)

- (id)addressForNewBookmark
{
  v1 = [a1 url];
  v2 = [v1 safari_originalDataAsString];

  return v2;
}

@end