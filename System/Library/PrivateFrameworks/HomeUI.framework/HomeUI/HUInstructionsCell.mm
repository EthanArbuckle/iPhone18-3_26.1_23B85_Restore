@interface HUInstructionsCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUInstructionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUInstructionsCell

- (HUInstructionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v37.receiver = self;
  v37.super_class = HUInstructionsCell;
  v4 = [(HUInstructionsCell *)&v37 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUInstructionsCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUInstructionsCell *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], v9, v10, v11}];
    [(HUInstructionsCell *)v5 setTitleLabel:v12];

    titleLabel = [(HUInstructionsCell *)v5 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(HUInstructionsCell *)v5 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    contentView = [(HUInstructionsCell *)v5 contentView];
    titleLabel3 = [(HUInstructionsCell *)v5 titleLabel];
    [contentView addSubview:titleLabel3];

    v17 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{v8, v9, v10, v11}];
    [(HUInstructionsCell *)v5 setDescriptionView:v17];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    descriptionView = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView setBackgroundColor:clearColor2];

    descriptionView2 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView2 setDelegate:v5];

    descriptionView3 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView3 setEditable:0];

    descriptionView4 = [(HUInstructionsCell *)v5 descriptionView];
    textContainer = [descriptionView4 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    v24 = *MEMORY[0x277D768C8];
    v25 = *(MEMORY[0x277D768C8] + 8);
    v26 = *(MEMORY[0x277D768C8] + 16);
    v27 = *(MEMORY[0x277D768C8] + 24);
    descriptionView5 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView5 setTextContainerInset:{v24, v25, v26, v27}];

    descriptionView6 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView6 setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    descriptionView7 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView7 setTextColor:secondaryLabelColor];

    descriptionView8 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView8 setScrollEnabled:0];

    descriptionView9 = [(HUInstructionsCell *)v5 descriptionView];
    [descriptionView9 _setInteractiveTextSelectionDisabled:1];

    contentView2 = [(HUInstructionsCell *)v5 contentView];
    descriptionView10 = [(HUInstructionsCell *)v5 descriptionView];
    [contentView2 addSubview:descriptionView10];

    [(HUInstructionsCell *)v5 setHidesTopSpacing:0];
    v5->_contentBottomMargin = 14.0;
    [(HUInstructionsCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v3 prepareForReuse];
  [(HUInstructionsCell *)self setContentBottomMargin:14.0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v3 layoutSubviews];
  [(UITableViewCell *)self turnOffRounding];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUInstructionsCell *)self item];
  latestResults = [item latestResults];

  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  titleLabel = [(HUInstructionsCell *)self titleLabel];
  [titleLabel setText:v5];

  titleLabel2 = [(HUInstructionsCell *)self titleLabel];
  [titleLabel2 setHidden:v5 == 0];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  descriptionView = [(HUInstructionsCell *)self descriptionView];
  font = [descriptionView font];
  [dictionary na_safeSetObject:font forKey:*MEMORY[0x277D740A8]];

  descriptionView2 = [(HUInstructionsCell *)self descriptionView];
  textColor = [descriptionView2 textColor];
  [dictionary na_safeSetObject:textColor forKey:*MEMORY[0x277D740C0]];

  v14 = [v6 stringWithAttributes:dictionary];
  descriptionView3 = [(HUInstructionsCell *)self descriptionView];
  [descriptionView3 setAttributedText:v14];

  descriptionView4 = [(HUInstructionsCell *)self descriptionView];
  [descriptionView4 setHidden:v6 == 0];

  item2 = [(HUInstructionsCell *)self item];
  latestResults2 = [item2 latestResults];
  v19 = [latestResults2 objectForKeyedSubscript:@"instructionsStyle"];

  if (!v19)
  {
    NSLog(&cfstr_NoInstructions.isa);
    goto LABEL_18;
  }

  integerValue = [v19 integerValue];
  if (integerValue <= 2)
  {
    if (!integerValue)
    {
      systemGrayColor3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
      titleLabel9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v33 = MEMORY[0x277D74300];
      [systemGrayColor3 pointSize];
      v34 = [v33 systemFontOfSize:? weight:?];
      titleLabel3 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel3 setFont:v34];

      titleLabel4 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel4 setTextAlignment:4];

      titleLabel5 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel5 setNumberOfLines:0];

      v38 = MEMORY[0x277D74300];
      [titleLabel9 pointSize];
      v39 = [v38 systemFontOfSize:? weight:?];
      descriptionView5 = [(HUInstructionsCell *)self descriptionView];
      [descriptionView5 setFont:v39];

      descriptionView6 = [(HUInstructionsCell *)self descriptionView];
      [descriptionView6 setTextAlignment:4];

