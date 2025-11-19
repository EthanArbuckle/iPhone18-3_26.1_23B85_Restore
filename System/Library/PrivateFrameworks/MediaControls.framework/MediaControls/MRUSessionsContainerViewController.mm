@interface MRUSessionsContainerViewController
- (MPMediaControlsConfiguration)configuration;
- (MRUSessionsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)customRowTappedBlock;
- (id)dismissalBlock;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setCustomRowTappedBlock:(id)a3;
- (void)setDismissalBlock:(id)a3;
- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MRUSessionsContainerViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_1A22D8A00();
  [(MRUSessionsContainerViewController *)v3 setView:v2];
}

- (MPMediaControlsConfiguration)configuration
{
  v3 = OBJC_IVAR___MRUSessionsContainerViewController_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A22DA3A4(a3);
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

- (void)setDismissalBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
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

- (void)setCustomRowTappedBlock:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_1A210F5C0(v7);
}

- (void)transitionToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  sub_1A22DAC5C(a3, v4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = self;
  sub_1A22DB320();
}

- (MRUSessionsContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1A22E65C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1A22DB514(v5, v7, a4);
}

@end