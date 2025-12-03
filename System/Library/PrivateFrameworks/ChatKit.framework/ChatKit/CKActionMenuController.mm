@interface CKActionMenuController
- (BOOL)isActionMenuVisible;
- (CGRect)convertActionMenuFrameToView:(id)view;
- (CKActionMenuController)initWithActionMenuItems:(id)items defaultActionIndex:(unint64_t)index blurEffectStyle:(int64_t)style;
- (CKActionMenuControllerDelegate)delegate;
- (NSArray)actionMenuItems;
- (void)dealloc;
- (void)dismissActionMenuAnimated:(BOOL)animated;
- (void)presentActionMenuFromPoint:(CGPoint)point inView:(id)view animated:(BOOL)animated;
- (void)setActionMenuItems:(id)items defaultActionIndex:(unint64_t)index animated:(BOOL)animated;
@end

@implementation CKActionMenuController

- (void)dealloc
{
  [(CKActionMenuView *)self->_actionMenuView setActionMenuController:0];
  v3.receiver = self;
  v3.super_class = CKActionMenuController;
  [(CKActionMenuController *)&v3 dealloc];
}

- (CKActionMenuController)initWithActionMenuItems:(id)items defaultActionIndex:(unint64_t)index blurEffectStyle:(int64_t)style
{
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = CKActionMenuController;
  v9 = [(CKActionMenuController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_shouldDismissOnTap = 1;
    v11 = [[CKActionMenuView alloc] initWithActionMenuItems:itemsCopy defaultActionIndex:index blurEffectStyle:style];
    [(CKActionMenuController *)v10 setActionMenuView:v11];
    [(CKActionMenuView *)v11 setActionMenuController:v10];
  }

  return v10;
}

- (void)setActionMenuItems:(id)items defaultActionIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  actionMenuView = [(CKActionMenuController *)self actionMenuView];
  [actionMenuView setActionMenuItems:itemsCopy defaultActionIndex:index animated:animatedCopy];
}

- (NSArray)actionMenuItems
{
  actionMenuView = [(CKActionMenuController *)self actionMenuView];
  actionMenuItems = [actionMenuView actionMenuItems];

  return actionMenuItems;
}

- (BOOL)isActionMenuVisible
{
  v3 = +[CKActionMenuWindow sharedInstance];
  actionMenuView = [v3 actionMenuView];
  actionMenuView2 = [(CKActionMenuController *)self actionMenuView];
  LOBYTE(self) = actionMenuView == actionMenuView2;

  return self;
}

- (void)presentActionMenuFromPoint:(CGPoint)point inView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  viewCopy = view;
  v9 = +[CKActionMenuWindow sharedInstance];
  if (viewCopy)
  {
    actionMenuView = [(CKActionMenuController *)self actionMenuView];
    [v9 setShouldDismissOnTap:{-[CKActionMenuController shouldDismissOnTap](self, "shouldDismissOnTap")}];
    window = [viewCopy window];
    windowScene = [window windowScene];
    [v9 setWindowScene:windowScene];

    [v9 presentActionMenuView:actionMenuView fromPoint:viewCopy inView:animatedCopy animated:{x, y}];
  }
}

- (void)dismissActionMenuAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKActionMenuController *)self isActionMenuVisible])
  {
    v4 = +[CKActionMenuWindow sharedInstance];
    [v4 dismissActionMenuViewAnimated:animatedCopy];
  }
}

- (CGRect)convertActionMenuFrameToView:(id)view
{
  viewCopy = view;
  actionMenuView = [(CKActionMenuController *)self actionMenuView];
  [actionMenuView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [actionMenuView convertRect:viewCopy toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v6, v7}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CKActionMenuControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end