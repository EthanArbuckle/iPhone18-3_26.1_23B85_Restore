@interface CATActiveIDSServiceConnectionContentRequestMissingData
+ (id)instanceWithDictionary:(id)dictionary;
- (CATActiveIDSServiceConnectionContentRequestMissingData)initWithExpectedSequenceNumber:(unint64_t)number;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentRequestMissingData

- (CATActiveIDSServiceConnectionContentRequestMissingData)initWithExpectedSequenceNumber:(unint64_t)number
{
  v5.receiver = self;
  v5.super_class = CATActiveIDSServiceConnectionContentRequestMissingData;
  result = [(CATActiveIDSServiceConnectionContentRequestMissingData *)&v5 init];
  if (result)
  {
    result->_expectedSequenceNumber = number;
  }

  return result;
}

- (NSDictionary)dictionaryValue
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ExpectedSequenceNumber";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATActiveIDSServiceConnectionContentRequestMissingData expectedSequenceNumber](self, "expectedSequenceNumber")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"ExpectedSequenceNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [[self alloc] initWithExpectedSequenceNumber:{objc_msgSend(v6, "unsignedIntegerValue")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end