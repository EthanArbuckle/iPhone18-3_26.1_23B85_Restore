@interface SGWalletOrderSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionAttributedSubtitle;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (void)setSuggestionDelegate:(id)delegate;
@end

@implementation SGWalletOrderSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81B5A24();

  return v2;
}

- (void)setSuggestionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B81B5ABC();
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionTitle
{
  selfCopy = self;
  sub_1B81B6C70();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionSubtitle
{
  selfCopy = self;
  sub_1B81B6DEC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1B81F8F58();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)suggestionAttributedSubtitle
{
  selfCopy = self;
  v3 = sub_1B81B6F6C();

  return v3;
}

- (id)suggestionPrimaryAction
{
  selfCopy = self;
  v3 = sub_1B81B7024();

  return v3;
}

- (id)suggestionCategoryImage
{
  selfCopy = self;
  v3 = sub_1B81B7758();

  return v3;
}

- (id)suggestionCategorySubtitleForItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  selfCopy = self;
  sub_1B81B7970(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1B81F8F58();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)realtimeSuggestion
{
  selfCopy = self;
  v3 = sub_1B81B7CE8();

  return v3;
}

@end