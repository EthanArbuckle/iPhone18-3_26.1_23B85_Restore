@interface ICASTableSnapshotItemData
- (ICASTableSnapshotItemData)initWithTableRowCount:(id)count tableColumnCount:(id)columnCount;
- (id)toDict;
@end

@implementation ICASTableSnapshotItemData

- (ICASTableSnapshotItemData)initWithTableRowCount:(id)count tableColumnCount:(id)columnCount
{
  countCopy = count;
  columnCountCopy = columnCount;
  v12.receiver = self;
  v12.super_class = ICASTableSnapshotItemData;
  v9 = [(ICASTableSnapshotItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableRowCount, count);
    objc_storeStrong(&v10->_tableColumnCount, columnCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"tableRowCount";
  tableRowCount = [(ICASTableSnapshotItemData *)self tableRowCount];
  if (tableRowCount)
  {
    tableRowCount2 = [(ICASTableSnapshotItemData *)self tableRowCount];
  }

  else
  {
    tableRowCount2 = objc_opt_new();
  }

  v5 = tableRowCount2;
  v12[1] = @"tableColumnCount";
  v13[0] = tableRowCount2;
  tableColumnCount = [(ICASTableSnapshotItemData *)self tableColumnCount];
  if (tableColumnCount)
  {
    tableColumnCount2 = [(ICASTableSnapshotItemData *)self tableColumnCount];
  }

  else
  {
    tableColumnCount2 = objc_opt_new();
  }

  v8 = tableColumnCount2;
  v13[1] = tableColumnCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end