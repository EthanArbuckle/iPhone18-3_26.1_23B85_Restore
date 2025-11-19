@interface DOCAddTagView
- (BOOL)isEditing;
- (BOOL)textFieldShouldReturn:(id)a3;
- (DOCAddTagTextFieldDelegate)delegate;
- (DOCAddTagView)initWithFrame:(CGRect)a3;
- (NSString)text;
- (void)_updateBorderPath;
- (void)_updateShapeLayerAttributes;
- (void)cancel;
- (void)commit;
- (void)dealloc;
- (void)handleTapGesture:(id)a3;
- (void)layoutSubviews;
- (void)scribbleInteractionWillBeginWriting:(id)a3;
- (void)setShowingAddNewTagLabel:(BOOL)a3;
- (void)setupHoverEffects;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateBackground;
- (void)updateHoverEffects;
@end

@implementation DOCAddTagView

- (DOCAddTagView)initWithFrame:(CGRect)a3
{
  v130[4] = *MEMORY[0x277D85DE8];
  v127.receiver = self;
  v127.super_class = DOCAddTagView;
  v3 = [(DOCAddTagView *)&v127 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9F90] layer];
    backgroundShapeLayer = v3->_backgroundShapeLayer;
    v3->_backgroundShapeLayer = v4;

    [(CAShapeLayer *)v3->_backgroundShapeLayer setFillColor:0];
    v6 = [(DOCAddTagView *)v3 layer];
    [v6 addSublayer:v3->_backgroundShapeLayer];

    v7 = MEMORY[0x277D74300];
    v8 = +[DOCTagAppearance pickerList];
    v9 = [v8 titleTextStyle];
    v121 = [v7 preferredFontForTextStyle:v9];

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
    v21 = [(DOCAddTagView *)v3 tagDotView];
    [(DOCAddTagView *)v3 addSubview:v21];

    v22 = [(DOCAddTagView *)v3 addNewTagLabel];
    [(DOCAddTagView *)v3 addSubview:v22];

    v23 = [(DOCAddTagView *)v3 tagNameTextField];
    [(DOCAddTagView *)v3 addSubview:v23];

    v24 = +[DOCTagAppearance makerUI];
    LODWORD(v13) = [v24 inputFieldShowsLeadingDot];

    if (v13)
    {
      v25 = [(DOCAddTagView *)v3 tagNameTextField];
      v26 = [v25 leadingAnchor];
      v27 = [(DOCAddTagView *)v3 addNewTagLabel];
      v28 = [v27 leadingAnchor];
      v117 = [v26 constraintEqualToAnchor:v28];

      v29 = [(DOCAddTagView *)v3 addNewTagLabel];
      v30 = [v29 trailingAnchor];
      v31 = [(DOCAddTagView *)v3 tagNameTextField];
      v32 = [v31 trailingAnchor];
      [v30 constraintEqualToAnchor:v32];
    }

    else
    {
      v33 = +[DOCTagAppearance pickerList];
      [v33 spacing_leadingEdgeToDot];
      v35 = v34;

      v36 = [(DOCAddTagView *)v3 tagNameTextField];
      v37 = [v36 leadingAnchor];
      v38 = [(DOCAddTagView *)v3 layoutMarginsGuide];
      v39 = [v38 leadingAnchor];
      v117 = [v37 constraintEqualToAnchor:v39 constant:v35];

      v29 = [(DOCAddTagView *)v3 addNewTagLabel];
      v30 = [v29 trailingAnchor];
      v31 = [(DOCAddTagView *)v3 tagNameTextField];
      v32 = [v31 trailingAnchor];
      [v30 constraintEqualToAnchor:v32 constant:v35];
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
      v119 = [(DOCAddTagView *)v3 tagNameTextField];
      v47 = objc_opt_new();
      [(DOCTextFieldRoundedBackgroundView *)v47 setTranslatesAutoresizingMaskIntoConstraints:0];
      backgroundDuringTextInput = v3->_backgroundDuringTextInput;
      v3->_backgroundDuringTextInput = v47;
      v49 = v47;

      [(DOCAddTagView *)v3 addSubview:v49];
      v97 = MEMORY[0x277CCAAD0];
      v105 = [(DOCTextFieldRoundedBackgroundView *)v49 topAnchor];
      v103 = [v119 topAnchor];
      v114 = [v105 constraintEqualToAnchor:v103 constant:-v113];
      v130[0] = v114;
      v101 = [(DOCTextFieldRoundedBackgroundView *)v49 bottomAnchor];
      v99 = [v119 bottomAnchor];
      v50 = [v101 constraintEqualToAnchor:v99 constant:v111];
      v130[1] = v50;
      v51 = [(DOCTextFieldRoundedBackgroundView *)v49 leadingAnchor];
      v52 = [v119 leadingAnchor];
      v53 = [v51 constraintEqualToAnchor:v52 constant:-v109];
      v130[2] = v53;
      v54 = [(DOCTextFieldRoundedBackgroundView *)v49 trailingAnchor];
      v55 = [v119 trailingAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:v107];
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
    v112 = [(DOCAddTagView *)v3 leadingAnchor];
    v120 = [(DOCAddTagView *)v3 tagDotView];
    v110 = [v120 leadingAnchor];
    v115 = +[DOCTagAppearance pickerList];
    [v115 spacing_leadingEdgeToDot];
    v108 = [v112 constraintEqualToAnchor:v110 constant:-v60];
    v129[0] = v108;
    v106 = [(DOCAddTagView *)v3 tagDotView];
    v100 = [v106 trailingAnchor];
    v104 = [(DOCAddTagView *)v3 addNewTagLabel];
    v98 = [v104 leadingAnchor];
    v102 = +[DOCTagAppearance pickerList];
    [v102 spacing_dotToTitle];
    v96 = [v100 constraintEqualToAnchor:v98 constant:-v61];
    v129[1] = v96;
    v95 = [(DOCAddTagView *)v3 addNewTagLabel];
    v93 = [v95 trailingAnchor];
    v94 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    v92 = [v94 trailingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v129[2] = v91;
    v129[3] = v117;
    v129[4] = v116;
    v90 = [(DOCAddTagView *)v3 addNewTagLabel];
    v88 = [v90 firstBaselineAnchor];
    v89 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    v87 = [v89 topAnchor];
    v86 = [v88 constraintEqualToSystemSpacingBelowAnchor:v87 multiplier:0.979591837];
    v129[5] = v86;
    v85 = [(DOCAddTagView *)v3 layoutMarginsGuide];
    v83 = [v85 bottomAnchor];
    v84 = [(DOCAddTagView *)v3 addNewTagLabel];
    v82 = [v84 lastBaselineAnchor];
    v81 = [v83 constraintEqualToSystemSpacingBelowAnchor:v82 multiplier:1.12];
    v129[6] = v81;
    v80 = [(DOCAddTagView *)v3 tagDotView];
    v79 = [v80 centerYAnchor];
    v62 = [(DOCAddTagView *)v3 addNewTagLabel];
    v63 = [v62 centerYAnchor];
    v64 = [v79 constraintEqualToAnchor:v63];
    v129[7] = v64;
    v65 = [(DOCAddTagView *)v3 addNewTagLabel];
    v66 = [v65 firstBaselineAnchor];
    v67 = [(DOCAddTagView *)v3 tagNameTextField];
    v68 = [v67 firstBaselineAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];
    v129[8] = v69;
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:9];
    [v78 activateConstraints:v70];

    v71 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_handleTapGesture_];
    [(DOCAddTagView *)v3 addGestureRecognizer:v71];

    objc_initWeak(&location, v3);
    v72 = [MEMORY[0x277CCAB98] defaultCenter];
    v73 = [MEMORY[0x277CCABD8] mainQueue];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __31__DOCAddTagView_initWithFrame___block_invoke_2;
    v122[3] = &unk_278FA1C58;
    objc_copyWeak(&v123, &location);
    v74 = [v72 addObserverForName:*MEMORY[0x277D76448] object:0 queue:v73 usingBlock:v122];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__DOCAddTagView_dealloc__block_invoke;
  v7[3] = &unk_278FA24E8;
  v8 = v3;
  v5 = v3;
  [(NSArray *)notificationObservances enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = DOCAddTagView;
  [(DOCAddTagView *)&v6 dealloc];
}

