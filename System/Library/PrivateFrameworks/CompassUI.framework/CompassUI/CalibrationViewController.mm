@interface CalibrationViewController
- (CalibrationViewController)init;
- (CalibrationViewController)initWithOriginPoint:(CGPoint)point;
- (double)_correctedAngleForCurrentOrientation:(double)orientation;
- (double)completeCircle;
- (float)quantizedPercentage:(double)percentage forAngle:(double)angle;
- (id)updatedMaskingPath;
- (void)_updateSizes;
- (void)addConstraints;
- (void)dealloc;
- (void)hideAllTics;
- (void)reset;
- (void)setBallAngle:(double)angle tiltAngle:(double)tiltAngle;
- (void)setMotion:(id)motion;
- (void)showTicAtAngle:(double)angle withCredit:(double)credit;
- (void)showTicsBetweenStartAngle:(double)angle endAngle:(double)endAngle withCredit:(double)credit;
- (void)updateMaskingPath;
- (void)userDefaultsChanged:(id)changed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CalibrationViewController

- (CalibrationViewController)init
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  return MEMORY[0x2821F9670](self, sel_initWithOriginPoint_);
}

- (CalibrationViewController)initWithOriginPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v14.receiver = self;
  v14.super_class = CalibrationViewController;
  v5 = [(CalibrationViewController *)&v14 init];
  if (v5)
  {
    v5->_ticsShowingArray = malloc_type_calloc(0xB4uLL, 4uLL, 0x100004052888210uLL);
    v5->_angleToRim = 0.34906585;
    v5->_previousHorizontalAngle = -1.0;
    if (x != *MEMORY[0x277CBF348] || y != *(MEMORY[0x277CBF348] + 8))
    {
      v5->_compassOriginPoint.x = x;
      v5->_compassOriginPoint.y = y;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"CalibrationAwesomeAngle"];
    v5->_calibrationAngle = v8 * 3.14159265 / 180.0;

    if (v5->_calibrationAngle == 0.0)
    {
      v5->_calibrationAngle = 0.872664626;
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5->_quantizationType = [standardUserDefaults2 integerForKey:@"CalibrationQuantizationType"];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5->_shouldCompleteTics = [standardUserDefaults3 BOOLForKey:@"CalibrationShouldCompleteTics"];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    calibrationConstraints = v5->_calibrationConstraints;
    v5->_calibrationConstraints = v11;
  }

  return v5;
}

