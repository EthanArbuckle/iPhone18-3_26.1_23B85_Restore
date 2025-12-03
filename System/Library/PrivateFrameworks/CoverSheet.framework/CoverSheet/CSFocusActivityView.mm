@interface CSFocusActivityView
+ (CGSize)activityViewSize;
- (CGRect)_activityIndicatorFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CSFocusActivityViewDelegate)delegate;
- (void)_addActivityIndicatorTargetActions;
- (void)_handleButtonPress:(id)press;
- (void)_removeActivityIndicatorTargetActions;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeIndicator;
- (void)setActivity:(id)activity;
@end

@implementation CSFocusActivityView

- (void)dealloc
{
  [(CSFocusActivityView *)self _removeActivityIndicatorTargetActions];
  v3.receiver = self;
  v3.super_class = CSFocusActivityView;
  [(CSFocusActivityView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSFocusActivityView;
  [(CSFocusActivityView *)&v4 layoutSubviews];
  activityIndicator = self->_activityIndicator;
  [(CSFocusActivityView *)self _activityIndicatorFrame];
  [(CSFocusActivityIndicator *)activityIndicator setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [CSFocusActivityIndicator activityIndicatorExpandedSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)activityViewSize
{
  +[CSFocusActivityIndicator activityIndicatorExpandedSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  v7 = activityCopy;
  if (activityCopy && !self->_activityIndicator)
  {
    v5 = objc_alloc_init(CSFocusActivityIndicator);
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v5;

    [(CSFocusActivityIndicator *)self->_activityIndicator sizeToFit];
    [(CSFocusActivityView *)self addSubview:self->_activityIndicator];
    [(CSFocusActivityView *)self _addActivityIndicatorTargetActions];
    activityCopy = v7;
  }

  [(CSFocusActivityIndicator *)self->_activityIndicator setActivity:activityCopy];
  [(CSFocusActivityView *)self setNeedsLayout];
}

- (void)removeIndicator
{
  [(CSFocusActivityView *)self _removeActivityIndicatorTargetActions];
  [(CSFocusActivityIndicator *)self->_activityIndicator removeFromSuperview];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  delegate = [(CSFocusActivityView *)self delegate];
  [delegate focusActivityViewIndicatorDidChangeToVisible:{-[CSFocusActivityView isActivityIndicatorVisible](self, "isActivityIndicatorVisible")}];
  [(CSFocusActivityView *)self setNeedsLayout];
}

- (void)_handleButtonPress:(id)press
{
  pressCopy = press;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained focusActivityViewIndicatorPressed:pressCopy];
}

- (void)_addActivityIndicatorTargetActions
{
  [(CSFocusActivityIndicator *)self->_activityIndicator addTarget:self action:sel__handleButtonTouchBegan_ forControlEvents:1];
  [(CSFocusActivityIndicator *)self->_activityIndicator addTarget:self action:sel__handleButtonTouchEnded_ forControlEvents:256];
  [(CSFocusActivityIndicator *)self->_activityIndicator addTarget:self action:sel__handleButtonTouchEnded_ forControlEvents:128];
  activityIndicator = self->_activityIndicator;

  [(CSFocusActivityIndicator *)activityIndicator addTarget:self action:sel__handleButtonPress_ forControlEvents:64];
}

- (void)_removeActivityIndicatorTargetActions
{
  [(CSFocusActivityIndicator *)self->_activityIndicator removeTarget:self action:0 forControlEvents:1];
  [(CSFocusActivityIndicator *)self->_activityIndicator removeTarget:self action:0 forControlEvents:256];
  [(CSFocusActivityIndicator *)self->_activityIndicator removeTarget:self action:0 forControlEvents:128];
  activityIndicator = self->_activityIndicator;

  [(CSFocusActivityIndicator *)activityIndicator removeTarget:self action:0 forControlEvents:64];
}

- (CGRect)_activityIndicatorFrame
{
  if (self->_activityIndicator)
  {
    [(CSFocusActivityView *)self bounds];
    [(CSFocusActivityIndicator *)self->_activityIndicator frame];
    UIRectCenteredIntegralRectScale();
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CSFocusActivityViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end