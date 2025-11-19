@interface DASLogConditionHistory
@end

@implementation DASLogConditionHistory

void __38___DASLogConditionHistory_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = description_formatter;
  description_formatter = v0;

  [description_formatter setDateStyle:1];
  [description_formatter setTimeStyle:2];
  v2 = description_formatter;
  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v2 setTimeZone:v3];

  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = description_shortFormatter;
  description_shortFormatter = v4;

  [description_shortFormatter setDateStyle:0];
  [description_shortFormatter setTimeStyle:2];
  v6 = description_shortFormatter;
  v7 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v6 setTimeZone:v7];
}

@end