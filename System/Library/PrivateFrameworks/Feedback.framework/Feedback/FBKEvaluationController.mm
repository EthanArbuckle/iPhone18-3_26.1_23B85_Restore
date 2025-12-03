@interface FBKEvaluationController
- (_TtC8Feedback23FBKEvaluationController)init;
- (void)feedbackDraftViewController:(id)controller didCompleteWithResponseType:(int64_t)type responseID:(id)d;
- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback;
- (void)feedbackDraftViewControllerDidCancel:(id)cancel;
- (void)feedbackDraftViewControllerDidLoadForm:(id)form;
- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier;
@end

@implementation FBKEvaluationController

- (_TtC8Feedback23FBKEvaluationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)feedbackDraftViewController:(id)controller didCompleteWithResponseType:(int64_t)type responseID:(id)d
{
  v7 = sub_1B8C25128();
  v9 = v8;
  controllerCopy = controller;
  selfCopy = self;
  sub_1B8BFB408(controllerCopy, v7, v9);
}

- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error
{
  controllerCopy = controller;
  selfCopy = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_23didFailToStartWithErroryAA011FBKFeedbackefC0C_AA08FBKDraftL0OtF_0(controllerCopy);
}

- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error
{
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23448();
  controllerCopy = controller;
  selfCopy = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_18didFailToAttachURL5erroryAA011FBKFeedbackefC0C_10Foundation0K0VAA18FBKAttachmentErrorOtF_0(controllerCopy, v11);

  (*(v8 + 8))(v11, v7);
}

- (void)feedbackDraftViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  FBKEvaluationController.feedbackDraftViewControllerDidCancel(_:)(cancelCopy);
}

- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback
{
  controllerCopy = controller;
  feedbackCopy = feedback;
  selfCopy = self;
  FBKEvaluationController.feedbackDraftViewController(_:didFailToSubmitFeedback:)(controllerCopy, feedbackCopy);
}

- (void)feedbackDraftViewControllerDidLoadForm:(id)form
{
  formCopy = form;
  selfCopy = self;
  _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC11DidLoadFormyyAA011FBKFeedbackefC0CF_0(formCopy);
}

- (void)sheetPresentationControllerDidChangeSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  FBKEvaluationController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(identifierCopy);
}

@end