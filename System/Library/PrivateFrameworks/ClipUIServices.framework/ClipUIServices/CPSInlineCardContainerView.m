@interface CPSInlineCardContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CPSInlineCardContainerView)initWithFrame:(CGRect)a3;
- (CPSInlineCardViewDelegate)delegate;
- (void)tappedView:(id)a3;
@end

@implementation CPSInlineCardContainerView

- (CPSInlineCardContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CPSInlineCardContainerView;
  v3 = [(CPSInlineCardContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_tappedView_];
    tapRecognizer = v3->_tapRecognizer;
    v3->_tapRecognizer = v4;

    [(UITapGestureRecognizer *)v3->_tapRecognizer setDelegate:v3];
    [(CPSInlineCardContainerView *)v3 addGestureRecognizer:v3->_tapRecognizer];
    v6 = v3;
  }

  return v3;
}

- (void)tappedView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapBackgroundView:self];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UIView *)self->_contentView convertPoint:self fromView:x, y];
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_contentView bounds];
  v15.x = v9;
  v15.y = v11;
  if (CGRectContainsPoint(v16, v15))
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CPSInlineCardContainerView;
    v12 = [(CPSInlineCardContainerView *)&v14 pointInside:v7 withEvent:x, y];
  }

  return v12;
}

- (CPSInlineCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end