- (void)_updateSizes
{
  v40 = *MEMORY[0x277D85DE8];
  traitCollection = [(CalibrationViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    traitCollection2 = [(CalibrationViewController *)self traitCollection];
    v5 = [traitCollection2 verticalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  view = [(CalibrationViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v41);

  view2 = [(CalibrationViewController *)self view];
  [view2 frame];
  Height = CGRectGetHeight(v42);

  if (Width >= Height)
  {
    Width = Height;
  }

  v10 = 203.0;
  v11 = round(Width * 100.0 / 320.0);
  if (!v5)
  {
    v10 = v11;
  }

  self->_compassRadius = v10;
  v12 = 0.0;
  [(CompassBackgroundView *)self->_compassBackgroundView setFrame:0.0, 0.0, Width, Width];
  [(CompassBackgroundView *)self->_compassBackgroundView setTicRadius:self->_compassRadius];
  [(CompassBackgroundView *)self->_compassBackgroundView center];
  v14 = v13 - self->_compassRadius;
  [(CompassBackgroundView *)self->_compassBackgroundView center];
  [(UILabel *)self->_titleLabel setFrame:v14, v15 - self->_compassRadius, self->_compassRadius + self->_compassRadius, self->_compassRadius + self->_compassRadius];
  v16 = MEMORY[0x277D74300];
  if (v5)
  {
    v17 = 24.0;
    v12 = 6.0;
    v18 = 4.0;
  }

  else
  {
    LODWORD(v38) = -798153473;
    v37 = xmmword_243D70400;
    v19 = MGIsDeviceOfType();
    v20 = 0.850000024;
    v18 = 1.0;
    if (!v19)
    {
      v20 = 1.0;
    }

    v17 = round(Width * 18.0 / 320.0) * v20;
  }

  v21 = [v16 systemFontOfSize:{v17, v37, v38}];
  [(UILabel *)self->_titleLabel setFont:v21];

  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
  [v22 pointSize];
  v24 = v23;

  v25 = fmin(v24, 26.0);
  v26 = MEMORY[0x277D74300];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v29 = v28;
  LODWORD(v39) = -798153473;
  v30 = MGIsDeviceOfType();
  v31 = 0.850000024;
  if (!v30)
  {
    v31 = 1.0;
  }

  v32 = [v26 boldSystemFontOfSize:{v31 * round(v25 * v29 / 320.0), 0x6C743B9540D7A421, 0xBCD16A8CA16013ECLL, v39}];
  [(UILabel *)self->_instructionLabel setFont:v32];

  [(CompassBackgroundView *)self->_compassBackgroundView ticLength];
  [(CalibrationBallView *)self->_ballView setBallRadius:v33 - v12];
  compassRadius = self->_compassRadius;
  [(CalibrationBallView *)self->_ballView ballRadius];
  [(CalibrationBallView *)self->_ballView setTrackRadius:compassRadius - v35 - v18];
  v36 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v55 viewDidLoad];
  blackColor = [MEMORY[0x277D75348] blackColor];
  view = [(CalibrationViewController *)self view];
  [view setBackgroundColor:blackColor];

  view2 = [(CalibrationViewController *)self view];
  layer = [view2 layer];
  [layer setBorderWidth:1.0];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor2 CGColor];
  view3 = [(CalibrationViewController *)self view];
  layer2 = [view3 layer];
  [layer2 setBorderColor:cGColor];

  v11 = [CompassBackgroundView alloc];
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v15 = *(MEMORY[0x277CBF3A0] + 24);
  v16 = [(CompassBackgroundView *)v11 initWithFrame:0 forCompass:*MEMORY[0x277CBF3A0], v13, v14, v15];
  compassBackgroundView = self->_compassBackgroundView;
  self->_compassBackgroundView = v16;

  [(CompassBackgroundView *)self->_compassBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_numCompleteTics = 0;
  layer3 = [MEMORY[0x277CD9F90] layer];
  compassBackgroundViewMask = self->_compassBackgroundViewMask;
  self->_compassBackgroundViewMask = layer3;

  blackColor3 = [MEMORY[0x277D75348] blackColor];
  -[CAShapeLayer setFillColor:](self->_compassBackgroundViewMask, "setFillColor:", [blackColor3 CGColor]);

  [(CAShapeLayer *)self->_compassBackgroundViewMask setLineWidth:0.5];
  LODWORD(v21) = 1060320051;
  [(CAShapeLayer *)self->_compassBackgroundViewMask setOpacity:v21];
  [(CalibrationViewController *)self reset];
  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v22;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  grayColor = [MEMORY[0x277D75348] grayColor];
  [(UILabel *)self->_titleLabel setTextColor:grayColor];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle localizedStringForKey:@"Calibrate" value:&stru_2856FB5D0 table:0];
  [(UILabel *)self->_titleLabel setText:v26];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:clearColor];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.699999988];
  v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v28;

  [(UILabel *)self->_instructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  grayColor2 = [MEMORY[0x277D75348] grayColor];
  [(UILabel *)self->_instructionLabel setTextColor:grayColor2];

  [(UILabel *)self->_instructionLabel setTextAlignment:1];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [mainBundle2 localizedStringForKey:@"Tilt the screen to roll the ball around the circle" value:&stru_2856FB5D0 table:0];
  [(UILabel *)self->_instructionLabel setText:v32];

  [(UILabel *)self->_instructionLabel setNumberOfLines:3];
  [(CompassBackgroundView *)self->_compassBackgroundView center];
  [(UILabel *)self->_instructionLabel setCenter:?];
  v33 = [MEMORY[0x277D75220] buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v33;

  [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [MEMORY[0x277D75348] colorWithWhite:0.400000006 alpha:1.0];
  [(UIButton *)self->_cancelButton setBackgroundColor:v35];

  layer4 = [(UIButton *)self->_cancelButton layer];
  [layer4 setCornerRadius:5.0];

  v37 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v37];

  v39 = self->_cancelButton;
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v41 = [mainBundle3 localizedStringForKey:@"Cancel" value:&stru_2856FB5D0 table:0];
  [(UIButton *)v39 setTitle:v41 forState:0];

  v42 = self->_cancelButton;
  blackColor4 = [MEMORY[0x277D75348] blackColor];
  [(UIButton *)v42 setTitleColor:blackColor4 forState:0];

  v44 = self->_cancelButton;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UIButton *)v44 setTitleColor:whiteColor forState:4];

  [(UIButton *)self->_cancelButton addTarget:self action:sel_cancel forControlEvents:64];
  v46 = [[CalibrationBallView alloc] initWithFrame:v12 ballRadius:v13, v14, v15, 0.0];
  ballView = self->_ballView;
  self->_ballView = v46;

  [(CalibrationBallView *)self->_ballView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CalibrationViewController *)self _updateSizes];
  view4 = [(CalibrationViewController *)self view];
  [view4 addSubview:self->_compassBackgroundView];

  view5 = [(CalibrationViewController *)self view];
  [view5 addSubview:self->_instructionLabel];

  view6 = [(CalibrationViewController *)self view];
  layer5 = [view6 layer];
  [layer5 addSublayer:self->_compassBackgroundViewMask];

  view7 = [(CalibrationViewController *)self view];
  [view7 addSubview:self->_titleLabel];

  view8 = [(CalibrationViewController *)self view];
  [view8 addSubview:self->_ballView];

  view9 = [(CalibrationViewController *)self view];
  [view9 addSubview:self->_cancelButton];
}

