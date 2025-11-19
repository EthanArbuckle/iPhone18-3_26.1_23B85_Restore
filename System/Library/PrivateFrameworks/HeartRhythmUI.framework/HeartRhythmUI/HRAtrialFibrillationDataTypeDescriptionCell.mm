@interface HRAtrialFibrillationDataTypeDescriptionCell
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HRAtrialFibrillationDataTypeDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupDescriptionTextView;
- (void)_updateTextForDescriptionTextView;
- (void)setFeatureAvailable:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRAtrialFibrillationDataTypeDescriptionCell

- (HRAtrialFibrillationDataTypeDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HRAtrialFibrillationDataTypeDescriptionCell;
  v4 = [(HRAtrialFibrillationDataTypeDescriptionCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HRAtrialFibrillationDataTypeDescriptionCell *)v4 _setupDescriptionTextView];
  }

  return v5;
}

- (void)_setupDescriptionTextView
{
  v96[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  descriptionTextView = self->_descriptionTextView;
  self->_descriptionTextView = v3;

  v5 = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_descriptionTextView setBackgroundColor:v5];

  [(UITextView *)self->_descriptionTextView setEditable:0];
  [(UITextView *)self->_descriptionTextView setSelectable:1];
  [(UITextView *)self->_descriptionTextView _setInteractiveTextSelectionDisabled:1];
  v6 = [(UITextView *)self->_descriptionTextView textContainer];
  [v6 setLineFragmentPadding:0.0];

  [(UITextView *)self->_descriptionTextView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(UITextView *)self->_descriptionTextView setScrollEnabled:0];
  [(UITextView *)self->_descriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = HRHeartRhythmUIFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"ATRIAL_FIBRILLATION_DATA_TYPE_DESCRIPTION_AHA" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [(UITextView *)self->_descriptionTextView setText:v8];

  v9 = *MEMORY[0x277D76918];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextView *)self->_descriptionTextView setFont:v10];

  [(UITextView *)self->_descriptionTextView setDelegate:self];
  v11 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [v11 addSubview:self->_descriptionTextView];

  v12 = objc_alloc_init(MEMORY[0x277D75C40]);
  settingsDescriptionTextView = self->_settingsDescriptionTextView;
  self->_settingsDescriptionTextView = v12;

  [(UITextView *)self->_settingsDescriptionTextView setEditable:0];
  [(UITextView *)self->_settingsDescriptionTextView setSelectable:1];
  [(UITextView *)self->_settingsDescriptionTextView _setInteractiveTextSelectionDisabled:1];
  v14 = [(UITextView *)self->_settingsDescriptionTextView textContainer];
  [v14 setLineFragmentPadding:0.0];

  [(UITextView *)self->_settingsDescriptionTextView setScrollEnabled:0];
  [(UITextView *)self->_settingsDescriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = HRHeartRhythmUIFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DATA_TYPE_DESCRIPTION_WATCH" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [(UITextView *)self->_settingsDescriptionTextView setText:v16];

  v17 = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_settingsDescriptionTextView setBackgroundColor:v17];

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  [(UITextView *)self->_settingsDescriptionTextView setFont:v18];

  [(UITextView *)self->_settingsDescriptionTextView setHidden:1];
  [(UITextView *)self->_settingsDescriptionTextView setDelegate:self];
  v19 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [v19 addSubview:self->_settingsDescriptionTextView];

  v20 = objc_alloc(MEMORY[0x277CCA898]);
  v21 = HRHeartRhythmUIFrameworkBundle();
  v22 = [v21 localizedStringForKey:@"ATRIAL_FIBRILLATION_WATCH_SETTINGS_LINK" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v95[0] = *MEMORY[0x277D740C0];
  v23 = HKHealthKeyColor();
  v95[1] = *MEMORY[0x277D740E8];
  v96[0] = v23;
  v96[1] = @"bridge:root=NOTIFICATIONS_ID&path=com.apple.HeartRateSettings";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  v90 = [v20 initWithString:v22 attributes:v24];

  v25 = [objc_alloc(MEMORY[0x277D127B0]) initWithAttributedText:v90 selectable:1];
  settingsLinkTextView = self->_settingsLinkTextView;
  self->_settingsLinkTextView = v25;

  [(HKAttributionTextView *)self->_settingsLinkTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKAttributionTextView *)self->_settingsLinkTextView setHidden:1];
  [(HKAttributionTextView *)self->_settingsLinkTextView setDelegate:self];
  [(HKAttributionTextView *)self->_settingsLinkTextView _setInteractiveTextSelectionDisabled:1];
  v27 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"AboutIRNDescription.WatchSettingsLink"];
  [(HKAttributionTextView *)self->_settingsLinkTextView setAccessibilityIdentifier:v27];

  v28 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [v28 addSubview:self->_settingsLinkTextView];

  v83 = [(UITextView *)self->_descriptionTextView topAnchor];
  v86 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v81 = [v86 layoutMarginsGuide];
  v79 = [v81 topAnchor];
  v77 = [v83 constraintEqualToAnchor:v79];
  v94[0] = v77;
  v75 = [(UITextView *)self->_settingsDescriptionTextView topAnchor];
  v73 = [(UITextView *)self->_descriptionTextView lastBaselineAnchor];
  v29 = [v75 constraintEqualToAnchor:v73 constant:8.0];
  v94[1] = v29;
  v30 = [(HKAttributionTextView *)self->_settingsLinkTextView topAnchor];
  v31 = [(UITextView *)self->_settingsDescriptionTextView lastBaselineAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];
  v94[2] = v32;
  v33 = [(HKAttributionTextView *)self->_settingsLinkTextView bottomAnchor];
  v34 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v35 = [v34 layoutMarginsGuide];
  v36 = [v35 bottomAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];
  v94[3] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
  availableVerticalConstraints = self->_availableVerticalConstraints;
  self->_availableVerticalConstraints = v38;

  v84 = [(UITextView *)self->_descriptionTextView topAnchor];
  v87 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v40 = [v87 layoutMarginsGuide];
  v41 = [v40 topAnchor];
  v42 = [v84 constraintEqualToAnchor:v41];
  v93[0] = v42;
  v43 = [(UITextView *)self->_descriptionTextView bottomAnchor];
  v44 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v45 = [v44 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];
  v93[1] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
  unavailableVerticalConstraints = self->_unavailableVerticalConstraints;
  self->_unavailableVerticalConstraints = v48;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_unavailableVerticalConstraints];
  v67 = MEMORY[0x277CCAAD0];
  v85 = [(UITextView *)self->_descriptionTextView leadingAnchor];
  v88 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v82 = [v88 layoutMarginsGuide];
  v80 = [v82 leadingAnchor];
  v78 = [v85 constraintEqualToAnchor:v80];
  v92[0] = v78;
  v76 = [(UITextView *)self->_descriptionTextView trailingAnchor];
  v91 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v74 = [v91 layoutMarginsGuide];
  v72 = [v74 trailingAnchor];
  v71 = [v76 constraintEqualToAnchor:v72];
  v92[1] = v71;
  v69 = [(UITextView *)self->_settingsDescriptionTextView leadingAnchor];
  v70 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v68 = [v70 layoutMarginsGuide];
  v66 = [v68 leadingAnchor];
  v65 = [v69 constraintEqualToAnchor:v66];
  v92[2] = v65;
  v64 = [(UITextView *)self->_settingsDescriptionTextView trailingAnchor];
  v89 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v63 = [v89 layoutMarginsGuide];
  v62 = [v63 trailingAnchor];
  v61 = [v64 constraintEqualToAnchor:v62];
  v92[3] = v61;
  v60 = [(HKAttributionTextView *)self->_settingsLinkTextView leadingAnchor];
  v50 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v51 = [v50 layoutMarginsGuide];
  v52 = [v51 leadingAnchor];
  v53 = [v60 constraintEqualToAnchor:v52];
  v92[4] = v53;
  v54 = [(HKAttributionTextView *)self->_settingsLinkTextView trailingAnchor];
  v55 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  v56 = [v55 layoutMarginsGuide];
  v57 = [v56 trailingAnchor];
  v58 = [v54 constraintEqualToAnchor:v57];
  v92[5] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
  [v67 activateConstraints:v59];
}

