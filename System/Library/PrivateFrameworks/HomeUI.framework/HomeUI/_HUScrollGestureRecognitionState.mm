@interface _HUScrollGestureRecognitionState
- (_HUScrollGestureRecognitionState)initWithGestureRecognizer:(id)recognizer;
@end

@implementation _HUScrollGestureRecognitionState

- (_HUScrollGestureRecognitionState)initWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v9.receiver = self;
  v9.super_class = _HUScrollGestureRecognitionState;
  v6 = [(_HUScrollGestureRecognitionState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gestureRecognizer, recognizer);
  }

  return v7;
}

@end