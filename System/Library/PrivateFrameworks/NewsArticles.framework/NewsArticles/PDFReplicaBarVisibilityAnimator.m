@interface PDFReplicaBarVisibilityAnimator
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (_TtC12NewsArticles31PDFReplicaBarVisibilityAnimator)init;
- (void)handleTapGesture;
@end

@implementation PDFReplicaBarVisibilityAnimator

- (_TtC12NewsArticles31PDFReplicaBarVisibilityAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTapGesture
{
  v2 = self;
  sub_1D7AF48A0();
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return !v4 || [v4 numberOfTapsRequired] == 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return !v4 || [v4 numberOfTapsRequired] > 1;
}

@end