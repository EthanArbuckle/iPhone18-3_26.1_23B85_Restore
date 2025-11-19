@interface _DBLongPressGestureRecognizer
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _DBLongPressGestureRecognizer

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = _DBLongPressGestureRecognizer;
  v6 = a4;
  [(_DBLongPressGestureRecognizer *)&v7 pressesBegan:a3 withEvent:v6];
  [v6 _hidEvent];

  [(_DBLongPressGestureRecognizer *)self setLastSenderID:IOHIDEventGetSenderID()];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _DBLongPressGestureRecognizer;
  [(_DBLongPressGestureRecognizer *)&v5 pressesEnded:a3 withEvent:a4];
  [(_DBLongPressGestureRecognizer *)self setLastSenderID:0];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _DBLongPressGestureRecognizer;
  [(_DBLongPressGestureRecognizer *)&v5 pressesCancelled:a3 withEvent:a4];
  [(_DBLongPressGestureRecognizer *)self setLastSenderID:0];
}

@end