@interface SGRealtimeWalletOrderExtractionSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionAttributedSubtitle;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)a3;
- (id)suggestionFeedbackAction;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (void)setSuggestionDelegate:(id)a3;
@end

@implementation SGRealtimeWalletOrderExtractionSuggestion

- (id)suggestionCategoryImage
{
  v2 = self;
  v3 = sub_1B81B8F88();

  return v3;
}

- (id)suggestionCategorySubtitleForItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  v5 = self;
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
  v2 = self;
  v3 = sub_1B81B93F0();

  return v3;
}

- (id)suggestionAttributedSubtitle
{
  v2 = self;
  v3 = sub_1B81B9498();

  return v3;
}

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81B956C();

  return v2;
}

- (void)setSuggestionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B81B960C();
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionPrimaryAction
{
  v2 = self;
  v3 = sub_1B81B97F0();

  return v3;
}

- (id)suggestionFeedbackAction
{
  v2 = self;
  v3 = sub_1B81BA408();

  return v3;
}

- (id)realtimeSuggestion
{
  v2 = sub_1B81BB270();

  return v2;
}

@end