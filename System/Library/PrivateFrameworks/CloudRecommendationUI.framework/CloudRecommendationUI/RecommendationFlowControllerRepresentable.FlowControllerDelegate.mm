@interface RecommendationFlowControllerRepresentable.FlowControllerDelegate
- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init;
- (void)userDidCancelAction;
- (void)userDidCompleteAction:(id)action;
@end

@implementation RecommendationFlowControllerRepresentable.FlowControllerDelegate

- (void)userDidCompleteAction:(id)action
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion);
  v4 = *&self->completion[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion];
  actionCopy = action;
  selfCopy = self;

  v5(actionCopy);
}

- (void)userDidCancelAction
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation);
  v3 = *&self->completion[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation];
  selfCopy = self;

  v2(v4);
}

- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end