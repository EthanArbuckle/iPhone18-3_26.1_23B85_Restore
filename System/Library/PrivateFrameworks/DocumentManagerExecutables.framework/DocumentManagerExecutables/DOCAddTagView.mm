@interface DOCAddTagView
- (BOOL)isEditing;
- (BOOL)textFieldShouldReturn:(id)return;
- (DOCAddTagTextFieldDelegate)delegate;
- (DOCAddTagView)initWithFrame:(CGRect)frame;
- (NSString)text;
- (void)_updateBorderPath;
- (void)_updateShapeLayerAttributes;
- (void)cancel;
- (void)commit;
- (void)dealloc;
- (void)handleTapGesture:(id)gesture;
- (void)layoutSubviews;
- (void)scribbleInteractionWillBeginWriting:(id)writing;
- (void)setShowingAddNewTagLabel:(BOOL)label;
- (void)setupHoverEffects;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateBackground;
- (void)updateHoverEffects;
@end

@implementation DOCAddTagView

- (DOCAddTagView)initWithFrame:(CGRect)frame
{
  v130[4] = *MEMORY[0x277D85DE8];
  v127.receiver = self;
  v127.super_class = DOCAddTagView;
  v3 = [(DOCAddTagView *)&v127 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    backgroundShapeLayer = v3->_backgroundShapeLayer;
    v3->_backgroundShapeLayer = layer;

    [(CAShapeLayer *)v3->_backgroundShapeLayer setFillColor:0];
    layer2 = [(DOCAddTagView *)v3 layer];
    [layer2 addSublayer:v3->_backgroundShapeLayer];

    v7 = MEMORY[0x277D74300];
    v8 = +[DOCTagAppearance pickerList];
    titleTextStyle = [v8 titleTextStyle];
    v121 = [v7 preferredFontForTextStyle:titleTextStyle];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    addNewTagLabel = v3->_addNewTagLabel;
    v3->_addNewTagLabel = v10;

    v12 = _DocumentManagerBundle();
    v13 = [v12 localizedStringForKey:@"Add New Tag [Action Title]" value:@"Add New Tag…" table:@"Localizable"];
    [(UILabel *)v3->_addNewTagLabel setText:v13];

    [(UILabel *)v3->_addNewTagLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_addNewTagLabel setFont:v121];
    [(UILabel *)v3->_addNewTagLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v3->_addNewTagLabel setContentCompressionResistancePriority:1 forAxis:v14];
    v15 = [[DOCTagDotView alloc] initWithDefaultTagDimension:1 adjustsSizeForContentSizeCategory:DOCDefaultTagDimension()];
    tagDotView = v3->_tagDotView;
    v3->_tagDotView = v15;

    v17 = [MEMORY[0x277D06260] untitledTagForRendering:0];
    [(DOCTagDotView *)v3->_tagDotView setItemTag:v17];

    v18 = objc_alloc_init(DOCAddTagViewTextField);
    tagNameTextField = v3->_tagNameTextField;
    v3->_tagNameTextField = v18;

    [(DOCAddTagViewTextField *)v3->_tagNameTextField setFont:v121];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField setAdjustsFontForContentSizeCategory:1];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1148846080;
    [(DOCAddTagViewTextField *)v3->_tagNameTextField setContentCompressionResistancePriority:1 forAxis:v20];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField setEnablesReturnKeyAutomatically:1];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField setDelegate:v3];
    v118 = [objc_alloc(MEMORY[0x277D759B0]) initWithDelegate:v3];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField addInteraction:v118];
    [(DOCAddTagViewTextField *)v3->_tagNameTextField addTarget:v3 action:sel_textFieldDidChange_ forControlEvents:0x20000];
    tagDotView = [(DOCAddTagView *)v3 tagDotView];
    [(DOCAddTagView *)v3 addSubview:tagDotView];

    addNewTagLabel = [(DOCAddTagView *)v3 addNewTagLabel];
    [(DOCAddTagView *)v3 addSubview:addNewTagLabel];

    tagNameTextField = [(DOCAddTagView *)v3 tagNameTextField];
    [(DOCAddTagView *)v3 addSubview:tagNameTextField];

    v24 = +[DOCTagAppearance makerUI];
    LODWORD(v13) = [v24 inputFieldShowsLeadingDot];

    if (v13)
    {
      tagNameTextField2 = [(DOCAddTagView *)v3 tagNameTextField];
      leadingAnchor = [tagNameTextField2 leadingAnchor];
      addNewTagLabel2 = [(DOCAddTagView *)v3 addNewTagLabel];
      leadingAnchor2 = [addNewTagLabel2 leadingAnchor];
      v117 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

      addNewTagLabel3 = [(DOCAddTagView *)v3 addNewTagLabel];
      trailingAnchor = [addNewTagLabel3 trailingAnchor];
      tagNameTextField3 = [(DOCAddTagView *)v3 tagNameTextField];
      trailingAnchor2 = [tagNameTextField3 trailingAnchor];
      [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    }

    else
    {
      v33 = +[DOCTagAppearance pickerList];
      [v33 spacing_leadingEdgeToDot];
      v35 = v34;

      tagNameTextField4 = [(DOCAddTagView *)v3 tagNameTextField];
      leadingAnchor3 = [tagNameTextField4 leadingAnchor];
      layoutMarginsGuide = [(DOCAddTagView *)v3 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
      v117 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v35];

      addNewTagLabel3 = [(DOCAddTagView *)v3 addNewTagLabel];
      trailingAnchor = [addNewTagLabel3 trailingAnchor];
      tagNameTextField3 = [(DOCAddTagView *)v3 tagNameTextField];
      trailingAnchor2 = [tagNameTextField3 trailingAnchor];
      [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v35];
    }
    v116 = ;

    v40 = +[DOCTagAppearance makerUI];
    [v40 inputFieldRoundedCornerBackgroundMargins];
    v111 = v42;
    v113 = v41;
    v107 = v44;
    v109 = v43;

    v45.f64[0] = v113;
    v46.f64[0] = v111;
    v45.f64[1] = v109;
    v46.f64[1] = v107;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v45, *MEMORY[0x277D75060]), vceqq_f64(v46, *(MEMORY[0x277D75060] + 16))))) & 1) == 0)
    {
      tagNameTextField5 = [(DOCAddTagView *)v3 tagNameTextField];
      v47 = objc_opt_new();
      [(DOCTextFieldRoundedBackgroundView *)v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      backgroundDuringTextInput = v3->_backgroundDuringTextInput;
      v3->_backgroundDuringTextInput = v47;
      v49 = v47;

      [(DOCAddTagView *)v3 addSubview:v49];
      v97 = MEMORY[0x277CCAAD0];
      topAnchor = [(DOCTextFieldRoundedBackgroundView *)v49 topAnchor];
      topAnchor2 = [tagNameTextField5 topAnchor];
      v114 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v113];
      v130[0] = v114;
      bottomAnchor = [(DOCTextFieldRoundedBackgroundView *)v49 bottomAnchor];
      bottomAnchor2 = [tagNameTextField5 bottomAnchor];
      v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v111];
      v130[1] = v50;
      leadingAnchor5 = [(DOCTextFieldRoundedBackgroundView *)v49 leadingAnchor];
      leadingAnchor6 = [tagNameTextField5 leadingAnchor];
      v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:-v109];
      v130[2] = v53;
      trailingAnchor3 = [(DOCTextFieldRoundedBackgroundView *)v49 trailingAnchor];
      trailingAnchor4 = [tagNameTextField5 trailingAnchor];
      v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v107];
      v130[3] = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:4];
      [v97 activateConstraints:v57];

      v58 = MEMORY[0x277D75D18];
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = __31__DOCAddTagView_initWithFrame___block_invoke;
      v125[3] = &unk_278FA1C30;
      v126 = v3;
      [v58 performWithoutAnimation:v125];
    }

    v59 = +[DOCTagAppearance pickerList];
    [v59 cellInteriorLayoutMargins];
    [(DOCAddTagView *)v3 setDirectionalLayoutMargins:?];

    v78 = MEMORY[0x277CCAAD0];
    leadingAnchor7 = [(DOCAddTagView *)v3 leadingAnchor];
    tagDotView2 = [(DOCAddTagView *)v3 tagDotView];
    leadingAnchor8 = [tagDotView2 leadingAnchor];
    v115 = +[DOCTagAppearance pickerList];
    [v115 spacing_leadingEdgeToDot];
    v108 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:-v60];
    v129[0] = v108;
    tagDotView3 = [(DOCAddTagView *)v3 tagDotView];
    trailingAnchor5 = [tagDotView3 trailingAnchor];
    addNewTagLabel4 = [(DOCAddTagView *)v3 addNewTagLabel];
    leadingAnchor9 = [addNewTagLabel4 leadingAnchor];
    v102 = +[DOCTagAppearance pickerList];
    [v102 spacing_dotToTitle];
    v96 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor9 constant:-v61];
    v129[1] = v96;
    addNewTagLabel5 = [(DOCAddTagView *)v3 addNewTagLabel];
    trailingAnchor6 = [addNewTagLabel5 trailingAnchor];
    layoutMarginsGuide2 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    trailingAnchor7 = [layoutMarginsGuide2 trailingAnchor];
    v91 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v129[2] = v91;
    v129[3] = v117;
    v129[4] = v116;
    addNewTagLabel6 = [(DOCAddTagView *)v3 addNewTagLabel];
    firstBaselineAnchor = [addNewTagLabel6 firstBaselineAnchor];
    layoutMarginsGuide3 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    topAnchor3 = [layoutMarginsGuide3 topAnchor];
    v86 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor3 multiplier:0.979591837];
    v129[5] = v86;
    layoutMarginsGuide4 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide4 bottomAnchor];
    addNewTagLabel7 = [(DOCAddTagView *)v3 addNewTagLabel];
    lastBaselineAnchor = [addNewTagLabel7 lastBaselineAnchor];
    v81 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.12];
    v129[6] = v81;
    tagDotView4 = [(DOCAddTagView *)v3 tagDotView];
    centerYAnchor = [tagDotView4 centerYAnchor];
    addNewTagLabel8 = [(DOCAddTagView *)v3 addNewTagLabel];
    centerYAnchor2 = [addNewTagLabel8 centerYAnchor];
    v64 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v129[7] = v64;
    addNewTagLabel9 = [(DOCAddTagView *)v3 addNewTagLabel];
    firstBaselineAnchor2 = [addNewTagLabel9 firstBaselineAnchor];
    tagNameTextField6 = [(DOCAddTagView *)v3 tagNameTextField];
    firstBaselineAnchor3 = [tagNameTextField6 firstBaselineAnchor];
    v69 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
    v129[8] = v69;
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:9];
    [v78 activateConstraints:v70];

    v71 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_handleTapGesture_];
    [(DOCAddTagView *)v3 addGestureRecognizer:v71];

    objc_initWeak(&location, v3);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __31__DOCAddTagView_initWithFrame___block_invoke_2;
    v122[3] = &unk_278FA1C58;
    objc_copyWeak(&v123, &location);
    v74 = [defaultCenter addObserverForName:*MEMORY[0x277D76448] object:0 queue:mainQueue usingBlock:v122];
    v128 = v74;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
    notificationObservances = v3->_notificationObservances;
    v3->_notificationObservances = v75;

    [(DOCAddTagView *)v3 setupHoverEffects];
    objc_destroyWeak(&v123);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__DOCAddTagView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBackground];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__DOCAddTagView_dealloc__block_invoke;
  v7[3] = &unk_278FA24E8;
  v8 = defaultCenter;
  v5 = defaultCenter;
  [(NSArray *)notificationObservances enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = DOCAddTagView;
  [(DOCAddTagView *)&v6 dealloc];
}

