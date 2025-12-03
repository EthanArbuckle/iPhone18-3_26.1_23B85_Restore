@interface HUInstructionsItem
- (HUInstructionsItem)initWithStyle:(unint64_t)style title:(id)title description:(id)description;
@end

@implementation HUInstructionsItem

- (HUInstructionsItem)initWithStyle:(unint64_t)style title:(id)title description:(id)description
{
  v18[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v17 = @"instructionsStyle";
  v9 = MEMORY[0x277CCABB0];
  titleCopy = title;
  v11 = [v9 numberWithUnsignedInteger:style];
  v18[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13 = [v12 mutableCopy];

  [v13 na_safeSetObject:titleCopy forKey:*MEMORY[0x277D13F60]];
  if (descriptionCopy)
  {
    [v13 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277D13E20]];
  }

  v16.receiver = self;
  v16.super_class = HUInstructionsItem;
  v14 = [(HFStaticItem *)&v16 initWithResults:v13];

  return v14;
}

@end