@interface MCLVariantGroupView
- (MCLVariantGroupView)initWithFrame:(CGRect)a3;
- (id)createVariantButton:(Class)a3 type:(int64_t)a4;
- (void)clearVariants;
- (void)reloadData;
- (void)selectItemAtIndex:(int64_t)a3;
- (void)selectVariant:(id)a3;
@end

@implementation MCLVariantGroupView

- (MCLVariantGroupView)initWithFrame:(CGRect)a3
{
  v14 = a3;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = MCLVariantGroupView;
  v13 = [(MCLVariantGroupView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v3 = objc_opt_class();
    buttonClass = v13->_buttonClass;
    v13->_buttonClass = v3;
    MEMORY[0x277D82BD8](buttonClass);
    v13->_buttonType = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buttons = v13->_buttons;
    v13->_buttons = v5;
    MEMORY[0x277D82BD8](buttons);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buttonConstraints = v13->_buttonConstraints;
    v13->_buttonConstraints = v7;
    MEMORY[0x277D82BD8](buttonConstraints);
    v13->_selectedIndex = -1;
  }

  v10 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (void)reloadData
{
  v57[2] = *MEMORY[0x277D85DE8];
  v56 = self;
  v55[1] = a2;
  if (([(objc_class *)self->_buttonClass isSubclassOfClass:objc_opt_class()]& 1) != 0 && v56->_variantCount > 0 && v56->_variantsPerLine > 0)
  {
    if ([(NSMutableArray *)v56->_buttons count])
    {
      [(MCLVariantGroupView *)v56 clearVariants];
    }

    v55[0] = 0;
    v54 = (1.0 / v56->_variantsPerLine);
    v53 = 8.0 * (v56->_variantsPerLine - 1) / v56->_variantsPerLine;
    while ([(NSMutableArray *)v56->_buttons count]> v56->_variantCount)
    {
      [(NSMutableArray *)v56->_buttons removeLastObject];
    }

    while (1)
    {
      v2 = [(NSMutableArray *)v56->_buttons count];
      if (v2 >= v56->_variantCount)
      {
        break;
      }

      v52 = [(MCLVariantGroupView *)v56 createVariantButton:v56->_buttonClass type:v56->_buttonType];
      LODWORD(v3) = 1148846080;
      [v52 setContentCompressionResistancePriority:1 forAxis:v3];
      [(NSMutableArray *)v56->_buttons addObject:v52];
      objc_storeStrong(&v52, 0);
    }

    for (i = 0; i < v56->_variantCount; ++i)
    {
      v50 = [(NSMutableArray *)v56->_buttons objectAtIndexedSubscript:i];
      [(MCLVariantGroupView *)v56 addSubview:v50];
      v46 = v56;
      v57[0] = v50;
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v57[1] = v48;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
      [(MCLVariantGroupView *)v46 emitTMLSignal:@"configureVariant" withArguments:?];
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      if ([v50 isSelected])
      {
        v56->_selectedIndex = i;
      }

      if (i % v56->_variantsPerLine)
      {
        if (v55[0])
        {
          buttonConstraints = v56->_buttonConstraints;
          v12 = [v50 topAnchor];
          v11 = [v55[0] topAnchor];
          v10 = [v12 constraintEqualToAnchor:?];
          [(NSMutableArray *)buttonConstraints addObject:?];
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          v13 = v56->_buttonConstraints;
          v16 = [v50 leadingAnchor];
          v15 = [v55[0] trailingAnchor];
          v14 = [v16 constraintEqualToAnchor:8.0 constant:?];
          [(NSMutableArray *)v13 addObject:?];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v16);
          v17 = v56->_buttonConstraints;
          v20 = [v50 widthAnchor];
          v19 = [v55[0] widthAnchor];
          v18 = [v20 constraintEqualToAnchor:?];
          [(NSMutableArray *)v17 addObject:?];
          MEMORY[0x277D82BD8](v18);
          MEMORY[0x277D82BD8](v19);
          MEMORY[0x277D82BD8](v20);
          v21 = v56->_buttonConstraints;
          v24 = [v50 heightAnchor];
          v23 = [v55[0] heightAnchor];
          v22 = [v24 constraintEqualToAnchor:?];
          [(NSMutableArray *)v21 addObject:?];
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](v24);
        }
      }

      else
      {
        if (v55[0])
        {
          v38 = v56->_buttonConstraints;
          v41 = [v50 topAnchor];
          v40 = [v55[0] bottomAnchor];
          v39 = [v41 constraintEqualToAnchor:8.0 constant:?];
          [(NSMutableArray *)v38 addObject:?];
          MEMORY[0x277D82BD8](v39);
          MEMORY[0x277D82BD8](v40);
          MEMORY[0x277D82BD8](v41);
          v42 = v56->_buttonConstraints;
          v45 = [v50 heightAnchor];
          v44 = [v55[0] heightAnchor];
          v43 = [v45 constraintEqualToAnchor:?];
          [(NSMutableArray *)v42 addObject:?];
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v44);
          MEMORY[0x277D82BD8](v45);
        }

        else
        {
          v34 = v56->_buttonConstraints;
          v37 = [v50 topAnchor];
          v36 = [(MCLVariantGroupView *)v56 topAnchor];
          v35 = [v37 constraintEqualToAnchor:?];
          [(NSMutableArray *)v34 addObject:?];
          MEMORY[0x277D82BD8](v35);
          MEMORY[0x277D82BD8](v36);
          MEMORY[0x277D82BD8](v37);
        }

        v25 = v56->_buttonConstraints;
        v28 = [v50 leadingAnchor];
        v27 = [(MCLVariantGroupView *)v56 leadingAnchor];
        v26 = [v28 constraintEqualToAnchor:?];
        [(NSMutableArray *)v25 addObject:?];
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v27);
        MEMORY[0x277D82BD8](v28);
        v29 = [v50 heightAnchor];
        v49 = [v29 constraintGreaterThanOrEqualToConstant:80.0];
        MEMORY[0x277D82BD8](v29);
        LODWORD(v4) = 1144750080;
        [v49 setPriority:v4];
        [(NSMutableArray *)v56->_buttonConstraints addObject:v49];
        v30 = v56->_buttonConstraints;
        v33 = [v50 widthAnchor];
        v32 = [(MCLVariantGroupView *)v56 widthAnchor];
        v31 = [v33 constraintEqualToAnchor:v54 multiplier:-v53 constant:?];
        [(NSMutableArray *)v30 addObject:?];
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v33);
        objc_storeStrong(&v49, 0);
      }

      if (i == v56->_variantCount - 1)
      {
        v5 = v56->_buttonConstraints;
        v8 = [v50 bottomAnchor];
        v7 = [(MCLVariantGroupView *)v56 bottomAnchor];
        v6 = [v8 constraintEqualToAnchor:?];
        [(NSMutableArray *)v5 addObject:?];
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      objc_storeStrong(v55, v50);
      objc_storeStrong(&v50, 0);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v56->_buttonConstraints];
    objc_storeStrong(v55, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)clearVariants
{
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_buttonConstraints];
  [(NSMutableArray *)self->_buttonConstraints removeAllObjects];
  [(NSMutableArray *)self->_buttons enumerateObjectsUsingBlock:&__block_literal_global_8];
  self->_selectedIndex = -1;
}

