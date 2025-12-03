@interface MagnifyRepresentable.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtCV11CalculateUI20MagnifyRepresentable11Coordinator)init;
@end

@implementation MagnifyRepresentable.Coordinator

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1C1DD8CE4(gestureRecognizerCopy);

  return v9 & 1;
}

- (_TtCV11CalculateUI20MagnifyRepresentable11Coordinator)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCV11CalculateUI20MagnifyRepresentable11Coordinator_initialLocation);
  v4 = type metadata accessor for MagnifyRepresentable.Coordinator();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MagnifyRepresentable.Coordinator *)&v6 init];
}

@end