@interface GKSegmentedSelectorView
- (GKSegmentedSelectorView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)pinningStateChangedTo:(BOOL)a3;
- (void)prepareForReuse;
- (void)setTarget:(id)a3;
@end

@implementation GKSegmentedSelectorView

- (GKSegmentedSelectorView)initWithFrame:(CGRect)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = GKSegmentedSelectorView;
  v3 = [(GKHeaderWithUnderlineView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (!v3)
  {
    return v3;
  }

  v4 = [objc_alloc(MEMORY[0x277D75A08]) initWithItems:&unk_2861897C0];
  segmentedControl = v3->_segmentedControl;
  v3->_segmentedControl = v4;

  [(UISegmentedControl *)v3->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D0C868] sharedPalette];
  if (GKHasSlowerGraphicsHardware_onceToken != -1)
  {
    [GKSegmentedSelectorView initWithFrame:];
  }

  v7 = MEMORY[0x277D0C258];
  if (GKHasSlowerGraphicsHardware_processorCount > 1)
  {
    if (*MEMORY[0x277D0C258])
    {
      goto LABEL_9;
    }

    v8 = [(GKSegmentedSelectorView *)v3 segmentedControl];
    v30 = *MEMORY[0x277D740C0];
    v9 = [v6 emphasizedTextOnDarkBackgroundColor];
    v31 = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v31;
    v12 = &v30;
  }

  else
  {
    v8 = [(GKSegmentedSelectorView *)v3 segmentedControl];
    v32 = *MEMORY[0x277D740C0];
    v9 = [MEMORY[0x277D75348] whiteColor];
    v33[0] = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = v33;
    v12 = &v32;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  [v8 setTitleTextAttributes:v13 forState:4];

LABEL_9:
  [(GKSegmentedSelectorView *)v3 addSubview:v3->_segmentedControl];
  v14 = [(GKHeaderWithUnderlineView *)v3 metrics];
  v15 = MEMORY[0x277CCAAD0];
  v16 = v3->_segmentedControl;
  v17 = [v14 objectForKeyedSubscript:@"hairline"];
  [v17 floatValue];
  v19 = [v15 constraintWithItem:v16 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:-v18];
  [(GKSegmentedSelectorView *)v3 addConstraint:v19];

  v20 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_segmentedControl attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [(GKSegmentedSelectorView *)v3 addConstraint:v20];

  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1 && (*v7 != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_segmentedControl attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:664.0];
    LODWORD(v25) = 1144750080;
    [v23 setPriority:v25];
    [(GKSegmentedSelectorView *)v3 addConstraint:v23];
    v26 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_segmentedControl attribute:7 relatedBy:-1 toItem:v3 attribute:7 multiplier:1.0 constant:-50.0];
    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];
    [(GKSegmentedSelectorView *)v3 addConstraint:v26];
  }

  else
  {
    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_segmentedControl attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    LODWORD(v24) = 1144750080;
    [v23 setPriority:v24];
    [(GKSegmentedSelectorView *)v3 setWidthConstraint:v23];
    [(GKSegmentedSelectorView *)v3 addConstraint:v23];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKSegmentedSelectorView;
  [(GKHeaderWithUnderlineView *)&v9 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 leadingMargin];
    v7 = v6;
    [v5 trailingMargin];
    if (v7 == 0.0)
    {
      [(GKSegmentedSelectorView *)self _contentMargin];
      v7 = v8;
    }

    if (v7 >= v8)
    {
      v8 = v7;
    }

    [(NSLayoutConstraint *)self->_widthConstraint setConstant:-(v8 + v8)];
  }
}

- (void)setTarget:(id)a3
{
  v4 = a3;
  v5 = v4;
  target = self->_target;
  if (target != v4)
  {
    v7 = v4;
    if (target)
    {
      v4 = [(UISegmentedControl *)self->_segmentedControl removeTarget:target action:sel_selectedSegmentChanged_ forControlEvents:4096];
      v5 = v7;
    }

    self->_target = v5;
    if (v5)
    {
      v4 = [(UISegmentedControl *)self->_segmentedControl addTarget:v5 action:sel_selectedSegmentChanged_ forControlEvents:4096];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = GKSegmentedSelectorView;
  [(GKSegmentedSelectorView *)&v3 prepareForReuse];
  [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
  [(GKSegmentedSelectorView *)self setTarget:0];
}

- (void)pinningStateChangedTo:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = GKSegmentedSelectorView;
  [(GKHeaderWithUnderlineView *)&v11 pinningStateChangedTo:?];
  v5 = 0.0;
  if (v3)
  {
    v5 = -10.0;
  }

  [(GKSegmentedSelectorView *)self setHitTestInsets:v5, v5, v5, v5];
  if ((*MEMORY[0x277D0C258] & 1) == 0)
  {
    if (GKHasSlowerGraphicsHardware_onceToken != -1)
    {
      [GKSegmentedSelectorView initWithFrame:];
    }

    if (GKHasSlowerGraphicsHardware_processorCount >= 2)
    {
      v6 = [MEMORY[0x277D0C868] sharedPalette];
      v7 = [(GKSegmentedSelectorView *)self segmentedControl];
      v8 = v7;
      if (v3)
      {
        [v7 setTitleTextAttributes:MEMORY[0x277CBEC10] forState:4];
      }

      else
      {
        v12 = *MEMORY[0x277D740C0];
        v9 = [v6 emphasizedTextOnDarkBackgroundColor];
        v13[0] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        [v8 setTitleTextAttributes:v10 forState:4];
      }
    }
  }
}

@end