- (BOOL)isEditing
{
  tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
  isEditing = [tagNameTextField isEditing];

  return isEditing;
}

- (void)setupHoverEffects
{
  [(DOCAddTagViewTextField *)self->_tagNameTextField setHoverStyle:0];
  v3 = +[DOCTagAppearance pickerList];
  cellContentHoverStyle = [v3 cellContentHoverStyle];
  [(DOCAddTagView *)self setHoverStyle:cellContentHoverStyle];

  [(DOCAddTagView *)self updateHoverEffects];
}

- (void)updateHoverEffects
{
  isEditing = [(DOCAddTagView *)self isEditing];
  hoverStyle = [(DOCAddTagView *)self hoverStyle];
  [hoverStyle setEnabled:!isEditing];
}

- (void)updateBackground
{
  [(DOCAddTagView *)self _updateShapeLayerAttributes];
  [(DOCAddTagView *)self _updateBorderPath];
  if (self->_backgroundDuringTextInput)
  {
    isEditing = [(DOCAddTagView *)self isEditing];
    [(DOCTextFieldRoundedBackgroundView *)self->_backgroundDuringTextInput setHidden:isEditing ^ 1];
    [(CAShapeLayer *)self->_backgroundShapeLayer setHidden:isEditing];
  }

  [(DOCAddTagView *)self updateHoverEffects];
}

