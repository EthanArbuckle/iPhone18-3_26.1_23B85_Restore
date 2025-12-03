@interface BLDAAPDatabasesRequest
- (BLDAAPDatabasesRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD revisionNumber:(id)number delta:(id)delta;
@end

@implementation BLDAAPDatabasesRequest

- (BLDAAPDatabasesRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD revisionNumber:(id)number delta:(id)delta
{
  v41[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  numberCopy = number;
  deltaCopy = delta;
  v29.receiver = self;
  v29.super_class = BLDAAPDatabasesRequest;
  v16 = [(BLDAAPURLRequest *)&v29 initWithDSID:dCopy reason:reason];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  if (dCopy && reason && iDCopy && numberCopy && deltaCopy)
  {
    [(BLDAAPURLRequest *)v16 setDaapURL:@"databases"];
    [(BLDAAPURLRequest *)v17 setContentType:1];
    [(BLDAAPDatabasesRequest *)v17 setDelta:deltaCopy];
    v18 = MEMORY[0x277CBEBC0];
    v40[0] = @"session-id";
    stringValue = [iDCopy stringValue];
    v41[0] = stringValue;
    v40[1] = @"revision-number";
    stringValue2 = [numberCopy stringValue];
    v41[1] = stringValue2;
    v40[2] = @"delta";
    stringValue3 = [deltaCopy stringValue];
    v41[2] = stringValue3;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v22 = [v18 bu_queryStringForDictionary:v21 escapedValues:0];
    v23 = [v22 dataUsingEncoding:4];
    [(BLDAAPURLRequest *)v17 setBody:v23];

LABEL_8:
    v24 = v17;
    goto LABEL_12;
  }

  v25 = BLJaliscoLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v31 = dCopy;
    v32 = 2048;
    reasonCopy = reason;
    v34 = 2114;
    v35 = iDCopy;
    v36 = 2114;
    v37 = numberCopy;
    v38 = 2114;
    v39 = deltaCopy;
    _os_log_impl(&dword_241D1F000, v25, OS_LOG_TYPE_ERROR, "BLDAAPDatabasesRequest init failed: Missing a parameter type. dsid:(%@) reason:(%ld) sessionID: %{public}@ revisionNumber:%{public}@ delta:%{public}@", buf, 0x34u);
  }

  v24 = 0;
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

@end