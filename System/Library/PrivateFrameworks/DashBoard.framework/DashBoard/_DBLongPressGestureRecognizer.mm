@interface _DBLongPressGestureRecognizer
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation _DBLongPressGestureRecognizer

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _DBLongPressGestureRecognizer;
  eventCopy = event;
  [(_DBLongPressGestureRecognizer *)&v7 pressesBegan:began withEvent:eventCopy];
  [eventCopy _hidEvent];

  [(_DBLongPressGestureRecognizer *)self setLastSenderID:IOHIDEventGetSenderID()];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _DBLongPressGestureRecognizer;
  [(_DBLongPressGestureRecognizer *)&v5 pressesEnded:ended withEvent:event];
  [(_DBLongPressGestureRecognizer *)self setLastSenderID:0];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _DBLongPressGestureRecognizer;
  [(_DBLongPressGestureRecognizer *)&v5 pressesCancelled:cancelled withEvent:event];
  [(_DBLongPressGestureRecognizer *)self setLastSenderID:0];
}

@end