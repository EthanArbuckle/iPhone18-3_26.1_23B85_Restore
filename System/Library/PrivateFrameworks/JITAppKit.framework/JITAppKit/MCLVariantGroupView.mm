@interface MCLVariantGroupView
- (MCLVariantGroupView)initWithFrame:(CGRect)frame;
- (id)createVariantButton:(Class)button type:(int64_t)type;
- (void)clearVariants;
- (void)reloadData;
- (void)selectItemAtIndex:(int64_t)index;
- (void)selectVariant:(id)variant;
@end

@implementation MCLVariantGroupView

- (MCLVariantGroupView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = MCLVariantGroupView;
  v13 = [(MCLVariantGroupView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  selfCopy = self;
  v55[1] = a2;
  if (([(objc_class *)self->_buttonClass isSubclassOfClass:objc_opt_class()]& 1) != 0 && selfCopy->_variantCount > 0 && selfCopy->_variantsPerLine > 0)
  {
    if ([(NSMutableArray *)selfCopy->_buttons count])
    {
      [(MCLVariantGroupView *)selfCopy clearVariants];
    }

    v55[0] = 0;
    v54 = (1.0 / selfCopy->_variantsPerLine);
    v53 = 8.0 * (selfCopy->_variantsPerLine - 1) / selfCopy->_variantsPerLine;
    while ([(NSMutableArray *)selfCopy->_buttons count]> selfCopy->_variantCount)
    {
      [(NSMutableArray *)selfCopy->_buttons removeLastObject];
    }

    while (1)
    {
      v2 = [(NSMutableArray *)selfCopy->_buttons count];
      if (v2 >= selfCopy->_variantCount)
      {
        break;
      }

      v52 = [(MCLVariantGroupView *)selfCopy createVariantButton:selfCopy->_buttonClass type:selfCopy->_buttonType];
      LODWORD(v3) = 1148846080;
      [v52 setContentCompressionResistancePriority:1 forAxis:v3];
      [(NSMutableArray *)selfCopy->_buttons addObject:v52];
      objc_storeStrong(&v52, 0);
    }

    for (i = 0; i < selfCopy->_variantCount; ++i)
    {
      v50 = [(NSMutableArray *)selfCopy->_buttons objectAtIndexedSubscript:i];
      [(MCLVariantGroupView *)selfCopy addSubview:v50];
      v46 = selfCopy;
      v57[0] = v50;
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v57[1] = v48;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
      [(MCLVariantGroupView *)v46 emitTMLSignal:@"configureVariant" withArguments:?];
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      if ([v50 isSelected])
      {
        selfCopy->_selectedIndex = i;
      }

      if (i % selfCopy->_variantsPerLine)
      {
        if (v55[0])
        {
          buttonConstraints = selfCopy->_buttonConstraints;
          topAnchor = [v50 topAnchor];
          topAnchor2 = [v55[0] topAnchor];
          v10 = [topAnchor constraintEqualToAnchor:?];
          [(NSMutableArray *)buttonConstraints addObject:?];
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](topAnchor2);
          MEMORY[0x277D82BD8](topAnchor);
          v13 = selfCopy->_buttonConstraints;
          leadingAnchor = [v50 leadingAnchor];
          trailingAnchor = [v55[0] trailingAnchor];
          v14 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
          [(NSMutableArray *)v13 addObject:?];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](trailingAnchor);
          MEMORY[0x277D82BD8](leadingAnchor);
          v17 = selfCopy->_buttonConstraints;
          widthAnchor = [v50 widthAnchor];
          widthAnchor2 = [v55[0] widthAnchor];
          v18 = [widthAnchor constraintEqualToAnchor:?];
          [(NSMutableArray *)v17 addObject:?];
          MEMORY[0x277D82BD8](v18);
          MEMORY[0x277D82BD8](widthAnchor2);
          MEMORY[0x277D82BD8](widthAnchor);
          v21 = selfCopy->_buttonConstraints;
          heightAnchor = [v50 heightAnchor];
          heightAnchor2 = [v55[0] heightAnchor];
          v22 = [heightAnchor constraintEqualToAnchor:?];
          [(NSMutableArray *)v21 addObject:?];
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](heightAnchor2);
          MEMORY[0x277D82BD8](heightAnchor);
        }
      }

      else
      {
        if (v55[0])
        {
          v38 = selfCopy->_buttonConstraints;
          topAnchor3 = [v50 topAnchor];
          bottomAnchor = [v55[0] bottomAnchor];
          v39 = [topAnchor3 constraintEqualToAnchor:8.0 constant:?];
          [(NSMutableArray *)v38 addObject:?];
          MEMORY[0x277D82BD8](v39);
          MEMORY[0x277D82BD8](bottomAnchor);
          MEMORY[0x277D82BD8](topAnchor3);
          v42 = selfCopy->_buttonConstraints;
          heightAnchor3 = [v50 heightAnchor];
          heightAnchor4 = [v55[0] heightAnchor];
          v43 = [heightAnchor3 constraintEqualToAnchor:?];
          [(NSMutableArray *)v42 addObject:?];
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](heightAnchor4);
          MEMORY[0x277D82BD8](heightAnchor3);
        }

        else
        {
          v34 = selfCopy->_buttonConstraints;
          topAnchor4 = [v50 topAnchor];
          topAnchor5 = [(MCLVariantGroupView *)selfCopy topAnchor];
          v35 = [topAnchor4 constraintEqualToAnchor:?];
          [(NSMutableArray *)v34 addObject:?];
          MEMORY[0x277D82BD8](v35);
          MEMORY[0x277D82BD8](topAnchor5);
          MEMORY[0x277D82BD8](topAnchor4);
        }

        v25 = selfCopy->_buttonConstraints;
        leadingAnchor2 = [v50 leadingAnchor];
        leadingAnchor3 = [(MCLVariantGroupView *)selfCopy leadingAnchor];
        v26 = [leadingAnchor2 constraintEqualToAnchor:?];
        [(NSMutableArray *)v25 addObject:?];
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](leadingAnchor3);
        MEMORY[0x277D82BD8](leadingAnchor2);
        heightAnchor5 = [v50 heightAnchor];
        v49 = [heightAnchor5 constraintGreaterThanOrEqualToConstant:80.0];
        MEMORY[0x277D82BD8](heightAnchor5);
        LODWORD(v4) = 1144750080;
        [v49 setPriority:v4];
        [(NSMutableArray *)selfCopy->_buttonConstraints addObject:v49];
        v30 = selfCopy->_buttonConstraints;
        widthAnchor3 = [v50 widthAnchor];
        widthAnchor4 = [(MCLVariantGroupView *)selfCopy widthAnchor];
        v31 = [widthAnchor3 constraintEqualToAnchor:v54 multiplier:-v53 constant:?];
        [(NSMutableArray *)v30 addObject:?];
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](widthAnchor4);
        MEMORY[0x277D82BD8](widthAnchor3);
        objc_storeStrong(&v49, 0);
      }

      if (i == selfCopy->_variantCount - 1)
      {
        v5 = selfCopy->_buttonConstraints;
        bottomAnchor2 = [v50 bottomAnchor];
        bottomAnchor3 = [(MCLVariantGroupView *)selfCopy bottomAnchor];
        v6 = [bottomAnchor2 constraintEqualToAnchor:?];
        [(NSMutableArray *)v5 addObject:?];
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](bottomAnchor3);
        MEMORY[0x277D82BD8](bottomAnchor2);
      }

      objc_storeStrong(v55, v50);
      objc_storeStrong(&v50, 0);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:selfCopy->_buttonConstraints];
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

