@interface BLDAAPHideItemsRequest
- (BLDAAPHideItemsRequest)initWithDSID:(id)d databaseID:(id)iD body:(id)body;
@end

@implementation BLDAAPHideItemsRequest

- (BLDAAPHideItemsRequest)initWithDSID:(id)d databaseID:(id)iD body:(id)body
{
  iDCopy = iD;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = BLDAAPHideItemsRequest;
  v10 = [(BLDAAPURLRequest *)&v14 initWithDSID:d reason:6];
  v11 = v10;
  if (v10)
  {
    [(BLDAAPURLRequest *)v10 setContentType:0];
    iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%@/edit", iDCopy];
    [(BLDAAPURLRequest *)v11 setDaapURL:iDCopy];

    [(BLDAAPURLRequest *)v11 setBody:bodyCopy];
    [(BLDAAPURLRequest *)v11 setDataEncoding:1];
  }

  return v11;
}

@end