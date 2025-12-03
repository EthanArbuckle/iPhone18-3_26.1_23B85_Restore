@interface WDHeartRhythmHeaderView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (NSAttributedString)bodyTextAttributedString;
- (NSAttributedString)bodyURLAttributedString;
- (NSString)titleText;
- (WDHeartRhythmHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)setBodyText:(id)text URLText:(id)lText URL:(id)l;
- (void)setTitleText:(id)text;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBodyTextView;
- (void)updateConstraintConstants;
@end

@implementation WDHeartRhythmHeaderView

- (WDHeartRhythmHeaderView)initWithReuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = WDHeartRhythmHeaderView;
  v3 = [(WDHeartRhythmHeaderView *)&v14 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    v11 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:0 textContainer:{v5, v6, v7, v8}];
    bodyTextView = v3->_bodyTextView;
    v3->_bodyTextView = v11;

    [(WDHeartRhythmHeaderView *)v3 setUpUI];
  }

  return v3;
}

- (void)setUpUI
{
  v93[7] = *MEMORY[0x277D85DE8];
  titleLabel = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  titleLabel4 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  v92 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v92 size:0.0];
  titleLabel5 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel5 setFont:v7];

  titleLabel6 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v10) = 1144766464;
  [titleLabel6 setContentHuggingPriority:1 forAxis:v10];

  titleLabel7 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v12) = 1148829696;
  [titleLabel7 setContentHuggingPriority:0 forAxis:v12];

  titleLabel8 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v14) = 1144766464;
  [titleLabel8 setContentCompressionResistancePriority:1 forAxis:v14];

  contentView = [(WDHeartRhythmHeaderView *)self contentView];
  titleLabel9 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [contentView addSubview:titleLabel9];

  bodyTextView = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  bodyTextView2 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView2 setAdjustsFontForContentSizeCategory:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  bodyTextView3 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView3 setBackgroundColor:clearColor];

  bodyTextView4 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView4 setTextAlignment:4];

  bodyTextView5 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  textContainer = [bodyTextView5 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  bodyTextView6 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView6 setScrollEnabled:0];

  bodyTextView7 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView7 setEditable:0];

  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  bodyTextView8 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView8 setFont:v26];

  bodyTextView9 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView9 setDelegate:self];

  bodyTextView10 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  LODWORD(v30) = 1144750080;
  [bodyTextView10 setContentHuggingPriority:1 forAxis:v30];

  bodyTextView11 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  LODWORD(v32) = 1144750080;
  [bodyTextView11 setContentCompressionResistancePriority:1 forAxis:v32];

  contentView2 = [(WDHeartRhythmHeaderView *)self contentView];
  bodyTextView12 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [contentView2 addSubview:bodyTextView12];

  contentView3 = [(WDHeartRhythmHeaderView *)self contentView];
  [contentView3 layoutMargins];
  v37 = v36;
  v39 = v38;

  contentView4 = [(WDHeartRhythmHeaderView *)self contentView];
  [contentView4 setLayoutMargins:{0.0, v37, 0.0, v39}];

  titleLabel10 = [(WDHeartRhythmHeaderView *)self titleLabel];
  firstBaselineAnchor = [titleLabel10 firstBaselineAnchor];
  contentView5 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide = [contentView5 layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  v46 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  titleFirstBaselineToTopMarginConstraint = self->_titleFirstBaselineToTopMarginConstraint;
  self->_titleFirstBaselineToTopMarginConstraint = v46;

  LODWORD(v48) = 1144733696;
  [(NSLayoutConstraint *)self->_titleFirstBaselineToTopMarginConstraint setPriority:v48];
  bodyTextView13 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  firstBaselineAnchor2 = [bodyTextView13 firstBaselineAnchor];
  titleLabel11 = [(WDHeartRhythmHeaderView *)self titleLabel];
  lastBaselineAnchor = [titleLabel11 lastBaselineAnchor];
  v53 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  bodyFirstBaslineToTitleLastBaslineConstraint = self->_bodyFirstBaslineToTitleLastBaslineConstraint;
  self->_bodyFirstBaslineToTitleLastBaslineConstraint = v53;

  LODWORD(v55) = 1144717312;
  [(NSLayoutConstraint *)self->_bodyFirstBaslineToTitleLastBaslineConstraint setPriority:v55];
  contentView6 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  bodyTextView14 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  lastBaselineAnchor2 = [bodyTextView14 lastBaselineAnchor];
  v61 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  bottomMarginToBodyLastBaselineConstraint = self->_bottomMarginToBodyLastBaselineConstraint;
  self->_bottomMarginToBodyLastBaselineConstraint = v61;

  LODWORD(v63) = 1132068864;
  [(NSLayoutConstraint *)self->_bottomMarginToBodyLastBaselineConstraint setPriority:v63];
  [(WDHeartRhythmHeaderView *)self updateConstraintConstants];
  v64 = self->_bodyFirstBaslineToTitleLastBaslineConstraint;
  v81 = MEMORY[0x277CCAAD0];
  v93[0] = self->_titleFirstBaselineToTopMarginConstraint;
  v93[1] = v64;
  v93[2] = self->_bottomMarginToBodyLastBaselineConstraint;
  titleLabel12 = [(WDHeartRhythmHeaderView *)self titleLabel];
  leadingAnchor = [titleLabel12 leadingAnchor];
  contentView7 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v93[3] = v86;
  titleLabel13 = [(WDHeartRhythmHeaderView *)self titleLabel];
  trailingAnchor = [titleLabel13 trailingAnchor];
  contentView8 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide4 = [contentView8 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v93[4] = v79;
  bodyTextView15 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  leadingAnchor3 = [bodyTextView15 leadingAnchor];
  contentView9 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide5 = [contentView9 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide5 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v93[5] = v67;
  bodyTextView16 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  trailingAnchor3 = [bodyTextView16 trailingAnchor];
  contentView10 = [(WDHeartRhythmHeaderView *)self contentView];
  layoutMarginsGuide6 = [contentView10 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide6 trailingAnchor];
  v73 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v93[6] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:7];
  [v81 activateConstraints:v74];

  v75 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraintConstants
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  v15 = [v3 initForTextStyle:*MEMORY[0x277D76A20]];
  [v15 scaledValueForValue:44.0];
  v5 = v4;
  titleFirstBaselineToTopMarginConstraint = [(WDHeartRhythmHeaderView *)self titleFirstBaselineToTopMarginConstraint];
  [titleFirstBaselineToTopMarginConstraint setConstant:v5];

  [v15 scaledValueForValue:28.0];
  v8 = v7;
  bodyFirstBaslineToTitleLastBaslineConstraint = [(WDHeartRhythmHeaderView *)self bodyFirstBaslineToTitleLastBaslineConstraint];
  [bodyFirstBaslineToTitleLastBaslineConstraint setConstant:v8];

  v10 = objc_alloc(MEMORY[0x277D75520]);
  v11 = [v10 initForTextStyle:*MEMORY[0x277D76918]];
  [v11 scaledValueForValue:30.0];
  v13 = v12;
  bottomMarginToBodyLastBaselineConstraint = [(WDHeartRhythmHeaderView *)self bottomMarginToBodyLastBaselineConstraint];
  [bottomMarginToBodyLastBaselineConstraint setConstant:v13];
}

- (void)updateBodyTextView
{
  v17[1] = *MEMORY[0x277D85DE8];
  bodyTextAttributedString = [(WDHeartRhythmHeaderView *)self bodyTextAttributedString];
  bodyURLAttributedString = [(WDHeartRhythmHeaderView *)self bodyURLAttributedString];
  v5 = bodyURLAttributedString;
  if (bodyTextAttributedString && bodyURLAttributedString)
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = *MEMORY[0x277D740A8];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [v6 initWithString:@" " attributes:v8];

    v15[0] = bodyTextAttributedString;
    v15[1] = v9;
    v15[2] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v11 = HKUIJoinAttributedStringsForLocale();
  }

  else
  {
    if (bodyTextAttributedString)
    {
      v12 = bodyTextAttributedString;
    }

    else
    {
      v12 = bodyURLAttributedString;
    }

    v11 = v12;
  }

  bodyTextView = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [bodyTextView setAttributedText:v11];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  traitCollection = [(WDHeartRhythmHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDHeartRhythmHeaderView *)self updateConstraintConstants];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(WDHeartRhythmHeaderView *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)titleText
{
  titleLabel = [(WDHeartRhythmHeaderView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setBodyText:(id)text URLText:(id)lText URL:(id)l
{
  lCopy = l;
  lTextCopy = lText;
  v10 = [text copy];
  bodyText = self->_bodyText;
  self->_bodyText = v10;

  v12 = [lTextCopy copy];
  bodyURLText = self->_bodyURLText;
  self->_bodyURLText = v12;

  v14 = [lCopy copy];
  bodyURL = self->_bodyURL;
  self->_bodyURL = v14;

  [(WDHeartRhythmHeaderView *)self updateBodyTextView];
}

- (NSAttributedString)bodyTextAttributedString
{
  v13[2] = *MEMORY[0x277D85DE8];
  bodyText = [(WDHeartRhythmHeaderView *)self bodyText];

  if (bodyText)
  {
    v12[0] = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v13[0] = v4;
    v12[1] = *MEMORY[0x277D740C0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v13[1] = labelColor;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v7 = objc_alloc(MEMORY[0x277CCA898]);
    bodyText2 = [(WDHeartRhythmHeaderView *)self bodyText];
    v9 = [v7 initWithString:bodyText2 attributes:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSAttributedString)bodyURLAttributedString
{
  v16[3] = *MEMORY[0x277D85DE8];
  bodyURLText = [(WDHeartRhythmHeaderView *)self bodyURLText];
  if (bodyURLText && (v4 = bodyURLText, [(WDHeartRhythmHeaderView *)self bodyURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v15[0] = *MEMORY[0x277D740A8];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v16[0] = v6;
    v15[1] = *MEMORY[0x277D740C0];
    hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
    v16[1] = hk_appKeyColor;
    v15[2] = *MEMORY[0x277D740E8];
    bodyURL = [(WDHeartRhythmHeaderView *)self bodyURL];
    v16[2] = bodyURL;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v10 = objc_alloc(MEMORY[0x277CCA898]);
    bodyURLText2 = [(WDHeartRhythmHeaderView *)self bodyURLText];
    v12 = [v10 initWithString:bodyURLText2 attributes:v9];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  scheme = [l scheme];
  v7 = [scheme isEqualToString:@"https"];

  return v7;
}

@end