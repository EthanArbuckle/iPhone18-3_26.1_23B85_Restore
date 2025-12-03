@interface PDFReplicaBarVisibilityAnimator
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
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
  selfCopy = self;
  sub_1D7AF48A0();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return !v4 || [v4 numberOfTapsRequired] == 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return !v4 || [v4 numberOfTapsRequired] > 1;
}

@end