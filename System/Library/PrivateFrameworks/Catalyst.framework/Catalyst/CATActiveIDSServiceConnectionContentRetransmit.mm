@interface CATActiveIDSServiceConnectionContentRetransmit
+ (id)instanceWithDictionary:(id)dictionary;
- (CATActiveIDSServiceConnectionContentRetransmit)initWithSequenceNumbers:(id)numbers;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentRetransmit

- (CATActiveIDSServiceConnectionContentRetransmit)initWithSequenceNumbers:(id)numbers
{
  numbersCopy = numbers;
  v9.receiver = self;
  v9.super_class = CATActiveIDSServiceConnectionContentRetransmit;
  v5 = [(CATActiveIDSServiceConnectionContentRetransmit *)&v9 init];
  if (v5)
  {
    v6 = [numbersCopy copy];
    sequenceNumbers = v5->_sequenceNumbers;
    v5->_sequenceNumbers = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SequenceNumbers";
  sequenceNumbers = [(CATActiveIDSServiceConnectionContentRetransmit *)self sequenceNumbers];
  v7[0] = sequenceNumbers;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"SequenceNumbers"];
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
    v7 = [[self alloc] initWithSequenceNumbers:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end