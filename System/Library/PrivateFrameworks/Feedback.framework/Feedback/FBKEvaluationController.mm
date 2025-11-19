@interface FBKEvaluationController
- (_TtC8Feedback23FBKEvaluationController)init;
- (void)feedbackDraftViewController:(id)a3 didCompleteWithResponseType:(int64_t)a4 responseID:(id)a5;
- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5;
- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4;
- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4;
- (void)feedbackDraftViewControllerDidCancel:(id)a3;
- (void)feedbackDraftViewControllerDidLoadForm:(id)a3;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3;
@end

@implementation FBKEvaluationController

- (_TtC8Feedback23FBKEvaluationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)feedbackDraftViewController:(id)a3 didCompleteWithResponseType:(int64_t)a4 responseID:(id)a5
{
  v7 = sub_1B8C25128();
  v9 = v8;
  v10 = a3;
  v11 = self;
  sub_1B8BFB408(v10, v7, v9);
}

- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_23didFailToStartWithErroryAA011FBKFeedbackefC0C_AA08FBKDraftL0OtF_0(v5);
}

- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5
{
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23448();
  v12 = a3;
  v13 = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_18didFailToAttachURL5erroryAA011FBKFeedbackefC0C_10Foundation0K0VAA18FBKAttachmentErrorOtF_0(v12, v11);

  (*(v8 + 8))(v11, v7);
}

- (void)feedbackDraftViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  FBKEvaluationController.feedbackDraftViewControllerDidCancel(_:)(v4);
}

- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  FBKEvaluationController.feedbackDraftViewController(_:didFailToSubmitFeedback:)(v6, v7);
}

- (void)feedbackDraftViewControllerDidLoadForm:(id)a3
{
  v4 = a3;
  v5 = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC11DidLoadFormyyAA011FBKFeedbackefC0CF_0(v4);
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  FBKEvaluationController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(v4);
}

@end