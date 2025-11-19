@interface SGWalletOrderSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionAttributedSubtitle;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)a3;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (void)setSuggestionDelegate:(id)a3;
@end

@implementation SGWalletOrderSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81B5A24();

  return v2;
}

- (void)setSuggestionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B81B5ABC();
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionTitle
{
  v2 = self;
  sub_1B81B6C70();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionSubtitle
{
  v2 = self;
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
  v2 = self;
  v3 = sub_1B81B6F6C();

  return v3;
}

- (id)suggestionPrimaryAction
{
  v2 = self;
  v3 = sub_1B81B7024();

  return v3;
}

- (id)suggestionCategoryImage
{
  v2 = self;
  v3 = sub_1B81B7758();

  return v3;
}

- (id)suggestionCategorySubtitleForItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  v5 = self;
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
  v2 = self;
  v3 = sub_1B81B7CE8();

  return v3;
}

@end