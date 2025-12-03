@interface CNChevronButton
- (CNChevronButton)initWithFrame:(CGRect)frame;
- (CNChevronButtonMenuDelegate)delegateView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation CNChevronButton

- (CNChevronButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CNChevronButton;
  v3 = [(CNChevronButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNChevronButton *)v3 setContextMenuInteractionEnabled:1];
    [(CNChevronButton *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v4 = [(CNChevronButton *)self delegateView:interaction];
  menuConfigurationForChevronButton = [v4 menuConfigurationForChevronButton];

  return menuConfigurationForChevronButton;
}

- (CNChevronButtonMenuDelegate)delegateView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateView);

  return WeakRetained;
}

@end