- (BOOL)isEditing
{
  v2 = [(DOCAddTagView *)self tagNameTextField];
  v3 = [v2 isEditing];

  return v3;
}

- (void)setupHoverEffects
{
  [(DOCAddTagViewTextField *)self->_tagNameTextField setHoverStyle:0];
  v3 = +[DOCTagAppearance pickerList];
  v4 = [v3 cellContentHoverStyle];
  [(DOCAddTagView *)self setHoverStyle:v4];

  [(DOCAddTagView *)self updateHoverEffects];
}

- (void)updateHoverEffects
{
  v3 = [(DOCAddTagView *)self isEditing];
  v4 = [(DOCAddTagView *)self hoverStyle];
  [v4 setEnabled:!v3];
}

- (void)updateBackground
{
  [(DOCAddTagView *)self _updateShapeLayerAttributes];
  [(DOCAddTagView *)self _updateBorderPath];
  if (self->_backgroundDuringTextInput)
  {
    v3 = [(DOCAddTagView *)self isEditing];
    [(DOCTextFieldRoundedBackgroundView *)self->_backgroundDuringTextInput setHidden:v3 ^ 1];
    [(CAShapeLayer *)self->_backgroundShapeLayer setHidden:v3];
  }

  [(DOCAddTagView *)self updateHoverEffects];
}

