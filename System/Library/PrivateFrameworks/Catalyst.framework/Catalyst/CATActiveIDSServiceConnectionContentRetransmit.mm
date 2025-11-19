@interface CATActiveIDSServiceConnectionContentRetransmit
+ (id)instanceWithDictionary:(id)a3;
- (CATActiveIDSServiceConnectionContentRetransmit)initWithSequenceNumbers:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentRetransmit

- (CATActiveIDSServiceConnectionContentRetransmit)initWithSequenceNumbers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CATActiveIDSServiceConnectionContentRetransmit;
  v5 = [(CATActiveIDSServiceConnectionContentRetransmit *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sequenceNumbers = v5->_sequenceNumbers;
    v5->_sequenceNumbers = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SequenceNumbers";
  v2 = [(CATActiveIDSServiceConnectionContentRetransmit *)self sequenceNumbers];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SequenceNumbers"];
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
    v7 = [[a1 alloc] initWithSequenceNumbers:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end