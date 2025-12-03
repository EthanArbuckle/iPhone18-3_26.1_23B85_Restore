@interface SGRealtimeWalletOrderExtractionSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionAttributedSubtitle;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionFeedbackAction;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (void)setSuggestionDelegate:(id)delegate;
@end

@implementation SGRealtimeWalletOrderExtractionSuggestion

- (id)suggestionCategoryImage
{
  selfCopy = self;
  v3 = sub_1B81B8F88();

  return v3;
}

- (id)suggestionCategorySubtitleForItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  selfCopy = self;
  v6 = sub_1B81B9090(v4);
  v8 = v7;

  if (v8)
  {
    sub_1B81F8F58();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)suggestionImage
{
  selfCopy = self;
  v3 = sub_1B81B93F0();

  return v3;
}

- (id)suggestionAttributedSubtitle
{
  selfCopy = self;
  v3 = sub_1B81B9498();

  return v3;
}

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81B956C();

  return v2;
}

- (void)setSuggestionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B81B960C();
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionPrimaryAction
{
  selfCopy = self;
  v3 = sub_1B81B97F0();

  return v3;
}

- (id)suggestionFeedbackAction
{
  selfCopy = self;
  v3 = sub_1B81BA408();

  return v3;
}

- (id)realtimeSuggestion
{
  v2 = sub_1B81BB270();

  return v2;
}

@end