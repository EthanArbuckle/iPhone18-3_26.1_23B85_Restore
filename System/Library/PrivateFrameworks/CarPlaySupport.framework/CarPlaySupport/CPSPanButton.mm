@interface CPSPanButton
- (CPSPanButton)initWithDirection:(int64_t)a3;
- (id)imageName;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateConfiguration;
@end

@implementation CPSPanButton

- (CPSPanButton)initWithDirection:(int64_t)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v12 = a3;
  v14 = 0;
  v11.receiver = self;
  v11.super_class = CPSPanButton;
  v14 = [(CPSPanButton *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v14->_direction = v12;
    [(CPSPanButton *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = v14;
    v10 = objc_opt_self();
    v15[0] = v10;
    v9 = objc_opt_self();
    v15[1] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v3 = [CPSPanButton registerForTraitChanges:v7 withAction:"registerForTraitChanges:withAction:"];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(CPSPanButton *)v14 updateConfiguration];
  }

  v6 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10.receiver = v13;
  v10.super_class = CPSPanButton;
  [(CPSPanButton *)&v10 didUpdateFocusInContext:location[0] withAnimationCoordinator:v11];
  v6 = [location[0] nextFocusedItem];
  v8 = 0;
  v7 = 1;
  if (v6 != v13)
  {
    v9 = [location[0] previouslyFocusedItem];
    v8 = 1;
    v7 = v9 == v13;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [(CPSPanButton *)v13 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)imageName
{
  v6 = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](@"circle.fill");
  v4 = [(CPSPanButton *)v6 direction];
  if (v4)
  {
    switch(v4)
    {
      case 1:
        objc_storeStrong(location, @"arrow.left");
        break;
      case 2:
        objc_storeStrong(location, @"arrow.right");
        break;
      case 4:
        objc_storeStrong(location, @"arrow.up");
        break;
      case 8:
        objc_storeStrong(location, @"arrow.down");
        break;
    }
  }

  v3 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (void)updateConfiguration
{
  v26 = self;
  v25 = a2;
  v8 = 1;
  if (([(CPSPanButton *)self isHighlighted]& 1) == 0)
  {
    v8 = 1;
    if (([(CPSPanButton *)v26 isFocused]& 1) == 0)
    {
      v8 = [(CPSPanButton *)v26 isSelected];
    }
  }

  v24 = v8 & 1;
  v21 = 0;
  v19 = 0;
  if (v8)
  {
    v22 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    v21 = 1;
    v2 = MEMORY[0x277D82BE0](v22);
  }

  else
  {
    v20 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    v19 = 1;
    v2 = MEMORY[0x277D82BE0](v20);
  }

  v23 = v2;
  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  v5 = MEMORY[0x277D755B8];
  v7 = [(CPSPanButton *)v26 imageName];
  v6 = [v5 systemImageNamed:?];
  [v23 setImage:?];
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v13[1] = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __35__CPSPanButton_updateConfiguration__block_invoke;
  v17 = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
  v18 = v24 & 1;
  [v23 setImageColorTransformer:v3];
  v13[0] = [MEMORY[0x277D751C0] clearConfiguration];
  [v13[0] setCornerRadius:18.0];
  v11 = 0;
  v9 = 0;
  if (v24)
  {
    v12 = [MEMORY[0x277D75348] _carSystemFocusColor];
    v11 = 1;
    v4 = v12;
  }

  else
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    v9 = 1;
    v4 = v10;
  }

  [v13[0] setBackgroundColor:v4];
  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  [v23 setBackground:v13[0]];
  [(CPSPanButton *)v26 setConfiguration:v23];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v23, 0);
}

id __35__CPSPanButton_updateConfiguration__block_invoke(_BYTE *a1, void *a2)
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