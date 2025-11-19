@interface NTKExplorerStatusView
+ (double)dotBorderWidth;
+ (double)dotDiameter;
+ (double)dotSpacing;
+ (double)noServiceDotHeight;
+ (id)connectedDotColor;
+ (id)noServiceDotColor;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKExplorerStatusView)initWithFrame:(CGRect)a3 dotLayoutConstraints:(id)a4 dotColorOptions:(id)a5;
- (UIColor)connectedDotBackgroundColor;
- (UIColor)connectedDotColor;
- (UIColor)noServiceDotColor;
- (double)dotBorderWidth;
- (double)dotDiameter;
- (double)dotSpacing;
- (double)noServiceDotHeight;
- (void)_applyDotRotationFraction:(double)a3 forDotAtIndex:(unint64_t)a4;
- (void)_applyState:(int64_t)a3 animated:(BOOL)a4;
- (void)_layoutDotLayers;
- (void)_updateDotFillStates;
- (void)setDotColorOptions:(id)a3;
- (void)setDotLayoutConstraints:(id)a3;
- (void)setDotPosition:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setShowsFullSignalStrength:(BOOL)a3;
- (void)setSignalStrengthBars:(int64_t)a3;
- (void)setState:(int64_t)a3 animated:(BOOL)a4;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKExplorerStatusView

- (NTKExplorerStatusView)initWithFrame:(CGRect)a3 dotLayoutConstraints:(id)a4 dotColorOptions:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v23.receiver = self;
  v23.super_class = NTKExplorerStatusView;
  v14 = [(NTKExplorerStatusView *)&v23 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dotLayoutConstraints, a4);
    objc_storeStrong(&v15->_dotColorOptions, a5);
    v16 = 4;
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    do
    {
      v18 = +[_ExplorerDotLayer layer];
      [v17 addObject:v18];
      v19 = [(NTKExplorerStatusView *)v15 layer];
      [v19 addSublayer:v18];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NTKExplorerStatusView *)self dotDiameter:a3.width];
  v5 = v4;
  [(NTKExplorerStatusView *)self dotSpacing];
  v7 = v6 * 3.0 + v5 * 4.0;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setSignalStrengthBars:(int64_t)a3
{
  if (self->_signalStrengthBars != a3)
  {
    self->_signalStrengthBars = a3;
    [(NTKExplorerStatusView *)self _updateDotFillStates];
  }
}

- (void)setShowsFullSignalStrength:(BOOL)a3
{
  if (self->_showsFullSignalStrength != a3)
  {
    self->_showsFullSignalStrength = a3;
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

- (void)setDotLayoutConstraints:(id)a3
{
  v5 = a3;
  if (![(NTKExplorerDotLayoutConstraints *)self->_dotLayoutConstraints isEqual:?])
  {
    objc_storeStrong(&self->_dotLayoutConstraints, a3);
    [(NTKExplorerStatusView *)self _layoutDotLayers];
  }
}

- (void)setDotColorOptions:(id)a3
{
  v5 = a3;
  if (([(NTKExplorerDotColorOptions *)self->_dotColorOptions isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dotColorOptions, a3);
    [(NTKExplorerStatusView *)self _layoutDotLayers];
  }
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_state != a3)
  {
    [(NTKExplorerStatusView *)self _applyState:a3 animated:v4];
    self->_state = a3;
  }
}

- (void)_applyState:(int64_t)a3 animated:(BOOL)a4
{
  if ([objc_opt_class() _fixedDotPositionForState:a3])
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
  v2 = [(NTKExplorerDotColorOptions *)self->_dotColorOptions connectedDotColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() connectedDotColor];
  }

  v5 = v4;

  return v5;
}

- (UIColor)connectedDotBackgroundColor
{
  if (self->_tritiumIsOn)
  {
    v2 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v3 = [(NTKExplorerDotColorOptions *)self->_dotColorOptions connectedDotBackgroundColor];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x277D75348] blackColor];
    }

    v2 = v5;
  }

  return v2;
}

- (UIColor)noServiceDotColor
{
  v2 = [(NTKExplorerDotColorOptions *)self->_dotColorOptions noServiceDotColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() noServiceDotColor];
  }

  v5 = v4;

  return v5;
}

+ (double)dotDiameter
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v3 = [v2 device];
  v4 = ___LayoutConstants_block_invoke_15(v3, v3);

  return v4;
}

+ (double)dotSpacing
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v3 = [v2 device];
  ___LayoutConstants_block_invoke_15(v3, v3);
  v5 = v4;

  return v5;
}

+ (double)dotBorderWidth
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v3 = [v2 device];
  ___LayoutConstants_block_invoke_15(v3, v3);
  v5 = v4;

  return v5;
}

+ (double)noServiceDotHeight
{
  v2 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v3 = [v2 device];
  ___LayoutConstants_block_invoke_15(v3, v3);
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

- (void)_applyDotRotationFraction:(double)a3 forDotAtIndex:(unint64_t)a4
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v7 = [(NSArray *)self->_dotLayers objectAtIndex:a4];
  CLKInterpolateBetweenFloatsUnclipped();
  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeRotation(&v33, v8, 1.0, 0.0, 0.0);
  v32 = v33;
  v9 = [v7 connectivityDotBackingLayer];
  v31 = v32;
  [v9 setTransform:&v31];

  v30 = v33;
  v10 = [v7 connectivityDotLayer];
  v31 = v30;
  [v10 setTransform:&v31];

  CLKInterpolateBetweenFloatsUnclipped();
  CATransform3DMakeRotation(&v29, v11, 1.0, 0.0, 0.0);
  v12 = [v7 noServicePillLayer];
  v31 = v29;
  [v12 setTransform:&v31];

  v13 = self->_dotColorOptions;
  v14 = [(NTKExplorerDotColorOptions *)v13 noServiceDotColor];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NTKExplorerStatusView noServiceDotColor];
  }

  v17 = v16;

  v18 = [(NTKExplorerDotColorOptions *)v13 connectedDotColor];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = +[NTKExplorerStatusView connectedDotColor];
  }

  v20 = v19;

  v21 = NTKInterpolateBetweenColors();
  v22 = [v21 CGColor];
  v23 = [v7 noServicePillLayer];
  [v23 setBackgroundColor:v22];

  v24 = [v21 CGColor];
  v25 = [v7 connectivityDotLayer];
  [v25 setBorderColor:v24];

  v27 = [v7 noServicePillLayer];
  v26 = a3;
  *&v28 = v26;
  [v27 setOpacity:v28];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKExplorerStatusView *)self filterProvider];
  v6 = [v5 filtersForView:self style:0 fraction:a3];

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
  v3 = [(NTKExplorerStatusView *)self filterProvider];
  v4 = [v3 filtersForView:self style:0];

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
  v11 = [MEMORY[0x277CBEB68] null];
  v33[0] = v11;
  v32[1] = @"borderColor";
  v12 = [MEMORY[0x277CBEB68] null];
  v33[1] = v12;
  v32[2] = @"borderWidth";
  v13 = [MEMORY[0x277CBEB68] null];
  v33[2] = v13;
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
  v21 = self;
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

- (void)setDotPosition:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  self->_position = a3;
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end