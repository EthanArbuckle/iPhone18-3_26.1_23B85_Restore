@interface SGWalletPassSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (void)setSuggestionDelegate:(id)delegate;
@end

@implementation SGWalletPassSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81D6FE8();

  return v2;
}

- (void)setSuggestionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B81D7080();
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionTitle
{
  selfCopy = self;
  sub_1B81D7E30();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionSubtitle
{
  selfCopy = self;
  v3 = sub_1B81D8034();
  v5 = v4;

  if (v5)
  {
    sub_1B81F8F58();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)suggestionPrimaryAction
{
  selfCopy = self;
  v3 = sub_1B81D8394();

  return v3;
}

- (id)suggestionCategoryImage
{
  selfCopy = self;
  v3 = sub_1B81D8894();

  return v3;
}

- (id)suggestionCategorySubtitleForItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  selfCopy = self;
  v6 = sub_1B81D8A58(v4);
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

- (id)realtimeSuggestion
{
  selfCopy = self;
  v3 = sub_1B81D8C60();

  return v3;
}

@end