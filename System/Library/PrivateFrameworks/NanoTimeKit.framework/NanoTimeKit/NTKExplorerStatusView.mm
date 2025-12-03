@interface NTKExplorerStatusView
+ (double)dotBorderWidth;
+ (double)dotDiameter;
+ (double)dotSpacing;
+ (double)noServiceDotHeight;
+ (id)connectedDotColor;
+ (id)noServiceDotColor;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKExplorerStatusView)initWithFrame:(CGRect)frame dotLayoutConstraints:(id)constraints dotColorOptions:(id)options;
- (UIColor)connectedDotBackgroundColor;
- (UIColor)connectedDotColor;
- (UIColor)noServiceDotColor;
- (double)dotBorderWidth;
- (double)dotDiameter;
- (double)dotSpacing;
- (double)noServiceDotHeight;
- (void)_applyDotRotationFraction:(double)fraction forDotAtIndex:(unint64_t)index;
- (void)_applyState:(int64_t)state animated:(BOOL)animated;
- (void)_layoutDotLayers;
- (void)_updateDotFillStates;
- (void)setDotColorOptions:(id)options;
- (void)setDotLayoutConstraints:(id)constraints;
- (void)setDotPosition:(int64_t)position animated:(BOOL)animated completion:(id)completion;
- (void)setShowsFullSignalStrength:(BOOL)strength;
- (void)setSignalStrengthBars:(int64_t)bars;
- (void)setState:(int64_t)state animated:(BOOL)animated;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKExplorerStatusView

- (NTKExplorerStatusView)initWithFrame:(CGRect)frame dotLayoutConstraints:(id)constraints dotColorOptions:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  constraintsCopy = constraints;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = NTKExplorerStatusView;
  height = [(NTKExplorerStatusView *)&v23 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_dotLayoutConstraints, constraints);
    objc_storeStrong(&v15->_dotColorOptions, options);
    v16 = 4;
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    do
    {
      v18 = +[_ExplorerDotLayer layer];
      [v17 addObject:v18];
      layer = [(NTKExplorerStatusView *)v15 layer];
      [layer addSublayer:v18];

      --v16;
    }

    while (v16);
    v20 = [v17 copy];
    dotLayers = v15->_dotLayers;
    v15->_dotLayers = v20;

    [(NTKExplorerStatusView *)v15 _layoutDotLayers];
  }

  return v15;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NTKExplorerStatusView *)self dotDiameter:fits.width];
  v5 = v4;
  [(NTKExplorerStatusView *)self dotSpacing];
  v7 = v6 * 3.0 + v5 * 4.0;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setSignalStrengthBars:(int64_t)bars
{
  if (self->_signalStrengthBars != bars)
  {
    self->_signalStrengthBars = bars;
    [(NTKExplorerStatusView *)self _updateDotFillStates];
  }
}

- (void)setShowsFullSignalStrength:(BOOL)strength
{
  if (self->_showsFullSignalStrength != strength)
  {
    self->_showsFullSignalStrength = strength;
    [(NTKExplorerStatusView *)self _updateDotFillStates];
  }
}

- (void)_updateDotFillStates
{
  dotLayers = self->_dotLayers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__NTKExplorerStatusView__updateDotFillStates__block_invoke;
  v3[3] = &unk_278780550;
  v3[4] = self;
  [(NSArray *)dotLayers enumerateObjectsUsingBlock:v3];
}

void __45__NTKExplorerStatusView__updateDotFillStates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  if (*(v6 + 416) == 1)
  {
    v7 = [v5 connectivityDotLayer];
  }

  else
  {
    v8 = a3 + 1;
    v9 = *(v6 + 448);
    v7 = [v5 connectivityDotLayer];
    if (v8 > v9)
    {
      [*(a1 + 32) dotBorderWidth];
      goto LABEL_6;
    }
  }

  [*(a1 + 32) dotDiameter];
  v10 = v11 * 0.5;
LABEL_6:
  [v7 setBorderWidth:v10];
}

