@interface BKUIContainerScrollView
- (BKUIContainerScrollView)initWithFrame:(CGRect)a3 buttonTray:(id)a4;
@end

@implementation BKUIContainerScrollView

- (BKUIContainerScrollView)initWithFrame:(CGRect)a3 buttonTray:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v76[4] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v73.receiver = self;
  v73.super_class = BKUIContainerScrollView;
  v11 = [(BKUIContainerScrollView *)&v73 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    scrollContentView = v11->_scrollContentView;
    v11->_scrollContentView = v13;

    [(UIView *)v11->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIContainerScrollView *)v11 addSubview:v11->_scrollContentView];
    v15 = [(UIView *)v11->_scrollContentView centerXAnchor];
    [(BKUIContainerScrollView *)v11 centerXAnchor];
    v16 = obj = a4;
    v17 = [v15 constraintEqualToAnchor:v16];
    horizontalConstraint = v11->_horizontalConstraint;
    v11->_horizontalConstraint = v17;

    v58 = MEMORY[0x277CCAAD0];
    v64 = [(UIView *)v11->_scrollContentView topAnchor];
    v62 = [(BKUIContainerScrollView *)v11 topAnchor];
    v60 = [v64 constraintEqualToAnchor:v62];
    v76[0] = v60;
    v19 = [(UIView *)v11->_scrollContentView widthAnchor];
    v20 = [(BKUIContainerScrollView *)v11 widthAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v76[1] = v21;
    v22 = [(UIView *)v11->_scrollContentView bottomAnchor];
    [(BKUIContainerScrollView *)v11 bottomAnchor];
    v23 = v68 = v10;
    v24 = [v22 constraintEqualToAnchor:v23];
    v76[2] = v24;
    v76[3] = v11->_horizontalConstraint;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
    [v58 activateConstraints:v25];

    v26 = objc_alloc_init(BKUIPearlInstructionView);
    instructionView = v11->_instructionView;
    v11->_instructionView = v26;

    [(BKUIPearlInstructionView *)v11->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_scrollContentView addSubview:v11->_instructionView];
    v28 = [(BKUIPearlInstructionView *)v11->_instructionView topAnchor];
    v29 = [(UIView *)v11->_scrollContentView topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    instructionViewTopConstraint = v11->_instructionViewTopConstraint;
    v11->_instructionViewTopConstraint = v30;

    objc_storeStrong(&v11->_buttonTray, obj);
    [(BKUIButtonTray *)v11->_buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(BKUIPearlInstructionView *)v11->_instructionView bottomAnchor];
    v33 = [(BKUIButtonTray *)v11->_buttonTray topAnchor];
    v34 = [v32 constraintLessThanOrEqualToAnchor:v33 constant:-25.0];
    buttonTrayTopAnchor = v11->_buttonTrayTopAnchor;
    v11->_buttonTrayTopAnchor = v34;

    v65 = MEMORY[0x277CCAAD0];
    v75[0] = v11->_instructionViewTopConstraint;
    v36 = [(BKUIPearlInstructionView *)v11->_instructionView leadingAnchor];
    v37 = [(UIView *)v11->_scrollContentView leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    v75[1] = v38;
    v39 = [(BKUIPearlInstructionView *)v11->_instructionView trailingAnchor];
    v40 = [(UIView *)v11->_scrollContentView trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v75[2] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
    [v65 activateConstraints:v42];

    [(UIView *)v11->_scrollContentView addSubview:v11->_buttonTray];
    v66 = [(UIView *)v11->_scrollContentView heightAnchor];
    v63 = [(BKUIContainerScrollView *)v11 heightAnchor];
    v43 = [v66 constraintGreaterThanOrEqualToAnchor:v63];
    pinButtonTrayToScrollViewBottomConstraint = v11->_pinButtonTrayToScrollViewBottomConstraint;
    v11->_pinButtonTrayToScrollViewBottomConstraint = v43;

    v57 = MEMORY[0x277CCAAD0];
    v61 = [(BKUIButtonTray *)v11->_buttonTray bottomAnchor];
    v59 = [(UIView *)v11->_scrollContentView bottomAnchor];
    v45 = [v61 constraintEqualToAnchor:v59];
    v74[0] = v45;
    v74[1] = v11->_pinButtonTrayToScrollViewBottomConstraint;
    v46 = [(BKUIButtonTray *)v11->_buttonTray leadingAnchor];
    v47 = [(UIView *)v11->_scrollContentView leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v74[2] = v48;
    v49 = [(BKUIButtonTray *)v11->_buttonTray trailingAnchor];
    v50 = [(UIView *)v11->_scrollContentView trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v74[3] = v51;
    v74[4] = v11->_buttonTrayTopAnchor;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    [v57 activateConstraints:v52];

    v10 = v68;
    v72.receiver = v11;
    v72.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = *MEMORY[0x277CBF3A8];
    v54 = *(MEMORY[0x277CBF3A8] + 8);
    v71.receiver = v11;
    v71.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v71 setContentSize:v53, v54];
    v70.receiver = v11;
    v70.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v70 setIndicatorStyle:2];
    v69.receiver = v11;
    v69.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v69 setContentInsetAdjustmentBehavior:2];
  }

  v55 = *MEMORY[0x277D85DE8];
  return v11;
}

@end