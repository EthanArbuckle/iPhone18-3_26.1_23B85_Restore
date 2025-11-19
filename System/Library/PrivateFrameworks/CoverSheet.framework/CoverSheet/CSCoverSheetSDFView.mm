@interface CSCoverSheetSDFView
- (CSCoverSheetSDFView)initWithFrame:(CGRect)a3;
- (void)_displayScaleDidChange;
- (void)_layoutLayer:(id)a3 inBounds:(CGRect)a4 withHorizontalOutset:(double)a5;
- (void)_setupOutputLayer;
- (void)_updateGlassLayerFilterValues;
- (void)layoutSubviews;
- (void)setEffectMultiplier:(double)a3;
@end

@implementation CSCoverSheetSDFView

- (void)_updateGlassLayerFilterValues
{
  v3 = -240.0 / self->_screenScale * self->_effectMultiplier;
  [(CSCoverSheetSDFView *)self _refractionHeight];
  v5 = v4;
  v6 = [(CSCoverSheetSDFView *)self backdropView];
  v7 = [v6 backdropLayer];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  [v7 setValue:v8 forKeyPath:@"filters.glassForeground.inputRefractionAmount"];

  v9 = [(CSCoverSheetSDFView *)self backdropView];
  v10 = [v9 backdropLayer];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [v10 setValue:v11 forKeyPath:@"filters.glassForeground.inputRefractionHeight"];

  screenScale = self->_screenScale;
  v13 = 120.0 / screenScale * self->_effectMultiplier;
  v14 = 20.0 / screenScale;
  v15 = [(CSCoverSheetSDFView *)self backdropView];
  v16 = [v15 backdropLayer];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v16 setValue:v17 forKeyPath:@"filters.glassForeground.inputAberrationAmount"];

  v20 = [(CSCoverSheetSDFView *)self backdropView];
  v18 = [v20 backdropLayer];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [v18 setValue:v19 forKeyPath:@"filters.glassForeground.inputAberrationHeight"];
}

- (CSCoverSheetSDFView)initWithFrame:(CGRect)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = CSCoverSheetSDFView;
  v3 = [(CSCoverSheetSDFView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
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
    v16 = [(CSCoverSheetSDFView *)v3 backdropView];
    v17 = [v16 backdropLayer];
    [v17 addSublayer:v3->_outputLayer];

    v18 = objc_alloc(MEMORY[0x277CD9EA0]);
    v19 = [v18 initWithType:*MEMORY[0x277CDA338]];
    [v19 setName:@"glassForeground"];
    [v19 setValue:@"output" forKey:*MEMORY[0x277CDA530]];
    [v19 setValue:&unk_28307A538 forKey:*MEMORY[0x277CDA458]];
    [v19 setValue:&unk_28307A538 forKey:*MEMORY[0x277CDA450]];
    [v19 setValue:&unk_283078E40 forKey:*MEMORY[0x277CDA348]];
    [v19 setEnabled:1];
    v20 = [(CSCoverSheetSDFView *)v3 backdropView];
    v21 = [v20 backdropLayer];
    v36[0] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v21 setFilters:v22];

    v23 = [(CSCoverSheetSDFView *)v3 backdropView];
    v24 = [v23 backdropLayer];
    [v24 setAllowsHitTesting:0];

    v25 = [(CSCoverSheetSDFView *)v3 backdropView];
    v26 = [v25 backdropLayer];
    [v26 setPreallocatesScreenArea:1];

    [(CSCoverSheetSDFView *)v3 setUserInteractionEnabled:0];
    v27 = [MEMORY[0x277D759A0] mainScreen];
    v28 = [v27 traitCollection];
    [v28 displayCornerRadius];
    v3->_cornerRadius = v29;

    [(CSCoverSheetSDFView *)v3 _updateGlassLayerFilterValues];
    v30 = objc_opt_self();
    v35 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v32 = [(CSCoverSheetSDFView *)v3 registerForTraitChanges:v31 withAction:sel__displayScaleDidChange];
  }

  return v3;
}

- (void)setEffectMultiplier:(double)a3
{
  if (self->_effectMultiplier != a3)
  {
    self->_effectMultiplier = a3;
    [(CSCoverSheetSDFView *)self _updateGlassLayerFilterValues];
  }
}

- (void)_displayScaleDidChange
{
  v3 = [(CSCoverSheetSDFView *)self traitCollection];
  [v3 displayScale];
  self->_screenScale = v4;

  [(CSCoverSheetSDFView *)self _updateGlassLayerFilterValues];
}

- (void)_layoutLayer:(id)a3 inBounds:(CGRect)a4 withHorizontalOutset:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = -a5;
  v11 = a3;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v14 = CGRectInset(v13, v10, 0.0);
  [v11 setFrame:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  [v11 setCornerRadius:self->_cornerRadius];
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
  v11 = [(CSCoverSheetSDFView *)self backdropView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CSCoverSheetSDFView *)self _layoutLayer:self->_outputLayer inBounds:v4, v6, v8, v10];
  v12 = [MEMORY[0x277D759A0] mainScreen];
  v13 = [v12 traitCollection];
  [v13 displayCornerRadius];
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