@interface FBKFeedbackDraftViewController
- (_TtC8Feedback30FBKFeedbackDraftViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didFailSubmissionWithError:(id)error;
- (void)didRequestViewDismissalWithSaved:(BOOL)saved;
- (void)didRequestViewFullScreen;
- (void)feedbackDidCompleteWithResponseType:(int64_t)type responseID:(id)d completedForm:(id)form;
- (void)feedbackDidFailToAttachURL:(id)l nsError:(id)error;
- (void)feedbackRestartDidFailWithError:(id)error;
@end

@implementation FBKFeedbackDraftViewController

- (_TtC8Feedback30FBKFeedbackDraftViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didRequestViewFullScreen
{
  selfCopy = self;
  FBKFeedbackDraftViewController.didRequestViewFullScreen()();
}

- (void)didRequestViewDismissalWithSaved:(BOOL)saved
{
  selfCopy = self;
  _s8Feedback30FBKFeedbackDraftViewControllerC010didRequestD9Dismissal5savedySb_tF_0();
}

- (void)feedbackDidCompleteWithResponseType:(int64_t)type responseID:(id)d completedForm:(id)form
{
  v8 = sub_1B8C25128();
  v10 = v9;
  formCopy = form;
  selfCopy = self;
  FBKFeedbackDraftViewController.feedbackDidComplete(responseType:responseID:completedForm:)(type, v8, v10, formCopy);
}

- (void)didFailSubmissionWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  FBKFeedbackDraftViewController.didFailSubmission(error:)(errorCopy);
}

- (void)feedbackDidFailToAttachURL:(id)l nsError:(id)error
{
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23448();
  errorCopy = error;
  selfCopy = self;
  FBKFeedbackDraftViewController.feedbackDidFailToAttachURL(_:nsError:)(v10, errorCopy);

  (*(v7 + 8))(v10, v6);
}

- (void)feedbackRestartDidFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  FBKFeedbackDraftViewController.feedbackRestartDidFail(error:)(errorCopy);
}

@end