@interface ICASStartDocScanPageData
- (ICASStartDocScanPageData)initWithStartPageCount:(id)count;
- (id)toDict;
@end

@implementation ICASStartDocScanPageData

- (ICASStartDocScanPageData)initWithStartPageCount:(id)count
{
  countCopy = count;
  v9.receiver = self;
  v9.super_class = ICASStartDocScanPageData;
  v6 = [(ICASStartDocScanPageData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startPageCount, count);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"startPageCount";
  startPageCount = [(ICASStartDocScanPageData *)self startPageCount];
  if (startPageCount)
  {
    startPageCount2 = [(ICASStartDocScanPageData *)self startPageCount];
  }

  else
  {
    startPageCount2 = objc_opt_new();
  }

  v5 = startPageCount2;
  v10[0] = startPageCount2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end