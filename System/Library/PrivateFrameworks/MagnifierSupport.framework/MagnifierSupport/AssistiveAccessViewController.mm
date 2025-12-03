@interface AssistiveAccessViewController
- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AssistiveAccessViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257C6BBA8();
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled_];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled_];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257C6B6AC();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AssistiveAccessViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(AssistiveAccessViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  sub_257C6BBA8();
  swift_unknownObjectRelease();
}

- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v12 = [(AssistiveAccessViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC16MagnifierSupport29AssistiveAccessViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  v6 = objc_allocWithZone(type metadata accessor for AssistiveAccessLivePreviewView());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame_];
  v10.receiver = self;
  v10.super_class = type metadata accessor for AssistiveAccessViewController();
  v8 = [(AssistiveAccessViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end