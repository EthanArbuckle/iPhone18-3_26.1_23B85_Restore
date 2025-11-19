@interface BLDAAPDatabasesRequest
- (BLDAAPDatabasesRequest)initWithDSID:(id)a3 reason:(int64_t)a4 sessionID:(id)a5 revisionNumber:(id)a6 delta:(id)a7;
@end

@implementation BLDAAPDatabasesRequest

- (BLDAAPDatabasesRequest)initWithDSID:(id)a3 reason:(int64_t)a4 sessionID:(id)a5 revisionNumber:(id)a6 delta:(id)a7
{
  v41[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29.receiver = self;
  v29.super_class = BLDAAPDatabasesRequest;
  v16 = [(BLDAAPURLRequest *)&v29 initWithDSID:v12 reason:a4];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  if (v12 && a4 && v13 && v14 && v15)
  {
    [(BLDAAPURLRequest *)v16 setDaapURL:@"databases"];
    [(BLDAAPURLRequest *)v17 setContentType:1];
    [(BLDAAPDatabasesRequest *)v17 setDelta:v15];
    v18 = MEMORY[0x277CBEBC0];
    v40[0] = @"session-id";
    v28 = [v13 stringValue];
    v41[0] = v28;
    v40[1] = @"revision-number";
    v19 = [v14 stringValue];
    v41[1] = v19;
    v40[2] = @"delta";
    v20 = [v15 stringValue];
    v41[2] = v20;
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
    v31 = v12;
    v32 = 2048;
    v33 = a4;
    v34 = 2114;
    v35 = v13;
    v36 = 2114;
    v37 = v14;
    v38 = 2114;
    v39 = v15;
    _os_log_impl(&dword_241D1F000, v25, OS_LOG_TYPE_ERROR, "BLDAAPDatabasesRequest init failed: Missing a parameter type. dsid:(%@) reason:(%ld) sessionID: %{public}@ revisionNumber:%{public}@ delta:%{public}@", buf, 0x34u);
  }

  v24 = 0;
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

@end