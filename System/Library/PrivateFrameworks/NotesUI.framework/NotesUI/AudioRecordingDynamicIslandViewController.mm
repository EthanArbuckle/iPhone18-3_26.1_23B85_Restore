@interface AudioRecordingDynamicIslandViewController
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UIColor)keyColor;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation AudioRecordingDynamicIslandViewController

- (void)setActiveLayoutMode:(int64_t)a3
{
  v4 = self;
  sub_1D4363E54(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D4364514();
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = self;
  v3 = sub_1D4363FC0();

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = self;
  v3 = sub_1D4365594();

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = self;
  v3 = sub_1D4365760();

  return v3;
}

- (UIColor)keyColor
{
  v2 = [objc_opt_self() sharedStyleProvider];
  v3 = [v2 platterKeyColor];

  return v3;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1D43662C0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D436615C;
  v8[3] = &block_descriptor_12;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();
  v7 = self;

  [a3 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

@end