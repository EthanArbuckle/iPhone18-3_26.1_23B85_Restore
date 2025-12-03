@interface FMFindingViewController
- (BOOL)accessibilityFoundPlayerViewIsVisible;
- (CGRect)accessibilityFoundPlayerViewAXFrame;
- (NSString)description;
- (_TtC11FMFindingUI23FMFindingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (unsigned)accessibilityModeRawValue;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)closeActionWithSender:(id)sender;
- (void)handlePartPickerWithSender:(id)sender;
- (void)openMessagesActionWithSender:(id)sender;
- (void)playSoundActionWithSender:(id)sender;
- (void)torchActionWithSender:(id)sender;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FMFindingViewController

- (void)closeActionWithSender:(id)sender
{
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v7[4] = sub_24A592CFC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24A5A8458;
  v7[3] = &unk_285DA66B8;
  v5 = _Block_copy(v7);
  selfCopy = self;

  [(FMFindingViewController *)selfCopy dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

- (void)handlePartPickerWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24A62F234();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24A5913F4(v6);

  sub_24A50D6A4(v6, &unk_27EF50780, &qword_24A638470);
}

- (void)playSoundActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_24A5924DC();
}

- (void)openMessagesActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_24A5926B4();
}

- (void)torchActionWithSender:(id)sender
{
  selfCopy = self;
  sub_24A591960(2, 1);
  sub_24A58FF64();
}

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)applicationDidEnterBackground
{
  selfCopy = self;
  sub_24A5BF584();
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_24A5BF95C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A5BFAA8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24A5BFBF8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24A5C03C8(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24A5C0558(disappear);
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24A5C06C0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11FMFindingUI23FMFindingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unsigned)accessibilityModeRawValue
{
  selfCopy = self;
  v3 = sub_24A5D8788();

  return v3;
}

- (BOOL)accessibilityFoundPlayerViewIsVisible
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v2)
  {
    return *(v2 + OBJC_IVAR____TtC11FMFindingUI14FMAVPlayerView_isShown);
  }

  else
  {
    return 0;
  }
}

- (CGRect)accessibilityFoundPlayerViewAXFrame
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView);
  if (v2)
  {
    [v2 accessibilityFrame];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end