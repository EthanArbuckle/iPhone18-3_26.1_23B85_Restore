@interface RecommendationFlowControllerRepresentable.FlowControllerDelegate
- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init;
- (void)userDidCancelAction;
- (void)userDidCompleteAction:(id)a3;
@end

@implementation RecommendationFlowControllerRepresentable.FlowControllerDelegate

- (void)userDidCompleteAction:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion);
  v4 = *&self->completion[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion];
  v6 = a3;
  v7 = self;

  v5(v6);
}

- (void)userDidCancelAction
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation);
  v3 = *&self->completion[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation];
  v5 = self;

  v2(v4);
}

- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end