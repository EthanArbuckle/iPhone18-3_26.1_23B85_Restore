@interface CPSEntityMapButton
+ (CPSEntityMapButton)buttonWithEntityMapButtonType:(unint64_t)a3;
- (CPSEntityMapButton)initWithFrame:(CGRect)a3;
- (void)setEntityMapButtonType:(unint64_t)a3;
- (void)updateConfiguration;
@end

@implementation CPSEntityMapButton

+ (CPSEntityMapButton)buttonWithEntityMapButtonType:(unint64_t)a3
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6[1] = 0;
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CPSEntityMapButton;
  v6[0] = objc_msgSendSuper2(&v5, sel_buttonWithType_, 0);
  [v6[0] setEntityMapButtonType:v7];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v4;
}

- (CPSEntityMapButton)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = CPSEntityMapButton;
  v7 = [(CPSActionButton *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    [(CPSEntityMapButton *)v7 updateConfiguration];
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)setEntityMapButtonType:(unint64_t)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  if (self->_entityMapButtonType != a3)
  {
    v20->_entityMapButtonType = v18;
    v17 = 0;
    v16 = [(CPSEntityMapButton *)v20 entityMapButtonType];
    if (v16)
    {
      switch(v16)
      {
        case 1:
          v15 = [(CPSEntityMapButton *)v20 traitCollection];
          v4 = CPUIImageZoomInGlyph();
          v5 = v17;
          v17 = v4;
          MEMORY[0x277D82BD8](v5);
          v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
          break;
        case 2:
          v14 = [(CPSEntityMapButton *)v20 traitCollection];
          v6 = CPUIImageZoomOutGlyph();
          v7 = v17;
          v17 = v6;
          MEMORY[0x277D82BD8](v7);
          v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
          break;
        case 3:
          v13 = [(CPSEntityMapButton *)v20 traitCollection];
          v8 = CPUIImagePanGlyph();
          v9 = v17;
          v17 = v8;
          MEMORY[0x277D82BD8](v9);
          v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
          break;
        case 4:
          v12 = [(CPSEntityMapButton *)v20 traitCollection];
          v10 = CPUIImageRecenterGlyph();
          v11 = v17;
          v17 = v10;
          MEMORY[0x277D82BD8](v11);
          v3 = MEMORY[0x277D82BD8](v12).n128_u64[0];
          break;
      }
    }

    [(CPSActionButton *)v20 setButtonImage:v17, *&v3];
    [(CPSEntityMapButton *)v20 setNeedsUpdateConfiguration];
    objc_storeStrong(&v17, 0);
  }
}

- (void)updateConfiguration
{
  v24 = self;
  v23 = a2;
  v6 = 1;
  if (([(CPSEntityMapButton *)self isFocused]& 1) == 0)
  {
    v6 = 1;
    if (([(CPSEntityMapButton *)v24 isHighlighted]& 1) == 0)
    {
      v6 = [(CPSEntityMapButton *)v24 isSelected];
    }
  }

  v22 = v6 & 1;
  v19 = 0;
  v17 = 0;
  if (v6)
  {
    v20 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    v19 = 1;
    v2 = MEMORY[0x277D82BE0](v20);
  }

  else
  {
    v18 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    v17 = 1;
    v2 = MEMORY[0x277D82BE0](v18);
  }

  v21 = v2;
  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  v5 = [(CPSActionButton *)v24 buttonImage];
  [v21 setImage:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
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
    v10 = [MEMORY[0x277D75348] _carSystemFocusColor];
    v9 = 1;
    v4 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277D75348] clearColor];
    v7 = 1;
    v4 = v8;
  }

  [v11[0] setBackgroundColor:v4];
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  [v21 setBackground:v11[0]];
  [(CPSEntityMapButton *)v24 setConfiguration:v21];
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