- (void)userDefaultsChanged:(id)changed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  self->_quantizationType = [standardUserDefaults integerForKey:@"CalibrationQuantizationType"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 doubleForKey:@"CalibrationAwesomeAngle"];
  self->_calibrationAngle = v6 * 3.14159265 / 180.0;

  if (self->_calibrationAngle == 0.0)
  {
    self->_calibrationAngle = 0.872664626;
  }

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  self->_shouldCompleteTics = [standardUserDefaults3 BOOLForKey:@"CalibrationShouldCompleteTics"];
}

- (float)quantizedPercentage:(double)percentage forAngle:(double)angle
{
  if (qword_27EDBA528 != -1)
  {
    sub_243D6FB24();
  }

  v7 = fmax(cos((angle * 2.0 + -270.0) * 3.14159265 / 180.0) * *&qword_27EDBA520, 0.0) + percentage;
  quantizationType = self->_quantizationType;
  if (quantizationType)
  {
    if (quantizationType == 1)
    {
      result = 1.0;
      if (v7 > 0.660000026)
      {
        return result;
      }

      if (v7 > 0.330000013)
      {
        return 0.66;
      }

      if (v7 > 0.100000001)
      {
        return 0.33;
      }
    }

    else if (quantizationType == 2 && v7 > 0.100000001)
    {
      return v7;
    }

    return 0.1;
  }

  result = 1.0;
  if (v7 <= 0.5)
  {
    result = 0.5;
    if (v7 <= 0.100000001)
    {
      return 0.1;
    }
  }

  return result;
}

