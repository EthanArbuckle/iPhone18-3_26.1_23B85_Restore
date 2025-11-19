@interface NTPBTodayPersonalizationEvent
@end

@implementation NTPBTodayPersonalizationEvent

void __157__NTPBTodayPersonalizationEvent_FTAdditions__ft_eventWithDate_action_headline_section_headlineIndexInSection_precedingHeadlinesCount_precedingSectionsCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = objc_opt_new();
  [v10 setTagId:v6];

  [v5 floatValue];
  v8 = v7;

  LODWORD(v9) = v8;
  [v10 setScore:v9];
  [*(a1 + 32) addHeadlineTopics:v10];
}

@end