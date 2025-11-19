@interface CNChevronButton
- (CNChevronButton)initWithFrame:(CGRect)a3;
- (CNChevronButtonMenuDelegate)delegateView;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation CNChevronButton

- (CNChevronButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CNChevronButton;
  v3 = [(CNChevronButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNChevronButton *)v3 setContextMenuInteractionEnabled:1];
    [(CNChevronButton *)v4 setShowsMenuAsPrimaryAction:1];
  }

  return v4;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v4 = [(CNChevronButton *)self delegateView:a3];
  v5 = [v4 menuConfigurationForChevronButton];

  return v5;
}

- (CNChevronButtonMenuDelegate)delegateView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateView);

  return WeakRetained;
}

@end