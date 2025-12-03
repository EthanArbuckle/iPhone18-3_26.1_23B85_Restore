@interface ICASStartTableData
- (ICASStartTableData)initWithStartingRowCount:(id)count startingColumnCount:(id)columnCount;
- (id)toDict;
@end

@implementation ICASStartTableData

- (ICASStartTableData)initWithStartingRowCount:(id)count startingColumnCount:(id)columnCount
{
  countCopy = count;
  columnCountCopy = columnCount;
  v12.receiver = self;
  v12.super_class = ICASStartTableData;
  v9 = [(ICASStartTableData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startingRowCount, count);
    objc_storeStrong(&v10->_startingColumnCount, columnCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"startingRowCount";
  startingRowCount = [(ICASStartTableData *)self startingRowCount];
  if (startingRowCount)
  {
    startingRowCount2 = [(ICASStartTableData *)self startingRowCount];
  }

  else
  {
    startingRowCount2 = objc_opt_new();
  }

  v5 = startingRowCount2;
  v12[1] = @"startingColumnCount";
  v13[0] = startingRowCount2;
  startingColumnCount = [(ICASStartTableData *)self startingColumnCount];
  if (startingColumnCount)
  {
    startingColumnCount2 = [(ICASStartTableData *)self startingColumnCount];
  }

  else
  {
    startingColumnCount2 = objc_opt_new();
  }

  v8 = startingColumnCount2;
  v13[1] = startingColumnCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end