void __36__MCLVariantGroupView_clearVariants__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] removeFromSuperview];
  objc_storeStrong(location, 0);
}

- (id)createVariantButton:(Class)a3 type:(int64_t)a4
{
  v9 = self;
  v8[3] = a2;
  v8[2] = a3;
  v8[1] = a4;
  v8[0] = [(objc_class *)a3 buttonWithType:a4];
  [v8[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v8[0];
  v6 = [MEMORY[0x277D75348] blackColor];
  [v5 setTitleColor:? forState:?];
  MEMORY[0x277D82BD8](v6);
  [v8[0] addTarget:v9 action:sel_selectVariant_ forControlEvents:64];
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (void)selectVariant:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(NSMutableArray *)v8->_buttons indexOfObject:location[0]];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != v8->_selectedIndex || v8->_actionVariant))
  {
    [(MCLVariantGroupView *)v8 selectItemAtIndex:v6];
    v3 = v8;
    v9[0] = location[0];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v9[1] = v5;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [(MCLVariantGroupView *)v3 emitTMLSignal:@"didSelectVariant" withArguments:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)selectItemAtIndex:(int64_t)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  if ((self->_selectedIndex & 0x8000000000000000) == 0)
  {
    v5 = [(NSMutableArray *)v8->_buttons objectAtIndexedSubscript:v8->_selectedIndex];
    [v5 setSelected:0];
    objc_storeStrong(&v5, 0);
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v3 = v6;
    if (v3 < [(NSMutableArray *)v8->_buttons count])
    {
      v4 = [(NSMutableArray *)v8->_buttons objectAtIndexedSubscript:v6];
      [v4 setSelected:1];
      v8->_selectedIndex = v6;
      objc_storeStrong(&v4, 0);
    }
  }
}

@end