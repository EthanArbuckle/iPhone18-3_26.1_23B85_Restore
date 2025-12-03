@interface ICASResultData
- (ICASResultData)initWithResultType:(id)type;
- (id)toDict;
@end

@implementation ICASResultData

- (ICASResultData)initWithResultType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASResultData;
  v6 = [(ICASResultData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"resultType";
  resultType = [(ICASResultData *)self resultType];
  if (resultType)
  {
    resultType2 = [(ICASResultData *)self resultType];
  }

  else
  {
    resultType2 = objc_opt_new();
  }

  v5 = resultType2;
  v10[0] = resultType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end