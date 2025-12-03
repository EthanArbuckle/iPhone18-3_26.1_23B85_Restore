@interface AudioRecordingDynamicIslandViewController
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UIColor)keyColor;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation AudioRecordingDynamicIslandViewController

- (void)setActiveLayoutMode:(int64_t)mode
{
  selfCopy = self;
  sub_1D4363E54(mode);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D4364514();
}

- (SBUISystemApertureAccessoryView)leadingView
{
  selfCopy = self;
  v3 = sub_1D4363FC0();

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  selfCopy = self;
  v3 = sub_1D4365594();

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  selfCopy = self;
  v3 = sub_1D4365760();

  return v3;
}

- (UIColor)keyColor
{
  sharedStyleProvider = [objc_opt_self() sharedStyleProvider];
  platterKeyColor = [sharedStyleProvider platterKeyColor];

  return platterKeyColor;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
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
  selfCopy = self;

  [coordinator animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

@end