- (void)_updateShapeLayerAttributes
{
  backgroundShapeLayer = [(DOCAddTagView *)self backgroundShapeLayer];
  v3 = +[DOCTagAppearance pickerList];
  addTagCellShowsDashedBorder = [v3 addTagCellShowsDashedBorder];

  if (addTagCellShowsDashedBorder)
  {
    if ([(DOCAddTagView *)self isEditing])
    {
      v5 = 0;
    }

    else if (UIAccessibilityIsBoldTextEnabled())
    {
      v5 = &unk_285CEA028;
    }

    else
    {
      v5 = &unk_285CEA040;
    }

    [backgroundShapeLayer setLineDashPattern:v5];
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    v9 = 1.0;
    if (IsBoldTextEnabled)
    {
      v9 = 2.0;
    }

    [backgroundShapeLayer setLineWidth:v9];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [backgroundShapeLayer setStrokeColor:{objc_msgSend(separatorColor, "CGColor")}];
  }

  else
  {
    separatorColor = +[DOCTagAppearance pickerList];
    v7 = [separatorColor backgroundColorForTag:0 selected:0];
    [backgroundShapeLayer setFillColor:{objc_msgSend(v7, "CGColor")}];
  }
}

- (void)_updateBorderPath
{
  backgroundShapeLayer = [(DOCAddTagView *)self backgroundShapeLayer];
  [backgroundShapeLayer lineWidth];
  v5 = v4 * 0.5;

  [(DOCAddTagView *)self bounds];
  v29 = CGRectInset(v28, v5, v5);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (CGRectIsNull(v29))
  {
    v26 = 0;
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277D75208];
    v12 = +[DOCTagAppearance pickerList];
    [v12 cellCornerRadius];
    v26 = [v11 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v13}];

    v14 = v26;
  }

  cGPath = [v26 CGPath];
  backgroundShapeLayer2 = [(DOCAddTagView *)self backgroundShapeLayer];
  [backgroundShapeLayer2 setPath:cGPath];

  [(DOCAddTagView *)self bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  backgroundShapeLayer3 = [(DOCAddTagView *)self backgroundShapeLayer];
  [backgroundShapeLayer3 setFrame:{v18, v20, v22, v24}];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = DOCAddTagView;
  [(DOCAddTagView *)&v17 layoutSubviews];
  backgroundShapeLayer = [(DOCAddTagView *)self backgroundShapeLayer];
  [backgroundShapeLayer frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(DOCAddTagView *)self bounds];
  v19.origin.x = v12;
  v19.origin.y = v13;
  v19.size.width = v14;
  v19.size.height = v15;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v16 = CGRectEqualToRect(v18, v19);

  if (!v16)
  {
    [(DOCAddTagView *)self updateBackground];
  }
}

