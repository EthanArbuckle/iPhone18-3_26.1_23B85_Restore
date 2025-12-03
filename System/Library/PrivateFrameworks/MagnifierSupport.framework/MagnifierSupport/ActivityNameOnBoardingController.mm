@interface ActivityNameOnBoardingController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)activityNameFromTextFieldWithTextField:(id)field;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ActivityNameOnBoardingController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257CCF5C8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v4 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField];
  [v5 becomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_257CCFAD0(returnCopy);

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  selfCopy = self;
  sub_257CCFF30(editingCopy, reason);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v7 = objc_opt_self();
  fieldCopy = field;
  selfCopy = self;
  [v7 cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel_activityNameFromTextFieldWithTextField_ object:fieldCopy];
  [(ActivityNameOnBoardingController *)selfCopy performSelector:sel_activityNameFromTextFieldWithTextField_ withObject:fieldCopy afterDelay:0.01];

  return 1;
}

- (void)activityNameFromTextFieldWithTextField:(id)field
{
  fieldCopy = field;
  selfCopy = self;
  sub_257CD01FC(fieldCopy);
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel);
  clearCopy = clear;
  selfCopy = self;
  [v4 setHidden_];
  v7 = selfCopy + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 1;
}

- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = sub_257ECF500();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_257CD0CA8(v9, v11, text, v13, v14, v16, layout);
  }

  text = sub_257ECF500();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_257ECF500();
  v16 = v15;
  return sub_257CD0CA8(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = sub_257ECF500();
  v11 = v10;
  if (text)
  {
    text = sub_257ECF500();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_257CD0EF8(v9, v11, text, v13, icon, layout);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_257CD1290();
}

@end