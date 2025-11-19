@interface BLDAAPArtRequest
- (BLDAAPArtRequest)initWithDSID:(id)a3 databaseID:(id)a4 body:(id)a5;
@end

@implementation BLDAAPArtRequest

- (BLDAAPArtRequest)initWithDSID:(id)a3 databaseID:(id)a4 body:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = BLDAAPArtRequest;
  v10 = [(BLDAAPURLRequest *)&v14 initWithDSID:a3 reason:5];
  v11 = v10;
  if (v10)
  {
    [(BLDAAPURLRequest *)v10 setContentType:0];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%@/extra_data/cloud-artwork-info", v8];
    [(BLDAAPURLRequest *)v11 setDaapURL:v12];

    [(BLDAAPURLRequest *)v11 setBody:v9];
    [(BLDAAPURLRequest *)v11 setDataEncoding:1];
  }

  return v11;
}

@end