@interface ICNestedScrollViewPanInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (ICNestedScrollViewPanInteraction)init;
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)scrollViewDidScroll:(id)scroll;
- (void)willMoveToView:(id)view;
@end

@implementation ICNestedScrollViewPanInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21542EBD4(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21542EE30(view);
}

- (ICNestedScrollViewPanInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  selfCopy = self;
  sub_215430E18(recognizerCopy, eventCopy);

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_215431010(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_21543134C(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  v6 = sub_21542F188();
  if (*(v7 + 56))
  {
    [scrollCopy contentOffset];
    sub_215431618(v8);
  }

  (v6)(&v9, 0);
  sub_21542FD78();
}

@end