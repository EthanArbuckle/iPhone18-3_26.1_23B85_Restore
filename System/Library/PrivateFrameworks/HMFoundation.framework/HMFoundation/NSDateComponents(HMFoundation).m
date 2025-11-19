@interface NSDateComponents(HMFoundation)
+ (id)hmf_unarchiveFromData:()HMFoundation error:;
- (id)hmf_localTimeDescription;
@end

@implementation NSDateComponents(HMFoundation)

+ (id)hmf_unarchiveFromData:()HMFoundation error:
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

- (id)hmf_localTimeDescription
{
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"<"];
  if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "second")}];
    v5 = [v3 stringWithFormat:@"%@ s, ", v4];
    [v2 appendString:v5];
  }

  if ([a1 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "minute")}];
    v8 = [v6 stringWithFormat:@"%@ m, ", v7];
    [v2 appendString:v8];
  }

  if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "hour")}];
    v11 = [v9 stringWithFormat:@"%@ h, ", v10];
    [v2 appendString:v11];
  }

  if ([a1 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "day")}];
    v14 = [v12 stringWithFormat:@"%@ d, ", v13];
    [v2 appendString:v14];
  }

  if ([a1 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "month")}];
    v17 = [v15 stringWithFormat:@"%@ mo, ", v16];
    [v2 appendString:v17];
  }

  [v2 appendString:@">"];
  v18 = [v2 copy];

  return v18;
}

@end