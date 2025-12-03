@interface OnboardingBuddyDeviceSceneViewController
- (_TtC8CameraUI40OnboardingBuddyDeviceSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation OnboardingBuddyDeviceSceneViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1A391DBAC(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1A391E548();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1A3920668(disappear);
}

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  controllerCopy = controller;
  startCopy = start;
  selfCopy = self;
  sub_1A39246DC(start);
}

- (_TtC8CameraUI40OnboardingBuddyDeviceSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)renderer:(id)renderer didRenderScene:(id)scene atTime:(double)time
{
  v6 = objc_opt_self();
  selfCopy = self;
  mainQueue = [v6 mainQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = selfCopy;
  v12[4] = sub_1A3923FD8;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3904E20;
  v12[3] = &block_descriptor_3;
  v10 = _Block_copy(v12);
  v11 = selfCopy;

  [mainQueue addOperationWithBlock_];

  _Block_release(v10);
}

@end