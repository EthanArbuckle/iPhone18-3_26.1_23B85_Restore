@interface EmailSignupViewController
- (_TtC7NewsUI225EmailSignupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)notNow;
- (void)signup;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation EmailSignupViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218AB1674();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  sub_21874E58C(0, &qword_280EE59F8, MEMORY[0x277D6D680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(EmailSignupViewController *)&v13 viewDidAppear:appearCopy];
  v10 = *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler);
  v11 = swift_getObjectType();
  (*(v10 + 64))(v11, v10);
  v12 = sub_219BE6724();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_219BEB044();
  sub_218AB3CEC(v8);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(EmailSignupViewController *)&v7 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 72))(ObjectType, v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(EmailSignupViewController *)&v7 viewDidDisappear:disappearCopy];
  if ([v4 isBeingDismissed])
  {
    v5 = *&v4[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler + 8];
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(ObjectType, v5);
  }
}

- (void)signup
{
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  selfCopy = self;
  v5(ObjectType, v3);
}

- (void)notNow
{
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 48);
  selfCopy = self;
  v5(ObjectType, v3);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(EmailSignupViewController *)&v5 viewWillLayoutSubviews];
  sub_218AB2404();
  sub_218AB25C4();
  headerView = [*&v2[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController] headerView];
  v4 = v2;
  sub_218AB3A8C(headerView, v4, v4);
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v8.receiver;
  [(EmailSignupViewController *)&v8 traitCollectionDidChange:changeCopy];
  headerView = [*&v5[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController] headerView];
  v7 = v5;
  sub_218AB3A8C(headerView, v7, v7);
}

- (_TtC7NewsUI225EmailSignupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end