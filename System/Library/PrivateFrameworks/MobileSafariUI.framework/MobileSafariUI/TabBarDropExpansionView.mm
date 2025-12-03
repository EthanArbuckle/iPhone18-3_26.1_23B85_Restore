@interface TabBarDropExpansionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TabBarDropExpansionView)initWithCoder:(id)coder;
- (TabBarDropExpansionView)initWithFrame:(CGRect)frame;
- (TabBarDropExpansionViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
@end

@implementation TabBarDropExpansionView

- (TabBarDropExpansionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TabBarDropExpansionView;
  v3 = [(TabBarDropExpansionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  layer = [(TabBarDropExpansionView *)v3 layer];
  [layer setHitTestsAsOpaque:1];

  v5 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v3];
  [(TabBarDropExpansionView *)v3 addInteraction:v5];

  return v3;
}

- (TabBarDropExpansionView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TabBarDropExpansionView;
  return [(TabBarDropExpansionView *)&v4 initWithCoder:coder];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    v10.receiver = self;
    v10.super_class = TabBarDropExpansionView;
    v8 = [(TabBarDropExpansionView *)&v10 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    v10.receiver = self;
    v10.super_class = TabBarDropExpansionView;
    v8 = [(TabBarDropExpansionView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarDropExpansionView:self didBeginTrackingDropSession:enterCopy];
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained tabBarDropExpansionView:self didEndTrackingDropSession:endCopy];
  }
}

- (TabBarDropExpansionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end