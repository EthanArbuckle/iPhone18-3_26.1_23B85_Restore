@interface CSCoverSheetSDFView
- (CSCoverSheetSDFView)initWithFrame:(CGRect)frame;
- (void)_displayScaleDidChange;
- (void)_layoutLayer:(id)layer inBounds:(CGRect)bounds withHorizontalOutset:(double)outset;
- (void)_setupOutputLayer;
- (void)_updateGlassLayerFilterValues;
- (void)layoutSubviews;
- (void)setEffectMultiplier:(double)multiplier;
@end

@implementation CSCoverSheetSDFView

- (void)_updateGlassLayerFilterValues
{
  v3 = -240.0 / self->_screenScale * self->_effectMultiplier;
  [(CSCoverSheetSDFView *)self _refractionHeight];
  v5 = v4;
  backdropView = [(CSCoverSheetSDFView *)self backdropView];
  backdropLayer = [backdropView backdropLayer];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  [backdropLayer setValue:v8 forKeyPath:@"filters.glassForeground.inputRefractionAmount"];

  backdropView2 = [(CSCoverSheetSDFView *)self backdropView];
  backdropLayer2 = [backdropView2 backdropLayer];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [backdropLayer2 setValue:v11 forKeyPath:@"filters.glassForeground.inputRefractionHeight"];

  screenScale = self->_screenScale;
  v13 = 120.0 / screenScale * self->_effectMultiplier;
  v14 = 20.0 / screenScale;
  backdropView3 = [(CSCoverSheetSDFView *)self backdropView];
  backdropLayer3 = [backdropView3 backdropLayer];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [backdropLayer3 setValue:v17 forKeyPath:@"filters.glassForeground.inputAberrationAmount"];

  backdropView4 = [(CSCoverSheetSDFView *)self backdropView];
  backdropLayer4 = [backdropView4 backdropLayer];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [backdropLayer4 setValue:v19 forKeyPath:@"filters.glassForeground.inputAberrationHeight"];
}

- (CSCoverSheetSDFView)initWithFrame:(CGRect)frame
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = CSCoverSheetSDFView;
  v3 = [(CSCoverSheetSDFView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v3->_screenScale = v5;

    v6 = [CSCoverSheetSDFBackdropView alloc];
    [(CSCoverSheetSDFView *)v3 bounds];
    v7 = [(CSCoverSheetSDFBackdropView *)v6 initWithFrame:?];
    [(CSCoverSheetSDFView *)v3 addSubview:v7];
    objc_storeStrong(&v3->_backdropView, v7);
    [(CSCoverSheetSDFView *)v3 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(CSCoverSheetSDFView *)v3 _setupOutputLayer];
    [(CSCoverSheetSDFView *)v3 _layoutLayer:v3->_outputLayer inBounds:v9, v11, v13, v15];
    backdropView = [(CSCoverSheetSDFView *)v3 backdropView];
    backdropLayer = [backdropView backdropLayer];
    [backdropLayer addSublayer:v3->_outputLayer];

    v18 = objc_alloc(MEMORY[0x277CD9EA0]);
    v19 = [v18 initWithType:*MEMORY[0x277CDA338]];
    [v19 setName:@"glassForeground"];
    [v19 setValue:@"output" forKey:*MEMORY[0x277CDA530]];
    [v19 setValue:&unk_28307A538 forKey:*MEMORY[0x277CDA458]];
    [v19 setValue:&unk_28307A538 forKey:*MEMORY[0x277CDA450]];
    [v19 setValue:&unk_283078E40 forKey:*MEMORY[0x277CDA348]];
    [v19 setEnabled:1];
    backdropView2 = [(CSCoverSheetSDFView *)v3 backdropView];
    backdropLayer2 = [backdropView2 backdropLayer];
    v36[0] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [backdropLayer2 setFilters:v22];

    backdropView3 = [(CSCoverSheetSDFView *)v3 backdropView];
    backdropLayer3 = [backdropView3 backdropLayer];
    [backdropLayer3 setAllowsHitTesting:0];

    backdropView4 = [(CSCoverSheetSDFView *)v3 backdropView];
    backdropLayer4 = [backdropView4 backdropLayer];
    [backdropLayer4 setPreallocatesScreenArea:1];

    [(CSCoverSheetSDFView *)v3 setUserInteractionEnabled:0];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen2 traitCollection];
    [traitCollection displayCornerRadius];
    v3->_cornerRadius = v29;

    [(CSCoverSheetSDFView *)v3 _updateGlassLayerFilterValues];
    v30 = objc_opt_self();
    v35 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v32 = [(CSCoverSheetSDFView *)v3 registerForTraitChanges:v31 withAction:sel__displayScaleDidChange];
  }

  return v3;
}

- (void)setEffectMultiplier:(double)multiplier
{
  if (self->_effectMultiplier != multiplier)
  {
    self->_effectMultiplier = multiplier;
    [(CSCoverSheetSDFView *)self _updateGlassLayerFilterValues];
  }
}

- (void)_displayScaleDidChange
{
  traitCollection = [(CSCoverSheetSDFView *)self traitCollection];
  [traitCollection displayScale];
  self->_screenScale = v4;

  [(CSCoverSheetSDFView *)self _updateGlassLayerFilterValues];
}

- (void)_layoutLayer:(id)layer inBounds:(CGRect)bounds withHorizontalOutset:(double)outset
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = -outset;
  layerCopy = layer;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v14 = CGRectInset(v13, v10, 0.0);
  [layerCopy setFrame:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  [layerCopy setCornerRadius:self->_cornerRadius];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CSCoverSheetSDFView;
  [(CSCoverSheetSDFView *)&v17 layoutSubviews];
  [(CSCoverSheetSDFView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backdropView = [(CSCoverSheetSDFView *)self backdropView];
  [backdropView setFrame:{v4, v6, v8, v10}];

  [(CSCoverSheetSDFView *)self _layoutLayer:self->_outputLayer inBounds:v4, v6, v8, v10];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  IsZero = BSFloatIsZero();

  outputElementLayer = self->_outputElementLayer;
  if (IsZero)
  {
    [(CSCoverSheetSDFView *)self _refractionHeight];
    [(CSCoverSheetSDFView *)self _layoutLayer:outputElementLayer inBounds:v4 withHorizontalOutset:v6, v8, v10, v16];
  }

  else
  {
    [(CSCoverSheetSDFView *)self _layoutLayer:self->_outputElementLayer inBounds:v4, v6, v8, v10];
  }
}

- (void)_setupOutputLayer
{
  v3 = objc_alloc_init(MEMORY[0x277CD9F68]);
  v8 = objc_alloc_init(MEMORY[0x277CD9F70]);
  [v3 setEffect:v8];
  [v3 setName:@"output"];
  v4 = objc_alloc_init(MEMORY[0x277CD9F50]);
  [v4 setCornerCurve:*MEMORY[0x277CDA138]];
  [v3 addSublayer:v4];
  outputElementLayer = self->_outputElementLayer;
  self->_outputElementLayer = v4;
  v6 = v4;

  outputLayer = self->_outputLayer;
  self->_outputLayer = v3;
}

@end