@interface ICASSessionSummaryData
- (ICASSessionSummaryData)initWithSessionSummaryArray:(id)array;
- (id)toDict;
@end

@implementation ICASSessionSummaryData

- (ICASSessionSummaryData)initWithSessionSummaryArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = ICASSessionSummaryData;
  v6 = [(ICASSessionSummaryData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionSummaryArray, array);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"sessionSummaryArray";
  sessionSummaryArray = [(ICASSessionSummaryData *)self sessionSummaryArray];
  if (sessionSummaryArray)
  {
    sessionSummaryArray2 = [(ICASSessionSummaryData *)self sessionSummaryArray];
  }

  else
  {
    sessionSummaryArray2 = objc_opt_new();
  }

  v5 = sessionSummaryArray2;
  v10[0] = sessionSummaryArray2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end