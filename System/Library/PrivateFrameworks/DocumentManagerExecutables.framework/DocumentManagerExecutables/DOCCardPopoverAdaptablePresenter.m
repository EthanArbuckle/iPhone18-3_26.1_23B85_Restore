@interface DOCCardPopoverAdaptablePresenter
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation DOCCardPopoverAdaptablePresenter

- (void)prepareForPopoverPresentation:(id)a3
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = a3;
  v4 = a3;
  v5 = self;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v6);
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = a4;
  v5 = a4;
  v6 = self;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v7);
}

- (void)presentationControllerWillDismiss:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_isActivelyPresentingPopover) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setIsActivePopoverSource_];

    swift_unknownObjectRelease();
  }
}

@end