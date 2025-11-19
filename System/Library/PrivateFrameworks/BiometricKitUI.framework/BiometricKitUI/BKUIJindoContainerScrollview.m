@interface BKUIJindoContainerScrollview
- (BKUIJindoContainerScrollview)initWithFrame:(CGRect)a3 buttonTray:(id)a4;
- (BOOL)showsVerticalScrollIndicator;
- (int64_t)indicatorStyle;
- (void)setIndicatorStyle:(int64_t)a3;
@end

@implementation BKUIJindoContainerScrollview

- (BKUIJindoContainerScrollview)initWithFrame:(CGRect)a3 buttonTray:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v80[4] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v77.receiver = self;
  v77.super_class = BKUIJindoContainerScrollview;
  v11 = [(BKUIJindoContainerScrollview *)&v77 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{x, y, width, height}];
    scrollview = v11->_scrollview;
    v11->_scrollview = v12;

    [(UIScrollView *)v11->_scrollview setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v11->_scrollview setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIJindoContainerScrollview *)v11 addSubview:v11->_scrollview];
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    scrollContentView = v11->_scrollContentView;
    v11->_scrollContentView = v15;

    [(UIView *)v11->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)v11->_scrollview addSubview:v11->_scrollContentView];
    v17 = [(UIView *)v11->_scrollContentView centerXAnchor];
    [(BKUIJindoContainerScrollview *)v11 centerXAnchor];
    v18 = v76 = v10;
    v19 = [v17 constraintEqualToAnchor:v18];
    obj = a4;
    horizontalConstraint = v11->_horizontalConstraint;
    v11->_horizontalConstraint = v19;

    v65 = MEMORY[0x277CCAAD0];
    v71 = [(UIView *)v11->_scrollContentView topAnchor];
    v68 = [(UIScrollView *)v11->_scrollview topAnchor];
    v21 = [v71 constraintEqualToAnchor:v68];
    v80[0] = v21;
    v22 = [(UIView *)v11->_scrollContentView widthAnchor];
    v23 = [(UIScrollView *)v11->_scrollview widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v80[1] = v24;
    v25 = [(UIView *)v11->_scrollContentView bottomAnchor];
    v26 = [(UIScrollView *)v11->_scrollview bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v80[2] = v27;
    v80[3] = v11->_horizontalConstraint;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
    [v65 activateConstraints:v28];

    v29 = objc_alloc_init(BKUIPearlInstructionView);
    instructionView = v11->_instructionView;
    v11->_instructionView = v29;

    [(BKUIPearlInstructionView *)v11->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_scrollContentView addSubview:v11->_instructionView];
    v61 = MEMORY[0x277CCAAD0];
    v72 = [(BKUIPearlInstructionView *)v11->_instructionView topAnchor];
    v69 = [(UIView *)v11->_scrollContentView topAnchor];
    v66 = [v72 constraintEqualToAnchor:v69];
    v79[0] = v66;
    v63 = [(BKUIPearlInstructionView *)v11->_instructionView leadingAnchor];
    v31 = [(UIView *)v11->_scrollContentView leadingAnchor];
    v32 = [v63 constraintEqualToAnchor:v31];
    v79[1] = v32;
    v33 = [(BKUIPearlInstructionView *)v11->_instructionView trailingAnchor];
    v34 = [(UIView *)v11->_scrollContentView trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    v79[2] = v35;
    v36 = [(BKUIPearlInstructionView *)v11->_instructionView bottomAnchor];
    v37 = [(UIView *)v11->_scrollContentView bottomAnchor];
    v38 = [v36 constraintLessThanOrEqualToAnchor:v37];
    v79[3] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
    [v61 activateConstraints:v39];

    objc_storeStrong(&v11->_buttonTray, obj);
    [(BKUIButtonTray *)v11->_buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIJindoContainerScrollview *)v11 addSubview:v11->_buttonTray];
    v40 = [(UIScrollView *)v11->_scrollview bottomAnchor];
    v41 = [(BKUIButtonTray *)v11->_buttonTray topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    buttonTrayTopAnchor = v11->_buttonTrayTopAnchor;
    v11->_buttonTrayTopAnchor = v42;

    v59 = MEMORY[0x277CCAAD0];
    obja = [(UIScrollView *)v11->_scrollview topAnchor];
    v73 = [(BKUIJindoContainerScrollview *)v11 topAnchor];
    v70 = [obja constraintEqualToAnchor:v73];
    v78[0] = v70;
    v67 = [(UIScrollView *)v11->_scrollview leadingAnchor];
    v64 = [(BKUIJindoContainerScrollview *)v11 leadingAnchor];
    v62 = [v67 constraintEqualToAnchor:v64];
    v78[1] = v62;
    v60 = [(UIScrollView *)v11->_scrollview trailingAnchor];
    v58 = [(BKUIJindoContainerScrollview *)v11 trailingAnchor];
    v57 = [v60 constraintEqualToAnchor:v58];
    v78[2] = v57;
    v78[3] = v11->_buttonTrayTopAnchor;
    v56 = [(BKUIButtonTray *)v11->_buttonTray bottomAnchor];
    v44 = [(BKUIJindoContainerScrollview *)v11 bottomAnchor];
    v45 = [v56 constraintEqualToAnchor:v44];
    v78[4] = v45;
    v46 = [(BKUIButtonTray *)v11->_buttonTray leadingAnchor];
    v47 = [(UIView *)v11->_scrollContentView leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v78[5] = v48;
    v49 = [(BKUIButtonTray *)v11->_buttonTray trailingAnchor];
    v50 = [(UIView *)v11->_scrollContentView trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v78[6] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:7];
    [v59 activateConstraints:v52];

    v10 = v76;
    [(UIScrollView *)v11->_scrollview setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(UIScrollView *)v11->_scrollview setIndicatorStyle:2];
    [(UIScrollView *)v11->_scrollview setContentInsetAdjustmentBehavior:2];
    [(BKUIJindoContainerScrollview *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = [(BKUIJindoContainerScrollview *)v11 layer];
    [v53 setMasksToBounds:1];
  }

  v54 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setIndicatorStyle:(int64_t)a3
{
  v4 = [(BKUIJindoContainerScrollview *)self scrollview];
  [v4 setIndicatorStyle:a3];
}

- (int64_t)indicatorStyle
{
  v2 = [(BKUIJindoContainerScrollview *)self scrollview];
  v3 = [v2 indicatorStyle];

  return v3;
}

- (BOOL)showsVerticalScrollIndicator
{
  v2 = [(BKUIJindoContainerScrollview *)self scrollview];
  v3 = [v2 showsVerticalScrollIndicator];

  return v3;
}

@end