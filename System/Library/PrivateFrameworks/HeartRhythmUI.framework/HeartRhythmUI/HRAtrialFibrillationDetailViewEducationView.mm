@interface HRAtrialFibrillationDetailViewEducationView
- (HRAtrialFibrillationDetailViewEducationView)init;
- (id)_labelWithText:(id)a3 fontTextStyle:(id)a4 symbolicTraits:(unsigned int)a5;
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
  v3 = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(HRAtrialFibrillationDetailViewEducationView *)self setBackgroundColor:v3];

  v4 = HRHeartRhythmUIFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v36 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v5 fontTextStyle:*MEMORY[0x277D76A08] symbolicTraits:2];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v36];
  v6 = [v36 leadingAnchor];
  v7 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:12.0];
  [v9 setActive:1];

  v10 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v36 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];
  [v13 setActive:1];

  v14 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Title"];
  [v36 setAccessibilityIdentifier:v14];

  v15 = [v36 topAnchor];
  v16 = [(HRAtrialFibrillationDetailViewEducationView *)self topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:22.0];
  [v17 setActive:1];

  v18 = HRHeartRhythmUIFrameworkBundle();
  v19 = [v18 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v20 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v19 fontTextStyle:*MEMORY[0x277D76918] symbolicTraits:0x8000];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v20];
  v21 = [v20 leadingAnchor];
  v22 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:12.0];
  [v24 setActive:1];

  v25 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v20 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:12.0];
  [v28 setActive:1];

  v29 = [v20 topAnchor];
  v30 = [v36 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:12.0];
  [v31 setActive:1];

  v32 = [(HRAtrialFibrillationDetailViewEducationView *)self bottomAnchor];
  v33 = [v20 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];
  [v34 setActive:1];

  v35 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Body"];
  [v20 setAccessibilityIdentifier:v35];
}

- (id)_labelWithText:(id)a3 fontTextStyle:(id)a4 symbolicTraits:(unsigned int)a5
{
  v5 = *&a5;
  v7 = MEMORY[0x277D756B8];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];

  v12 = objc_alloc_init(MEMORY[0x277D74240]);
  [v12 setParagraphSpacing:10.0];
  [v11 addAttribute:*MEMORY[0x277D74118] value:v12 range:{0, objc_msgSend(v11, "length")}];
  [v10 setAttributedText:v11];
  v13 = [MEMORY[0x277D75348] labelColor];
  [v10 setTextColor:v13];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setTextAlignment:4];
  [v10 setNumberOfLines:0];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v8 addingSymbolicTraits:v5 options:0];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  [v10 setFont:v15];

  return v10;
}

@end