@interface PlatformViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC11CalculateUI22PlatformViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)copy:(id)a3;
- (void)loadView;
- (void)longPress:(id)a3;
- (void)paste:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)viewDidLoad;
@end

@implementation PlatformViewController

- (_TtC11CalculateUI22PlatformViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1C1E545FC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1C1DD0F2C(v5, v7, a4);
}

- (void)loadView
{
  type metadata accessor for PlatformView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(PlatformViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1C1DD11FC();
}

- (void)longPress:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 1)
  {
    sub_1C1E04670(v4);
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  v5 = *MEMORY[0x1E69DE0C8];
  swift_unknownObjectRetain();
  v6 = self;
  [a3 removeMenuForIdentifier_];
  v7.receiver = v6;
  v7.super_class = type metadata accessor for PlatformViewController();
  [(PlatformViewController *)&v7 buildMenuWithBuilder:a3];
  swift_unknownObjectRelease();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = sub_1C1E052F8();

  sub_1C1DF712C(v9);
  return v7;
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

- (void)paste:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C1E54A4C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1C1E049A0();

  sub_1C1DF712C(v6);
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_1C1DC0D28(0, &qword_1EBF1D180, 0x1E69DCDF0);
  sub_1C1E05010();
  v6 = sub_1C1E548CC();
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress);
  v7 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC11CalculateUI22PlatformViewController_handleKeypress);
  v9 = self;
  if (!v8)
  {
    v14 = a4;
    goto LABEL_9;
  }

  sub_1C1DD6A34(v8);
  v10 = a4;
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

    v16.receiver = v9;
    v16.super_class = type metadata accessor for PlatformViewController();
    [(PlatformViewController *)&v16 pressesBegan:v15 withEvent:a4];

    return;
  }
}

@end