- (void)setDotLayoutConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if (![(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints isEqual:?])
  {
    objc_storeStrong(&self->_dotLayoutConstraints, constraints);
    [(NTKExplorerStatusView *)self _layoutDotLayers];
  }
}

- (void)setDotColorOptions:(id)options
{
  optionsCopy = options;
  if (([(NTKExplorerDotColorOptions *)self->_dotColorOptions isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dotColorOptions, options);
    [(NTKExplorerStatusView *)self _layoutDotLayers];
  }
}

- (void)setState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_state != state)
  {
    [(NTKExplorerStatusView *)self _applyState:state animated:animatedCopy];
    self->_state = state;
  }
}

- (void)_applyState:(int64_t)state animated:(BOOL)animated
{
  if ([objc_opt_class() _fixedDotPositionForState:state])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if ([(NSArray *)self->_dotLayers count])
  {
    v6 = 0;
    do
    {
      [(NTKExplorerStatusView *)self _applyDotRotationFraction:v6++ forDotAtIndex:v5];
    }

    while (v6 < [(NSArray *)self->_dotLayers count]);
  }
}

- (double)dotDiameter
{
  [(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints dotDiameter];
  if (v3 <= 2.22044605e-16)
  {
    dotLayoutConstraints = objc_opt_class();
  }

  else
  {
    dotLayoutConstraints = self->_dotLayoutConstraints;
  }

  [dotLayoutConstraints dotDiameter];
  return result;
}

- (double)dotBorderWidth
{
  [(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints dotBorderWidth];
  if (v3 <= 2.22044605e-16)
  {
    dotLayoutConstraints = objc_opt_class();
  }

  else
  {
    dotLayoutConstraints = self->_dotLayoutConstraints;
  }

  [dotLayoutConstraints dotBorderWidth];
  return result;
}

- (double)dotSpacing
{
  [(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints dotSpacing];
  if (v3 <= 2.22044605e-16)
  {
    dotLayoutConstraints = objc_opt_class();
  }

  else
  {
    dotLayoutConstraints = self->_dotLayoutConstraints;
  }

  [dotLayoutConstraints dotSpacing];
  return result;
}

- (double)noServiceDotHeight
{
  [(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints noServiceDotHeight];
  if (v3 <= 2.22044605e-16)
  {
    dotLayoutConstraints = objc_opt_class();
  }

  else
  {
    dotLayoutConstraints = self->_dotLayoutConstraints;
  }

  [dotLayoutConstraints noServiceDotHeight];
  return result;
}

- (UIColor)connectedDotColor
{
  connectedDotColor = [(NTKExplorerDotColorOptions *)self->_dotColorOptions connectedDotColor];
  v3 = connectedDotColor;
  if (connectedDotColor)
  {
    connectedDotColor2 = connectedDotColor;
  }

  else
  {
    connectedDotColor2 = [objc_opt_class() connectedDotColor];
  }

  v5 = connectedDotColor2;

  return v5;
}

- (UIColor)connectedDotBackgroundColor
{
  if (self->_tritiumIsOn)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    connectedDotBackgroundColor = [(NTKExplorerDotColorOptions *)self->_dotColorOptions connectedDotBackgroundColor];
    v4 = connectedDotBackgroundColor;
    if (connectedDotBackgroundColor)
    {
      blackColor = connectedDotBackgroundColor;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    clearColor = blackColor;
  }

  return clearColor;
}

- (UIColor)noServiceDotColor
{
  noServiceDotColor = [(NTKExplorerDotColorOptions *)self->_dotColorOptions noServiceDotColor];
  v3 = noServiceDotColor;
  if (noServiceDotColor)
  {
    noServiceDotColor2 = noServiceDotColor;
  }

  else
  {
    noServiceDotColor2 = [objc_opt_class() noServiceDotColor];
  }

  v5 = noServiceDotColor2;

  return v5;
}

+ (double)dotDiameter
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v2 device];
  v4 = ___LayoutConstants_block_invoke_15(device, device);

  return v4;
}

+ (double)dotSpacing
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v2 device];
  ___LayoutConstants_block_invoke_15(device, device);
  v5 = v4;

  return v5;
}

