@interface HKCaretOptionalTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)caretRectForPosition:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation HKCaretOptionalTextField

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(HKCaretOptionalTextField *)self allowsSelection])
  {
    v10.receiver = self;
    v10.super_class = HKCaretOptionalTextField;
    v8 = [(HKCaretOptionalTextField *)&v10 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)caretRectForPosition:(id)a3
{
  if (self->_allowsSelection)
  {
    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = HKCaretOptionalTextField;
    [(HKCaretOptionalTextField *)&v9 caretRectForPosition:a3];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (self->_disableActions)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = HKCaretOptionalTextField;
  return [(HKCaretOptionalTextField *)&v7 canPerformAction:a3 withSender:a4];
}

@end