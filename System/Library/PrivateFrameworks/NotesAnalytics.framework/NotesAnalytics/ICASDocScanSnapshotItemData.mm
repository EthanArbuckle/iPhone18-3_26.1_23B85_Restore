@interface ICASDocScanSnapshotItemData
- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)length;
- (id)toDict;
@end

@implementation ICASDocScanSnapshotItemData

- (ICASDocScanSnapshotItemData)initWithDocScanLength:(id)length
{
  lengthCopy = length;
  v9.receiver = self;
  v9.super_class = ICASDocScanSnapshotItemData;
  v6 = [(ICASDocScanSnapshotItemData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_docScanLength, length);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"docScanLength";
  docScanLength = [(ICASDocScanSnapshotItemData *)self docScanLength];
  if (docScanLength)
  {
    docScanLength2 = [(ICASDocScanSnapshotItemData *)self docScanLength];
  }

  else
  {
    docScanLength2 = objc_opt_new();
  }

  v5 = docScanLength2;
  v10[0] = docScanLength2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end