+ (double)dotBorderWidth
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v2 device];
  ___LayoutConstants_block_invoke_15(device, device);
  v5 = v4;

  return v5;
}

+ (double)noServiceDotHeight
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  device = [v2 device];
  ___LayoutConstants_block_invoke_15(device, device);
  v5 = v4;

  return v5;
}

+ (id)connectedDotColor
{
  if (connectedDotColor_onceToken != -1)
  {
    +[NTKExplorerStatusView connectedDotColor];
  }

  v3 = connectedDotColor___color;

  return v3;
}

void __42__NTKExplorerStatusView_connectedDotColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.462745098 green:0.858823529 blue:0.643137255 alpha:1.0];
  v1 = connectedDotColor___color;
  connectedDotColor___color = v0;
}

+ (id)noServiceDotColor
{
  if (noServiceDotColor_onceToken != -1)
  {
    +[NTKExplorerStatusView noServiceDotColor];
  }

  v3 = noServiceDotColor___color;

  return v3;
}

void __42__NTKExplorerStatusView_noServiceDotColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
  v1 = noServiceDotColor___color;
  noServiceDotColor___color = v0;
}

- (void)_applyDotRotationFraction:(double)fraction forDotAtIndex:(unint64_t)index
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v7 = [(NSArray *)self->_dotLayers objectAtIndex:index];
  CLKInterpolateBetweenFloatsUnclipped();
  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeRotation(&v33, v8, 1.0, 0.0, 0.0);
  v32 = v33;
  connectivityDotBackingLayer = [v7 connectivityDotBackingLayer];
  v31 = v32;
  [connectivityDotBackingLayer setTransform:&v31];

  v30 = v33;
  connectivityDotLayer = [v7 connectivityDotLayer];
  v31 = v30;
  [connectivityDotLayer setTransform:&v31];

  CLKInterpolateBetweenFloatsUnclipped();
  CATransform3DMakeRotation(&v29, v11, 1.0, 0.0, 0.0);
  noServicePillLayer = [v7 noServicePillLayer];
  v31 = v29;
  [noServicePillLayer setTransform:&v31];

  v13 = self->_dotColorOptions;
  noServiceDotColor = [(NTKExplorerDotColorOptions *)v13 noServiceDotColor];
  v15 = noServiceDotColor;
  if (noServiceDotColor)
  {
    v16 = noServiceDotColor;
  }

  else
  {
    v16 = +[NTKExplorerStatusView noServiceDotColor];
  }

  v17 = v16;

  connectedDotColor = [(NTKExplorerDotColorOptions *)v13 connectedDotColor];

  if (connectedDotColor)
  {
    v19 = connectedDotColor;
  }

  else
  {
    v19 = +[NTKExplorerStatusView connectedDotColor];
  }

  v20 = v19;

  v21 = NTKInterpolateBetweenColors();
  cGColor = [v21 CGColor];
  noServicePillLayer2 = [v7 noServicePillLayer];
  [noServicePillLayer2 setBackgroundColor:cGColor];

  cGColor2 = [v21 CGColor];
  connectivityDotLayer2 = [v7 connectivityDotLayer];
  [connectivityDotLayer2 setBorderColor:cGColor2];

  noServicePillLayer3 = [v7 noServicePillLayer];
  fractionCopy = fraction;
  *&v28 = fractionCopy;
  [noServicePillLayer3 setOpacity:v28];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKExplorerStatusView *)self filterProvider];
  v6 = [filterProvider filtersForView:self style:0 fraction:fraction];

  if (v6)
  {
    dotLayers = self->_dotLayers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NTKExplorerStatusView_transitionToMonochromeWithFraction___block_invoke;
    v8[3] = &unk_278780550;
    v9 = v6;
    [(NSArray *)dotLayers enumerateObjectsUsingBlock:v8];
  }
}

