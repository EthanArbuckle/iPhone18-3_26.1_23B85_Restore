@interface BLDAAPUpdateRequest
- (BLDAAPUpdateRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD localVersion:(id)version;
@end

@implementation BLDAAPUpdateRequest

- (BLDAAPUpdateRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD localVersion:(id)version
{
  v23[2] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  versionCopy = version;
  v21.receiver = self;
  v21.super_class = BLDAAPUpdateRequest;
  v12 = [(BLDAAPURLRequest *)&v21 initWithDSID:d reason:reason];
  v13 = v12;
  if (v12)
  {
    [(BLDAAPURLRequest *)v12 setDaapURL:@"update"];
    v14 = MEMORY[0x277CBEBC0];
    v22[0] = @"session-id";
    stringValue = [iDCopy stringValue];
    v22[1] = @"revision-number";
    v23[0] = stringValue;
    v23[1] = versionCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [v14 bu_queryStringForDictionary:v16 escapedValues:0];
    v18 = [v17 dataUsingEncoding:4];
    [(BLDAAPURLRequest *)v13 setBody:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

@end