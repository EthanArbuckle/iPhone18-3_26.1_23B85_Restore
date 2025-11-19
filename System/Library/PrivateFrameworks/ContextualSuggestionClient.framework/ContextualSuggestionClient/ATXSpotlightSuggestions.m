@interface ATXSpotlightSuggestions
- (ATXSpotlightSuggestions)init;
- (id)createSectionsFromServerResults:(id)a3;
@end

@implementation ATXSpotlightSuggestions

- (id)createSectionsFromServerResults:(id)a3
{
  sub_244194FC8(0, &qword_27EDD5FB8, 0x277D4C588);
  v3 = sub_2441D8CFC();

  return v3;
}

- (ATXSpotlightSuggestions)init
{
  v2 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___ATXSpotlightSuggestions_scores) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___ATXSpotlightSuggestions_topics) = v2;
  *(self + OBJC_IVAR___ATXSpotlightSuggestions_sections) = v2;
  v4.receiver = self;
  v4.super_class = ATXSpotlightSuggestions;
  return [(ATXSpotlightSuggestions *)&v4 init];
}

@end