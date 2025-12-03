@interface ICASSessionEndData
- (ICASSessionEndData)initWithEndReason:(id)reason;
- (id)toDict;
@end

@implementation ICASSessionEndData

- (ICASSessionEndData)initWithEndReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = ICASSessionEndData;
  v6 = [(ICASSessionEndData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endReason, reason);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"endReason";
  endReason = [(ICASSessionEndData *)self endReason];
  if (endReason)
  {
    endReason2 = [(ICASSessionEndData *)self endReason];
  }

  else
  {
    endReason2 = objc_opt_new();
  }

  v5 = endReason2;
  v10[0] = endReason2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end