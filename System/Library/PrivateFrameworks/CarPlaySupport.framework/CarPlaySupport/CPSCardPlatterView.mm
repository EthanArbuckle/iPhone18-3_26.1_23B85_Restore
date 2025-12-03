@interface CPSCardPlatterView
- (CPSCardPlatterView)initWithFrame:(CGRect)frame;
- (CPSCardPlatterView)initWithFrame:(CGRect)frame cornerRadius:(double)radius maskedCorners:(unint64_t)corners;
- (CPSCardPlatterView)initWithFrame:(CGRect)frame cornerRadius:(double)radius maskedCorners:(unint64_t)corners backgroundMaterial:(id)material backgroundColor:(id)color;
- (void)_updateStyleOverridesForSubviews;
- (void)didAddSubview:(id)subview;
- (void)setPlatterBackgroundColor:(id)color;
- (void)setShadowWithRadius:(double)radius opacity:(double)opacity;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSCardPlatterView

- (CPSCardPlatterView)initWithFrame:(CGRect)frame cornerRadius:(double)radius maskedCorners:(unint64_t)corners
{
  frameCopy = frame;
  selfCopy = self;
  crsui_consoleTurnCardETATrayBackgroundMaterial = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  crsui_consoleTurnCardETATrayBackgroundColor = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  selfCopy = 0;
  selfCopy = [(CPSCardPlatterView *)self initWithFrame:corners cornerRadius:crsui_consoleTurnCardETATrayBackgroundMaterial maskedCorners:frameCopy.origin.x backgroundMaterial:frameCopy.origin.y backgroundColor:frameCopy.size.width, frameCopy.size.height, radius];
  v11 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundColor);
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundMaterial);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (CPSCardPlatterView)initWithFrame:(CGRect)frame cornerRadius:(double)radius maskedCorners:(unint64_t)corners backgroundMaterial:(id)material backgroundColor:(id)color
{
  frameCopy = frame;
  selfCopy = self;
  v40 = a2;
  radiusCopy = radius;
  cornersCopy = corners;
  location = 0;
  objc_storeStrong(&location, material);
  v36 = 0;
  objc_storeStrong(&v36, color);
  v7 = selfCopy;
  selfCopy = 0;
  v35.receiver = v7;
  v35.super_class = CPSCardPlatterView;
  selfCopy = [(CPSCardPlatterView *)&v35 initWithFrame:frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    layer = [(CPSCardPlatterView *)selfCopy layer];
    [layer setCornerRadius:radiusCopy];
    *&v8 = MEMORY[0x277D82BD8](layer).n128_u64[0];
    layer2 = [(CPSCardPlatterView *)selfCopy layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
    *&v9 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
    layer3 = [(CPSCardPlatterView *)selfCopy layer];
    [layer3 setMaskedCorners:cornersCopy];
    *&v10 = MEMORY[0x277D82BD8](layer3).n128_u64[0];
    [(CPSCardPlatterView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0, v10];
    if (location)
    {
      v34 = MEMORY[0x277D82BE0](location);
      v28 = radiusCopy;
      layer4 = [v34 layer];
      [layer4 setCornerRadius:v28];
      *&v11 = MEMORY[0x277D82BD8](layer4).n128_u64[0];
      [(CPSCardPlatterView *)selfCopy bounds];
      [location setFrame:{v12, v13, v14, v15}];
      [location setAutoresizingMask:18];
      objc_storeStrong(&selfCopy->_material, v34);
      [(CPSCardPlatterView *)selfCopy addSubview:selfCopy->_material];
      objc_storeStrong(&v34, 0);
    }

    v25 = objc_alloc(MEMORY[0x277D75D18]);
    [(CPSCardPlatterView *)selfCopy bounds];
    v20 = [v25 initWithFrame:{v16, v17, v18, v19}];
    backgroundColorView = selfCopy->_backgroundColorView;
    selfCopy->_backgroundColorView = v20;
    MEMORY[0x277D82BD8](backgroundColorView);
    v26 = radiusCopy;
    layer5 = [(UIView *)selfCopy->_backgroundColorView layer];
    [(CALayer *)layer5 setCornerRadius:v26];
    *&v22 = MEMORY[0x277D82BD8](layer5).n128_u64[0];
    [(UIView *)selfCopy->_backgroundColorView setAutoresizingMask:18, v22];
    [(CPSCardPlatterView *)selfCopy addSubview:selfCopy->_backgroundColorView];
    [(CPSCardPlatterView *)selfCopy setPlatterBackgroundColor:v36];
  }

  v24 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (CPSCardPlatterView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  selfCopy = self;
  crsui_consoleTurnCardETATrayBackgroundMaterial = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  crsui_consoleTurnCardETATrayBackgroundColor = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  selfCopy = 0;
  selfCopy = [(CPSCardPlatterView *)self initWithFrame:15 cornerRadius:crsui_consoleTurnCardETATrayBackgroundMaterial maskedCorners:frameCopy.origin.x backgroundMaterial:frameCopy.origin.y backgroundColor:frameCopy.size.width, frameCopy.size.height, 10.0];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundColor);
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundMaterial);
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setShadowWithRadius:(double)radius opacity:(double)opacity
{
  layer = [(CPSCardPlatterView *)self layer];
  [layer setShadowRadius:radius];
  layer2 = [(CPSCardPlatterView *)self layer];
  [layer2 setShadowPathIsBounds:1];
  layer3 = [(CPSCardPlatterView *)self layer];
  HIDWORD(v4) = HIDWORD(opacity);
  *&v4 = opacity;
  [layer3 setShadowOpacity:v4];
  layer4 = [(CPSCardPlatterView *)self layer];
  [layer4 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  MEMORY[0x277D82BD8](layer4);
}

- (void)setPlatterBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_platterBackgroundColor, location[0]);
  [(UIView *)selfCopy->_backgroundColorView setBackgroundColor:location[0]];
  [(CPSCardPlatterView *)selfCopy _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

- (void)_updateStyleOverridesForSubviews
{
  selfCopy = self;
  v11 = a2;
  v10 = 0;
  platterBackgroundColor = self->_platterBackgroundColor;
  traitCollection = [(CPSCardPlatterView *)self traitCollection];
  location = [(UIColor *)platterBackgroundColor resolvedColorWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v10 = 1;
  v7 = CPContrastingColorForColor();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v8 = [v7 isEqual:?];
  MEMORY[0x277D82BD8](whiteColor);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v10 = 2;
  }

  subviews = [(CPSCardPlatterView *)selfCopy subviews];
  [subviews enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](subviews);
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

- (void)didAddSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = CPSCardPlatterView;
  [(CPSCardPlatterView *)&v3 didAddSubview:location[0]];
  [(CPSCardPlatterView *)selfCopy _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSCardPlatterView;
  [(CPSCardPlatterView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSCardPlatterView *)selfCopy _updateStyleOverridesForSubviews];
  objc_storeStrong(location, 0);
}

@end