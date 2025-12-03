@interface CPSPanView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CPSPanView)initWithFrame:(CGRect)frame;
- (CPSPanViewDelegate)delegate;
- (double)sideButtonTopInset;
- (void)_handleButtonTapped:(id)tapped;
- (void)_handleLongPressGesture:(id)gesture;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation CPSPanView

- (CPSPanView)initWithFrame:(CGRect)frame
{
  v156[1] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v148 = a2;
  v149 = 0;
  v147.receiver = self;
  v147.super_class = CPSPanView;
  v149 = [(CPSPanView *)&v147 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v149, v149);
  if (v149)
  {
    [(CPSPanView *)v149 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [[CPSPanButton alloc] initWithDirection:?];
    panLeftButton = v149->_panLeftButton;
    v149->_panLeftButton = v3;
    MEMORY[0x277D82BD8](panLeftButton);
    v20 = CPSLocalizedStringForKey(@"ACCESSIBILITY_PAN_LEFT");
    v156[0] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:1];
    [(CPSPanButton *)v149->_panLeftButton setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v19);
    *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    [(CPSPanView *)v149 addSubview:v149->_panLeftButton, v5];
    v6 = [[CPSPanButton alloc] initWithDirection:2];
    panRightButton = v149->_panRightButton;
    v149->_panRightButton = v6;
    MEMORY[0x277D82BD8](panRightButton);
    v22 = CPSLocalizedStringForKey(@"ACCESSIBILITY_PAN_RIGHT");
    v155 = v22;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
    [(CPSPanButton *)v149->_panRightButton setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v21);
    *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    [(CPSPanView *)v149 addSubview:v149->_panRightButton, v8];
    v9 = [[CPSPanButton alloc] initWithDirection:?];
    panUpButton = v149->_panUpButton;
    v149->_panUpButton = v9;
    MEMORY[0x277D82BD8](panUpButton);
    v24 = CPSLocalizedStringForKey(@"ACCESSIBILITY_PAN_UP");
    v154 = v24;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v154 count:1];
    [(CPSPanButton *)v149->_panUpButton setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v23);
    *&v11 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    [(CPSPanView *)v149 addSubview:v149->_panUpButton, v11];
    v12 = [[CPSPanButton alloc] initWithDirection:8];
    panDownButton = v149->_panDownButton;
    v149->_panDownButton = v12;
    MEMORY[0x277D82BD8](panDownButton);
    v26 = CPSLocalizedStringForKey(@"ACCESSIBILITY_PAN_DOWN");
    v153 = v26;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v153 count:1];
    [(CPSPanButton *)v149->_panDownButton setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v25);
    *&v14 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    [(CPSPanView *)v149 addSubview:v149->_panDownButton, v14];
    v146 = objc_alloc_init(MEMORY[0x277D754F8]);
    [(CPSPanView *)v149 addLayoutGuide:v146];
    v145 = objc_alloc_init(MEMORY[0x277D754F8]);
    [(CPSPanView *)v149 addLayoutGuide:v145];
    v144 = objc_alloc_init(MEMORY[0x277D754F8]);
    [(CPSPanView *)v149 addLayoutGuide:v144];
    v143 = objc_alloc_init(MEMORY[0x277D754F8]);
    [(CPSPanView *)v149 addLayoutGuide:v143];
    v142 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSPanView *)v149 addLayoutGuide:v142];
    v141 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSPanView *)v149 addLayoutGuide:v141];
    widthAnchor = [v142 widthAnchor];
    widthAnchor2 = [(CPSPanView *)v149 widthAnchor];
    v140 = [widthAnchor constraintEqualToAnchor:0.035 multiplier:?];
    MEMORY[0x277D82BD8](widthAnchor2);
    v15 = MEMORY[0x277D82BD8](widthAnchor);
    v15.n128_u32[0] = 1144750080;
    [v140 setPriority:v15.n128_f64[0]];
    v29 = MEMORY[0x277CCAAD0];
    leftAnchor = [v142 leftAnchor];
    leftAnchor2 = [(CPSPanView *)v149 leftAnchor];
    v129 = [leftAnchor constraintEqualToAnchor:?];
    v152[0] = v129;
    widthAnchor3 = [v142 widthAnchor];
    v127 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:?];
    v152[1] = v127;
    widthAnchor4 = [v142 widthAnchor];
    v125 = [widthAnchor4 constraintLessThanOrEqualToConstant:56.0];
    v152[2] = v125;
    v152[3] = v140;
    leftAnchor3 = [(CPSPanButton *)v149->_panLeftButton leftAnchor];
    rightAnchor = [v142 rightAnchor];
    v122 = [leftAnchor3 constraintEqualToAnchor:?];
    v152[4] = v122;
    centerYAnchor = [(CPSPanButton *)v149->_panLeftButton centerYAnchor];
    centerYAnchor2 = [(CPSPanView *)v149 centerYAnchor];
    v119 = [centerYAnchor constraintEqualToAnchor:?];
    v152[5] = v119;
    widthAnchor5 = [(CPSPanButton *)v149->_panLeftButton widthAnchor];
    v117 = [widthAnchor5 constraintEqualToConstant:?];
    v152[6] = v117;
    heightAnchor = [(CPSPanButton *)v149->_panLeftButton heightAnchor];
    v115 = [heightAnchor constraintEqualToConstant:36.0];
    v152[7] = v115;
    rightAnchor2 = [(CPSPanButton *)v149->_panRightButton rightAnchor];
    leftAnchor4 = [v141 leftAnchor];
    v112 = [rightAnchor2 constraintEqualToAnchor:?];
    v152[8] = v112;
    centerYAnchor3 = [(CPSPanButton *)v149->_panRightButton centerYAnchor];
    centerYAnchor4 = [(CPSPanView *)v149 centerYAnchor];
    v109 = [centerYAnchor3 constraintEqualToAnchor:?];
    v152[9] = v109;
    widthAnchor6 = [(CPSPanButton *)v149->_panRightButton widthAnchor];
    v107 = [widthAnchor6 constraintEqualToConstant:36.0];
    v152[10] = v107;
    heightAnchor2 = [(CPSPanButton *)v149->_panRightButton heightAnchor];
    v105 = [heightAnchor2 constraintEqualToConstant:36.0];
    v152[11] = v105;
    rightAnchor3 = [v141 rightAnchor];
    rightAnchor4 = [(CPSPanView *)v149 rightAnchor];
    v102 = [rightAnchor3 constraintEqualToAnchor:?];
    v152[12] = v102;
    widthAnchor7 = [v141 widthAnchor];
    widthAnchor8 = [v142 widthAnchor];
    v99 = [widthAnchor7 constraintEqualToAnchor:?];
    v152[13] = v99;
    topAnchor = [(CPSPanButton *)v149->_panUpButton topAnchor];
    topAnchor2 = [(CPSPanView *)v149 topAnchor];
    v96 = [topAnchor constraintEqualToAnchor:8.0 constant:?];
    v152[14] = v96;
    centerXAnchor = [(CPSPanButton *)v149->_panUpButton centerXAnchor];
    centerXAnchor2 = [(CPSPanView *)v149 centerXAnchor];
    v93 = [centerXAnchor constraintEqualToAnchor:?];
    v152[15] = v93;
    widthAnchor9 = [(CPSPanButton *)v149->_panUpButton widthAnchor];
    v91 = [widthAnchor9 constraintEqualToConstant:36.0];
    v152[16] = v91;
    heightAnchor3 = [(CPSPanButton *)v149->_panUpButton heightAnchor];
    v89 = [heightAnchor3 constraintEqualToConstant:36.0];
    v152[17] = v89;
    bottomAnchor = [(CPSPanButton *)v149->_panDownButton bottomAnchor];
    bottomAnchor2 = [(CPSPanView *)v149 bottomAnchor];
    v86 = [bottomAnchor constraintEqualToAnchor:-8.0 constant:?];
    v152[18] = v86;
    centerXAnchor3 = [(CPSPanButton *)v149->_panDownButton centerXAnchor];
    centerXAnchor4 = [(CPSPanView *)v149 centerXAnchor];
    v83 = [centerXAnchor3 constraintEqualToAnchor:?];
    v152[19] = v83;
    widthAnchor10 = [(CPSPanButton *)v149->_panDownButton widthAnchor];
    v81 = [widthAnchor10 constraintEqualToConstant:36.0];
    v152[20] = v81;
    heightAnchor4 = [(CPSPanButton *)v149->_panDownButton heightAnchor];
    v79 = [heightAnchor4 constraintEqualToConstant:36.0];
    v152[21] = v79;
    leftAnchor5 = [v146 leftAnchor];
    leftAnchor6 = [(CPSPanView *)v149 leftAnchor];
    v76 = [leftAnchor5 constraintEqualToAnchor:?];
    v152[22] = v76;
    rightAnchor5 = [v146 rightAnchor];
    rightAnchor6 = [(CPSPanButton *)v149->_panLeftButton rightAnchor];
    v73 = [rightAnchor5 constraintEqualToAnchor:?];
    v152[23] = v73;
    bottomAnchor3 = [v146 bottomAnchor];
    bottomAnchor4 = [(CPSPanView *)v149 bottomAnchor];
    v70 = [bottomAnchor3 constraintEqualToAnchor:?];
    v152[24] = v70;
    topAnchor3 = [v146 topAnchor];
    topAnchor4 = [(CPSPanView *)v149 topAnchor];
    v67 = [topAnchor3 constraintEqualToAnchor:?];
    v152[25] = v67;
    leftAnchor7 = [v145 leftAnchor];
    leftAnchor8 = [(CPSPanButton *)v149->_panRightButton leftAnchor];
    v64 = [leftAnchor7 constraintEqualToAnchor:?];
    v152[26] = v64;
    rightAnchor7 = [v145 rightAnchor];
    rightAnchor8 = [(CPSPanView *)v149 rightAnchor];
    v61 = [rightAnchor7 constraintEqualToAnchor:?];
    v152[27] = v61;
    bottomAnchor5 = [v145 bottomAnchor];
    bottomAnchor6 = [(CPSPanView *)v149 bottomAnchor];
    v58 = [bottomAnchor5 constraintEqualToAnchor:?];
    v152[28] = v58;
    topAnchor5 = [v145 topAnchor];
    topAnchor6 = [(CPSPanView *)v149 topAnchor];
    v55 = [topAnchor5 constraintEqualToAnchor:?];
    v152[29] = v55;
    leftAnchor9 = [v144 leftAnchor];
    leftAnchor10 = [(CPSPanView *)v149 leftAnchor];
    v52 = [leftAnchor9 constraintEqualToAnchor:?];
    v152[30] = v52;
    rightAnchor9 = [v144 rightAnchor];
    rightAnchor10 = [(CPSPanView *)v149 rightAnchor];
    v49 = [rightAnchor9 constraintEqualToAnchor:?];
    v152[31] = v49;
    bottomAnchor7 = [v144 bottomAnchor];
    bottomAnchor8 = [(CPSPanButton *)v149->_panUpButton bottomAnchor];
    v46 = [bottomAnchor7 constraintEqualToAnchor:?];
    v152[32] = v46;
    topAnchor7 = [v144 topAnchor];
    topAnchor8 = [(CPSPanView *)v149 topAnchor];
    v43 = [topAnchor7 constraintEqualToAnchor:?];
    v152[33] = v43;
    leftAnchor11 = [v143 leftAnchor];
    leftAnchor12 = [(CPSPanView *)v149 leftAnchor];
    v40 = [leftAnchor11 constraintEqualToAnchor:?];
    v152[34] = v40;
    rightAnchor11 = [v143 rightAnchor];
    rightAnchor12 = [(CPSPanView *)v149 rightAnchor];
    v37 = [rightAnchor11 constraintEqualToAnchor:?];
    v152[35] = v37;
    bottomAnchor9 = [v143 bottomAnchor];
    bottomAnchor10 = [(CPSPanView *)v149 bottomAnchor];
    v34 = [bottomAnchor9 constraintEqualToAnchor:?];
    v152[36] = v34;
    topAnchor9 = [v143 topAnchor];
    topAnchor10 = [(CPSPanButton *)v149->_panDownButton topAnchor];
    v31 = [topAnchor9 constraintEqualToAnchor:?];
    v152[37] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:38];
    [v29 activateConstraints:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](rightAnchor12);
    MEMORY[0x277D82BD8](rightAnchor11);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](leftAnchor12);
    MEMORY[0x277D82BD8](leftAnchor11);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](rightAnchor10);
    MEMORY[0x277D82BD8](rightAnchor9);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](leftAnchor10);
    MEMORY[0x277D82BD8](leftAnchor9);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](rightAnchor8);
    MEMORY[0x277D82BD8](rightAnchor7);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](leftAnchor8);
    MEMORY[0x277D82BD8](leftAnchor7);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](rightAnchor6);
    MEMORY[0x277D82BD8](rightAnchor5);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](leftAnchor6);
    MEMORY[0x277D82BD8](leftAnchor5);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](heightAnchor4);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](widthAnchor10);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](widthAnchor9);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](widthAnchor8);
    MEMORY[0x277D82BD8](widthAnchor7);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](rightAnchor4);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](widthAnchor6);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](leftAnchor4);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](widthAnchor5);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](widthAnchor4);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](widthAnchor3);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](leftAnchor2);
    *&v16 = MEMORY[0x277D82BD8](leftAnchor).n128_u64[0];
    v151[0] = v149->_panLeftButton;
    v151[1] = v149->_panRightButton;
    v151[2] = v149->_panUpButton;
    v151[3] = v149->_panDownButton;
    v139 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:{4, v16}];
    v132 = v139;
    v133 = MEMORY[0x277D85DD0];
    v134 = -1073741824;
    v135 = 0;
    v136 = __28__CPSPanView_initWithFrame___block_invoke;
    v137 = &unk_278D91558;
    v138 = MEMORY[0x277D82BE0](v149);
    [v132 enumerateObjectsUsingBlock:&v133];
    objc_storeStrong(&v138, 0);
    objc_storeStrong(&v139, 0);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(&v141, 0);
    objc_storeStrong(&v142, 0);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v146, 0);
  }

  v18 = MEMORY[0x277D82BE0](v149);
  objc_storeStrong(&v149, 0);
  return v18;
}

