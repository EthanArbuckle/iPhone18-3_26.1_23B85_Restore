@interface OnboardingBuddyDeviceSceneViewController
- (_TtC8CameraUI40OnboardingBuddyDeviceSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5;
- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation OnboardingBuddyDeviceSceneViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1A391DBAC(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1A391E548();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1A3920668(a3);
}

- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1A39246DC(a4);
}

- (_TtC8CameraUI40OnboardingBuddyDeviceSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5
{
  v6 = objc_opt_self();
  v7 = self;
  v8 = [v6 mainQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v12[4] = sub_1A3923FD8;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3904E20;
  v12[3] = &block_descriptor_3;
  v10 = _Block_copy(v12);
  v11 = v7;

  [v8 addOperationWithBlock_];

  _Block_release(v10);
}

@end