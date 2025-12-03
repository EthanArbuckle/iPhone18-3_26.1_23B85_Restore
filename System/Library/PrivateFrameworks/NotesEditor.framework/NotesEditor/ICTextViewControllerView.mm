@interface ICTextViewControllerView
- (ICTextViewControllerView)initWithTextView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation ICTextViewControllerView

- (ICTextViewControllerView)initWithTextView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = ICTextViewControllerView;
  v6 = [(ICTextViewControllerView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, view);
  }

  return v7;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  textView = [(ICTextViewControllerView *)self textView];
  [textView frame];
  v10 = v9;

  textView2 = [(ICTextViewControllerView *)self textView];
  [textView2 frame];
  v13 = v12;

  if ((([(ICTextViewControllerView *)self ic_isRTL]& 1) != 0 || x >= v10) && (![(ICTextViewControllerView *)self ic_isRTL]|| x <= v10 + v13))
  {
    v17.receiver = self;
    v17.super_class = ICTextViewControllerView;
    textView3 = [(ICTextViewControllerView *)&v17 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    textView3 = [(ICTextViewControllerView *)self textView];
  }

  v15 = textView3;

  return v15;
}

@end