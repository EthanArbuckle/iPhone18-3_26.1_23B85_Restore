@interface ActivityNameOnBoardingController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)activityNameFromTextFieldWithTextField:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ActivityNameOnBoardingController

- (void)viewDidLoad
{
  v2 = self;
  sub_257CCF5C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActivityNameOnBoardingController();
  v4 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField];
  [v5 becomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CCFAD0(v4);

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_257CCFF30(v6, a4);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = self;
  [v7 cancelPreviousPerformRequestsWithTarget:v9 selector:sel_activityNameFromTextFieldWithTextField_ object:v8];
  [(ActivityNameOnBoardingController *)v9 performSelector:sel_activityNameFromTextFieldWithTextField_ withObject:v8 afterDelay:0.01];

  return 1;
}

- (void)activityNameFromTextFieldWithTextField:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CD01FC(v4);
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel);
  v5 = a3;
  v6 = self;
  [v4 setHidden_];
  v7 = v6 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate;
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

- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_257ECF500();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_257CD0CA8(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = sub_257ECF500();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_257ECF500();
  v16 = v15;
  return sub_257CD0CA8(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC16MagnifierSupport32ActivityNameOnBoardingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = sub_257ECF500();
  v11 = v10;
  if (a4)
  {
    a4 = sub_257ECF500();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_257CD0EF8(v9, v11, a4, v13, a5, a6);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CD1290();
}

@end