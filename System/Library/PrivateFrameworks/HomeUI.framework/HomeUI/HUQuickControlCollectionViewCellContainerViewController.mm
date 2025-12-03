@interface HUQuickControlCollectionViewCellContainerViewController
+ (id)intrinsicSizeDescriptorControlSizeDescriptor:(id)descriptor titlePosition:(unint64_t)position;
- (HUQuickControlCollectionViewCellContainerViewController)initWithContentViewController:(id)controller;
- (UIEdgeInsets)preferredContentLayoutFrameInset;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)inset;
- (void)setTitle:(id)title;
- (void)setTitlePosition:(unint64_t)position;
@end

@implementation HUQuickControlCollectionViewCellContainerViewController

- (HUQuickControlCollectionViewCellContainerViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = HUQuickControlCollectionViewCellContainerViewController;
  v6 = [(HUQuickControlCollectionViewCellContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
    v7->_titlePosition = 0;
  }

  return v7;
}

- (void)loadView
{
  contentViewController = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [(HUQuickControlCollectionViewCellContainerViewController *)self addChildViewController:contentViewController];

  v4 = [HUQuickControlCollectionViewCellContainerView alloc];
  titlePosition = [(HUQuickControlCollectionViewCellContainerViewController *)self titlePosition];
  v6 = [(HUQuickControlCollectionViewCellContainerView *)v4 initWithFrame:titlePosition titlePosition:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUQuickControlCollectionViewCellContainerViewController *)self setView:v6];

  contentViewController2 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  view = [contentViewController2 view];
  view2 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [view2 setContentView:view];

  title = [(HUQuickControlCollectionViewCellContainerViewController *)self title];
  view3 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [view3 setTitle:title];

  [(HUQuickControlCollectionViewCellContainerViewController *)self preferredContentLayoutFrameInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view4 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [view4 setPreferredContentLayoutFrameInset:{v13, v15, v17, v19}];

  view5 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  preferredContentFrameLayoutGuide = [view5 preferredContentFrameLayoutGuide];
  contentViewController3 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [contentViewController3 setPreferredFrameLayoutGuide:preferredContentFrameLayoutGuide];

  contentViewController4 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [contentViewController4 didMoveToParentViewController:self];

  v25 = *MEMORY[0x277D768C8];
  v26 = *(MEMORY[0x277D768C8] + 8);
  v27 = *(MEMORY[0x277D768C8] + 16);
  v28 = *(MEMORY[0x277D768C8] + 24);
  contentViewController5 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  view6 = [contentViewController5 view];
  [view6 setLayoutMargins:{v25, v26, v27, v28}];
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewCellContainerViewController;
  titleCopy = title;
  [(HUQuickControlCollectionViewCellContainerViewController *)&v6 setTitle:titleCopy];
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded:v6.receiver];
  [v5 setTitle:titleCopy];
}

- (void)setTitlePosition:(unint64_t)position
{
  self->_titlePosition = position;
  viewIfLoaded = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded];
  [viewIfLoaded setTitlePosition:position];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    view = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
    [view setTitlePosition:position];
  }
}

- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  self->_preferredContentLayoutFrameInset = inset;
  viewIfLoaded = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded];
  [viewIfLoaded setPreferredContentLayoutFrameInset:{top, left, bottom, right}];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  contentViewController = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  v6 = [contentViewController intrinsicSizeDescriptorForControlSize:size];

  v7 = [objc_opt_class() intrinsicSizeDescriptorControlSizeDescriptor:v6 titlePosition:{-[HUQuickControlCollectionViewCellContainerViewController titlePosition](self, "titlePosition")}];

  return v7;
}

+ (id)intrinsicSizeDescriptorControlSizeDescriptor:(id)descriptor titlePosition:(unint64_t)position
{
  descriptorCopy = descriptor;
  [descriptorCopy intrinsicSize];
  v6 = descriptorCopy;
  if (v7 != *MEMORY[0x277D77260])
  {
    [descriptorCopy intrinsicSize];
    v9 = v8;
    v11 = v10;
    [HUQuickControlCollectionViewCellContainerView preferredChromeHeightForTitlePosition:position];
    v6 = +[HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:flexType:](HUIntrinsicSizeDescriptor, "descriptorWithIntrinsicSize:flexType:", [descriptorCopy flexType], v9, v11 + v12);
  }

  return v6;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v17.receiver = self;
  v17.super_class = HUQuickControlCollectionViewCellContainerViewController;
  containerCopy = container;
  [(HUQuickControlCollectionViewCellContainerViewController *)&v17 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController:v17.receiver];
  v6 = [containerCopy isEqual:v5];

  if (v6)
  {
    [(HUQuickControlCollectionViewCellContainerViewController *)self preferredContentSize];
    v8 = v7;
    v10 = v9;
    contentViewController = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
    [contentViewController preferredContentSize];
    v13 = v12;
    v15 = v14;

    if (v8 != v13 || v10 != v15)
    {
      contentViewController2 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
      [contentViewController2 preferredContentSize];
      [(HUQuickControlCollectionViewCellContainerViewController *)self setPreferredContentSize:?];
    }
  }
}

- (UIEdgeInsets)preferredContentLayoutFrameInset
{
  top = self->_preferredContentLayoutFrameInset.top;
  left = self->_preferredContentLayoutFrameInset.left;
  bottom = self->_preferredContentLayoutFrameInset.bottom;
  right = self->_preferredContentLayoutFrameInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end