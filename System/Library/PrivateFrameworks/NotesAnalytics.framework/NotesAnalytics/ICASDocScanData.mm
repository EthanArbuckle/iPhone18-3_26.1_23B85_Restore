@interface ICASDocScanData
- (ICASDocScanData)initWithDocScanID:(id)d docScanActionType:(id)type docScanStage:(id)stage;
- (id)toDict;
@end

@implementation ICASDocScanData

- (ICASDocScanData)initWithDocScanID:(id)d docScanActionType:(id)type docScanStage:(id)stage
{
  dCopy = d;
  typeCopy = type;
  stageCopy = stage;
  v15.receiver = self;
  v15.super_class = ICASDocScanData;
  v12 = [(ICASDocScanData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_docScanID, d);
    objc_storeStrong(&v13->_docScanActionType, type);
    objc_storeStrong(&v13->_docScanStage, stage);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"docScanID";
  docScanID = [(ICASDocScanData *)self docScanID];
  if (docScanID)
  {
    docScanID2 = [(ICASDocScanData *)self docScanID];
  }

  else
  {
    docScanID2 = objc_opt_new();
  }

  v5 = docScanID2;
  v16[0] = docScanID2;
  v15[1] = @"docScanActionType";
  docScanActionType = [(ICASDocScanData *)self docScanActionType];
  if (docScanActionType)
  {
    docScanActionType2 = [(ICASDocScanData *)self docScanActionType];
  }

  else
  {
    docScanActionType2 = objc_opt_new();
  }

  v8 = docScanActionType2;
  v16[1] = docScanActionType2;
  v15[2] = @"docScanStage";
  docScanStage = [(ICASDocScanData *)self docScanStage];
  if (docScanStage)
  {
    docScanStage2 = [(ICASDocScanData *)self docScanStage];
  }

  else
  {
    docScanStage2 = objc_opt_new();
  }

  v11 = docScanStage2;
  v16[2] = docScanStage2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end