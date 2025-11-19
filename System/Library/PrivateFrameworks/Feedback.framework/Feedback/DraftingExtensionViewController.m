@interface DraftingExtensionViewController
- (_TtC8Feedback31DraftingExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)controller:(id)a3 didAttachLocalFile:(id)a4;
- (void)controller:(id)a3 didClickSwitchAccountsWithCurrentUser:(id)a4;
- (void)controller:(id)a3 didFailToLoadDraftWithError:(id)a4;
- (void)controller:(id)a3 didFinishLoadingDraft:(id)a4 devicesController:(id)a5 draftingController:(id)a6;
- (void)controller:(id)a3 didFinishSubmissionWithError:(id)a4;
- (void)controller:(id)a3 didRequestDismissalWithSavedDraft:(BOOL)a4;
- (void)controllerDidRequestFullScreenWithController:(id)a3;
- (void)deleteDraft;
- (void)saveDraftWithIsClosing:(BOOL)a3;
- (void)setFeedbackForm:(id)a3 reply:(id)a4;
- (void)setShowsCompletionPage:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation DraftingExtensionViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1B8B8BC7C(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1B8B8C3C0();
}

- (_TtC8Feedback31DraftingExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1B8C25128();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return DraftingExtensionViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)setShowsCompletionPage:(BOOL)a3
{
  v4 = self;
  sub_1B8B90C68(a3, &unk_1F3756998, sub_1B8B96080, &block_descriptor_57);
}

- (void)saveDraftWithIsClosing:(BOOL)a3
{
  v4 = self;
  sub_1B8B90C68(a3, &unk_1F3756920, sub_1B8B96074, &block_descriptor_48);
}

- (void)deleteDraft
{
  v2 = self;
  sub_1B8B9106C();
}

- (void)setFeedbackForm:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  DraftingExtensionViewController.setFeedbackForm(_:reply:)(v8, sub_1B8B96034, v7);
}

- (void)controller:(id)a3 didClickSwitchAccountsWithCurrentUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B8B94E94(v7);
}

- (void)controller:(id)a3 didFinishLoadingDraft:(id)a4 devicesController:(id)a5 draftingController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1B8B950E8(v11, a5, v13);
}

- (void)controller:(id)a3 didAttachLocalFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B8B951E0(v7);
}

- (void)controller:(id)a3 didFinishSubmissionWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  DraftingExtensionViewController.controller(_:didFinishSubmissionWithError:)(v6, a4);
}

- (void)controller:(id)a3 didFailToLoadDraftWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1B8B95BA4(v8);
}

- (void)controller:(id)a3 didRequestDismissalWithSavedDraft:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1B8B95D88(a4);
}

- (void)controllerDidRequestFullScreenWithController:(id)a3
{
  v4 = a3;
  v5 = self;
  _s8Feedback31DraftingExtensionViewControllerC30controllerDidRequestFullScreen4withySo015FBKBugFormTabledE0C_tF_0();
}

@end