@interface ICASEndTableData
- (ICASEndTableData)initWithEndingRowCount:(id)count endingColumnCount:(id)columnCount;
- (id)toDict;
@end

@implementation ICASEndTableData

- (ICASEndTableData)initWithEndingRowCount:(id)count endingColumnCount:(id)columnCount
{
  countCopy = count;
  columnCountCopy = columnCount;
  v12.receiver = self;
  v12.super_class = ICASEndTableData;
  v9 = [(ICASEndTableData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endingRowCount, count);
    objc_storeStrong(&v10->_endingColumnCount, columnCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"endingRowCount";
  endingRowCount = [(ICASEndTableData *)self endingRowCount];
  if (endingRowCount)
  {
    endingRowCount2 = [(ICASEndTableData *)self endingRowCount];
  }

  else
  {
    endingRowCount2 = objc_opt_new();
  }

  v5 = endingRowCount2;
  v12[1] = @"endingColumnCount";
  v13[0] = endingRowCount2;
  endingColumnCount = [(ICASEndTableData *)self endingColumnCount];
  if (endingColumnCount)
  {
    endingColumnCount2 = [(ICASEndTableData *)self endingColumnCount];
  }

  else
  {
    endingColumnCount2 = objc_opt_new();
  }

  v8 = endingColumnCount2;
  v13[1] = endingColumnCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end