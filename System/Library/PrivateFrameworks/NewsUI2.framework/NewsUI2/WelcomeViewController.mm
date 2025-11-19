@interface WelcomeViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (NSArray)keyCommands;
- (_TtC7NewsUI221WelcomeViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI221WelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapContinueButton;
- (void)showPrivacyText;
- (void)updateStyling;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WelcomeViewController

- (_TtC7NewsUI221WelcomeViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_startedFirstAnimation) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)showPrivacyText
{
  v2 = self;
  sub_2199EABD8();
}

- (_TtC7NewsUI221WelcomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2199EAE3C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2199EAFCC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2199EB3F4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2199EBB30(a3);
}

- (NSArray)keyCommands
{
  sub_2199ECF08();
  if (v2)
  {
    sub_2186C6148(0, &qword_280E8E798);
    v3 = sub_219BF5904();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)didTapContinueButton
{
  v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 48);
  v6 = self;
  v5(ObjectType, v3);
}

- (void)updateStyling
{
  v2 = self;
  sub_2199EC5EC();
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v10 = self;
  sub_2199EABD8();

  (*(v7 + 8))(v9, v6);
  return 0;
}

@end