- (void)commit
{
  tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
  [(DOCAddTagView *)self textFieldShouldReturn:tagNameTextField];

  [(DOCAddTagView *)self endEditing:0];
  tagNameTextField2 = [(DOCAddTagView *)self tagNameTextField];
  [tagNameTextField2 setText:&stru_285CBC3C8];
}

- (void)cancel
{
  [(DOCAddTagView *)self endEditing:1];

  [(DOCAddTagView *)self setShowingAddNewTagLabel:1];
}

- (void)handleTapGesture:(id)gesture
{
  tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
  [tagNameTextField becomeFirstResponder];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(DOCAddTagView *)self setShowingAddNewTagLabel:0];
  [(DOCAddTagView *)self updateBackground];
  delegate = [(DOCAddTagView *)self delegate];
  [delegate addTagTextFieldDidBeginEditing:self];
}

- (void)textFieldDidEndEditing:(id)editing
{
  delegate = [(DOCAddTagView *)self delegate];
  v5 = [delegate addTagTextFieldShouldEndEditing:self];

  if (v5)
  {
    [(DOCAddTagView *)self setShowingAddNewTagLabel:1];
    [(DOCAddTagView *)self updateBackground];
    delegate2 = [(DOCAddTagView *)self delegate];
    [delegate2 addTagTextFieldDidEndEditing:self];
  }
}

