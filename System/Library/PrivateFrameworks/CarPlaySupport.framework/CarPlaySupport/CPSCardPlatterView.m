@interface CPSCardPlatterView
- (CPSCardPlatterView)initWithFrame:(CGRect)a3;
- (CPSCardPlatterView)initWithFrame:(CGRect)a3 cornerRadius:(double)a4 maskedCorners:(unint64_t)a5;
- (CPSCardPlatterView)initWithFrame:(CGRect)a3 cornerRadius:(double)a4 maskedCorners:(unint64_t)a5 backgroundMaterial:(id)a6 backgroundColor:(id)a7;
- (void)_updateStyleOverridesForSubviews;
- (void)didAddSubview:(id)a3;
- (void)setPlatterBackgroundColor:(id)a3;
- (void)setShadowWithRadius:(double)a3 opacity:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSCardPlatterView

- (CPSCardPlatterView)initWithFrame:(CGRect)a3 cornerRadius:(double)a4 maskedCorners:(unint64_t)a5
{
  v13 = a3;
  v12 = self;
  v10 = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  v9 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  v12 = 0;
  v12 = [(CPSCardPlatterView *)self initWithFrame:a5 cornerRadius:v10 maskedCorners:v13.origin.x backgroundMaterial:v13.origin.y backgroundColor:v13.size.width, v13.size.height, a4];
  v11 = MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v12, 0);
  return v11;
}

- (CPSCardPlatterView)initWithFrame:(CGRect)a3 cornerRadius:(double)a4 maskedCorners:(unint64_t)a5 backgroundMaterial:(id)a6 backgroundColor:(id)a7
{
  v42 = a3;
  v41 = self;
  v40 = a2;
  v39 = a4;
  v38 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v36 = 0;
  objc_storeStrong(&v36, a7);
  v7 = v41;
  v41 = 0;
  v35.receiver = v7;
  v35.super_class = CPSCardPlatterView;
  v41 = [(CPSCardPlatterView *)&v35 initWithFrame:v42.origin.x, v42.origin.y, v42.size.width, v42.size.height];
  objc_storeStrong(&v41, v41);
  if (v41)
  {
    v30 = [(CPSCardPlatterView *)v41 layer];
    [v30 setCornerRadius:v39];
    *&v8 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    v31 = [(CPSCardPlatterView *)v41 layer];
    [v31 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v9 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    v32 = [(CPSCardPlatterView *)v41 layer];
    [v32 setMaskedCorners:v38];
    *&v10 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    [(CPSCardPlatterView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0, v10];
    if (location)
    {
      v34 = MEMORY[0x277D82BE0](location);
      v28 = v39;
      v29 = [v34 layer];
      [v29 setCornerRadius:v28];
      *&v11 = MEMORY[0x277D82BD8](v29).n128_u64[0];
      [(CPSCardPlatterView *)v41 bounds];
      [location setFrame:{v12, v13, v14, v15}];
      [location setAutoresizingMask:18];
      objc_storeStrong(&v41->_material, v34);
      [(CPSCardPlatterView *)v41 addSubview:v41->_material];
      objc_storeStrong(&v34, 0);
    }

    v25 = objc_alloc(MEMORY[0x277D75D18]);
    [(CPSCardPlatterView *)v41 bounds];
    v20 = [v25 initWithFrame:{v16, v17, v18, v19}];
    backgroundColorView = v41->_backgroundColorView;
    v41->_backgroundColorView = v20;
    MEMORY[0x277D82BD8](backgroundColorView);
    v26 = v39;
    v27 = [(UIView *)v41->_backgroundColorView layer];
    [(CALayer *)v27 setCornerRadius:v26];
    *&v22 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    [(UIView *)v41->_backgroundColorView setAutoresizingMask:18, v22];
    [(CPSCardPlatterView *)v41 addSubview:v41->_backgroundColorView];
    [(CPSCardPlatterView *)v41 setPlatterBackgroundColor:v36];
  }

  v24 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v41, 0);
  return v24;
}

- (CPSCardPlatterView)initWithFrame:(CGRect)a3
{
  v9 = a3;
  v8 = self;
  v6 = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  v5 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  v8 = 0;
  v8 = [(CPSCardPlatterView *)self initWithFrame:15 cornerRadius:v6 maskedCorners:v9.origin.x backgroundMaterial:v9.origin.y backgroundColor:v9.size.width, v9.size.height, 10.0];
  objc_storeStrong(&v8, v8);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v7;
}

- (void)setShadowWithRadius:(double)a3 opacity:(double)a4
{
  v5 = [(CPSCardPlatterView *)self layer];
  [v5 setShadowRadius:a3];
  v6 = [(CPSCardPlatterView *)self layer];
  [v6 setShadowPathIsBounds:1];
  v7 = [(CPSCardPlatterView *)self layer];
  HIDWORD(v4) = HIDWORD(a4);
  *&v4 = a4;
  [v7 setShadowOpacity:v4];
  v8 = [(CPSCardPlatterView *)self layer];
  [v8 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  MEMORY[0x277D82BD8](v8);
}

- (void)setPlatterBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_platterBackgroundColor, location[0]);
  [(UIView *)v4->_backgroundColorView setBackgroundColor:location[0]];
  [(CPSCardPlatterView *)v4 _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

- (void)_updateStyleOverridesForSubviews
{
  v12 = self;
  v11 = a2;
  v10 = 0;
  platterBackgroundColor = self->_platterBackgroundColor;
  v5 = [(CPSCardPlatterView *)self traitCollection];
  location = [(UIColor *)platterBackgroundColor resolvedColorWithTraitCollection:?];
  MEMORY[0x277D82BD8](v5);
  v10 = 1;
  v7 = CPContrastingColorForColor();
  v6 = [MEMORY[0x277D75348] whiteColor];
  v8 = [v7 isEqual:?];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v10 = 2;
  }

  v3 = [(CPSCardPlatterView *)v12 subviews];
  [v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&location, 0);
}

void __54__CPSCardPlatterView__updateStyleOverridesForSubviews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setOverrideUserInterfaceStyle:a1[4]];
  objc_storeStrong(location, 0);
}

- (void)didAddSubview:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSCardPlatterView;
  [(CPSCardPlatterView *)&v3 didAddSubview:location[0]];
  [(CPSCardPlatterView *)v5 _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSCardPlatterView;
  [(CPSCardPlatterView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSCardPlatterView *)v5 _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

@end