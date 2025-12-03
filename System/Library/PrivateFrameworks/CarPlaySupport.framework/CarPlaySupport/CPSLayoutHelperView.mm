@interface CPSLayoutHelperView
- (CPSLayoutHelperView)init;
- (CPSLayoutHelperViewDelegate)layoutDelegate;
- (void)layoutSubviews;
@end

@implementation CPSLayoutHelperView

- (CPSLayoutHelperView)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = CPSLayoutHelperView;
  v6 = [(CPSLayoutHelperView *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(CPSLayoutHelperView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CPSLayoutHelperView;
  [(CPSLayoutHelperView *)&v8 layoutSubviews];
  layoutDelegate = [(CPSLayoutHelperView *)selfCopy layoutDelegate];
  v6 = 0;
  v5 = 0;
  if (layoutDelegate)
  {
    layoutDelegate2 = [(CPSLayoutHelperView *)selfCopy layoutDelegate];
    v6 = 1;
    v5 = objc_opt_respondsToSelector();
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](layoutDelegate2);
  }

  *&v2 = MEMORY[0x277D82BD8](layoutDelegate).n128_u64[0];
  if (v5)
  {
    layoutDelegate3 = [(CPSLayoutHelperView *)selfCopy layoutDelegate];
    [(CPSLayoutHelperViewDelegate *)layoutDelegate3 didChangeLayout:selfCopy];
    MEMORY[0x277D82BD8](layoutDelegate3);
  }
}

- (CPSLayoutHelperViewDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end