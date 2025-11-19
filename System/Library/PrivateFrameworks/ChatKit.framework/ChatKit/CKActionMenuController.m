@interface CKActionMenuController
- (BOOL)isActionMenuVisible;
- (CGRect)convertActionMenuFrameToView:(id)a3;
- (CKActionMenuController)initWithActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 blurEffectStyle:(int64_t)a5;
- (CKActionMenuControllerDelegate)delegate;
- (NSArray)actionMenuItems;
- (void)dealloc;
- (void)dismissActionMenuAnimated:(BOOL)a3;
- (void)presentActionMenuFromPoint:(CGPoint)a3 inView:(id)a4 animated:(BOOL)a5;
- (void)setActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation CKActionMenuController

- (void)dealloc
{
  [(CKActionMenuView *)self->_actionMenuView setActionMenuController:0];
  v3.receiver = self;
  v3.super_class = CKActionMenuController;
  [(CKActionMenuController *)&v3 dealloc];
}

- (CKActionMenuController)initWithActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 blurEffectStyle:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CKActionMenuController;
  v9 = [(CKActionMenuController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_shouldDismissOnTap = 1;
    v11 = [[CKActionMenuView alloc] initWithActionMenuItems:v8 defaultActionIndex:a4 blurEffectStyle:a5];
    [(CKActionMenuController *)v10 setActionMenuView:v11];
    [(CKActionMenuView *)v11 setActionMenuController:v10];
  }

  return v10;
}

- (void)setActionMenuItems:(id)a3 defaultActionIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CKActionMenuController *)self actionMenuView];
  [v9 setActionMenuItems:v8 defaultActionIndex:a4 animated:v5];
}

- (NSArray)actionMenuItems
{
  v2 = [(CKActionMenuController *)self actionMenuView];
  v3 = [v2 actionMenuItems];

  return v3;
}

- (BOOL)isActionMenuVisible
{
  v3 = +[CKActionMenuWindow sharedInstance];
  v4 = [v3 actionMenuView];
  v5 = [(CKActionMenuController *)self actionMenuView];
  LOBYTE(self) = v4 == v5;

  return self;
}

- (void)presentActionMenuFromPoint:(CGPoint)a3 inView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v13 = a4;
  v9 = +[CKActionMenuWindow sharedInstance];
  if (v13)
  {
    v10 = [(CKActionMenuController *)self actionMenuView];
    [v9 setShouldDismissOnTap:{-[CKActionMenuController shouldDismissOnTap](self, "shouldDismissOnTap")}];
    v11 = [v13 window];
    v12 = [v11 windowScene];
    [v9 setWindowScene:v12];

    [v9 presentActionMenuView:v10 fromPoint:v13 inView:v5 animated:{x, y}];
  }
}

- (void)dismissActionMenuAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKActionMenuController *)self isActionMenuVisible])
  {
    v4 = +[CKActionMenuWindow sharedInstance];
    [v4 dismissActionMenuViewAnimated:v3];
  }
}

- (CGRect)convertActionMenuFrameToView:(id)a3
{
  v4 = a3;
  v5 = [(CKActionMenuController *)self actionMenuView];
  [v5 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v5 convertRect:v4 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v6, v7}];
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