void __60__NTKExplorerStatusView_transitionToMonochromeWithFraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 noServicePillLayer];
  [v5 setFilters:v3];

  v6 = *(a1 + 32);
  v7 = [v4 connectivityDotLayer];

  [v7 setFilters:v6];
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKExplorerStatusView *)self filterProvider];
  v4 = [filterProvider filtersForView:self style:0];

  if (v4)
  {
    dotLayers = self->_dotLayers;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__NTKExplorerStatusView_updateMonochromeColor__block_invoke;
    v6[3] = &unk_278780550;
    v7 = v4;
    [(NSArray *)dotLayers enumerateObjectsUsingBlock:v6];
  }
}

void __46__NTKExplorerStatusView_updateMonochromeColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 noServicePillLayer];
  [v5 setFilters:v3];

  v6 = *(a1 + 32);
  v7 = [v4 connectivityDotLayer];

  [v7 setFilters:v6];
}

- (void)_layoutDotLayers
{
  v33[3] = *MEMORY[0x277D85DE8];
  [(NTKExplorerStatusView *)self dotDiameter];
  v4 = v3;
  [(NTKExplorerStatusView *)self dotSpacing];
  v6 = v5;
  [(NTKExplorerStatusView *)self dotDiameter];
  v8 = v7;
  [(NTKExplorerStatusView *)self dotDiameter];
  v10 = v9;
  v32[0] = @"backgroundColor";
  null = [MEMORY[0x277CBEB68] null];
  v33[0] = null;
  v32[1] = @"borderColor";
  null2 = [MEMORY[0x277CBEB68] null];
  v33[1] = null2;
  v32[2] = @"borderWidth";
  null3 = [MEMORY[0x277CBEB68] null];
  v33[2] = null3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

  [(NTKExplorerStatusView *)self noServiceDotHeight];
  v16 = v15;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  dotLayers = self->_dotLayers;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__NTKExplorerStatusView__layoutDotLayers__block_invoke;
  v19[3] = &unk_278780578;
  v22 = 0;
  v23 = 0;
  v24 = v8;
  v25 = v10;
  v26 = v4;
  v27 = v6;
  v28 = 0;
  v29 = 0;
  v30 = v8;
  v31 = v16;
  v20 = v14;
  selfCopy = self;
  v18 = v14;
  [(NSArray *)dotLayers enumerateObjectsUsingBlock:v19];
  [MEMORY[0x277CD9FF0] commit];
  [(NTKExplorerStatusView *)self _updateDotFillStates];
}

void __41__NTKExplorerStatusView__layoutDotLayers__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = a2;
  [v9 setBounds:{v5, v6, v7, v8}];
  [v9 setPosition:*(a1 + 80) * 0.5 + a3 * (*(a1 + 80) + *(a1 + 88))];
  v16 = [v9 noServicePillLayer];
  [v16 setActions:*(a1 + 32)];
  [v16 setBounds:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  [v16 setCornerRadius:*(a1 + 120) * 0.5];
  v10 = [*(a1 + 40) noServiceDotColor];
  [v16 setBackgroundColor:{objc_msgSend(v10, "CGColor")}];

  [v16 setZPosition:*(a1 + 120) * 0.5];
  v11 = [v9 connectivityDotBackingLayer];
  [v11 setActions:*(a1 + 32)];
  [v11 setCornerRadius:*(a1 + 64) * 0.5];
  v12 = [*(a1 + 40) connectivityDotBackingColor];
  [v11 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];

  [v11 setZPosition:*(a1 + 120) + *(a1 + 72) * 0.5];
  v13 = [v9 connectivityDotLayer];

  [v13 setActions:*(a1 + 32)];
  [v13 setCornerRadius:*(a1 + 64) * 0.5];
  v14 = [*(a1 + 40) connectedDotBackgroundColor];
  [v13 setBackgroundColor:{objc_msgSend(v14, "CGColor")}];

  v15 = [*(a1 + 40) connectedDotColor];
  [v13 setBorderColor:{objc_msgSend(v15, "CGColor")}];

  [v13 setZPosition:*(a1 + 120) + *(a1 + 72) + *(a1 + 72) * 0.5];
}

- (void)setDotPosition:(int64_t)position animated:(BOOL)animated completion:(id)completion
{
  self->_position = position;
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end