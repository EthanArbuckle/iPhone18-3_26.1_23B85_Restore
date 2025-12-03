@interface BLDAAPArtRequest
- (BLDAAPArtRequest)initWithDSID:(id)d databaseID:(id)iD body:(id)body;
@end

@implementation BLDAAPArtRequest

- (BLDAAPArtRequest)initWithDSID:(id)d databaseID:(id)iD body:(id)body
{
  iDCopy = iD;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = BLDAAPArtRequest;
  v10 = [(BLDAAPURLRequest *)&v14 initWithDSID:d reason:5];
  v11 = v10;
  if (v10)
  {
    [(BLDAAPURLRequest *)v10 setContentType:0];
    iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%@/extra_data/cloud-artwork-info", iDCopy];
    [(BLDAAPURLRequest *)v11 setDaapURL:iDCopy];

    [(BLDAAPURLRequest *)v11 setBody:bodyCopy];
    [(BLDAAPURLRequest *)v11 setDataEncoding:1];
  }

  return v11;
}

@end