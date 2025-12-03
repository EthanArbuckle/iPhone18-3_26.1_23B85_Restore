@interface HRAtrialFibrillationDetailViewEducationView
- (HRAtrialFibrillationDetailViewEducationView)init;
- (id)_labelWithText:(id)text fontTextStyle:(id)style symbolicTraits:(unsigned int)traits;
- (void)_setupUI;
@end

@implementation HRAtrialFibrillationDetailViewEducationView

- (HRAtrialFibrillationDetailViewEducationView)init
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationDetailViewEducationView;
  v2 = [(HRAtrialFibrillationDetailViewEducationView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(HRAtrialFibrillationDetailViewEducationView *)v2 _setupUI];
  }

  return v3;
}

- (void)_setupUI
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(HRAtrialFibrillationDetailViewEducationView *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v4 = HRHeartRhythmUIFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v36 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v5 fontTextStyle:*MEMORY[0x277D76A08] symbolicTraits:2];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v36];
  leadingAnchor = [v36 leadingAnchor];
  layoutMarginsGuide = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  [v9 setActive:1];

  layoutMarginsGuide2 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [v36 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
  [v13 setActive:1];

  v14 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Title"];
  [v36 setAccessibilityIdentifier:v14];

  topAnchor = [v36 topAnchor];
  topAnchor2 = [(HRAtrialFibrillationDetailViewEducationView *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
  [v17 setActive:1];

  v18 = HRHeartRhythmUIFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v20 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v19 fontTextStyle:*MEMORY[0x277D76918] symbolicTraits:0x8000];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v20];
  leadingAnchor3 = [v20 leadingAnchor];
  layoutMarginsGuide3 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v24 setActive:1];

  layoutMarginsGuide4 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  trailingAnchor4 = [v20 trailingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
  [v28 setActive:1];

  topAnchor3 = [v20 topAnchor];
  bottomAnchor = [v36 bottomAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  [v31 setActive:1];

  bottomAnchor2 = [(HRAtrialFibrillationDetailViewEducationView *)self bottomAnchor];
  bottomAnchor3 = [v20 bottomAnchor];
  v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
  [v34 setActive:1];

  v35 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Body"];
  [v20 setAccessibilityIdentifier:v35];
}

- (id)_labelWithText:(id)text fontTextStyle:(id)style symbolicTraits:(unsigned int)traits
{
  v5 = *&traits;
  v7 = MEMORY[0x277D756B8];
  styleCopy = style;
  textCopy = text;
  v10 = objc_alloc_init(v7);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:textCopy];

  v12 = objc_alloc_init(MEMORY[0x277D74240]);
  [v12 setParagraphSpacing:10.0];
  [v11 addAttribute:*MEMORY[0x277D74118] value:v12 range:{0, objc_msgSend(v11, "length")}];
  [v10 setAttributedText:v11];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v10 setTextColor:labelColor];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setTextAlignment:4];
  [v10 setNumberOfLines:0];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:styleCopy addingSymbolicTraits:v5 options:0];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  [v10 setFont:v15];

  return v10;
}

@end