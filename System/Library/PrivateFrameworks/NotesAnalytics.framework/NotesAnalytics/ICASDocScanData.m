@interface ICASDocScanData
- (ICASDocScanData)initWithDocScanID:(id)a3 docScanActionType:(id)a4 docScanStage:(id)a5;
- (id)toDict;
@end

@implementation ICASDocScanData

- (ICASDocScanData)initWithDocScanID:(id)a3 docScanActionType:(id)a4 docScanStage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASDocScanData;
  v12 = [(ICASDocScanData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_docScanID, a3);
    objc_storeStrong(&v13->_docScanActionType, a4);
    objc_storeStrong(&v13->_docScanStage, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"docScanID";
  v3 = [(ICASDocScanData *)self docScanID];
  if (v3)
  {
    v4 = [(ICASDocScanData *)self docScanID];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"docScanActionType";
  v6 = [(ICASDocScanData *)self docScanActionType];
  if (v6)
  {
    v7 = [(ICASDocScanData *)self docScanActionType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"docScanStage";
  v9 = [(ICASDocScanData *)self docScanStage];
  if (v9)
  {
    v10 = [(ICASDocScanData *)self docScanStage];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end