- (void)addConstraints
{
  v119[1] = *MEMORY[0x277D85DE8];
  view = [(CalibrationViewController *)self view];
  [view removeConstraints:self->_calibrationConstraints];

  [(NSMutableArray *)self->_calibrationConstraints removeAllObjects];
  calibrationConstraints = self->_calibrationConstraints;
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_compassBackgroundView attribute:7 relatedBy:0 toItem:self->_compassBackgroundView attribute:8 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)calibrationConstraints addObject:v5];

  v6 = self->_calibrationConstraints;
  v7 = MEMORY[0x277CCAAD0];
  compassBackgroundView = self->_compassBackgroundView;
  view2 = [(CalibrationViewController *)self view];
  v10 = [v7 constraintWithItem:compassBackgroundView attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v6 addObject:v10];

  view3 = [(CalibrationViewController *)self view];
  [view3 frame];
  v13 = v12;

  view4 = [(CalibrationViewController *)self view];
  [view4 frame];
  v16 = v15;

  if (v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  v18 = self->_calibrationConstraints;
  v19 = MEMORY[0x277CCAAD0];
  v118 = @"compassWidth";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v119[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:&v118 count:1];
  v22 = _NSDictionaryOfVariableBindings(&cfstr_Compassbackgro_0.isa, self->_compassBackgroundView, 0);
  v23 = [v19 constraintsWithVisualFormat:@"[_compassBackgroundView(==compassWidth)]" options:0 metrics:v21 views:v22];
  [(NSMutableArray *)v18 addObjectsFromArray:v23];

  v24 = self->_calibrationConstraints;
  v25 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_ballView attribute:3 relatedBy:0 toItem:self->_compassBackgroundView attribute:3 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v24 addObject:v25];

  v26 = self->_calibrationConstraints;
  v27 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_ballView attribute:1 relatedBy:0 toItem:self->_compassBackgroundView attribute:1 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v26 addObject:v27];

  v28 = self->_calibrationConstraints;
  v29 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_ballView attribute:4 relatedBy:0 toItem:self->_compassBackgroundView attribute:4 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v28 addObject:v29];

  v30 = self->_calibrationConstraints;
  v31 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_ballView attribute:2 relatedBy:0 toItem:self->_compassBackgroundView attribute:2 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v30 addObject:v31];

  v32 = self->_calibrationConstraints;
  v33 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleLabel attribute:10 relatedBy:0 toItem:self->_compassBackgroundView attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v32 addObject:v33];

  v34 = self->_calibrationConstraints;
  v35 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_titleLabel attribute:9 relatedBy:0 toItem:self->_compassBackgroundView attribute:9 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v34 addObject:v35];

  v36 = self->_calibrationConstraints;
  v37 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_instructionLabel attribute:9 relatedBy:0 toItem:self->_compassBackgroundView attribute:9 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v36 addObject:v37];

  v38 = self->_calibrationConstraints;
  v39 = MEMORY[0x277CCAAD0];
  instructionLabel = self->_instructionLabel;
  view5 = [(CalibrationViewController *)self view];
  v42 = [v39 constraintWithItem:instructionLabel attribute:7 relatedBy:0 toItem:view5 attribute:7 multiplier:0.660000026 constant:0.0];
  [(NSMutableArray *)v38 addObject:v42];

  v43 = self->_calibrationConstraints;
  v44 = MEMORY[0x277CCAAD0];
  cancelButton = self->_cancelButton;
  view6 = [(CalibrationViewController *)self view];
  v47 = [v44 constraintWithItem:cancelButton attribute:9 relatedBy:0 toItem:view6 attribute:9 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v43 addObject:v47];

  v48 = self->_calibrationConstraints;
  v49 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cancelButton attribute:7 relatedBy:0 toItem:0 attribute:7 multiplier:1.0 constant:150.0];
  [(NSMutableArray *)v48 addObject:v49];

  view7 = [(CalibrationViewController *)self view];
  [view7 frame];
  v52 = v51;

  v53 = self->_calibrationConstraints;
  v54 = (v52 - (self->_compassRadius + v52 * 0.5 + 40.0 + 7.0)) * 0.5;
  v55 = MEMORY[0x277CCAAD0];
  v116[0] = @"buttonHeight";
  v116[1] = @"buttonBottomMargin";
  v117[0] = &unk_2856FC260;
  v117[1] = &unk_2856FC270;
  v116[2] = @"instructionBottomMargin";
  v56 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
  v117[2] = v56;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];
  v58 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab.isa, self->_instructionLabel, self->_cancelButton, 0);
  v59 = [v55 constraintsWithVisualFormat:@"V:[_instructionLabel]-(instructionBottomMargin)-[_cancelButton(==buttonHeight)]-(buttonBottomMargin)-|" options:0 metrics:v57 views:v58];
  [(NSMutableArray *)v53 addObjectsFromArray:v59];

  traitCollection = [(CalibrationViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    traitCollection2 = [(CalibrationViewController *)self traitCollection];
    v62 = [traitCollection2 verticalSizeClass] == 2;
  }

  else
  {
    v62 = 0;
  }

  view8 = [(CalibrationViewController *)self view];
  [view8 frame];
  Width = CGRectGetWidth(v120);

  view9 = [(CalibrationViewController *)self view];
  [view9 frame];
  Height = CGRectGetHeight(v121);

  if (Width >= Height)
  {
    Width = Height;
  }

  view10 = [(CalibrationViewController *)self view];
  [view10 frame];
  v68 = CGRectGetWidth(v122);

  compassRadius = self->_compassRadius;
  [(CompassBackgroundView *)self->_compassBackgroundView ticLength];
  v71 = (v68 + (compassRadius - v70) * -2.0) * 0.5;
  if (v71 >= 0.0)
  {
    v72 = v71;
  }

  else
  {
    v72 = 0.0;
  }

  v114[0] = @"titleLabelWidth";
  v73 = MEMORY[0x277CCABB0];
  v74 = self->_compassRadius;
  [(CompassBackgroundView *)self->_compassBackgroundView ticLength];
  v76 = [v73 numberWithDouble:v74 - v75 + v74 - v75];
  v114[1] = @"titleMarginWidth";
  v115[0] = v76;
  v77 = [MEMORY[0x277CCABB0] numberWithDouble:v72];
  v115[1] = v77;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];

  v79 = self->_calibrationConstraints;
  v80 = MEMORY[0x277CCAAD0];
  v81 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, self->_titleLabel, 0);
  v82 = [v80 constraintsWithVisualFormat:@"|-(>=titleMarginWidth)-[_titleLabel(==titleLabelWidth)]-(>=titleMarginWidth)-|" options:0 metrics:v78 views:v81];
  [(NSMutableArray *)v79 addObjectsFromArray:v82];

  if (v62 || (-[CalibrationViewController traitCollection](self, "traitCollection"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 horizontalSizeClass], v83, v84 == 2))
  {
    v85 = self->_calibrationConstraints;
    v86 = MEMORY[0x277CCAAD0];
    v87 = self->_compassBackgroundView;
    view11 = [(CalibrationViewController *)self view];
    v89 = [v86 constraintWithItem:v87 attribute:10 relatedBy:0 toItem:view11 attribute:10 multiplier:1.0 constant:-18.0];
    [(NSMutableArray *)v85 addObject:v89];

    v90 = self->_calibrationConstraints;
    view13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_compassBackgroundView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:Width];
    [(NSMutableArray *)v90 addObject:view13];
  }

  else
  {
    view12 = [(CalibrationViewController *)self view];
    [view12 frame];
    v94 = (v93 + v93) / 3.0;
    [(CompassBackgroundView *)self->_compassBackgroundView frame];
    v96 = v95;

    if (v94 <= v96)
    {
      v100 = self->_calibrationConstraints;
      v109 = MEMORY[0x277CCAAD0];
      v110 = self->_compassBackgroundView;
      view13 = [(CalibrationViewController *)self view];
      v103 = 1.0;
      v108 = 20.0;
      v104 = v109;
      v105 = v110;
      v106 = 3;
      v107 = view13;
    }

    else
    {
      view14 = [(CalibrationViewController *)self view];
      [view14 frame];
      v99 = round(v98 * 227.0 / 568.0);

      v100 = self->_calibrationConstraints;
      v101 = MEMORY[0x277CCAAD0];
      v102 = self->_compassBackgroundView;
      view13 = [(CalibrationViewController *)self view];
      v103 = 1.0;
      v104 = v101;
      v105 = v102;
      v106 = 10;
      v107 = view13;
      v108 = v99;
    }

    v111 = [v104 constraintWithItem:v105 attribute:v106 relatedBy:0 toItem:v107 attribute:3 multiplier:v103 constant:v108];
    [(NSMutableArray *)v100 addObject:v111];
  }

  view15 = [(CalibrationViewController *)self view];
  [view15 addConstraints:self->_calibrationConstraints];

  v113 = *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v3 viewWillLayoutSubviews];
  [(CalibrationViewController *)self _updateSizes];
  [(CalibrationViewController *)self addConstraints];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v3 viewDidLayoutSubviews];
  [(CompassBackgroundView *)self->_compassBackgroundView frame];
  [(CAShapeLayer *)self->_compassBackgroundViewMask setFrame:?];
  [(CalibrationViewController *)self updateMaskingPath];
}

