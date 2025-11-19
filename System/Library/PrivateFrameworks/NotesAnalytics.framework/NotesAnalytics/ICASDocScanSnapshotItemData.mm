@interface ICASDocScanSnapshotItemData
- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)a3;
- (id)toDict;
@end

@implementation ICASDocScanSnapshotItemData

- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICASDocScanSnapshotItemData;
  v6 = [(ICASDocScanSnapshotItemData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_docScanLength, a3);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"docScanLength";
  v3 = [(ICASDocScanSnapshotItemData *)self docScanLength];
  if (v3)
  {
    v4 = [(ICASDocScanSnapshotItemData *)self docScanLength];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end