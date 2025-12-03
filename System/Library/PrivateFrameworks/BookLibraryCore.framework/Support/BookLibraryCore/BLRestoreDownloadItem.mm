@interface BLRestoreDownloadItem
- (id)description;
@end

@implementation BLRestoreDownloadItem

- (id)description
{
  storeItemID = [(BLRestoreContentItem *)self storeItemID];
  title = [(BLRestoreContentItem *)self title];
  storeAccountID = [(BLRestoreContentItem *)self storeAccountID];
  downloadKind = [(BLRestoreContentItem *)self downloadKind];
  v7 = [NSString stringWithFormat:@"{ itemID: %@ t: %@ a: %@, kind: %@ }", storeItemID, title, storeAccountID, downloadKind];

  return v7;
}

@end