- (void)reset
{
  self->_ignoreMotionUpdates = 0;
  [(CalibrationViewController *)self hideAllTics];
  self->_previousTimestamp = -1.0;
  self->_startTicAngle = -1.0;
}

- (id)updatedMaskingPath
{
  compassRadius = self->_compassRadius;
  [(CompassBackgroundView *)self->_compassBackgroundView ticLength];
  v20 = compassRadius + v4 * 0.5 + 1.0;
  [(CompassBackgroundView *)self->_compassBackgroundView frame];
  v22 = v5 * 0.5;
  [(CompassBackgroundView *)self->_compassBackgroundView frame];
  v21 = v6 * 0.5;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath setLineWidth:0.5];
  v8 = 0;
  v23 = 0x168uLL;
  v9 = -1;
  v19 = 3.14159265;
  do
  {
    v10 = (1.0 - self->_ticsShowingArray[v8]);
    [(CompassBackgroundView *)self->_compassBackgroundView ticLength];
    v12 = (v11 + 2.0) * v10;
    v13 = fmod(v9, v23);
    v14 = __sincos_stret(v13 * v19 / 180.0);
    [bezierPath moveToPoint:?];
    v15 = v20 - v12;
    [bezierPath addLineToPoint:{v22 + v15 * v14.__cosval, v21 + v15 * v14.__sinval}];
    v9 += 2;
    v16 = fmod(v9, v23);
    v17 = __sincos_stret(v16 * v19 / 180.0);
    [bezierPath addLineToPoint:{v22 + v15 * v17.__cosval, v21 + v15 * v17.__sinval}];
    [bezierPath addLineToPoint:{v22 + v20 * v17.__cosval, v21 + v20 * v17.__sinval}];
    [bezierPath addLineToPoint:{v22 + v20 * v14.__cosval, v21 + v20 * v14.__sinval}];
    ++v8;
  }

  while (v8 != 180);

  return bezierPath;
}