LABEL_16:
      goto LABEL_17;
    }

    if (integerValue != 1)
    {
      if (integerValue != 2)
      {
        goto LABEL_18;
      }

      systemGrayColor3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v22 = MEMORY[0x277D74300];
      [systemGrayColor3 pointSize];
      v23 = [v22 systemFontOfSize:? weight:?];
      titleLabel6 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel6 setFont:v23];

      titleLabel7 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel7 setTextAlignment:4];

      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      titleLabel8 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel8 setTextColor:systemGrayColor];

      titleLabel9 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel9 setNumberOfLines:1];
      goto LABEL_16;
    }

    v47 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:32770];
    titleLabel10 = [(HUInstructionsCell *)self titleLabel];
    [titleLabel10 setFont:v47];

    titleLabel11 = [(HUInstructionsCell *)self titleLabel];
    [titleLabel11 setTextAlignment:4];

    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    titleLabel12 = [(HUInstructionsCell *)self titleLabel];
    [titleLabel12 setTextColor:systemGrayColor2];

    titleLabel13 = [(HUInstructionsCell *)self titleLabel];
    [titleLabel13 setNumberOfLines:1];

    titleLabel14 = [(HUInstructionsCell *)self titleLabel];
    text = [titleLabel14 text];
    localizedUppercaseString = [text localizedUppercaseString];
    titleLabel15 = [(HUInstructionsCell *)self titleLabel];
    [titleLabel15 setText:localizedUppercaseString];

    v57 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    descriptionView7 = [(HUInstructionsCell *)self descriptionView];
    [descriptionView7 setFont:v57];

    descriptionView8 = [(HUInstructionsCell *)self descriptionView];
    [descriptionView8 setTextAlignment:4];

    v32 = MEMORY[0x277D75348];
LABEL_15:
    systemGrayColor3 = [v32 systemGrayColor];
    titleLabel9 = [(HUInstructionsCell *)self descriptionView];
    [titleLabel9 setTextColor:systemGrayColor3];
    goto LABEL_16;
  }

  if (integerValue != 3)
  {
    if (integerValue == 4)
    {
      v60 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      titleLabel16 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel16 setFont:v60];

      titleLabel17 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel17 setTextAlignment:4];

      labelColor = [MEMORY[0x277D75348] labelColor];
      titleLabel18 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel18 setTextColor:labelColor];

      titleLabel19 = [(HUInstructionsCell *)self titleLabel];
      [titleLabel19 setNumberOfLines:0];

      systemGrayColor3 = [(HUInstructionsCell *)self titleLabel];
      [systemGrayColor3 setLineBreakMode:0];
      goto LABEL_17;
    }

    if (integerValue != 5)
    {
      goto LABEL_18;
    }

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    descriptionView9 = [(HUInstructionsCell *)self descriptionView];
    [descriptionView9 setFont:v29];

    descriptionView10 = [(HUInstructionsCell *)self descriptionView];
    [descriptionView10 setTextAlignment:4];

    v32 = MEMORY[0x277D75348];
    goto LABEL_15;
  }

  v42 = [MEMORY[0x277D74300] systemFontOfSize:22.0 weight:*MEMORY[0x277D74420]];
  titleLabel20 = [(HUInstructionsCell *)self titleLabel];
  [titleLabel20 setFont:v42];

  titleLabel21 = [(HUInstructionsCell *)self titleLabel];
  [titleLabel21 setTextAlignment:4];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  titleLabel22 = [(HUInstructionsCell *)self titleLabel];
  [titleLabel22 setTextColor:labelColor2];

  systemGrayColor3 = [(HUInstructionsCell *)self titleLabel];
  [systemGrayColor3 setNumberOfLines:1];
