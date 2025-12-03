@interface BKUIJindoContainerScrollview
- (BKUIJindoContainerScrollview)initWithFrame:(CGRect)frame buttonTray:(id)tray;
- (BOOL)showsVerticalScrollIndicator;
- (int64_t)indicatorStyle;
- (void)setIndicatorStyle:(int64_t)style;
@end

@implementation BKUIJindoContainerScrollview

- (BKUIJindoContainerScrollview)initWithFrame:(CGRect)frame buttonTray:(id)tray
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v80[4] = *MEMORY[0x277D85DE8];
  trayCopy = tray;
  v77.receiver = self;
  v77.super_class = BKUIJindoContainerScrollview;
  height = [(BKUIJindoContainerScrollview *)&v77 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{x, y, width, height}];
    scrollview = height->_scrollview;
    height->_scrollview = v12;

    [(UIScrollView *)height->_scrollview setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)height->_scrollview setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIJindoContainerScrollview *)height addSubview:height->_scrollview];
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    scrollContentView = height->_scrollContentView;
    height->_scrollContentView = v15;

    [(UIView *)height->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)height->_scrollview addSubview:height->_scrollContentView];
    centerXAnchor = [(UIView *)height->_scrollContentView centerXAnchor];
    [(BKUIJindoContainerScrollview *)height centerXAnchor];
    v18 = v76 = trayCopy;
    v19 = [centerXAnchor constraintEqualToAnchor:v18];
    obj = tray;
    horizontalConstraint = height->_horizontalConstraint;
    height->_horizontalConstraint = v19;

    v65 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIView *)height->_scrollContentView topAnchor];
    topAnchor2 = [(UIScrollView *)height->_scrollview topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v80[0] = v21;
    widthAnchor = [(UIView *)height->_scrollContentView widthAnchor];
    widthAnchor2 = [(UIScrollView *)height->_scrollview widthAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v80[1] = v24;
    bottomAnchor = [(UIView *)height->_scrollContentView bottomAnchor];
    bottomAnchor2 = [(UIScrollView *)height->_scrollview bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v80[2] = v27;
    v80[3] = height->_horizontalConstraint;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
    [v65 activateConstraints:v28];

    v29 = objc_alloc_init(BKUIPearlInstructionView);
    instructionView = height->_instructionView;
    height->_instructionView = v29;

    [(BKUIPearlInstructionView *)height->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_scrollContentView addSubview:height->_instructionView];
    v61 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(BKUIPearlInstructionView *)height->_instructionView topAnchor];
    topAnchor4 = [(UIView *)height->_scrollContentView topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v79[0] = v66;
    leadingAnchor = [(BKUIPearlInstructionView *)height->_instructionView leadingAnchor];
    leadingAnchor2 = [(UIView *)height->_scrollContentView leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v79[1] = v32;
    trailingAnchor = [(BKUIPearlInstructionView *)height->_instructionView trailingAnchor];
    trailingAnchor2 = [(UIView *)height->_scrollContentView trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v79[2] = v35;
    bottomAnchor3 = [(BKUIPearlInstructionView *)height->_instructionView bottomAnchor];
    bottomAnchor4 = [(UIView *)height->_scrollContentView bottomAnchor];
    v38 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v79[3] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
    [v61 activateConstraints:v39];

    objc_storeStrong(&height->_buttonTray, obj);
    [(BKUIButtonTray *)height->_buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIJindoContainerScrollview *)height addSubview:height->_buttonTray];
    bottomAnchor5 = [(UIScrollView *)height->_scrollview bottomAnchor];
    topAnchor5 = [(BKUIButtonTray *)height->_buttonTray topAnchor];
    v42 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5];
    buttonTrayTopAnchor = height->_buttonTrayTopAnchor;
    height->_buttonTrayTopAnchor = v42;

    v59 = MEMORY[0x277CCAAD0];
    obja = [(UIScrollView *)height->_scrollview topAnchor];
    topAnchor6 = [(BKUIJindoContainerScrollview *)height topAnchor];
    v70 = [obja constraintEqualToAnchor:topAnchor6];
    v78[0] = v70;
    leadingAnchor3 = [(UIScrollView *)height->_scrollview leadingAnchor];
    leadingAnchor4 = [(BKUIJindoContainerScrollview *)height leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v78[1] = v62;
    trailingAnchor3 = [(UIScrollView *)height->_scrollview trailingAnchor];
    trailingAnchor4 = [(BKUIJindoContainerScrollview *)height trailingAnchor];
    v57 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v78[2] = v57;
    v78[3] = height->_buttonTrayTopAnchor;
    bottomAnchor6 = [(BKUIButtonTray *)height->_buttonTray bottomAnchor];
    bottomAnchor7 = [(BKUIJindoContainerScrollview *)height bottomAnchor];
    v45 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v78[4] = v45;
    leadingAnchor5 = [(BKUIButtonTray *)height->_buttonTray leadingAnchor];
    leadingAnchor6 = [(UIView *)height->_scrollContentView leadingAnchor];
    v48 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v78[5] = v48;
    trailingAnchor5 = [(BKUIButtonTray *)height->_buttonTray trailingAnchor];
    trailingAnchor6 = [(UIView *)height->_scrollContentView trailingAnchor];
    v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v78[6] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:7];
    [v59 activateConstraints:v52];

    trayCopy = v76;
    [(UIScrollView *)height->_scrollview setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(UIScrollView *)height->_scrollview setIndicatorStyle:2];
    [(UIScrollView *)height->_scrollview setContentInsetAdjustmentBehavior:2];
    [(BKUIJindoContainerScrollview *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(BKUIJindoContainerScrollview *)height layer];
    [layer setMasksToBounds:1];
  }

  v54 = *MEMORY[0x277D85DE8];
  return height;
}

- (void)setIndicatorStyle:(int64_t)style
{
  scrollview = [(BKUIJindoContainerScrollview *)self scrollview];
  [scrollview setIndicatorStyle:style];
}

- (int64_t)indicatorStyle
{
  scrollview = [(BKUIJindoContainerScrollview *)self scrollview];
  indicatorStyle = [scrollview indicatorStyle];

  return indicatorStyle;
}

- (BOOL)showsVerticalScrollIndicator
{
  scrollview = [(BKUIJindoContainerScrollview *)self scrollview];
  showsVerticalScrollIndicator = [scrollview showsVerticalScrollIndicator];

  return showsVerticalScrollIndicator;
}

@end