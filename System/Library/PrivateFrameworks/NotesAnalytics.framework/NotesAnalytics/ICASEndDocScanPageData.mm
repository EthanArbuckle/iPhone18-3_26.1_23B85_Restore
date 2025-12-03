@interface ICASEndDocScanPageData
- (ICASEndDocScanPageData)initWithEndPageCount:(id)count;
- (id)toDict;
@end

@implementation ICASEndDocScanPageData

- (ICASEndDocScanPageData)initWithEndPageCount:(id)count
{
  countCopy = count;
  v9.receiver = self;
  v9.super_class = ICASEndDocScanPageData;
  v6 = [(ICASEndDocScanPageData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endPageCount, count);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"endPageCount";
  endPageCount = [(ICASEndDocScanPageData *)self endPageCount];
  if (endPageCount)
  {
    endPageCount2 = [(ICASEndDocScanPageData *)self endPageCount];
  }

  else
  {
    endPageCount2 = objc_opt_new();
  }

  v5 = endPageCount2;
  v10[0] = endPageCount2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end