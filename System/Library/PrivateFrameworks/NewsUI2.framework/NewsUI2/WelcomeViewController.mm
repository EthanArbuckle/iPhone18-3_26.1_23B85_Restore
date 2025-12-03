@interface WelcomeViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (NSArray)keyCommands;
- (_TtC7NewsUI221WelcomeViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI221WelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapContinueButton;
- (void)showPrivacyText;
- (void)updateStyling;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation WelcomeViewController

- (_TtC7NewsUI221WelcomeViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_2199EABD8();
}

- (_TtC7NewsUI221WelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2199EAE3C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2199EAFCC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2199EB3F4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2199EBB30(disappear);
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
  selfCopy = self;
  v5(ObjectType, v3);
}

- (void)updateStyling
{
  selfCopy = self;
  sub_2199EC5EC();
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  selfCopy = self;
  sub_2199EABD8();

  (*(v7 + 8))(v9, v6);
  return 0;
}

@end