@interface CEDataclassLocalizationHelper
+ (id)localizedTextForDataclass:(id)dataclass;
@end

@implementation CEDataclassLocalizationHelper

+ (id)localizedTextForDataclass:(id)dataclass
{
  v10[1] = *MEMORY[0x277D85DE8];
  dataclassCopy = dataclass;
  v4 = dataclassCopy;
  if ([dataclassCopy isEqualToString:*MEMORY[0x277CB8960]])
  {
    v4 = *MEMORY[0x277CB89D0];
  }

  v5 = MEMORY[0x277CE8588];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 localizedTextForDataclasses:v6 usedAtBeginningOfSentence:1 forAccount:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end