- (void)updateMaskingPath
{
  updatedMaskingPath = [(CalibrationViewController *)self updatedMaskingPath];
  v3 = updatedMaskingPath;
  -[CAShapeLayer setPath:](self->_compassBackgroundViewMask, "setPath:", [updatedMaskingPath CGPath]);
}

- (void)showTicAtAngle:(double)angle withCredit:(double)credit
{
  v5 = vcvtmd_u64_f64(angle * 0.5);
  if (v5 <= 0xB3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 % 0xB3;
  }

  ticsShowingArray = self->_ticsShowingArray;
  v8 = ticsShowingArray[v6];
  if (v8 < 1.0)
  {
    if (v8 < credit)
    {
      [(CalibrationViewController *)self quantizedPercentage:credit forAngle:angle];
      ticsShowingArray = self->_ticsShowingArray;
    }

    ticsShowingArray[v6] = v8;
    if (v8 == 1.0)
    {
      ++self->_numCompleteTics;
    }

    [(CalibrationViewController *)self updateMaskingPath];
  }
}

- (void)showTicsBetweenStartAngle:(double)angle endAngle:(double)endAngle withCredit:(double)credit
{
    ;
  }

    ;
  }

  v7 = 0;
  v8 = vcvtmd_u64_f64(angle * 0.5) % 0xB4;
  v9 = vcvtmd_u64_f64(endAngle * 0.5);
  if (v8 <= v9 % 0xB4)
  {
    v10 = v9 % 0xB4;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v9 % 0xB4)
  {
    v11 = v9 % 0xB4;
  }

  else
  {
    v11 = v8;
  }

  ticsShowingArray = self->_ticsShowingArray;
  do
  {
    v13 = ticsShowingArray[v11];
    if (v13 < 1.0)
    {
      if (v13 < credit)
      {
        [(CalibrationViewController *)self quantizedPercentage:credit forAngle:v11];
        ticsShowingArray = self->_ticsShowingArray;
      }

      ticsShowingArray[v11] = v13;
      if (v13 == 1.0)
      {
        ++self->_numCompleteTics;
      }

      v7 = 1;
    }

    v11 = (v11 + 1);
  }

  while (v10 >= v11);
  if (v7)
  {

    [(CalibrationViewController *)self updateMaskingPath];
  }
}

- (void)hideAllTics
{
  memset_pattern16(self->_ticsShowingArray, &unk_243D70420, 0x2D0uLL);
  self->_numCompleteTics = 0;

  [(CalibrationViewController *)self updateMaskingPath];
}

