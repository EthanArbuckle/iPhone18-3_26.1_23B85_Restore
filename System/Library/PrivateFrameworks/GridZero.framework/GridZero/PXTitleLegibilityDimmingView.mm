@interface PXTitleLegibilityDimmingView
- (CGRect)clippingRect;
- (PXTitleLegibilityDimmingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
@end

@implementation PXTitleLegibilityDimmingView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  userData = self->_userData;
  if (userData != v4)
  {
    v13 = v4;
    if (([(PXTitleLegibilityDimmingViewConfiguration *)userData isEqual:v4]& 1) == 0)
    {
      v6 = [(PXTitleLegibilityDimmingViewConfiguration *)v13 copy];
      v7 = self->_userData;
      self->_userData = v6;

      v8 = [(PXTitleLegibilityDimmingViewConfiguration *)v13 gradientImageConfiguration];
      v9 = MEMORY[0x277D755B8];
      v10 = [v8 imageName];
      v11 = [v8 bundle];
      v12 = [v9 px_imageNamed:v10 bundle:v11];
      -[CALayer setContents:](self->_filterLayer, "setContents:", [v12 CGImage]);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)layoutSubviews
{
  [(PXTitleLegibilityDimmingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CABackdropLayer *)self->_backdropLayer setFrame:?];
  [(CALayer *)self->_filterLayer setFrame:v4, v6, v8, v10];
  v11.receiver = self;
  v11.super_class = PXTitleLegibilityDimmingView;
  [(PXTitleLegibilityDimmingView *)&v11 layoutSubviews];
}

- (PXTitleLegibilityDimmingView)initWithFrame:(CGRect)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = PXTitleLegibilityDimmingView;
  v3 = [(PXTitleLegibilityDimmingView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(PXTitleLegibilityDimmingView *)v3 setBackgroundColor:v4];

    [(PXTitleLegibilityDimmingView *)v3 setUserInteractionEnabled:0];
    v5 = [(PXTitleLegibilityDimmingView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = objc_alloc_init(MEMORY[0x277CD9E08]);
    backdropLayer = v3->_backdropLayer;
    v3->_backdropLayer = v6;
    v8 = v6;

    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v20[0] = xmmword_21AC7D5B0;
    v20[1] = xmmword_21AC7D5C0;
    v20[2] = xmmword_21AC7D5D0;
    v20[3] = xmmword_21AC7D5E0;
    v20[4] = xmmword_21AC7D5F0;
    v10 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v20];
    [v9 setValue:v10 forKey:*MEMORY[0x277CDA440]];
    v11 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v24[0] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(CALayer *)v11 setFilters:v12];

    filterLayer = v3->_filterLayer;
    v3->_filterLayer = v11;
    v14 = v11;

    v15 = [MEMORY[0x277CBEB68] null];
    v22[0] = @"onOrderIn";
    v22[1] = @"onOrderOut";
    v23[0] = v15;
    v23[1] = v15;
    v22[2] = @"sublayers";
    v22[3] = @"contents";
    v23[2] = v15;
    v23[3] = v15;
    v22[4] = @"bounds";
    v22[5] = @"position";
    v23[4] = v15;
    v23[5] = v15;
    v22[6] = @"hidden";
    v23[6] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    [(CABackdropLayer *)v8 setActions:v16];
    [(CALayer *)v14 setActions:v16];
    v17 = [(PXTitleLegibilityDimmingView *)v3 layer];
    [v17 addSublayer:v8];

    v18 = [(PXTitleLegibilityDimmingView *)v3 layer];
    [v18 addSublayer:v14];
  }

  return v3;
}

@end