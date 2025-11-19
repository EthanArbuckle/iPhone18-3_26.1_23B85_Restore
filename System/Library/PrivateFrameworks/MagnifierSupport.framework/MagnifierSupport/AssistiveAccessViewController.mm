@interface AssistiveAccessViewController
- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AssistiveAccessViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_257C6BBA8();
  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled_];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled_];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257C6B6AC();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AssistiveAccessViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(AssistiveAccessViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  sub_257C6BBA8();
  swift_unknownObjectRelease();
}

- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  v9 = objc_allocWithZone(type metadata accessor for AssistiveAccessLivePreviewView());
  v10 = a4;
  *(&self->super.super.super.isa + v8) = [v9 initWithFrame_];
  if (v7)
  {
    v11 = sub_257ECF4C0();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for AssistiveAccessViewController();
  v12 = [(AssistiveAccessViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  v6 = objc_allocWithZone(type metadata accessor for AssistiveAccessLivePreviewView());
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame_];
  v10.receiver = self;
  v10.super_class = type metadata accessor for AssistiveAccessViewController();
  v8 = [(AssistiveAccessViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end