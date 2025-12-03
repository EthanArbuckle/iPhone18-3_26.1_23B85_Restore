@interface SUUINavigationBarMenusController
- (SUUINavigationBarMenusController)initWithMenuViewElements:(id)elements;
- (id)_menuViewElementForView:(id)view;
- (id)view;
- (void)_destroyPopover;
- (void)_menuButtonAction:(id)action;
- (void)dealloc;
- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index;
- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view;
- (void)reloadSectionViews;
- (void)willAppearInNavigationBar;
@end

@implementation SUUINavigationBarMenusController

- (SUUINavigationBarMenusController)initWithMenuViewElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = SUUINavigationBarMenusController;
  v5 = [(SUUINavigationBarMenusController *)&v9 init];
  if (v5)
  {
    v6 = [elementsCopy copy];
    menuViewElements = v5->_menuViewElements;
    v5->_menuViewElements = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(SUUINavigationBarMenusView *)self->_menusView setButtonTarget:0 action:0];
  [(SUUIMenuPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUINavigationBarMenusController;
  [(SUUINavigationBarSectionController *)&v3 dealloc];
}

- (void)reloadSectionViews
{
  context = [(SUUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;

  menusView = self->_menusView;
  menuViewElements = self->_menuViewElements;
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  [(SUUINavigationBarMenusView *)menusView reloadWithMenus:menuViewElements width:v5 context:viewLayoutContext];

  v9.receiver = self;
  v9.super_class = SUUINavigationBarMenusController;
  [(SUUINavigationBarSectionController *)&v9 reloadSectionViews];
}

- (id)view
{
  menusView = self->_menusView;
  if (!menusView)
  {
    v4 = objc_alloc_init(SUUINavigationBarMenusView);
    v5 = self->_menusView;
    self->_menusView = v4;

    v6 = self->_menusView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIViewReuseView *)v6 setBackgroundColor:clearColor];

    [(SUUINavigationBarMenusView *)self->_menusView setButtonTarget:self action:sel__menuButtonAction_];
    [(SUUINavigationBarMenusView *)self->_menusView setContentInset:1.0, 20.0, 0.0, 20.0];
    menusView = self->_menusView;
  }

  return menusView;
}

- (void)willAppearInNavigationBar
{
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  context = [(SUUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v6 = v5;

  [SUUINavigationBarMenusView requestLayoutWithMenus:self->_menuViewElements width:v6 context:viewLayoutContext];
  v7.receiver = self;
  v7.super_class = SUUINavigationBarMenusController;
  [(SUUINavigationBarSectionController *)&v7 willAppearInNavigationBar];
}

- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index
{
  v6 = [(SUUINavigationBarMenusController *)self _menuViewElementForView:self->_focusedMenuButton];
  [v6 dispatchEventOfType:2 forItemAtIndex:index];
  [(SUUINavigationBarMenusController *)self _destroyPopover];
}

- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view
{
  [(UIControl *)self->_focusedMenuButton frame:popover];
  rect->origin.x = v6;
  rect->origin.y = v7;
  rect->size.width = v8;
  rect->size.height = v9;
}

- (void)_menuButtonAction:(id)action
{
  actionCopy = action;
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(SUUIMenuPopoverController *)popoverController setDelegate:0];
    [(SUUIMenuPopoverController *)self->_popoverController dismissAnimated:1];
    focusedMenuButton = self->_focusedMenuButton;
    self->_focusedMenuButton = 0;

    v7 = self->_popoverController;
    self->_popoverController = 0;
  }

  v8 = [(SUUINavigationBarMenusController *)self _menuViewElementForView:actionCopy];
  if (v8)
  {
    objc_storeStrong(&self->_focusedMenuButton, action);
    v9 = [SUUIMenuPopoverController alloc];
    menuItemTitles = [v8 menuItemTitles];
    v11 = -[SUUIMenuPopoverController initWithMenuTitles:selectedIndex:](v9, "initWithMenuTitles:selectedIndex:", menuItemTitles, [v8 selectedItemIndex]);
    v12 = self->_popoverController;
    self->_popoverController = v11;

    [(SUUIMenuPopoverController *)self->_popoverController setDelegate:self];
    v13 = self->_popoverController;
    [(UIControl *)self->_focusedMenuButton frame];
    [(SUUIMenuPopoverController *)v13 presentFromRect:self->_menusView inView:15 permittedArrowDirections:1 animated:?];
  }
}

- (void)_destroyPopover
{
  [(SUUIMenuPopoverController *)self->_popoverController setDelegate:0];
  focusedMenuButton = self->_focusedMenuButton;
  self->_focusedMenuButton = 0;

  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (id)_menuViewElementForView:(id)view
{
  menusView = self->_menusView;
  viewCopy = view;
  allExistingViews = [(SUUIViewReuseView *)menusView allExistingViews];
  v7 = [allExistingViews indexOfObjectIdenticalTo:viewCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_menuViewElements objectAtIndex:v7];
  }

  return v8;
}

@end