void __28__CPSPanView_initWithFrame___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[3] = a3;
  v10[2] = a4;
  v10[1] = a1;
  v10[0] = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:a1[4] action:0x1FB850DB4uLL];
  [v10[0] setAllowedTouchTypes:&unk_2855C4F88];
  [v10[0] setMinimumPressDuration:?];
  [location[0] addGestureRecognizer:v10[0]];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:a1[4] action:0x1FD400A00uLL];
  [v9 setAllowedTouchTypes:&unk_2855C4FA0];
  [v9 requireGestureRecognizerToFail:v10[0]];
  [location[0] addGestureRecognizer:v9];
  v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:a1[4] action:0x1FB850DB4uLL];
  [v8 setAllowedPressTypes:&unk_2855C4FB8];
  [v8 setMinimumPressDuration:0.25];
  [location[0] addGestureRecognizer:v8];
  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:a1[4] action:0x1FD400A00uLL];
  [v7 setAllowedPressTypes:&unk_2855C4FD0];
  [v7 requireGestureRecognizerToFail:v8];
  [v7 setDelegate:a1[4]];
  [location[0] addGestureRecognizer:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v4 = objc_opt_class();
  view = [location[0] view];
  v7 = CPSSafeCast_1(v4, view);
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  delegate = [(CPSPanView *)selfCopy delegate];
  -[CPSPanViewDelegate panView:panWithDirection:](delegate, "panView:panWithDirection:", selfCopy, [v7 direction]);
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleLongPressGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  v5 = objc_opt_class();
  view = [location[0] view];
  v9 = CPSSafeCast_1(v5, view);
  direction = [v9 direction];
  state = [location[0] state];
  if (state == 1)
  {
    delegate = [(CPSPanView *)selfCopy delegate];
    [(CPSPanViewDelegate *)delegate panView:selfCopy panBeganWithDirection:direction];
    MEMORY[0x277D82BD8](delegate);
  }

  else if (state == 3)
  {
    delegate2 = [(CPSPanView *)selfCopy delegate];
    [(CPSPanViewDelegate *)delegate2 panView:selfCopy panEndedWithDirection:direction];
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, recognizer);
  v6 = 0;
  objc_storeStrong(&v6, gestureRecognizer);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, began);
  v6 = 0;
  objc_storeStrong(&v6, event);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C4FE8) & 1) == 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesBegan:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v6 = 0;
  objc_storeStrong(&v6, event);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5000) & 1) == 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesChanged:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  v6 = 0;
  objc_storeStrong(&v6, event);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5018) & 1) == 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesCancelled:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ended);
  v6 = 0;
  objc_storeStrong(&v6, event);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5030) & 1) == 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesEnded:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (double)sideButtonTopInset
{
  panRightButton = [(CPSPanView *)self panRightButton];
  [(CPSPanButton *)panRightButton frame];
  MinY = CGRectGetMinY(v6);
  MEMORY[0x277D82BD8](panRightButton);
  [(CPSPanView *)self bounds];
  return CGRectGetHeight(v7) - MinY;
}

- (CPSPanViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end