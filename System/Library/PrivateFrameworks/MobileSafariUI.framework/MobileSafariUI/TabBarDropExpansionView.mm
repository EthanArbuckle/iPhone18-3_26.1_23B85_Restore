@interface TabBarDropExpansionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TabBarDropExpansionView)initWithCoder:(id)a3;
- (TabBarDropExpansionView)initWithFrame:(CGRect)a3;
- (TabBarDropExpansionViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
@end

@implementation TabBarDropExpansionView

- (TabBarDropExpansionView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = TabBarDropExpansionView;
  v3 = [(TabBarDropExpansionView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(TabBarDropExpansionView *)v3 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v3];
  [(TabBarDropExpansionView *)v3 addInteraction:v5];

  return v3;
}

- (TabBarDropExpansionView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TabBarDropExpansionView;
  return [(TabBarDropExpansionView *)&v4 initWithCoder:a3];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type] == 9)
  {
    v10.receiver = self;
    v10.super_class = TabBarDropExpansionView;
    v8 = [(TabBarDropExpansionView *)&v10 pointInside:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type] == 9)
  {
    v10.receiver = self;
    v10.super_class = TabBarDropExpansionView;
    v8 = [(TabBarDropExpansionView *)&v10 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarDropExpansionView:self didBeginTrackingDropSession:v6];
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarDropExpansionView:self didEndTrackingDropSession:v6];
  }
}

- (TabBarDropExpansionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end