- (void)_updateShapeLayerAttributes
{
  v10 = [(DOCAddTagView *)self backgroundShapeLayer];
  v3 = +[DOCTagAppearance pickerList];
  v4 = [v3 addTagCellShowsDashedBorder];

  if (v4)
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

    [v10 setLineDashPattern:v5];
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    v9 = 1.0;
    if (IsBoldTextEnabled)
    {
      v9 = 2.0;
    }

    [v10 setLineWidth:v9];
    v6 = [MEMORY[0x277D75348] separatorColor];
    [v10 setStrokeColor:{objc_msgSend(v6, "CGColor")}];
  }

  else
  {
    v6 = +[DOCTagAppearance pickerList];
    v7 = [v6 backgroundColorForTag:0 selected:0];
    [v10 setFillColor:{objc_msgSend(v7, "CGColor")}];
  }
}

- (void)_updateBorderPath
{
  v3 = [(DOCAddTagView *)self backgroundShapeLayer];
  [v3 lineWidth];
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

  v15 = [v26 CGPath];
  v16 = [(DOCAddTagView *)self backgroundShapeLayer];
  [v16 setPath:v15];

  [(DOCAddTagView *)self bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(DOCAddTagView *)self backgroundShapeLayer];
  [v25 setFrame:{v18, v20, v22, v24}];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = DOCAddTagView;
  [(DOCAddTagView *)&v17 layoutSubviews];
  v3 = [(DOCAddTagView *)self backgroundShapeLayer];
  [v3 frame];
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
  v3 = [(DOCAddTagView *)self tagNameTextField];
  [(DOCAddTagView *)self textFieldShouldReturn:v3];

  [(DOCAddTagView *)self endEditing:0];
  v4 = [(DOCAddTagView *)self tagNameTextField];
  [v4 setText:&stru_285CBC3C8];
}

- (void)cancel
{
  [(DOCAddTagView *)self endEditing:1];

  [(DOCAddTagView *)self setShowingAddNewTagLabel:1];
}

- (void)handleTapGesture:(id)a3
{
  v3 = [(DOCAddTagView *)self tagNameTextField];
  [v3 becomeFirstResponder];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  [(DOCAddTagView *)self setShowingAddNewTagLabel:0];
  [(DOCAddTagView *)self updateBackground];
  v4 = [(DOCAddTagView *)self delegate];
  [v4 addTagTextFieldDidBeginEditing:self];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(DOCAddTagView *)self delegate];
  v5 = [v4 addTagTextFieldShouldEndEditing:self];

  if (v5)
  {
    [(DOCAddTagView *)self setShowingAddNewTagLabel:1];
    [(DOCAddTagView *)self updateBackground];
    v6 = [(DOCAddTagView *)self delegate];
    [v6 addTagTextFieldDidEndEditing:self];
  }
}

- (void)setShowingAddNewTagLabel:(BOOL)a3
{
  v3 = a3;
  v5 = [(DOCAddTagView *)self addNewTagLabel];
  v6 = v5;
  if (v3)
  {
    [v5 setHidden:0];

    v7 = [(DOCAddTagView *)self tagDotView];
    [v7 setHidden:0];

    v8 = [(DOCAddTagView *)self tagNameTextField];
    [v8 setText:&stru_285CBC3C8];

    v14 = [(DOCAddTagView *)self tagNameTextField];
    [v14 setPlaceholder:&stru_285CBC3C8];
  }

  else
  {
    [v5 setHidden:1];

    v9 = +[DOCTagAppearance makerUI];
    v10 = [v9 inputFieldShowsLeadingDot];
    v11 = [(DOCAddTagView *)self tagDotView];
    [v11 setHidden:v10 ^ 1u];

    v14 = _DocumentManagerBundle();
    v12 = [v14 localizedStringForKey:@"Tag Name" value:@"Tag Name" table:@"Localizable"];
    v13 = [(DOCAddTagView *)self tagNameTextField];
    [v13 setPlaceholder:v12];
  }
}

- (void)textFieldDidChange:(id)a3
{
  v4 = [(DOCAddTagView *)self delegate];
  [v4 addTagTextFieldDidChange:self];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(DOCAddTagView *)self delegate];
  v6 = [(DOCAddTagView *)self tagNameTextField];
  v7 = [v6 text];
  v8 = [v5 addTagTextField:self userDidCreateTagWithName:v7];

  if (v8)
  {
    [v4 resignFirstResponder];
  }

  return v8;
}

- (NSString)text
{
  v2 = [(DOCAddTagView *)self tagNameTextField];
  v3 = [v2 text];

  return v3;
}

- (void)scribbleInteractionWillBeginWriting:(id)a3
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