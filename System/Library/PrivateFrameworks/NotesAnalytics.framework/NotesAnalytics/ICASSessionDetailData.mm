@interface ICASSessionDetailData
- (ICASSessionDetailData)initWithSessionDetailArray:(id)array;
- (id)toDict;
@end

@implementation ICASSessionDetailData

- (ICASSessionDetailData)initWithSessionDetailArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = ICASSessionDetailData;
  v6 = [(ICASSessionDetailData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionDetailArray, array);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"sessionDetailArray";
  sessionDetailArray = [(ICASSessionDetailData *)self sessionDetailArray];
  if (sessionDetailArray)
  {
    sessionDetailArray2 = [(ICASSessionDetailData *)self sessionDetailArray];
  }

  else
  {
    sessionDetailArray2 = objc_opt_new();
  }

  v5 = sessionDetailArray2;
  v10[0] = sessionDetailArray2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end