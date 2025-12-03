@interface DebugFormatSnapshotCanvasView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)doDepthChangedWithSender:(id)sender;
- (void)doHiddenChangedWithSender:(id)sender;
- (void)doPerspectiveWithSender:(id)sender;
- (void)doRotateWithGesture:(id)gesture;
- (void)doTranslateWithGesture:(id)gesture;
- (void)doZoomWithGesture:(id)gesture;
- (void)layoutSubviews;
@end

@implementation DebugFormatSnapshotCanvasView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D71F70DC();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D71F725C(event, x, y);

  return v10;
}

- (void)doRotateWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1D71F7F68(gestureCopy);
}

- (void)doTranslateWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1D71F8138(gestureCopy);
}

- (void)doZoomWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1D71F82B4(gestureCopy);
}

- (void)doPerspectiveWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D71F8424(senderCopy);
}

- (void)doDepthChangedWithSender:(id)sender
{
  selfCopy = self;
  sub_1D71F650C();
}

- (void)doHiddenChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D71F8714(senderCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1D71F89D8();

  return v9 & 1;
}

@end