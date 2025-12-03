@interface CPSEntityMapButton
+ (CPSEntityMapButton)buttonWithEntityMapButtonType:(unint64_t)type;
- (CPSEntityMapButton)initWithFrame:(CGRect)frame;
- (void)setEntityMapButtonType:(unint64_t)type;
- (void)updateConfiguration;
@end

@implementation CPSEntityMapButton

+ (CPSEntityMapButton)buttonWithEntityMapButtonType:(unint64_t)type
{
  selfCopy = self;
  v8 = a2;
  typeCopy = type;
  v6[1] = 0;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CPSEntityMapButton;
  v6[0] = objc_msgSendSuper2(&v5, sel_buttonWithType_, 0);
  [v6[0] setEntityMapButtonType:typeCopy];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v4;
}

- (CPSEntityMapButton)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = CPSEntityMapButton;
  v7 = [(CPSActionButton *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    [(CPSEntityMapButton *)v7 updateConfiguration];
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)setEntityMapButtonType:(unint64_t)type
{
  selfCopy = self;
  v19 = a2;
  typeCopy = type;
  if (self->_entityMapButtonType != type)
  {
    selfCopy->_entityMapButtonType = typeCopy;
    v17 = 0;
    entityMapButtonType = [(CPSEntityMapButton *)selfCopy entityMapButtonType];
    if (entityMapButtonType)
    {
      switch(entityMapButtonType)
      {
        case 1:
          traitCollection = [(CPSEntityMapButton *)selfCopy traitCollection];
          v4 = CPUIImageZoomInGlyph();
          v5 = v17;
          v17 = v4;
          MEMORY[0x277D82BD8](v5);
          v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
          break;
        case 2:
          traitCollection2 = [(CPSEntityMapButton *)selfCopy traitCollection];
          v6 = CPUIImageZoomOutGlyph();
          v7 = v17;
          v17 = v6;
          MEMORY[0x277D82BD8](v7);
          v3 = MEMORY[0x277D82BD8](traitCollection2).n128_u64[0];
          break;
        case 3:
          traitCollection3 = [(CPSEntityMapButton *)selfCopy traitCollection];
          v8 = CPUIImagePanGlyph();
          v9 = v17;
          v17 = v8;
          MEMORY[0x277D82BD8](v9);
          v3 = MEMORY[0x277D82BD8](traitCollection3).n128_u64[0];
          break;
        case 4:
          traitCollection4 = [(CPSEntityMapButton *)selfCopy traitCollection];
          v10 = CPUIImageRecenterGlyph();
          v11 = v17;
          v17 = v10;
          MEMORY[0x277D82BD8](v11);
          v3 = MEMORY[0x277D82BD8](traitCollection4).n128_u64[0];
          break;
      }
    }

    [(CPSActionButton *)selfCopy setButtonImage:v17, *&v3];
    [(CPSEntityMapButton *)selfCopy setNeedsUpdateConfiguration];
    objc_storeStrong(&v17, 0);
  }
}

- (void)updateConfiguration
{
  selfCopy = self;
  v23 = a2;
  isSelected = 1;
  if (([(CPSEntityMapButton *)self isFocused]& 1) == 0)
  {
    isSelected = 1;
    if (([(CPSEntityMapButton *)selfCopy isHighlighted]& 1) == 0)
    {
      isSelected = [(CPSEntityMapButton *)selfCopy isSelected];
    }
  }

  v22 = isSelected & 1;
  v19 = 0;
  v17 = 0;
  if (isSelected)
  {
    _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    v19 = 1;
    v2 = MEMORY[0x277D82BE0](_tintedGlassButtonConfiguration);
  }

  else
  {
    _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    v17 = 1;
    v2 = MEMORY[0x277D82BE0](_glassButtonConfiguration);
  }

  v21 = v2;
  if (v17)
  {
    MEMORY[0x277D82BD8](_glassButtonConfiguration);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](_tintedGlassButtonConfiguration);
  }

  buttonImage = [(CPSActionButton *)selfCopy buttonImage];
  [v21 setImage:?];
  *&v3 = MEMORY[0x277D82BD8](buttonImage).n128_u64[0];
  v11[1] = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __41__CPSEntityMapButton_updateConfiguration__block_invoke;
  v15 = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
  v16 = v22 & 1;
  [v21 setImageColorTransformer:v3];
  v11[0] = [MEMORY[0x277D751C0] clearConfiguration];
  [v11[0] setCornerRadius:18.0];
  v9 = 0;
  v7 = 0;
  if (v22)
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    v9 = 1;
    v4 = _carSystemFocusColor;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v7 = 1;
    v4 = clearColor;
  }

  [v11[0] setBackgroundColor:v4];
  if (v7)
  {
    MEMORY[0x277D82BD8](clearColor);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](_carSystemFocusColor);
  }

  [v21 setBackground:v11[0]];
  [(CPSEntityMapButton *)selfCopy setConfiguration:v21];
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v21, 0);
}

id __41__CPSEntityMapButton_updateConfiguration__block_invoke(_BYTE *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  v6 = 0;
  if (a1[32])
  {
    v9 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    v8 = 1;
    v2 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v7 = [MEMORY[0x277D75348] labelColor];
    v6 = 1;
    v2 = MEMORY[0x277D82BE0](v7);
  }

  v11 = v2;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

@end