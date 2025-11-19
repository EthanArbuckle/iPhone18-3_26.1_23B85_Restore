@interface BLDAAPItemsRequest
- (BLDAAPItemsRequest)initWithDSID:(id)a3 reason:(int64_t)a4 databaseID:(id)a5 body:(id)a6;
- (id)createDaapURL:(id)a3;
@end

@implementation BLDAAPItemsRequest

- (BLDAAPItemsRequest)initWithDSID:(id)a3 reason:(int64_t)a4 databaseID:(id)a5 body:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = BLDAAPItemsRequest;
  v12 = [(BLDAAPURLRequest *)&v15 initWithDSID:a3 reason:a4];
  v13 = v12;
  if (v12)
  {
    [(BLDAAPURLRequest *)v12 setContentType:0];
    [(BLDAAPItemsRequest *)v13 setBagDatabaseID:v10];
    [(BLDAAPURLRequest *)v13 setBody:v11];
    [(BLDAAPURLRequest *)v13 setDataEncoding:1];
  }

  return v13;
}

- (id)createDaapURL:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(BLDAAPItemsRequest *)self bagDatabaseID];
  v7 = [v4 stringWithFormat:@"databases/%@/items", v6];
  v8 = [v5 URLByAppendingPathComponent:v7];

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"includeApplePubBooks" value:@"1"];
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"includeItemFlavors" value:@"1"];
  v11 = [MEMORY[0x277CCACE0] componentsWithURL:v8 resolvingAgainstBaseURL:0];
  v16[0] = v9;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v11 setQueryItems:v12];

  v13 = [v11 URL];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end