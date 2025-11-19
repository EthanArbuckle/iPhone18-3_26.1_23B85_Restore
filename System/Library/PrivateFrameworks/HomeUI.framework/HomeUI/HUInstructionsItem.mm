@interface HUInstructionsItem
- (HUInstructionsItem)initWithStyle:(unint64_t)a3 title:(id)a4 description:(id)a5;
@end

@implementation HUInstructionsItem

- (HUInstructionsItem)initWithStyle:(unint64_t)a3 title:(id)a4 description:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v17 = @"instructionsStyle";
  v9 = MEMORY[0x277CCABB0];
  v10 = a4;
  v11 = [v9 numberWithUnsignedInteger:a3];
  v18[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13 = [v12 mutableCopy];

  [v13 na_safeSetObject:v10 forKey:*MEMORY[0x277D13F60]];
  if (v8)
  {
    [v13 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v16.receiver = self;
  v16.super_class = HUInstructionsItem;
  v14 = [(HFStaticItem *)&v16 initWithResults:v13];

  return v14;
}

@end