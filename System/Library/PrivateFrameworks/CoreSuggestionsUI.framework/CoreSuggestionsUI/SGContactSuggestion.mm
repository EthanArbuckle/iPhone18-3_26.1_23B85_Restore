@interface SGContactSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)mailingAddressFromPostalAddress:(id)a3;
- (id)realtimeSuggestion;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)a3;
- (id)suggestionDismissAction;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (void)confirm:(BOOL)a3 suggestion:(id)a4 completion:(id)a5;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)setSuggestionDelegate:(id)a3;
@end

@implementation SGContactSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81A48B4();

  return v2;
}

- (void)setSuggestionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B81A495C();
}

- (id)suggestionTitle
{
  v2 = self;
  sub_1B81A4D38();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionPrimaryAction
{
  v2 = self;
  v3 = sub_1B81A5168();

  return v3;
}

- (id)suggestionSubtitle
{
  v2 = self;
  v3 = sub_1B81A5C78();
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

- (id)suggestionDismissAction
{
  v2 = self;
  v3 = sub_1B81A5E7C();

  return v3;
}

- (id)suggestionImage
{
  v2 = self;
  v3 = sub_1B81A5FC4();

  return v3;
}

- (id)suggestionCategory
{
  sub_1B81A6160();

  return self;
}

- (id)suggestionCategoryImage
{
  v2 = self;
  v3.super.isa = j___s17CoreSuggestionsUI19SGContactSuggestionC12contactImageSo7UIImageCyF().super.isa;

  return v3.super.isa;
}

- (id)suggestionCategorySubtitleForItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  v5 = self;
  v6 = sub_1B81A6350(v4);
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
  v2 = self;
  v3 = sub_1B81A65D4();

  return v3;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v11.is_nil = v8;
  v9 = v8;
  v11.value.super.isa = a4;
  SGContactSuggestion.contactViewController(_:didCompleteWith:)(v6, v11);
}

- (void)confirm:(BOOL)a3 suggestion:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1B81CD628;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  SGContactSuggestion.confirm(_:suggestion:completion:)(a3, v10, v8, v9);
  sub_1B8188E34(v8);
}

- (id)mailingAddressFromPostalAddress:(id)a3
{
  v4 = a3;
  v5 = self;
  SGContactSuggestion.mailingAddressFromPostalAddress(_:)(v4);
  OUTLINED_FUNCTION_5_5();

  v6 = sub_1B81F8F58();

  return v6;
}

@end