- (void)setBallAngle:(double)angle tiltAngle:(double)tiltAngle
{
  if (self->_startTicAngle < 0.0)
  {
    self->_startTicAngle = angle / 0.0174532925;
  }

  self->_calibrationAngle;
  [CalibrationViewController showTicsBetweenStartAngle:"showTicsBetweenStartAngle:endAngle:withCredit:" endAngle:? withCredit:?];
  self->_startTicAngle = angle / 0.0174532925;
  [(CalibrationBallView *)self->_ballView setAngle:angle];
  [(CompassBackgroundView *)self->_compassBackgroundView setNeedsLayout];
  ballView = self->_ballView;

  [(CalibrationBallView *)ballView setNeedsLayout];
}

- (double)_correctedAngleForCurrentOrientation:(double)orientation
{
  view = [(CalibrationViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  switch(interfaceOrientation)
  {
    case 2:
      v8 = 3.14159265;
      break;
    case 3:
      v8 = -1.57079633;
      break;
    case 4:
      v8 = 1.57079633;
      break;
    default:
      return orientation;
  }

  v9 = orientation + v8;
  v10 = fmod(orientation + v8, 6.28318531);
  orientation = v10;
  if (v9 < 0.0)
  {
    return v10 + 6.28318531;
  }

  return orientation;
}

- (void)setMotion:(id)motion
{
  if (!self->_ignoreMotionUpdates)
  {
    motionCopy = motion;
    [motionCopy gravity];
    v6 = v5;
    v8.f64[1] = v7;
    __x = v8;
    v9 = atan2(sqrt(vaddvq_f64(vmulq_f64(v8, v8))), -v5);
    v10 = fmod(v9, 6.28318531);
    if (v9 < 0.0)
    {
      v10 = v10 + 6.28318531;
    }

    [(CalibrationViewController *)self _correctedAngleForCurrentOrientation:v10];
    *&v12 = *&v12 * 1.4037466 + 0.01;
    if (*&v12 <= 0.5)
    {
      v13 = *&v12;
    }

    else
    {
      v13 = 0.5;
    }

    __xa = vmlaq_n_f64(vmulq_n_f64(*self->_previousGravity, 1.0 - v13), __x, v13);
    v14 = *&self->_previousGravity[16] * (1.0 - v13);
    *&v12 = v14 + v13 * v6;
    v25 = v12;
    [motionCopy timestamp];
    v16 = v15;

    v17 = atan2(-__xa.f64[1], __xa.f64[0]);
    v18 = fmod(v17, 6.28318531);
    if (v17 < 0.0)
    {
      v18 = v18 + 6.28318531;
    }

    [(CalibrationViewController *)self _correctedAngleForCurrentOrientation:v18];
    v20 = v19;
    v21 = atan2(sqrt(vaddvq_f64(vmulq_f64(__xa, __xa))), -(v14 + v24 * v6));
    v22 = fmod(v21, 6.28318531);
    v23 = v22 + 6.28318531;
    if (v21 >= 0.0)
    {
      v23 = v22;
    }

    self->_previousHorizontalAngle = v20;
    [(CalibrationViewController *)self setBallAngle:v20 tiltAngle:v23];
    *self->_previousGravity = __xa;
    *&self->_previousGravity[16] = v25;
    self->_previousTimestamp = v16;
  }
}

- (double)completeCircle
{
  self->_ignoreMotionUpdates = 1;
  [(CalibrationBallView *)self->_ballView currentAngle];
  v4 = v3 * 180.0 / 3.14159265;
  objc_initWeak(&location, self);
  v5 = 0.0;
  v6 = 360;
  v7 = MEMORY[0x277D85CD0];
  do
  {
    v8 = dispatch_time(0, (v5 / 360.0 * 1000000000.0));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_243D6F3AC;
    v10[3] = &unk_278DF27F8;
    objc_copyWeak(v11, &location);
    v11[1] = *&v5;
    v11[2] = *&v4;
    dispatch_after(v8, v7, v10);
    objc_destroyWeak(v11);
    v5 = v5 + 1.0;
    --v6;
  }

  while (v6);
  objc_destroyWeak(&location);
  return 1.0;
}

- (void)dealloc
{
  free(self->_ticsShowingArray);
  v3.receiver = self;
  v3.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v3 dealloc];
}

@end