@interface DOCCardPopoverAdaptablePresenter
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation DOCCardPopoverAdaptablePresenter

- (void)prepareForPopoverPresentation:(id)presentation
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = presentation;
  presentationCopy = presentation;
  selfCopy = self;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v6);
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController);
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCCardPopoverAdaptablePresenter_activePresentationController) = presentationController;
  presentationControllerCopy = presentationController;
  selfCopy = self;
  DOCCardPopoverAdaptablePresenter.activePresentationController.didset(v7);
}

- (void)presentationControllerWillDismiss:(id)dismiss
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