@interface SGContactSuggestion
- (SGSuggestionDelegate)suggestionDelegate;
- (id)mailingAddressFromPostalAddress:(id)address;
- (id)realtimeSuggestion;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionDismissAction;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (void)confirm:(BOOL)confirm suggestion:(id)suggestion completion:(id)completion;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)setSuggestionDelegate:(id)delegate;
@end

@implementation SGContactSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81A48B4();

  return v2;
}

- (void)setSuggestionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B81A495C();
}

- (id)suggestionTitle
{
  selfCopy = self;
  sub_1B81A4D38();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionPrimaryAction
{
  selfCopy = self;
  v3 = sub_1B81A5168();

  return v3;
}

- (id)suggestionSubtitle
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1B81A5E7C();

  return v3;
}

- (id)suggestionImage
{
  selfCopy = self;
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
  selfCopy = self;
  v3.super.isa = j___s17CoreSuggestionsUI19SGContactSuggestionC12contactImageSo7UIImageCyF().super.isa;

  return v3.super.isa;
}

- (id)suggestionCategorySubtitleForItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1B81A65D4();

  return v3;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  v11.is_nil = selfCopy;
  v9 = selfCopy;
  v11.value.super.isa = contact;
  SGContactSuggestion.contactViewController(_:didCompleteWith:)(controllerCopy, v11);
}

- (void)confirm:(BOOL)confirm suggestion:(id)suggestion completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  suggestionCopy = suggestion;
  selfCopy = self;
  SGContactSuggestion.confirm(_:suggestion:completion:)(confirm, suggestionCopy, v8, v9);
  sub_1B8188E34(v8);
}

- (id)mailingAddressFromPostalAddress:(id)address
{
  addressCopy = address;
  selfCopy = self;
  SGContactSuggestion.mailingAddressFromPostalAddress(_:)(addressCopy);
  OUTLINED_FUNCTION_5_5();

  v6 = sub_1B81F8F58();

  return v6;
}

@end