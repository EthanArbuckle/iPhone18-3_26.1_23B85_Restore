@interface SGReminderSuggestion
- (CLLocation)location;
- (NSAttributedString)notes;
- (NSAttributedString)title;
- (NSDateComponents)dueDateComponents;
- (NSString)locationString;
- (NSURL)url;
- (NSUserActivity)userActivity;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)realtimeSuggestion;
- (id)suggestionAttributedSubtitle;
- (id)suggestionCategory;
- (id)suggestionCategoryImage;
- (id)suggestionCategorySubtitleForItems:(id)a3;
- (id)suggestionDismissAction;
- (id)suggestionImage;
- (id)suggestionPrimaryAction;
- (id)suggestionSubtitle;
- (id)suggestionTitle;
- (int64_t)locationProximity;
- (void)dismissViewController:(id)a3 finished:(BOOL)a4;
- (void)reminderCreationViewController:(id)a3 didCreateReminder:(BOOL)a4 error:(id)a5;
- (void)setSuggestionDelegate:(id)a3;
@end

@implementation SGReminderSuggestion

- (SGSuggestionDelegate)suggestionDelegate
{
  v2 = sub_1B81C8080();

  return v2;
}

- (void)setSuggestionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B81C8128();
}

- (NSAttributedString)title
{
  v2 = self;
  v3 = sub_1B81C8550();

  return v3;
}

- (NSAttributedString)notes
{
  v2 = self;
  v3 = sub_1B81C8620();

  return v3;
}

- (NSDateComponents)dueDateComponents
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7DCC0);
  v4 = OUTLINED_FUNCTION_21(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = self;
  sub_1B81C87A0(v6);

  v8 = sub_1B81F78E8();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1B81F78C8();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (CLLocation)location
{
  v2 = self;
  v3 = sub_1B81C886C();

  return v3;
}

- (NSString)locationString
{
  v2 = self;
  sub_1B81C8B38();
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

- (NSURL)url
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868);
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  sub_1B81C8CB8(&v9 - v4);
  v6 = sub_1B81F79D8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_1B81F79A8();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

- (NSUserActivity)userActivity
{
  v2 = self;
  v3 = sub_1B81C8D44();

  return v3;
}

- (int64_t)locationProximity
{
  v2 = self;
  v3 = sub_1B81C9064();

  return v3;
}

- (void)reminderCreationViewController:(id)a3 didCreateReminder:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1B81C90A4(v8, a4);
}

- (void)dismissViewController:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  SGReminderSuggestion.dismissViewController(_:finished:)(v6, a4);
}

- (id)suggestionTitle
{
  v2 = self;
  SGReminderSuggestion.suggestionTitle()();

  v3 = sub_1B81F8F58();

  return v3;
}

- (id)suggestionPrimaryAction
{
  v2 = self;
  v3 = SGReminderSuggestion.suggestionPrimaryAction()();

  return v3;
}

- (id)suggestionImage
{
  v2 = self;
  v3 = SGReminderSuggestion.suggestionImage()();

  return v3;
}

- (id)suggestionDismissAction
{
  v2 = self;
  v3 = SGReminderSuggestion.suggestionDismissAction()();

  return v3;
}

- (id)suggestionSubtitle
{
  v2 = self;
  object = SGReminderSuggestion.suggestionSubtitle()().value._object;

  if (object)
  {
    v4 = sub_1B81F8F58();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)suggestionAttributedSubtitle
{
  v2 = self;
  v3 = SGReminderSuggestion.suggestionAttributedSubtitle()();

  return v3;
}

- (id)suggestionCategory
{
  SGReminderSuggestion.suggestionCategory()();

  return self;
}

- (id)suggestionCategoryImage
{
  v2 = self;
  v3.super.isa = SGReminderSuggestion.suggestionCategoryImage()().super.isa;

  return v3.super.isa;
}

- (id)suggestionCategorySubtitleForItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0);
  v4 = sub_1B81F90C8();
  v5 = self;
  object = SGReminderSuggestion.suggestionCategorySubtitle(forItems:)(v4).value._object;

  if (object)
  {
    v7 = sub_1B81F8F58();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)realtimeSuggestion
{
  v2 = self;
  v3 = SGReminderSuggestion.realtimeSuggestion()();

  return v3;
}

@end