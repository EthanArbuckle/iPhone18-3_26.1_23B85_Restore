@interface CPSPanView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CPSPanView)initWithFrame:(CGRect)a3;
- (CPSPanViewDelegate)delegate;
- (double)sideButtonTopInset;
- (void)_handleButtonTapped:(id)a3;
- (void)_handleLongPressGesture:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CPSPanView

- (CPSPanView)initWithFrame:(CGRect)a3
{
  v156[1] = *MEMORY[0x277D85DE8];
  v150 = a3;
  v148 = a2;
  v149 = 0;
  v147.receiver = self;
  v147.super_class = CPSPanView;
  v149 = [(CPSPanView *)&v147 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v28 = [v142 widthAnchor];
    v27 = [(CPSPanView *)v149 widthAnchor];
    v140 = [v28 constraintEqualToAnchor:0.035 multiplier:?];
    MEMORY[0x277D82BD8](v27);
    v15 = MEMORY[0x277D82BD8](v28);
    v15.n128_u32[0] = 1144750080;
    [v140 setPriority:v15.n128_f64[0]];
    v29 = MEMORY[0x277CCAAD0];
    v131 = [v142 leftAnchor];
    v130 = [(CPSPanView *)v149 leftAnchor];
    v129 = [v131 constraintEqualToAnchor:?];
    v152[0] = v129;
    v128 = [v142 widthAnchor];
    v127 = [v128 constraintGreaterThanOrEqualToConstant:?];
    v152[1] = v127;
    v126 = [v142 widthAnchor];
    v125 = [v126 constraintLessThanOrEqualToConstant:56.0];
    v152[2] = v125;
    v152[3] = v140;
    v124 = [(CPSPanButton *)v149->_panLeftButton leftAnchor];
    v123 = [v142 rightAnchor];
    v122 = [v124 constraintEqualToAnchor:?];
    v152[4] = v122;
    v121 = [(CPSPanButton *)v149->_panLeftButton centerYAnchor];
    v120 = [(CPSPanView *)v149 centerYAnchor];
    v119 = [v121 constraintEqualToAnchor:?];
    v152[5] = v119;
    v118 = [(CPSPanButton *)v149->_panLeftButton widthAnchor];
    v117 = [v118 constraintEqualToConstant:?];
    v152[6] = v117;
    v116 = [(CPSPanButton *)v149->_panLeftButton heightAnchor];
    v115 = [v116 constraintEqualToConstant:36.0];
    v152[7] = v115;
    v114 = [(CPSPanButton *)v149->_panRightButton rightAnchor];
    v113 = [v141 leftAnchor];
    v112 = [v114 constraintEqualToAnchor:?];
    v152[8] = v112;
    v111 = [(CPSPanButton *)v149->_panRightButton centerYAnchor];
    v110 = [(CPSPanView *)v149 centerYAnchor];
    v109 = [v111 constraintEqualToAnchor:?];
    v152[9] = v109;
    v108 = [(CPSPanButton *)v149->_panRightButton widthAnchor];
    v107 = [v108 constraintEqualToConstant:36.0];
    v152[10] = v107;
    v106 = [(CPSPanButton *)v149->_panRightButton heightAnchor];
    v105 = [v106 constraintEqualToConstant:36.0];
    v152[11] = v105;
    v104 = [v141 rightAnchor];
    v103 = [(CPSPanView *)v149 rightAnchor];
    v102 = [v104 constraintEqualToAnchor:?];
    v152[12] = v102;
    v101 = [v141 widthAnchor];
    v100 = [v142 widthAnchor];
    v99 = [v101 constraintEqualToAnchor:?];
    v152[13] = v99;
    v98 = [(CPSPanButton *)v149->_panUpButton topAnchor];
    v97 = [(CPSPanView *)v149 topAnchor];
    v96 = [v98 constraintEqualToAnchor:8.0 constant:?];
    v152[14] = v96;
    v95 = [(CPSPanButton *)v149->_panUpButton centerXAnchor];
    v94 = [(CPSPanView *)v149 centerXAnchor];
    v93 = [v95 constraintEqualToAnchor:?];
    v152[15] = v93;
    v92 = [(CPSPanButton *)v149->_panUpButton widthAnchor];
    v91 = [v92 constraintEqualToConstant:36.0];
    v152[16] = v91;
    v90 = [(CPSPanButton *)v149->_panUpButton heightAnchor];
    v89 = [v90 constraintEqualToConstant:36.0];
    v152[17] = v89;
    v88 = [(CPSPanButton *)v149->_panDownButton bottomAnchor];
    v87 = [(CPSPanView *)v149 bottomAnchor];
    v86 = [v88 constraintEqualToAnchor:-8.0 constant:?];
    v152[18] = v86;
    v85 = [(CPSPanButton *)v149->_panDownButton centerXAnchor];
    v84 = [(CPSPanView *)v149 centerXAnchor];
    v83 = [v85 constraintEqualToAnchor:?];
    v152[19] = v83;
    v82 = [(CPSPanButton *)v149->_panDownButton widthAnchor];
    v81 = [v82 constraintEqualToConstant:36.0];
    v152[20] = v81;
    v80 = [(CPSPanButton *)v149->_panDownButton heightAnchor];
    v79 = [v80 constraintEqualToConstant:36.0];
    v152[21] = v79;
    v78 = [v146 leftAnchor];
    v77 = [(CPSPanView *)v149 leftAnchor];
    v76 = [v78 constraintEqualToAnchor:?];
    v152[22] = v76;
    v75 = [v146 rightAnchor];
    v74 = [(CPSPanButton *)v149->_panLeftButton rightAnchor];
    v73 = [v75 constraintEqualToAnchor:?];
    v152[23] = v73;
    v72 = [v146 bottomAnchor];
    v71 = [(CPSPanView *)v149 bottomAnchor];
    v70 = [v72 constraintEqualToAnchor:?];
    v152[24] = v70;
    v69 = [v146 topAnchor];
    v68 = [(CPSPanView *)v149 topAnchor];
    v67 = [v69 constraintEqualToAnchor:?];
    v152[25] = v67;
    v66 = [v145 leftAnchor];
    v65 = [(CPSPanButton *)v149->_panRightButton leftAnchor];
    v64 = [v66 constraintEqualToAnchor:?];
    v152[26] = v64;
    v63 = [v145 rightAnchor];
    v62 = [(CPSPanView *)v149 rightAnchor];
    v61 = [v63 constraintEqualToAnchor:?];
    v152[27] = v61;
    v60 = [v145 bottomAnchor];
    v59 = [(CPSPanView *)v149 bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:?];
    v152[28] = v58;
    v57 = [v145 topAnchor];
    v56 = [(CPSPanView *)v149 topAnchor];
    v55 = [v57 constraintEqualToAnchor:?];
    v152[29] = v55;
    v54 = [v144 leftAnchor];
    v53 = [(CPSPanView *)v149 leftAnchor];
    v52 = [v54 constraintEqualToAnchor:?];
    v152[30] = v52;
    v51 = [v144 rightAnchor];
    v50 = [(CPSPanView *)v149 rightAnchor];
    v49 = [v51 constraintEqualToAnchor:?];
    v152[31] = v49;
    v48 = [v144 bottomAnchor];
    v47 = [(CPSPanButton *)v149->_panUpButton bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:?];
    v152[32] = v46;
    v45 = [v144 topAnchor];
    v44 = [(CPSPanView *)v149 topAnchor];
    v43 = [v45 constraintEqualToAnchor:?];
    v152[33] = v43;
    v42 = [v143 leftAnchor];
    v41 = [(CPSPanView *)v149 leftAnchor];
    v40 = [v42 constraintEqualToAnchor:?];
    v152[34] = v40;
    v39 = [v143 rightAnchor];
    v38 = [(CPSPanView *)v149 rightAnchor];
    v37 = [v39 constraintEqualToAnchor:?];
    v152[35] = v37;
    v36 = [v143 bottomAnchor];
    v35 = [(CPSPanView *)v149 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:?];
    v152[36] = v34;
    v33 = [v143 topAnchor];
    v32 = [(CPSPanButton *)v149->_panDownButton topAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v152[37] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:38];
    [v29 activateConstraints:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](v130);
    *&v16 = MEMORY[0x277D82BD8](v131).n128_u64[0];
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

- (void)_handleButtonTapped:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = objc_opt_class();
  v5 = [location[0] view];
  v7 = CPSSafeCast_1(v4, v5);
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [(CPSPanView *)v9 delegate];
  -[CPSPanViewDelegate panView:panWithDirection:](v6, "panView:panWithDirection:", v9, [v7 direction]);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleLongPressGesture:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_opt_class();
  v6 = [location[0] view];
  v9 = CPSSafeCast_1(v5, v6);
  v8 = [v9 direction];
  v7 = [location[0] state];
  if (v7 == 1)
  {
    v4 = [(CPSPanView *)v11 delegate];
    [(CPSPanViewDelegate *)v4 panView:v11 panBeganWithDirection:v8];
    MEMORY[0x277D82BD8](v4);
  }

  else if (v7 == 3)
  {
    v3 = [(CPSPanView *)v11 delegate];
    [(CPSPanViewDelegate *)v3 panView:v11 panEndedWithDirection:v8];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C4FE8) & 1) == 0)
  {
    v5.receiver = v8;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesBegan:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5000) & 1) == 0)
  {
    v5.receiver = v8;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesChanged:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5018) & 1) == 0)
  {
    v5.receiver = v8;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesCancelled:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  if ((_CPSUIPressesContainsPressTypes(location[0], &unk_2855C5030) & 1) == 0)
  {
    v5.receiver = v8;
    v5.super_class = CPSPanView;
    [(CPSPanView *)&v5 pressesEnded:location[0] withEvent:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (double)sideButtonTopInset
{
  v3 = [(CPSPanView *)self panRightButton];
  [(CPSPanButton *)v3 frame];
  MinY = CGRectGetMinY(v6);
  MEMORY[0x277D82BD8](v3);
  [(CPSPanView *)self bounds];
  return CGRectGetHeight(v7) - MinY;
}

- (CPSPanViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end