LABEL_17:

LABEL_18:
  [(HUInstructionsCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  item = [(HUInstructionsCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:@"instructionsStyle"];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    NSLog(&cfstr_NoInstructions.isa);
    integerValue = -1;
  }

  item2 = [(HUInstructionsCell *)self item];
  latestResults2 = [item2 latestResults];
  v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  item3 = [(HUInstructionsCell *)self item];
  latestResults3 = [item3 latestResults];
  v13 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  titleLabel = [(HUInstructionsCell *)self titleLabel];
  LODWORD(v15) = 1144766464;
  [titleLabel setContentCompressionResistancePriority:1 forAxis:v15];

  titleLabel2 = [(HUInstructionsCell *)self titleLabel];
  LODWORD(v17) = 1132134400;
  [titleLabel2 setContentHuggingPriority:1 forAxis:v17];

  hidesTopSpacing = [(HUInstructionsCell *)self hidesTopSpacing];
  if (hidesTopSpacing)
  {
    v19 = 12.0;
  }

  else
  {
    v19 = 20.0;
  }

  if (hidesTopSpacing)
  {
    v20 = 12.0;
  }

  else
  {
    v20 = 52.0;
  }

  if (integerValue > 1)
  {
    if ((integerValue - 2) < 2)
    {
      v66 = 44.0;
      if (hidesTopSpacing)
      {
        v66 = 12.0;
      }

      if (integerValue == 2)
      {
        v20 = v66;
        titleLabel3 = [(HUInstructionsCell *)self titleLabel];
        font = [titleLabel3 font];
        [font _scaledValueForValue:10.0];
        v70 = HURoundToScreenScale(v69);
      }

      else
      {
        [(HUInstructionsCell *)self contentBottomMargin];
        v70 = v108;
      }

      titleLabel4 = [(HUInstructionsCell *)self titleLabel];
      firstBaselineAnchor = [titleLabel4 firstBaselineAnchor];
      contentView = [(HUInstructionsCell *)self contentView];
      topAnchor = [contentView topAnchor];
      v113 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v20];
      [array addObject:v113];

      titleLabel5 = [(HUInstructionsCell *)self titleLabel];
      leadingAnchor = [titleLabel5 leadingAnchor];
      contentView2 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v119 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [array addObject:v119];

      titleLabel6 = [(HUInstructionsCell *)self titleLabel];
      trailingAnchor = [titleLabel6 trailingAnchor];
      contentView3 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v125 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [array addObject:v125];

      titleLabel7 = [(HUInstructionsCell *)self titleLabel];
      bottomAnchor = [titleLabel7 bottomAnchor];
      contentView4 = [(HUInstructionsCell *)self contentView];
      bottomAnchor2 = [contentView4 bottomAnchor];
      v126 = -v70;
      goto LABEL_33;
    }

    if (integerValue != 4)
    {
      if (integerValue != 5)
      {
        goto LABEL_35;
      }

      descriptionView = [(HUInstructionsCell *)self descriptionView];
      topAnchor2 = [descriptionView topAnchor];
      contentView5 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
      topAnchor3 = [layoutMarginsGuide3 topAnchor];
      v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      [array addObject:v26];

      descriptionView2 = [(HUInstructionsCell *)self descriptionView];
      bottomAnchor3 = [descriptionView2 bottomAnchor];
      contentView6 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
      bottomAnchor4 = [layoutMarginsGuide4 bottomAnchor];
      v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [array addObject:v32];

      descriptionView3 = [(HUInstructionsCell *)self descriptionView];
      leadingAnchor3 = [descriptionView3 leadingAnchor];
      contentView7 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
      leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
      v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [array addObject:v38];

      titleLabel7 = [(HUInstructionsCell *)self descriptionView];
      bottomAnchor = [titleLabel7 trailingAnchor];
      contentView4 = [(HUInstructionsCell *)self contentView];
      bottomAnchor2 = [contentView4 layoutMarginsGuide];
      trailingAnchor3 = [bottomAnchor2 trailingAnchor];
      v44 = [bottomAnchor constraintEqualToAnchor:trailingAnchor3];
      [array addObject:v44];

      goto LABEL_34;
    }

    titleLabel8 = [(HUInstructionsCell *)self titleLabel];
    firstBaselineAnchor2 = [titleLabel8 firstBaselineAnchor];
    contentView8 = [(HUInstructionsCell *)self contentView];
    topAnchor4 = [contentView8 topAnchor];
    v131 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor4 constant:v20];
    [array addObject:v131];

    titleLabel9 = [(HUInstructionsCell *)self titleLabel];
    leadingAnchor5 = [titleLabel9 leadingAnchor];
    contentView9 = [(HUInstructionsCell *)self contentView];
    layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide6 leadingAnchor];
    v137 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array addObject:v137];

    titleLabel10 = [(HUInstructionsCell *)self titleLabel];
    trailingAnchor4 = [titleLabel10 trailingAnchor];
    contentView10 = [(HUInstructionsCell *)self contentView];
    layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide7 trailingAnchor];
    v143 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [array addObject:v143];

    titleLabel11 = [(HUInstructionsCell *)self titleLabel];
    goto LABEL_31;
  }

  if (integerValue)
  {
    if (integerValue != 1)
    {
      goto LABEL_35;
    }

    if (v10 && v13)
    {
      titleLabel12 = [(HUInstructionsCell *)self titleLabel];
      topAnchor5 = [titleLabel12 topAnchor];
      contentView11 = [(HUInstructionsCell *)self contentView];
      topAnchor6 = [contentView11 topAnchor];
      v49 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v19];
      [array addObject:v49];

      titleLabel13 = [(HUInstructionsCell *)self titleLabel];
      leadingAnchor7 = [titleLabel13 leadingAnchor];
      contentView12 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide8 = [contentView12 layoutMarginsGuide];
      leadingAnchor8 = [layoutMarginsGuide8 leadingAnchor];
      v55 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      [array addObject:v55];

      titleLabel14 = [(HUInstructionsCell *)self titleLabel];
      trailingAnchor6 = [titleLabel14 trailingAnchor];
      contentView13 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide9 = [contentView13 layoutMarginsGuide];
      trailingAnchor7 = [layoutMarginsGuide9 trailingAnchor];
      v61 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      [array addObject:v61];

      descriptionView4 = [(HUInstructionsCell *)self descriptionView];
      font2 = [descriptionView4 font];
      v64 = font2;
      v65 = v19;
LABEL_28:
      [font2 _scaledValueForValue:v65];
      v89 = HURoundToScreenScale(v88);

      descriptionView5 = [(HUInstructionsCell *)self descriptionView];
      firstBaselineAnchor3 = [descriptionView5 firstBaselineAnchor];
      titleLabel15 = [(HUInstructionsCell *)self titleLabel];
      lastBaselineAnchor = [titleLabel15 lastBaselineAnchor];
      v94 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:v89];
      [array addObject:v94];

      descriptionView6 = [(HUInstructionsCell *)self descriptionView];
      leadingAnchor9 = [descriptionView6 leadingAnchor];
      contentView14 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide10 = [contentView14 layoutMarginsGuide];
      leadingAnchor10 = [layoutMarginsGuide10 leadingAnchor];
      v100 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      [array addObject:v100];

      descriptionView7 = [(HUInstructionsCell *)self descriptionView];
      trailingAnchor8 = [descriptionView7 trailingAnchor];
      contentView15 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide11 = [contentView15 layoutMarginsGuide];
      trailingAnchor9 = [layoutMarginsGuide11 trailingAnchor];
      v106 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
      [array addObject:v106];

      titleLabel11 = [(HUInstructionsCell *)self descriptionView];
