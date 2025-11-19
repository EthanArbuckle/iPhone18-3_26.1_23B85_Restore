@interface ICTextViewControllerView
- (ICTextViewControllerView)initWithTextView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ICTextViewControllerView

- (ICTextViewControllerView)initWithTextView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICTextViewControllerView;
  v6 = [(ICTextViewControllerView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, a3);
  }

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(ICTextViewControllerView *)self textView];
  [v8 frame];
  v10 = v9;

  v11 = [(ICTextViewControllerView *)self textView];
  [v11 frame];
  v13 = v12;

  if ((([(ICTextViewControllerView *)self ic_isRTL]& 1) != 0 || x >= v10) && (![(ICTextViewControllerView *)self ic_isRTL]|| x <= v10 + v13))
  {
    v17.receiver = self;
    v17.super_class = ICTextViewControllerView;
    v14 = [(ICTextViewControllerView *)&v17 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v14 = [(ICTextViewControllerView *)self textView];
  }

  v15 = v14;

  return v15;
}

@end