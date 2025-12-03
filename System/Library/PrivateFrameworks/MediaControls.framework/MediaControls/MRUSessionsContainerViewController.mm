@interface MRUSessionsContainerViewController
- (MPMediaControlsConfiguration)configuration;
- (MRUSessionsContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)customRowTappedBlock;
- (id)dismissalBlock;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setConfiguration:(id)configuration;
- (void)setCustomRowTappedBlock:(id)block;
- (void)setDismissalBlock:(id)block;
- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation MRUSessionsContainerViewController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_1A22D8A00();
  [(MRUSessionsContainerViewController *)selfCopy setView:v2];
}

- (MPMediaControlsConfiguration)configuration
{
  v3 = OBJC_IVAR___MRUSessionsContainerViewController_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1A22DA3A4(configuration);
}

- (id)dismissalBlock
{
  v2 = (self + OBJC_IVAR___MRUSessionsContainerViewController_dismissalBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A210E3F0;
    aBlock[3] = &block_descriptor_36_0;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissalBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A211216C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MRUSessionsContainerViewController_dismissalBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A210F5C0(v7);
}

- (id)customRowTappedBlock
{
  v2 = (self + OBJC_IVAR___MRUSessionsContainerViewController_customRowTappedBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A22DAA4C;
    aBlock[3] = &block_descriptor_30;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCustomRowTappedBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A22DBB88;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___MRUSessionsContainerViewController_customRowTappedBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1A210F5C0(v7);
}

- (void)transitionToVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_1A22DAC5C(visible, animatedCopy);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_1A22DB320();
}

- (MRUSessionsContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1A22E65C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1A22DB514(v5, v7, bundle);
}

@end