LABEL_31:
      titleLabel7 = titleLabel11;
LABEL_32:
      bottomAnchor = [titleLabel11 bottomAnchor];
      contentView4 = [(HUInstructionsCell *)self contentView];
      bottomAnchor2 = [contentView4 bottomAnchor];
      [(HUInstructionsCell *)self contentBottomMargin];
      v126 = -v144;
LABEL_33:
      trailingAnchor3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v126];
      [array addObject:trailingAnchor3];
LABEL_34:

      goto LABEL_35;
    }

    if (v10 | v13)
    {
      if (v10)
      {
        [(HUInstructionsCell *)self titleLabel];
      }

      else
      {
        [(HUInstructionsCell *)self descriptionView];
      }
      titleLabel7 = ;
      topAnchor7 = [titleLabel7 topAnchor];
      contentView16 = [(HUInstructionsCell *)self contentView];
      topAnchor8 = [contentView16 topAnchor];
      v154 = topAnchor7;
      v155 = topAnchor8;
      v156 = v19;
LABEL_48:
      v157 = [v154 constraintEqualToAnchor:v155 constant:v156];
      [array addObject:v157];

      leadingAnchor11 = [titleLabel7 leadingAnchor];
      contentView17 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide12 = [contentView17 layoutMarginsGuide];
      leadingAnchor12 = [layoutMarginsGuide12 leadingAnchor];
      v162 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
      [array addObject:v162];

      trailingAnchor10 = [titleLabel7 trailingAnchor];
      contentView18 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide13 = [contentView18 layoutMarginsGuide];
      trailingAnchor11 = [layoutMarginsGuide13 trailingAnchor];
      v167 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
      [array addObject:v167];

      titleLabel11 = titleLabel7;
      goto LABEL_32;
    }
  }

  else
  {
    if (v10 && v13)
    {
      titleLabel16 = [(HUInstructionsCell *)self titleLabel];
      firstBaselineAnchor4 = [titleLabel16 firstBaselineAnchor];
      contentView19 = [(HUInstructionsCell *)self contentView];
      topAnchor9 = [contentView19 topAnchor];
      v75 = [firstBaselineAnchor4 constraintEqualToAnchor:topAnchor9 constant:v20];
      [array addObject:v75];

      titleLabel17 = [(HUInstructionsCell *)self titleLabel];
      leadingAnchor13 = [titleLabel17 leadingAnchor];
      contentView20 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide14 = [contentView20 layoutMarginsGuide];
      leadingAnchor14 = [layoutMarginsGuide14 leadingAnchor];
      v81 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
      [array addObject:v81];

      titleLabel18 = [(HUInstructionsCell *)self titleLabel];
      trailingAnchor12 = [titleLabel18 trailingAnchor];
      contentView21 = [(HUInstructionsCell *)self contentView];
      layoutMarginsGuide15 = [contentView21 layoutMarginsGuide];
      trailingAnchor13 = [layoutMarginsGuide15 trailingAnchor];
      v87 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
      [array addObject:v87];

      descriptionView4 = [(HUInstructionsCell *)self descriptionView];
      font2 = [descriptionView4 font];
      v64 = font2;
      v65 = 22.0;
      goto LABEL_28;
    }

    if (v10 | v13)
    {
      if (v10)
      {
        [(HUInstructionsCell *)self titleLabel];
      }

      else
      {
        [(HUInstructionsCell *)self descriptionView];
      }
      titleLabel7 = ;
      topAnchor7 = [titleLabel7 firstBaselineAnchor];
      contentView16 = [(HUInstructionsCell *)self contentView];
      topAnchor8 = [contentView16 topAnchor];
      v154 = topAnchor7;
      v155 = topAnchor8;
      v156 = v20;
      goto LABEL_48;
    }
  }

LABEL_35:
  constraints = [(HUInstructionsCell *)self constraints];
  v146 = [array isEqualToArray:constraints];

  if ((v146 & 1) == 0)
  {
    v147 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUInstructionsCell *)self constraints];
    [v147 deactivateConstraints:constraints2];

    [(HUInstructionsCell *)self setConstraints:array];
    v149 = MEMORY[0x277CCAAD0];
    constraints3 = [(HUInstructionsCell *)self constraints];
    [v149 activateConstraints:constraints3];
  }

  v168.receiver = self;
  v168.super_class = HUInstructionsCell;
  [(HUInstructionsCell *)&v168 updateConstraints];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  return (interaction - 3) < 0xFFFFFFFFFFFFFFFELL;
}

@end