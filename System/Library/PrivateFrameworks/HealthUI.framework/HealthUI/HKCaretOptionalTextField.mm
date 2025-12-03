@interface HKCaretOptionalTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)caretRectForPosition:(id)position;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation HKCaretOptionalTextField

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(HKCaretOptionalTextField *)self allowsSelection])
  {
    v10.receiver = self;
    v10.super_class = HKCaretOptionalTextField;
    v8 = [(HKCaretOptionalTextField *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)caretRectForPosition:(id)position
{
  if (self->_allowsSelection)
  {
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = HKCaretOptionalTextField;
    [(HKCaretOptionalTextField *)&v9 caretRectForPosition:position];
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (self->_disableActions)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = HKCaretOptionalTextField;
  return [(HKCaretOptionalTextField *)&v7 canPerformAction:action withSender:sender];
}

@end