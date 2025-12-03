@interface DraftingExtensionViewController
- (_TtC8Feedback31DraftingExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)controller:(id)controller didAttachLocalFile:(id)file;
- (void)controller:(id)controller didClickSwitchAccountsWithCurrentUser:(id)user;
- (void)controller:(id)controller didFailToLoadDraftWithError:(id)error;
- (void)controller:(id)controller didFinishLoadingDraft:(id)draft devicesController:(id)devicesController draftingController:(id)draftingController;
- (void)controller:(id)controller didFinishSubmissionWithError:(id)error;
- (void)controller:(id)controller didRequestDismissalWithSavedDraft:(BOOL)draft;
- (void)controllerDidRequestFullScreenWithController:(id)controller;
- (void)deleteDraft;
- (void)saveDraftWithIsClosing:(BOOL)closing;
- (void)setFeedbackForm:(id)form reply:(id)reply;
- (void)setShowsCompletionPage:(BOOL)page;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation DraftingExtensionViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1B8B8BC7C(disappear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B8B8C3C0();
}

- (_TtC8Feedback31DraftingExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1B8C25128();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return DraftingExtensionViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)setShowsCompletionPage:(BOOL)page
{
  selfCopy = self;
  sub_1B8B90C68(page, &unk_1F3756998, sub_1B8B96080, &block_descriptor_57);
}

- (void)saveDraftWithIsClosing:(BOOL)closing
{
  selfCopy = self;
  sub_1B8B90C68(closing, &unk_1F3756920, sub_1B8B96074, &block_descriptor_48);
}

- (void)deleteDraft
{
  selfCopy = self;
  sub_1B8B9106C();
}

- (void)setFeedbackForm:(id)form reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  formCopy = form;
  selfCopy = self;
  DraftingExtensionViewController.setFeedbackForm(_:reply:)(formCopy, sub_1B8B96034, v7);
}

- (void)controller:(id)controller didClickSwitchAccountsWithCurrentUser:(id)user
{
  controllerCopy = controller;
  userCopy = user;
  selfCopy = self;
  sub_1B8B94E94(userCopy);
}

- (void)controller:(id)controller didFinishLoadingDraft:(id)draft devicesController:(id)devicesController draftingController:(id)draftingController
{
  controllerCopy = controller;
  draftCopy = draft;
  devicesControllerCopy = devicesController;
  draftingControllerCopy = draftingController;
  selfCopy = self;
  sub_1B8B950E8(draftCopy, devicesController, draftingControllerCopy);
}

- (void)controller:(id)controller didAttachLocalFile:(id)file
{
  controllerCopy = controller;
  fileCopy = file;
  selfCopy = self;
  sub_1B8B951E0(fileCopy);
}

- (void)controller:(id)controller didFinishSubmissionWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  DraftingExtensionViewController.controller(_:didFinishSubmissionWithError:)(controllerCopy, error);
}

- (void)controller:(id)controller didFailToLoadDraftWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_1B8B95BA4(errorCopy);
}

- (void)controller:(id)controller didRequestDismissalWithSavedDraft:(BOOL)draft
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1B8B95D88(draft);
}

- (void)controllerDidRequestFullScreenWithController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  _s8Feedback31DraftingExtensionViewControllerC30controllerDidRequestFullScreen4withySo015FBKBugFormTabledE0C_tF_0();
}

@end