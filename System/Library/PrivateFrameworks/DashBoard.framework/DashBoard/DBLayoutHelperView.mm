@interface DBLayoutHelperView
- (DBLayoutHelperView)init;
- (DBLayoutHelperViewDelegate)layoutDelegate;
- (void)layoutSubviews;
@end

@implementation DBLayoutHelperView

- (DBLayoutHelperView)init
{
  v5.receiver = self;
  v5.super_class = DBLayoutHelperView;
  v2 = [(DBLayoutHelperView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DBLayoutHelperView *)v2 setAutoresizingMask:18];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = DBLayoutHelperView;
  [(DBLayoutHelperView *)&v8 layoutSubviews];
  v3 = [(DBLayoutHelperView *)self layoutDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(DBLayoutHelperView *)self layoutDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(DBLayoutHelperView *)self layoutDelegate];
      [v7 didChangeLayout:self];
    }
  }
}

- (DBLayoutHelperViewDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end