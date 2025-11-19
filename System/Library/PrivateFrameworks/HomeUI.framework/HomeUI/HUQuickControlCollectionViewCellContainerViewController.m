@interface HUQuickControlCollectionViewCellContainerViewController
+ (id)intrinsicSizeDescriptorControlSizeDescriptor:(id)a3 titlePosition:(unint64_t)a4;
- (HUQuickControlCollectionViewCellContainerViewController)initWithContentViewController:(id)a3;
- (UIEdgeInsets)preferredContentLayoutFrameInset;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)a3;
- (void)setTitle:(id)a3;
- (void)setTitlePosition:(unint64_t)a3;
@end

@implementation HUQuickControlCollectionViewCellContainerViewController

- (HUQuickControlCollectionViewCellContainerViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUQuickControlCollectionViewCellContainerViewController;
  v6 = [(HUQuickControlCollectionViewCellContainerViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
    v7->_titlePosition = 0;
  }

  return v7;
}

- (void)loadView
{
  v3 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [(HUQuickControlCollectionViewCellContainerViewController *)self addChildViewController:v3];

  v4 = [HUQuickControlCollectionViewCellContainerView alloc];
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self titlePosition];
  v6 = [(HUQuickControlCollectionViewCellContainerView *)v4 initWithFrame:v5 titlePosition:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUQuickControlCollectionViewCellContainerViewController *)self setView:v6];

  v7 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  v8 = [v7 view];
  v9 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [v9 setContentView:v8];

  v10 = [(HUQuickControlCollectionViewCellContainerViewController *)self title];
  v11 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [v11 setTitle:v10];

  [(HUQuickControlCollectionViewCellContainerViewController *)self preferredContentLayoutFrameInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  [v20 setPreferredContentLayoutFrameInset:{v13, v15, v17, v19}];

  v21 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
  v22 = [v21 preferredContentFrameLayoutGuide];
  v23 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [v23 setPreferredFrameLayoutGuide:v22];

  v24 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  [v24 didMoveToParentViewController:self];

  v25 = *MEMORY[0x277D768C8];
  v26 = *(MEMORY[0x277D768C8] + 8);
  v27 = *(MEMORY[0x277D768C8] + 16);
  v28 = *(MEMORY[0x277D768C8] + 24);
  v30 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  v29 = [v30 view];
  [v29 setLayoutMargins:{v25, v26, v27, v28}];
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewCellContainerViewController;
  v4 = a3;
  [(HUQuickControlCollectionViewCellContainerViewController *)&v6 setTitle:v4];
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded:v6.receiver];
  [v5 setTitle:v4];
}

- (void)setTitlePosition:(unint64_t)a3
{
  self->_titlePosition = a3;
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded];
  [v5 setTitlePosition:a3];

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v6 = [(HUQuickControlCollectionViewCellContainerViewController *)self view];
    [v6 setTitlePosition:a3];
  }
}

- (void)setPreferredContentLayoutFrameInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_preferredContentLayoutFrameInset = a3;
  v7 = [(HUQuickControlCollectionViewCellContainerViewController *)self viewIfLoaded];
  [v7 setPreferredContentLayoutFrameInset:{top, left, bottom, right}];
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
  v6 = [v5 intrinsicSizeDescriptorForControlSize:a3];

  v7 = [objc_opt_class() intrinsicSizeDescriptorControlSizeDescriptor:v6 titlePosition:{-[HUQuickControlCollectionViewCellContainerViewController titlePosition](self, "titlePosition")}];

  return v7;
}

+ (id)intrinsicSizeDescriptorControlSizeDescriptor:(id)a3 titlePosition:(unint64_t)a4
{
  v5 = a3;
  [v5 intrinsicSize];
  v6 = v5;
  if (v7 != *MEMORY[0x277D77260])
  {
    [v5 intrinsicSize];
    v9 = v8;
    v11 = v10;
    [HUQuickControlCollectionViewCellContainerView preferredChromeHeightForTitlePosition:a4];
    v6 = +[HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:flexType:](HUIntrinsicSizeDescriptor, "descriptorWithIntrinsicSize:flexType:", [v5 flexType], v9, v11 + v12);
  }

  return v6;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v17.receiver = self;
  v17.super_class = HUQuickControlCollectionViewCellContainerViewController;
  v4 = a3;
  [(HUQuickControlCollectionViewCellContainerViewController *)&v17 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController:v17.receiver];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [(HUQuickControlCollectionViewCellContainerViewController *)self preferredContentSize];
    v8 = v7;
    v10 = v9;
    v11 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
    [v11 preferredContentSize];
    v13 = v12;
    v15 = v14;

    if (v8 != v13 || v10 != v15)
    {
      v16 = [(HUQuickControlCollectionViewCellContainerViewController *)self contentViewController];
      [v16 preferredContentSize];
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