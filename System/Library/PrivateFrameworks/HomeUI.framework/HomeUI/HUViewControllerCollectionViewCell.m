@interface HUViewControllerCollectionViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIViewController)parentViewController;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)a3;
- (void)addToParentViewController:(id)a3;
- (void)prepareForReuse;
- (void)setViewController:(id)a3;
@end

@implementation HUViewControllerCollectionViewCell

- (void)setViewController:(id)a3
{
  v5 = a3;
  if (self->_viewController != v5)
  {
    v10 = v5;
    v6 = [(HUViewControllerCollectionViewCell *)self parentViewController];
    if (v6)
    {
      viewController = self->_viewController;

      if (viewController)
      {
        [(HUViewControllerCollectionViewCell *)self _removeFromParentViewControllerAndClearProperty:0];
      }
    }

    objc_storeStrong(&self->_viewController, a3);
    v8 = [(HUViewControllerCollectionViewCell *)self parentViewController];

    v5 = v10;
    if (v10 && v8)
    {
      v9 = [(HUViewControllerCollectionViewCell *)self parentViewController];
      [(HUViewControllerCollectionViewCell *)self addToParentViewController:v9];

      v5 = v10;
    }
  }
}

- (void)prepareForReuse
{
  [(HUViewControllerCollectionViewCell *)self setViewController:0];
  [(HUViewControllerCollectionViewCell *)self setParentViewController:0];
  v3.receiver = self;
  v3.super_class = HUViewControllerCollectionViewCell;
  [(HUViewControllerCollectionViewCell *)&v3 prepareForReuse];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  if (![(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v45.receiver = self;
    v45.super_class = HUViewControllerCollectionViewCell;
    *&v10 = a4;
    *&v11 = a5;
    [(HUViewControllerCollectionViewCell *)&v45 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v30 = v43;
    v32 = v44;
LABEL_6:
    v41 = v30;
    v42 = v32;
    goto LABEL_7;
  }

  v12 = [(HUViewControllerCollectionViewCell *)self viewController];
  v13 = [v12 view];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(HUViewControllerCollectionViewCell *)self viewController];
  v23 = [v22 view];
  [v23 setFrame:{v15, v17, width, v21}];

  v24 = [(HUViewControllerCollectionViewCell *)self viewController];
  v25 = [v24 view];
  [v25 layoutIfNeeded];

  v26 = [(HUViewControllerCollectionViewCell *)self viewController];
  v27 = [v26 view];
  [v27 setFrame:{v15, v17, v19, v21}];

  v28 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v28 preferredContentSize];
  v30 = v29;
  v32 = v31;

  if (*MEMORY[0x277CBF3A8] != v30 || *(MEMORY[0x277CBF3A8] + 8) != v32)
  {
    goto LABEL_6;
  }

  v33 = [(HUViewControllerCollectionViewCell *)self viewController];
  v34 = [v33 view];
  *&v35 = a4;
  *&v36 = a5;
  [v34 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v35, v36}];
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
LABEL_7:
  result.height = v42;
  result.width = v41;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  if ([(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v8.receiver = self;
    v8.super_class = HUViewControllerCollectionViewCell;
    v5 = [(HUViewControllerCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)addToParentViewController:(id)a3
{
  v25 = a3;
  v4 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v25 addChildViewController:v4];

  if ([(HUViewControllerCollectionViewCell *)self useDefaultCellBackgroundColor])
  {
    [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v5 = ;
  [(HUViewControllerCollectionViewCell *)self setBackgroundColor:v5];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(HUViewControllerCollectionViewCell *)self contentView];
  [v7 setBackgroundColor:v6];

  v8 = [(HUViewControllerCollectionViewCell *)self contentView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(HUViewControllerCollectionViewCell *)self viewController];
  v18 = [v17 view];
  [v18 setFrame:{v10, v12, v14, v16}];

  v19 = [(HUViewControllerCollectionViewCell *)self viewController];
  v20 = [v19 view];
  [v20 setAutoresizingMask:18];

  v21 = [(HUViewControllerCollectionViewCell *)self contentView];
  v22 = [(HUViewControllerCollectionViewCell *)self viewController];
  v23 = [v22 view];
  [v21 insertSubview:v23 atIndex:0];

  v24 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v24 didMoveToParentViewController:v25];

  [(HUViewControllerCollectionViewCell *)self setParentViewController:v25];
}

- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v5 willMoveToParentViewController:0];

  v6 = [(HUViewControllerCollectionViewCell *)self viewController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(HUViewControllerCollectionViewCell *)self viewController];
  [v8 removeFromParentViewController];

  if (v3)
  {

    [(HUViewControllerCollectionViewCell *)self setParentViewController:0];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end