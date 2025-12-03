@interface VideoPlayerCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator)init;
- (void)didPinch:(id)pinch;
- (void)didTap;
@end

@implementation VideoPlayerCoordinator

- (void)didTap
{
  selfCopy = self;
  sub_1C5B96F6C();
}

- (void)didPinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  sub_1C5B971F4(pinchCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1C5B973C4(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (_TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end