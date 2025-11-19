@interface BLDAAPUpdateRequest
- (BLDAAPUpdateRequest)initWithDSID:(id)a3 reason:(int64_t)a4 sessionID:(id)a5 localVersion:(id)a6;
@end

@implementation BLDAAPUpdateRequest

- (BLDAAPUpdateRequest)initWithDSID:(id)a3 reason:(int64_t)a4 sessionID:(id)a5 localVersion:(id)a6
{
  v23[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = BLDAAPUpdateRequest;
  v12 = [(BLDAAPURLRequest *)&v21 initWithDSID:a3 reason:a4];
  v13 = v12;
  if (v12)
  {
    [(BLDAAPURLRequest *)v12 setDaapURL:@"update"];
    v14 = MEMORY[0x277CBEBC0];
    v22[0] = @"session-id";
    v15 = [v10 stringValue];
    v22[1] = @"revision-number";
    v23[0] = v15;
    v23[1] = v11;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [v14 bu_queryStringForDictionary:v16 escapedValues:0];
    v18 = [v17 dataUsingEncoding:4];
    [(BLDAAPURLRequest *)v13 setBody:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

@end