- (id)createVariantButton:(Class)button type:(int64_t)type
{
  selfCopy = self;
  v8[3] = a2;
  v8[2] = button;
  v8[1] = type;
  v8[0] = [(objc_class *)button buttonWithType:type];
  [v8[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = v8[0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v5 setTitleColor:? forState:?];
  MEMORY[0x277D82BD8](blackColor);
  [v8[0] addTarget:selfCopy action:sel_selectVariant_ forControlEvents:64];
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (void)selectVariant:(id)variant
{
  v9[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variant);
  v6 = [(NSMutableArray *)selfCopy->_buttons indexOfObject:location[0]];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && (v6 != selfCopy->_selectedIndex || selfCopy->_actionVariant))
  {
    [(MCLVariantGroupView *)selfCopy selectItemAtIndex:v6];
    v3 = selfCopy;
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

- (void)selectItemAtIndex:(int64_t)index
{
  selfCopy = self;
  v7 = a2;
  indexCopy = index;
  if ((self->_selectedIndex & 0x8000000000000000) == 0)
  {
    v5 = [(NSMutableArray *)selfCopy->_buttons objectAtIndexedSubscript:selfCopy->_selectedIndex];
    [v5 setSelected:0];
    objc_storeStrong(&v5, 0);
  }

  if ((indexCopy & 0x8000000000000000) == 0)
  {
    v3 = indexCopy;
    if (v3 < [(NSMutableArray *)selfCopy->_buttons count])
    {
      v4 = [(NSMutableArray *)selfCopy->_buttons objectAtIndexedSubscript:indexCopy];
      [v4 setSelected:1];
      selfCopy->_selectedIndex = indexCopy;
      objc_storeStrong(&v4, 0);
    }
  }
}

@end