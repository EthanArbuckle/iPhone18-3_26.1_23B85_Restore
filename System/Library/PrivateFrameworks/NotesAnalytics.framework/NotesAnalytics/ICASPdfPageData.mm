@interface ICASPdfPageData
- (ICASPdfPageData)initWithStartPageCount:(id)count endPageCount:(id)pageCount;
- (id)toDict;
@end

@implementation ICASPdfPageData

- (ICASPdfPageData)initWithStartPageCount:(id)count endPageCount:(id)pageCount
{
  countCopy = count;
  pageCountCopy = pageCount;
  v12.receiver = self;
  v12.super_class = ICASPdfPageData;
  v9 = [(ICASPdfPageData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startPageCount, count);
    objc_storeStrong(&v10->_endPageCount, pageCount);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"startPageCount";
  startPageCount = [(ICASPdfPageData *)self startPageCount];
  if (startPageCount)
  {
    startPageCount2 = [(ICASPdfPageData *)self startPageCount];
  }

  else
  {
    startPageCount2 = objc_opt_new();
  }

  v5 = startPageCount2;
  v12[1] = @"endPageCount";
  v13[0] = startPageCount2;
  endPageCount = [(ICASPdfPageData *)self endPageCount];
  if (endPageCount)
  {
    endPageCount2 = [(ICASPdfPageData *)self endPageCount];
  }

  else
  {
    endPageCount2 = objc_opt_new();
  }

  v8 = endPageCount2;
  v13[1] = endPageCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end