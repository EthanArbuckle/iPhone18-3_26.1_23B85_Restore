@interface ICASShareFlowData
- (ICASShareFlowData)initWithShareFlowType:(id)type;
- (id)toDict;
@end

@implementation ICASShareFlowData

- (ICASShareFlowData)initWithShareFlowType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASShareFlowData;
  v6 = [(ICASShareFlowData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareFlowType, type);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"shareFlowType";
  shareFlowType = [(ICASShareFlowData *)self shareFlowType];
  if (shareFlowType)
  {
    shareFlowType2 = [(ICASShareFlowData *)self shareFlowType];
  }

  else
  {
    shareFlowType2 = objc_opt_new();
  }

  v5 = shareFlowType2;
  v10[0] = shareFlowType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end