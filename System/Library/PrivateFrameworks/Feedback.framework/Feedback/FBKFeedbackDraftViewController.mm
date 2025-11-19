@interface FBKFeedbackDraftViewController
- (_TtC8Feedback30FBKFeedbackDraftViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didFailSubmissionWithError:(id)a3;
- (void)didRequestViewDismissalWithSaved:(BOOL)a3;
- (void)didRequestViewFullScreen;
- (void)feedbackDidCompleteWithResponseType:(int64_t)a3 responseID:(id)a4 completedForm:(id)a5;
- (void)feedbackDidFailToAttachURL:(id)a3 nsError:(id)a4;
- (void)feedbackRestartDidFailWithError:(id)a3;
@end

@implementation FBKFeedbackDraftViewController

- (_TtC8Feedback30FBKFeedbackDraftViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didRequestViewFullScreen
{
  v2 = self;
  FBKFeedbackDraftViewController.didRequestViewFullScreen()();
}

- (void)didRequestViewDismissalWithSaved:(BOOL)a3
{
  v3 = self;
  _s8Feedback30FBKFeedbackDraftViewControllerC010didRequestD9Dismissal5savedySb_tF_0();
}

- (void)feedbackDidCompleteWithResponseType:(int64_t)a3 responseID:(id)a4 completedForm:(id)a5
{
  v8 = sub_1B8C25128();
  v10 = v9;
  v11 = a5;
  v12 = self;
  FBKFeedbackDraftViewController.feedbackDidComplete(responseType:responseID:completedForm:)(a3, v8, v10, v11);
}

- (void)didFailSubmissionWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  FBKFeedbackDraftViewController.didFailSubmission(error:)(v4);
}

- (void)feedbackDidFailToAttachURL:(id)a3 nsError:(id)a4
{
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23448();
  v11 = a4;
  v12 = self;
  FBKFeedbackDraftViewController.feedbackDidFailToAttachURL(_:nsError:)(v10, v11);

  (*(v7 + 8))(v10, v6);
}

- (void)feedbackRestartDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  FBKFeedbackDraftViewController.feedbackRestartDidFail(error:)(v4);
}

@end