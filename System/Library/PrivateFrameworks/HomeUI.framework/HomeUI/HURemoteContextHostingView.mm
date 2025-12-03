@interface HURemoteContextHostingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HURemoteContextHostingView)initWithContentView:(id)view;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (unint64_t)maskedCorners;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)setContentView:(id)view;
- (void)setMaskedCorners:(unint64_t)corners;
@end

@implementation HURemoteContextHostingView

- (HURemoteContextHostingView)initWithContentView:(id)view
{
  v39 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v36.receiver = self;
  v36.super_class = HURemoteContextHostingView;
  v5 = [(HURemoteContextHostingView *)&v36 init];
  v6 = v5;
  if (v5)
  {
    layer = [(HURemoteContextHostingView *)v5 layer];
    [layer setAllowsGroupBlending:0];

    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v9 = [v8 initWithFrame:?];
    destinationOutContainerView = v6->_destinationOutContainerView;
    v6->_destinationOutContainerView = v9;

    layer2 = [(UIView *)v6->_destinationOutContainerView layer];
    [layer2 setAllowsGroupBlending:0];

    [(HURemoteContextHostingView *)v6 addSubview:v6->_destinationOutContainerView];
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v13 = [v12 initWithFrame:?];
    destinationOutView = v6->_destinationOutView;
    v6->_destinationOutView = v13;

    [(UIView *)v6->_destinationOutView setClipsToBounds:1];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v6->_destinationOutView setBackgroundColor:systemBackgroundColor];

    v16 = *MEMORY[0x277CDA310];
    layer3 = [(UIView *)v6->_destinationOutView layer];
    [layer3 setCompositingFilter:v16];

    [(UIView *)v6->_destinationOutContainerView addSubview:v6->_destinationOutView];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v19 = [v18 initWithFrame:?];
    destinationOverView = v6->_destinationOverView;
    v6->_destinationOverView = v19;

    v21 = *MEMORY[0x277CDA318];
    layer4 = [(UIView *)v6->_destinationOverView layer];
    [layer4 setCompositingFilter:v21];

    [(HURemoteContextHostingView *)v6 addSubview:v6->_destinationOverView];
    [(HURemoteContextHostingView *)v6 setContentView:viewCopy];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    destinationOutView = [(HURemoteContextHostingView *)v6 destinationOutView];
    v37[0] = destinationOutView;
    destinationOutContainerView = [(HURemoteContextHostingView *)v6 destinationOutContainerView];
    v37[1] = destinationOutContainerView;
    destinationOverView = [(HURemoteContextHostingView *)v6 destinationOverView];
    v37[2] = destinationOverView;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

    v27 = [v26 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v33;
      do
      {
        v30 = 0;
        do
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v32 + 1) + 8 * v30++) setAutoresizingMask:18];
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v28);
    }
  }

  return v6;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    destinationOverView = [(HURemoteContextHostingView *)self destinationOverView];
    [destinationOverView addSubview:v9];

    [(HURemoteContextHostingView *)self bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)v9 setAutoresizingMask:18];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v9 setBackgroundColor:systemBlackColor];

    viewCopy = v9;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(HURemoteContextHostingView *)self contentView];
  [contentView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  contentView = [(HURemoteContextHostingView *)self contentView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [contentView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (unint64_t)maskedCorners
{
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  layer = [destinationOutView layer];
  maskedCorners = [layer maskedCorners];

  return maskedCorners & 0xF;
}

- (void)setMaskedCorners:(unint64_t)corners
{
  cornersCopy = corners;
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  layer = [destinationOutView layer];
  [layer setMaskedCorners:cornersCopy & 0xF];
}

- (double)_cornerRadius
{
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  [destinationOutView _cornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setCornerRadius:(double)radius
{
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  [destinationOutView _setCornerRadius:radius];
}

- (double)_continuousCornerRadius
{
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  [destinationOutView _continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  destinationOutView = [(HURemoteContextHostingView *)self destinationOutView];
  [destinationOutView _setContinuousCornerRadius:radius];
}

@end