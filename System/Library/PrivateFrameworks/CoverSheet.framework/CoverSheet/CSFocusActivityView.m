@interface CSFocusActivityView
+ (CGSize)activityViewSize;
- (CGRect)_activityIndicatorFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CSFocusActivityViewDelegate)delegate;
- (void)_addActivityIndicatorTargetActions;
- (void)_handleButtonPress:(id)a3;
- (void)_removeActivityIndicatorTargetActions;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeIndicator;
- (void)setActivity:(id)a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [CSFocusActivityIndicator activityIndicatorExpandedSize:a3.width];
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

- (void)setActivity:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && !self->_activityIndicator)
  {
    v5 = objc_alloc_init(CSFocusActivityIndicator);
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v5;

    [(CSFocusActivityIndicator *)self->_activityIndicator sizeToFit];
    [(CSFocusActivityView *)self addSubview:self->_activityIndicator];
    [(CSFocusActivityView *)self _addActivityIndicatorTargetActions];
    v4 = v7;
  }

  [(CSFocusActivityIndicator *)self->_activityIndicator setActivity:v4];
  [(CSFocusActivityView *)self setNeedsLayout];
}

- (void)removeIndicator
{
  [(CSFocusActivityView *)self _removeActivityIndicatorTargetActions];
  [(CSFocusActivityIndicator *)self->_activityIndicator removeFromSuperview];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  v4 = [(CSFocusActivityView *)self delegate];
  [v4 focusActivityViewIndicatorDidChangeToVisible:{-[CSFocusActivityView isActivityIndicatorVisible](self, "isActivityIndicatorVisible")}];
  [(CSFocusActivityView *)self setNeedsLayout];
}

- (void)_handleButtonPress:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained focusActivityViewIndicatorPressed:v4];
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