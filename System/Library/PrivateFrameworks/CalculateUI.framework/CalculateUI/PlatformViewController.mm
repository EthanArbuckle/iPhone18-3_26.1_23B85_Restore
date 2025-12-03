@interface PlatformViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC11CalculateUI22PlatformViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)buildMenuWithBuilder:(id)builder;
- (void)copy:(id)copy;
- (void)loadView;
- (void)longPress:(id)press;
- (void)paste:(id)paste;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation PlatformViewController

- (_TtC11CalculateUI22PlatformViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1C1E545FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1C1DD0F2C(v5, v7, bundle);
}

- (void)loadView
{
  type metadata accessor for PlatformView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(PlatformViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C1DD11FC();
}

- (void)longPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  if ([pressCopy state] == 1)
  {
    sub_1C1E04670(pressCopy);
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  v5 = *MEMORY[0x1E69DE0C8];
  swift_unknownObjectRetain();
  selfCopy = self;
  [builder removeMenuForIdentifier_];
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for PlatformViewController();
  [(PlatformViewController *)&v7 buildMenuWithBuilder:builder];
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = sub_1C1E052F8();

  sub_1C1DF712C(v9);
  return v7;
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard);
  if (v6)
  {
    v7 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handlePasteboard);

    v6(0, 0);
    sub_1C1DD0EB8(v6);
  }

  sub_1C1DF712C(v8);
}

- (void)paste:(id)paste
{
  if (paste)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1C1E049A0();

  sub_1C1DF712C(v6);
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_1C1DC0D28(0, &qword_1EBF1D180, 0x1E69DCDF0);
  sub_1C1E05010();
  v6 = sub_1C1E548CC();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress);
  v7 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress);
  selfCopy = self;
  if (!v8)
  {
    eventCopy = event;
    goto LABEL_9;
  }

  sub_1C1DD6A34(v8);
  eventCopy2 = event;
  v11 = sub_1C1E10720(v6);
  if (!v11)
  {
    sub_1C1DD0EB8(v8);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = v8();
  sub_1C1DD0EB8(v8);

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v15 = sub_1C1E548BC();

    v16.receiver = selfCopy;
    v16.super_class = type metadata accessor for PlatformViewController();
    [(PlatformViewController *)&v16 pressesBegan:v15 withEvent:event];

    return;
  }
}

@end