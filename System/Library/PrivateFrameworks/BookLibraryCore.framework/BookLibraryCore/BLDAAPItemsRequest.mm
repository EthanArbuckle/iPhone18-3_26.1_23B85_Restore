@interface BLDAAPItemsRequest
- (BLDAAPItemsRequest)initWithDSID:(id)d reason:(int64_t)reason databaseID:(id)iD body:(id)body;
- (id)createDaapURL:(id)l;
@end

@implementation BLDAAPItemsRequest

- (BLDAAPItemsRequest)initWithDSID:(id)d reason:(int64_t)reason databaseID:(id)iD body:(id)body
{
  iDCopy = iD;
  bodyCopy = body;
  v15.receiver = self;
  v15.super_class = BLDAAPItemsRequest;
  v12 = [(BLDAAPURLRequest *)&v15 initWithDSID:d reason:reason];
  v13 = v12;
  if (v12)
  {
    [(BLDAAPURLRequest *)v12 setContentType:0];
    [(BLDAAPItemsRequest *)v13 setBagDatabaseID:iDCopy];
    [(BLDAAPURLRequest *)v13 setBody:bodyCopy];
    [(BLDAAPURLRequest *)v13 setDataEncoding:1];
  }

  return v13;
}

- (id)createDaapURL:(id)l
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  lCopy = l;
  bagDatabaseID = [(BLDAAPItemsRequest *)self bagDatabaseID];
  v7 = [v4 stringWithFormat:@"databases/%@/items", bagDatabaseID];
  v8 = [lCopy URLByAppendingPathComponent:v7];

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