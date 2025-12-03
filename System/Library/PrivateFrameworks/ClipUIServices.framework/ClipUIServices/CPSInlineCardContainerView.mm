@interface CPSInlineCardContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CPSInlineCardContainerView)initWithFrame:(CGRect)frame;
- (CPSInlineCardViewDelegate)delegate;
- (void)tappedView:(id)view;
@end

@implementation CPSInlineCardContainerView

- (CPSInlineCardContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CPSInlineCardContainerView;
  v3 = [(CPSInlineCardContainerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)tappedView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didTapBackgroundView:self];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
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
    v12 = [(CPSInlineCardContainerView *)&v14 pointInside:eventCopy withEvent:x, y];
  }

  return v12;
}

- (CPSInlineCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end