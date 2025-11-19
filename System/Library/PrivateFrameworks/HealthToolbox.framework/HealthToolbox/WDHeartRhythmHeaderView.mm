@interface WDHeartRhythmHeaderView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (NSAttributedString)bodyTextAttributedString;
- (NSAttributedString)bodyURLAttributedString;
- (NSString)titleText;
- (WDHeartRhythmHeaderView)initWithReuseIdentifier:(id)a3;
- (void)setBodyText:(id)a3 URLText:(id)a4 URL:(id)a5;
- (void)setTitleText:(id)a3;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBodyTextView;
- (void)updateConstraintConstants;
@end

@implementation WDHeartRhythmHeaderView

- (WDHeartRhythmHeaderView)initWithReuseIdentifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = WDHeartRhythmHeaderView;
  v3 = [(WDHeartRhythmHeaderView *)&v14 initWithReuseIdentifier:a3];
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
  v3 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v4 setAdjustsFontForContentSizeCategory:1];

  v5 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v5 setTextAlignment:4];

  v6 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v6 setNumberOfLines:0];

  v92 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:2 options:0];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v92 size:0.0];
  v8 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v8 setFont:v7];

  v9 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v10) = 1144766464;
  [v9 setContentHuggingPriority:1 forAxis:v10];

  v11 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v12) = 1148829696;
  [v11 setContentHuggingPriority:0 forAxis:v12];

  v13 = [(WDHeartRhythmHeaderView *)self titleLabel];
  LODWORD(v14) = 1144766464;
  [v13 setContentCompressionResistancePriority:1 forAxis:v14];

  v15 = [(WDHeartRhythmHeaderView *)self contentView];
  v16 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v15 addSubview:v16];

  v17 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v18 setAdjustsFontForContentSizeCategory:1];

  v19 = [MEMORY[0x277D75348] clearColor];
  v20 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v20 setBackgroundColor:v19];

  v21 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v21 setTextAlignment:4];

  v22 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  v23 = [v22 textContainer];
  [v23 setLineFragmentPadding:0.0];

  v24 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v24 setScrollEnabled:0];

  v25 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v25 setEditable:0];

  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v27 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v27 setFont:v26];

  v28 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v28 setDelegate:self];

  v29 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  LODWORD(v30) = 1144750080;
  [v29 setContentHuggingPriority:1 forAxis:v30];

  v31 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  LODWORD(v32) = 1144750080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v32];

  v33 = [(WDHeartRhythmHeaderView *)self contentView];
  v34 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v33 addSubview:v34];

  v35 = [(WDHeartRhythmHeaderView *)self contentView];
  [v35 layoutMargins];
  v37 = v36;
  v39 = v38;

  v40 = [(WDHeartRhythmHeaderView *)self contentView];
  [v40 setLayoutMargins:{0.0, v37, 0.0, v39}];

  v41 = [(WDHeartRhythmHeaderView *)self titleLabel];
  v42 = [v41 firstBaselineAnchor];
  v43 = [(WDHeartRhythmHeaderView *)self contentView];
  v44 = [v43 layoutMarginsGuide];
  v45 = [v44 topAnchor];
  v46 = [v42 constraintEqualToAnchor:v45];
  titleFirstBaselineToTopMarginConstraint = self->_titleFirstBaselineToTopMarginConstraint;
  self->_titleFirstBaselineToTopMarginConstraint = v46;

  LODWORD(v48) = 1144733696;
  [(NSLayoutConstraint *)self->_titleFirstBaselineToTopMarginConstraint setPriority:v48];
  v49 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  v50 = [v49 firstBaselineAnchor];
  v51 = [(WDHeartRhythmHeaderView *)self titleLabel];
  v52 = [v51 lastBaselineAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  bodyFirstBaslineToTitleLastBaslineConstraint = self->_bodyFirstBaslineToTitleLastBaslineConstraint;
  self->_bodyFirstBaslineToTitleLastBaslineConstraint = v53;

  LODWORD(v55) = 1144717312;
  [(NSLayoutConstraint *)self->_bodyFirstBaslineToTitleLastBaslineConstraint setPriority:v55];
  v56 = [(WDHeartRhythmHeaderView *)self contentView];
  v57 = [v56 layoutMarginsGuide];
  v58 = [v57 bottomAnchor];
  v59 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  v60 = [v59 lastBaselineAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
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
  v91 = [(WDHeartRhythmHeaderView *)self titleLabel];
  v89 = [v91 leadingAnchor];
  v90 = [(WDHeartRhythmHeaderView *)self contentView];
  v88 = [v90 layoutMarginsGuide];
  v87 = [v88 leadingAnchor];
  v86 = [v89 constraintEqualToAnchor:v87];
  v93[3] = v86;
  v85 = [(WDHeartRhythmHeaderView *)self titleLabel];
  v83 = [v85 trailingAnchor];
  v84 = [(WDHeartRhythmHeaderView *)self contentView];
  v82 = [v84 layoutMarginsGuide];
  v80 = [v82 trailingAnchor];
  v79 = [v83 constraintEqualToAnchor:v80];
  v93[4] = v79;
  v78 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  v76 = [v78 leadingAnchor];
  v77 = [(WDHeartRhythmHeaderView *)self contentView];
  v65 = [v77 layoutMarginsGuide];
  v66 = [v65 leadingAnchor];
  v67 = [v76 constraintEqualToAnchor:v66];
  v93[5] = v67;
  v68 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  v69 = [v68 trailingAnchor];
  v70 = [(WDHeartRhythmHeaderView *)self contentView];
  v71 = [v70 layoutMarginsGuide];
  v72 = [v71 trailingAnchor];
  v73 = [v69 constraintEqualToAnchor:v72];
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
  v6 = [(WDHeartRhythmHeaderView *)self titleFirstBaselineToTopMarginConstraint];
  [v6 setConstant:v5];

  [v15 scaledValueForValue:28.0];
  v8 = v7;
  v9 = [(WDHeartRhythmHeaderView *)self bodyFirstBaslineToTitleLastBaslineConstraint];
  [v9 setConstant:v8];

  v10 = objc_alloc(MEMORY[0x277D75520]);
  v11 = [v10 initForTextStyle:*MEMORY[0x277D76918]];
  [v11 scaledValueForValue:30.0];
  v13 = v12;
  v14 = [(WDHeartRhythmHeaderView *)self bottomMarginToBodyLastBaselineConstraint];
  [v14 setConstant:v13];
}

- (void)updateBodyTextView
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(WDHeartRhythmHeaderView *)self bodyTextAttributedString];
  v4 = [(WDHeartRhythmHeaderView *)self bodyURLAttributedString];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = *MEMORY[0x277D740A8];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [v6 initWithString:@" " attributes:v8];

    v15[0] = v3;
    v15[1] = v9;
    v15[2] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v11 = HKUIJoinAttributedStringsForLocale();
  }

  else
  {
    if (v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = v4;
    }

    v11 = v12;
  }

  v13 = [(WDHeartRhythmHeaderView *)self bodyTextView];
  [v13 setAttributedText:v11];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    goto LABEL_3;
  }

  v4 = [(WDHeartRhythmHeaderView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v8 preferredContentSizeCategory];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDHeartRhythmHeaderView *)self updateConstraintConstants];
  }
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(WDHeartRhythmHeaderView *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)titleText
{
  v2 = [(WDHeartRhythmHeaderView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setBodyText:(id)a3 URLText:(id)a4 URL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  bodyText = self->_bodyText;
  self->_bodyText = v10;

  v12 = [v9 copy];
  bodyURLText = self->_bodyURLText;
  self->_bodyURLText = v12;

  v14 = [v8 copy];
  bodyURL = self->_bodyURL;
  self->_bodyURL = v14;

  [(WDHeartRhythmHeaderView *)self updateBodyTextView];
}

- (NSAttributedString)bodyTextAttributedString
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(WDHeartRhythmHeaderView *)self bodyText];

  if (v3)
  {
    v12[0] = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v13[0] = v4;
    v12[1] = *MEMORY[0x277D740C0];
    v5 = [MEMORY[0x277D75348] labelColor];
    v13[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v8 = [(WDHeartRhythmHeaderView *)self bodyText];
    v9 = [v7 initWithString:v8 attributes:v6];
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
  v3 = [(WDHeartRhythmHeaderView *)self bodyURLText];
  if (v3 && (v4 = v3, [(WDHeartRhythmHeaderView *)self bodyURL], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v15[0] = *MEMORY[0x277D740A8];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v16[0] = v6;
    v15[1] = *MEMORY[0x277D740C0];
    v7 = [MEMORY[0x277D75348] hk_appKeyColor];
    v16[1] = v7;
    v15[2] = *MEMORY[0x277D740E8];
    v8 = [(WDHeartRhythmHeaderView *)self bodyURL];
    v16[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = [(WDHeartRhythmHeaderView *)self bodyURLText];
    v12 = [v10 initWithString:v11 attributes:v9];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = [a4 scheme];
  v7 = [v6 isEqualToString:@"https"];

  return v7;
}

@end