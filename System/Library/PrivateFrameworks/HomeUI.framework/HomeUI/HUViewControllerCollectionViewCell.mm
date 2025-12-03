@interface HUViewControllerCollectionViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIViewController)parentViewController;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)property;
- (void)addToParentViewController:(id)controller;
- (void)prepareForReuse;
- (void)setViewController:(id)controller;
@end

@implementation HUViewControllerCollectionViewCell

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_viewController != controllerCopy)
  {
    v10 = controllerCopy;
    parentViewController = [(HUViewControllerCollectionViewCell *)self parentViewController];
    if (parentViewController)
    {
      viewController = self->_viewController;

      if (viewController)
      {
        [(HUViewControllerCollectionViewCell *)self _removeFromParentViewControllerAndClearProperty:0];
      }
    }

    objc_storeStrong(&self->_viewController, controller);
    parentViewController2 = [(HUViewControllerCollectionViewCell *)self parentViewController];

    controllerCopy = v10;
    if (v10 && parentViewController2)
    {
      parentViewController3 = [(HUViewControllerCollectionViewCell *)self parentViewController];
      [(HUViewControllerCollectionViewCell *)self addToParentViewController:parentViewController3];

      controllerCopy = v10;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  if (![(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v45.receiver = self;
    v45.super_class = HUViewControllerCollectionViewCell;
    *&v10 = priority;
    *&v11 = fittingPriority;
    [(HUViewControllerCollectionViewCell *)&v45 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v30 = v43;
    v32 = v44;
LABEL_6:
    v41 = v30;
    v42 = v32;
    goto LABEL_7;
  }

  viewController = [(HUViewControllerCollectionViewCell *)self viewController];
  view = [viewController view];
  [view frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  viewController2 = [(HUViewControllerCollectionViewCell *)self viewController];
  view2 = [viewController2 view];
  [view2 setFrame:{v15, v17, width, v21}];

  viewController3 = [(HUViewControllerCollectionViewCell *)self viewController];
  view3 = [viewController3 view];
  [view3 layoutIfNeeded];

  viewController4 = [(HUViewControllerCollectionViewCell *)self viewController];
  view4 = [viewController4 view];
  [view4 setFrame:{v15, v17, v19, v21}];

  viewController5 = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController5 preferredContentSize];
  v30 = v29;
  v32 = v31;

  if (*MEMORY[0x277CBF3A8] != v30 || *(MEMORY[0x277CBF3A8] + 8) != v32)
  {
    goto LABEL_6;
  }

  viewController6 = [(HUViewControllerCollectionViewCell *)self viewController];
  view5 = [viewController6 view];
  *&v35 = priority;
  *&v36 = fittingPriority;
  [view5 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v35, v36}];
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
LABEL_7:
  result.height = v42;
  result.width = v41;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(HUViewControllerCollectionViewCell *)self allowSelfSizing])
  {
    v8.receiver = self;
    v8.super_class = HUViewControllerCollectionViewCell;
    v5 = [(HUViewControllerCollectionViewCell *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  }

  else
  {
    v5 = attributesCopy;
  }

  v6 = v5;

  return v6;
}

- (void)addToParentViewController:(id)controller
{
  controllerCopy = controller;
  viewController = [(HUViewControllerCollectionViewCell *)self viewController];
  [controllerCopy addChildViewController:viewController];

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

  clearColor = [MEMORY[0x277D75348] clearColor];
  contentView = [(HUViewControllerCollectionViewCell *)self contentView];
  [contentView setBackgroundColor:clearColor];

  contentView2 = [(HUViewControllerCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  viewController2 = [(HUViewControllerCollectionViewCell *)self viewController];
  view = [viewController2 view];
  [view setFrame:{v10, v12, v14, v16}];

  viewController3 = [(HUViewControllerCollectionViewCell *)self viewController];
  view2 = [viewController3 view];
  [view2 setAutoresizingMask:18];

  contentView3 = [(HUViewControllerCollectionViewCell *)self contentView];
  viewController4 = [(HUViewControllerCollectionViewCell *)self viewController];
  view3 = [viewController4 view];
  [contentView3 insertSubview:view3 atIndex:0];

  viewController5 = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController5 didMoveToParentViewController:controllerCopy];

  [(HUViewControllerCollectionViewCell *)self setParentViewController:controllerCopy];
}

- (void)_removeFromParentViewControllerAndClearProperty:(BOOL)property
{
  propertyCopy = property;
  viewController = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController willMoveToParentViewController:0];

  viewController2 = [(HUViewControllerCollectionViewCell *)self viewController];
  view = [viewController2 view];
  [view removeFromSuperview];

  viewController3 = [(HUViewControllerCollectionViewCell *)self viewController];
  [viewController3 removeFromParentViewController];

  if (propertyCopy)
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