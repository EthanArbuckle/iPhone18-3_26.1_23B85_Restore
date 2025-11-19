@interface CPSActionButton
- (CGSize)intrinsicContentSize;
- (CPSActionButton)initWithFrame:(CGRect)a3;
- (CPSActionButtonLayoutDelegate)layoutDelegate;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setButtonImage:(id)a3;
- (void)setButtonText:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutDelegate:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateConfiguration;
@end

@implementation CPSActionButton

- (CPSActionButton)initWithFrame:(CGRect)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = CPSActionButton;
  v13 = [(CPUITemplateButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v7 = v13;
    v10 = objc_opt_self();
    v15[0] = v10;
    v9 = objc_opt_self();
    v15[1] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v3 = [CPSActionButton registerForTraitChanges:v7 withAction:"registerForTraitChanges:withAction:"];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(CPSActionButton *)v13 updateConfiguration];
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (void)setButtonImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(UIImage *)v4->_buttonImage isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&v4->_buttonImage, location[0]);
    [(CPSActionButton *)v4 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (void)setButtonText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(NSString *)v4->_buttonText isEqualToString:location[0]])
  {
    objc_storeStrong(&v4->_buttonText, location[0]);
    [(CPSActionButton *)v4 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (void)setLayoutDelegate:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v6->_layoutDelegate);
  v3 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v3)
  {
    objc_storeWeak(&v6->_layoutDelegate, location[0]);
    [(CPSActionButton *)v6 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  v10 = [(CPSActionButton *)self layoutDelegate];
  v11 = objc_opt_respondsToSelector();
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSActionButton *)self layoutDelegate];
    [(CPSActionButtonLayoutDelegate *)v9 buttonSize];
    v13 = v3;
    v14 = v4;
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    CGSizeMake_7();
    v13 = v5;
    v14 = v6;
  }

  v7 = v13;
  v8 = v14;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPUIButton *)&v3 setEnabled:a3];
  [(CPSActionButton *)v6 setNeedsUpdateConfiguration];
}

- (void)setSelected:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPSActionButton *)&v3 setSelected:a3];
  [(CPSActionButton *)v6 setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPSActionButton *)&v3 setHighlighted:a3];
  [(CPSActionButton *)v6 setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  v46 = self;
  v45 = a2;
  v22 = 1;
  if (([(CPSActionButton *)self isFocused]& 1) == 0)
  {
    v22 = 1;
    if (([(CPSActionButton *)v46 isHighlighted]& 1) == 0)
    {
      v22 = [(CPSActionButton *)v46 isSelected];
    }
  }

  v44 = v22 & 1;
  location = 0;
  v42 = 0;
  v20 = [(CPSActionButton *)v46 layoutDelegate];
  v40 = 0;
  v21 = 0;
  if (objc_opt_respondsToSelector())
  {
    v41 = [(CPSActionButton *)v46 layoutDelegate];
    v40 = 1;
    v21 = [(CPSActionButtonLayoutDelegate *)v41 wantsPlainButtonAppearance];
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v21)
  {
    v3 = [MEMORY[0x277D75230] tintedButtonConfiguration];
    v4 = location;
    location = v3;
    v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    v42 = 1;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    if (v44)
    {
      v39 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
      v38 = 1;
      objc_storeStrong(&location, v39);
    }

    else
    {
      v37 = [MEMORY[0x277D75230] _glassButtonConfiguration];
      v36 = 1;
      objc_storeStrong(&location, v37);
    }

    if (v36)
    {
      v5 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    }

    if (v38)
    {
      v5 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }
  }

  v18 = [(CPSActionButton *)v46 buttonImage];
  [location setImage:?];
  MEMORY[0x277D82BD8](v18);
  v29 = MEMORY[0x277D85DD0];
  v30 = -1073741824;
  v31 = 0;
  v32 = __38__CPSActionButton_updateConfiguration__block_invoke;
  v33 = &unk_278D92E00;
  v34 = MEMORY[0x277D82BE0](v46);
  v35 = v44 & 1;
  [location setImageColorTransformer:&v29];
  v19 = [(CPSActionButton *)v46 buttonText];
  [location setTitle:?];
  *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v27 = 0;
  v25 = 0;
  if (v44)
  {
    v28 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    v27 = 1;
    v17 = v28;
  }

  else
  {
    v26 = [MEMORY[0x277D75348] labelColor];
    v25 = 1;
    v17 = v26;
  }

  [location setBaseBackgroundColor:v17];
  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  v24 = [MEMORY[0x277D751C0] clearConfiguration];
  [(CPSActionButton *)v46 intrinsicContentSize];
  v23 = v7 / 2.0;
  v15 = [(CPSActionButton *)v46 layoutDelegate];
  v16 = objc_opt_respondsToSelector();
  *&v8 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v16)
  {
    v14 = [(CPSActionButton *)v46 layoutDelegate];
    [(CPSActionButtonLayoutDelegate *)v14 buttonRadius];
    v23 = v9;
    MEMORY[0x277D82BD8](v14);
  }

  [v24 setCornerRadius:v23];
  if (v44)
  {
    v13 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [v24 setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  }

  else if (v42)
  {
    v12 = [MEMORY[0x277D75348] secondarySystemFillColor];
    [v24 setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  else
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [v24 setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  [location setBackground:{v24, *&v10}];
  [(CPSActionButton *)v46 setConfiguration:location];
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&location, 0);
}

id __38__CPSActionButton_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([*(a1 + 32) isEnabled])
  {
    v8 = 0;
    v6 = 0;
    if (*(a1 + 40))
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
  }

  else
  {
    v11 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
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
  v10.super_class = CPSActionButton;
  [(CPSActionButton *)&v10 didUpdateFocusInContext:location[0] withAnimationCoordinator:v11];
  v6 = [location[0] previouslyFocusedItem];
  v8 = 0;
  v7 = 1;
  if (v6 != v13)
  {
    v9 = [location[0] nextFocusedItem];
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
    [(CPSActionButton *)v13 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (CPSActionButtonLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end