- (void)setShowingAddNewTagLabel:(BOOL)label
{
  labelCopy = label;
  addNewTagLabel = [(DOCAddTagView *)self addNewTagLabel];
  v6 = addNewTagLabel;
  if (labelCopy)
  {
    [addNewTagLabel setHidden:0];

    tagDotView = [(DOCAddTagView *)self tagDotView];
    [tagDotView setHidden:0];

    tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
    [tagNameTextField setText:&stru_285CBC3C8];

    tagNameTextField2 = [(DOCAddTagView *)self tagNameTextField];
    [tagNameTextField2 setPlaceholder:&stru_285CBC3C8];
  }

  else
  {
    [addNewTagLabel setHidden:1];

    v9 = +[DOCTagAppearance makerUI];
    inputFieldShowsLeadingDot = [v9 inputFieldShowsLeadingDot];
    tagDotView2 = [(DOCAddTagView *)self tagDotView];
    [tagDotView2 setHidden:inputFieldShowsLeadingDot ^ 1u];

    tagNameTextField2 = _DocumentManagerBundle();
    v12 = [tagNameTextField2 localizedStringForKey:@"Tag Name" value:@"Tag Name" table:@"Localizable"];
    tagNameTextField3 = [(DOCAddTagView *)self tagNameTextField];
    [tagNameTextField3 setPlaceholder:v12];
  }
}

- (void)textFieldDidChange:(id)change
{
  delegate = [(DOCAddTagView *)self delegate];
  [delegate addTagTextFieldDidChange:self];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  delegate = [(DOCAddTagView *)self delegate];
  tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
  text = [tagNameTextField text];
  v8 = [delegate addTagTextField:self userDidCreateTagWithName:text];

  if (v8)
  {
    [returnCopy resignFirstResponder];
  }

  return v8;
}

- (NSString)text
{
  tagNameTextField = [(DOCAddTagView *)self tagNameTextField];
  text = [tagNameTextField text];

  return text;
}

- (void)scribbleInteractionWillBeginWriting:(id)writing
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__DOCAddTagView_scribbleInteractionWillBeginWriting___block_invoke;
  v3[3] = &unk_278FA1C30;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

- (DOCAddTagTextFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end