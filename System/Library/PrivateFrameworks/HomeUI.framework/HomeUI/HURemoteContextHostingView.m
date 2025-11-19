@interface HURemoteContextHostingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HURemoteContextHostingView)initWithContentView:(id)a3;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (unint64_t)maskedCorners;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)setContentView:(id)a3;
- (void)setMaskedCorners:(unint64_t)a3;
@end

@implementation HURemoteContextHostingView

- (HURemoteContextHostingView)initWithContentView:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = HURemoteContextHostingView;
  v5 = [(HURemoteContextHostingView *)&v36 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(HURemoteContextHostingView *)v5 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v9 = [v8 initWithFrame:?];
    destinationOutContainerView = v6->_destinationOutContainerView;
    v6->_destinationOutContainerView = v9;

    v11 = [(UIView *)v6->_destinationOutContainerView layer];
    [v11 setAllowsGroupBlending:0];

    [(HURemoteContextHostingView *)v6 addSubview:v6->_destinationOutContainerView];
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v13 = [v12 initWithFrame:?];
    destinationOutView = v6->_destinationOutView;
    v6->_destinationOutView = v13;

    [(UIView *)v6->_destinationOutView setClipsToBounds:1];
    v15 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v6->_destinationOutView setBackgroundColor:v15];

    v16 = *MEMORY[0x277CDA310];
    v17 = [(UIView *)v6->_destinationOutView layer];
    [v17 setCompositingFilter:v16];

    [(UIView *)v6->_destinationOutContainerView addSubview:v6->_destinationOutView];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    [(HURemoteContextHostingView *)v6 bounds];
    v19 = [v18 initWithFrame:?];
    destinationOverView = v6->_destinationOverView;
    v6->_destinationOverView = v19;

    v21 = *MEMORY[0x277CDA318];
    v22 = [(UIView *)v6->_destinationOverView layer];
    [v22 setCompositingFilter:v21];

    [(HURemoteContextHostingView *)v6 addSubview:v6->_destinationOverView];
    [(HURemoteContextHostingView *)v6 setContentView:v4];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = [(HURemoteContextHostingView *)v6 destinationOutView];
    v37[0] = v23;
    v24 = [(HURemoteContextHostingView *)v6 destinationOutContainerView];
    v37[1] = v24;
    v25 = [(HURemoteContextHostingView *)v6 destinationOverView];
    v37[2] = v25;
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

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = [(HURemoteContextHostingView *)self destinationOverView];
    [v7 addSubview:v9];

    [(HURemoteContextHostingView *)self bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)v9 setAutoresizingMask:18];
    v8 = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v9 setBackgroundColor:v8];

    v5 = v9;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HURemoteContextHostingView *)self contentView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HURemoteContextHostingView *)self contentView];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
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
  v2 = [(HURemoteContextHostingView *)self destinationOutView];
  v3 = [v2 layer];
  v4 = [v3 maskedCorners];

  return v4 & 0xF;
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v3 = a3;
  v5 = [(HURemoteContextHostingView *)self destinationOutView];
  v4 = [v5 layer];
  [v4 setMaskedCorners:v3 & 0xF];
}

- (double)_cornerRadius
{
  v2 = [(HURemoteContextHostingView *)self destinationOutView];
  [v2 _cornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setCornerRadius:(double)a3
{
  v4 = [(HURemoteContextHostingView *)self destinationOutView];
  [v4 _setCornerRadius:a3];
}

- (double)_continuousCornerRadius
{
  v2 = [(HURemoteContextHostingView *)self destinationOutView];
  [v2 _continuousCornerRadius];
  v4 = v3;

  return v4;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v4 = [(HURemoteContextHostingView *)self destinationOutView];
  [v4 _setContinuousCornerRadius:a3];
}

@end