- (void)setFeatureAvailable:(BOOL)a3
{
  if (self->_featureAvailable != a3)
  {
    self->_featureAvailable = a3;
    [(HRAtrialFibrillationDataTypeDescriptionCell *)self _updateTextForDescriptionTextView];
  }
}

- (void)_updateTextForDescriptionTextView
{
  v3 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self featureAvailable];
  if (v3)
  {
    v4 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__unavailableVerticalConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__availableVerticalConstraints;
  }

  if (v3)
  {
    v5 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__availableVerticalConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__unavailableVerticalConstraints;
  }

  [(UITextView *)self->_settingsDescriptionTextView setHidden:!v3];
  [(HKAttributionTextView *)self->_settingsLinkTextView setHidden:!v3];
  [MEMORY[0x277CCAAD0] deactivateConstraints:*(&self->super.super.super.super.isa + *v4)];
  v6 = MEMORY[0x277CCAAD0];
  v7 = *(&self->super.super.super.super.isa + *v5);

  [v6 activateConstraints:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HRAtrialFibrillationDataTypeDescriptionCell;
  [(HRAtrialFibrillationDataTypeDescriptionCell *)&v4 traitCollectionDidChange:a3];
  [(HRAtrialFibrillationDataTypeDescriptionCell *)self _updateTextForDescriptionTextView];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = a4;
  v7 = [v6 scheme];
  v8 = [v7 isEqualToString:@"bridge"];

  if (v8)
  {
    v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v9 openSensitiveURL:v6 withOptions:0];
  }

  return 0;
}

@end