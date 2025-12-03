@interface HRAtrialFibrillationDataTypeDescriptionCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HRAtrialFibrillationDataTypeDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupDescriptionTextView;
- (void)_updateTextForDescriptionTextView;
- (void)setFeatureAvailable:(BOOL)available;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRAtrialFibrillationDataTypeDescriptionCell

- (HRAtrialFibrillationDataTypeDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HRAtrialFibrillationDataTypeDescriptionCell;
  v4 = [(HRAtrialFibrillationDataTypeDescriptionCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_descriptionTextView setBackgroundColor:clearColor];

  [(UITextView *)self->_descriptionTextView setEditable:0];
  [(UITextView *)self->_descriptionTextView setSelectable:1];
  [(UITextView *)self->_descriptionTextView _setInteractiveTextSelectionDisabled:1];
  textContainer = [(UITextView *)self->_descriptionTextView textContainer];
  [textContainer setLineFragmentPadding:0.0];

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
  contentView = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [contentView addSubview:self->_descriptionTextView];

  v12 = objc_alloc_init(MEMORY[0x277D75C40]);
  settingsDescriptionTextView = self->_settingsDescriptionTextView;
  self->_settingsDescriptionTextView = v12;

  [(UITextView *)self->_settingsDescriptionTextView setEditable:0];
  [(UITextView *)self->_settingsDescriptionTextView setSelectable:1];
  [(UITextView *)self->_settingsDescriptionTextView _setInteractiveTextSelectionDisabled:1];
  textContainer2 = [(UITextView *)self->_settingsDescriptionTextView textContainer];
  [textContainer2 setLineFragmentPadding:0.0];

  [(UITextView *)self->_settingsDescriptionTextView setScrollEnabled:0];
  [(UITextView *)self->_settingsDescriptionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = HRHeartRhythmUIFrameworkBundle();
  v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DATA_TYPE_DESCRIPTION_WATCH" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  [(UITextView *)self->_settingsDescriptionTextView setText:v16];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(UITextView *)self->_settingsDescriptionTextView setBackgroundColor:clearColor2];

  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  [(UITextView *)self->_settingsDescriptionTextView setFont:v18];

  [(UITextView *)self->_settingsDescriptionTextView setHidden:1];
  [(UITextView *)self->_settingsDescriptionTextView setDelegate:self];
  contentView2 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [contentView2 addSubview:self->_settingsDescriptionTextView];

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

  contentView3 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  [contentView3 addSubview:self->_settingsLinkTextView];

  topAnchor = [(UITextView *)self->_descriptionTextView topAnchor];
  contentView4 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v77 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v94[0] = v77;
  topAnchor3 = [(UITextView *)self->_settingsDescriptionTextView topAnchor];
  lastBaselineAnchor = [(UITextView *)self->_descriptionTextView lastBaselineAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:8.0];
  v94[1] = v29;
  topAnchor4 = [(HKAttributionTextView *)self->_settingsLinkTextView topAnchor];
  lastBaselineAnchor2 = [(UITextView *)self->_settingsDescriptionTextView lastBaselineAnchor];
  v32 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:8.0];
  v94[2] = v32;
  bottomAnchor = [(HKAttributionTextView *)self->_settingsLinkTextView bottomAnchor];
  contentView5 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v94[3] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:4];
  availableVerticalConstraints = self->_availableVerticalConstraints;
  self->_availableVerticalConstraints = v38;

  topAnchor5 = [(UITextView *)self->_descriptionTextView topAnchor];
  contentView6 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
  topAnchor6 = [layoutMarginsGuide3 topAnchor];
  v42 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v93[0] = v42;
  bottomAnchor3 = [(UITextView *)self->_descriptionTextView bottomAnchor];
  contentView7 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
  bottomAnchor4 = [layoutMarginsGuide4 bottomAnchor];
  v47 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v93[1] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
  unavailableVerticalConstraints = self->_unavailableVerticalConstraints;
  self->_unavailableVerticalConstraints = v48;

  [MEMORY[0x277CCAAD0] activateConstraints:self->_unavailableVerticalConstraints];
  v67 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UITextView *)self->_descriptionTextView leadingAnchor];
  contentView8 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide5 leadingAnchor];
  v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v92[0] = v78;
  trailingAnchor = [(UITextView *)self->_descriptionTextView trailingAnchor];
  contentView9 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide6 trailingAnchor];
  v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v92[1] = v71;
  leadingAnchor3 = [(UITextView *)self->_settingsDescriptionTextView leadingAnchor];
  contentView10 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide7 leadingAnchor];
  v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v92[2] = v65;
  trailingAnchor3 = [(UITextView *)self->_settingsDescriptionTextView trailingAnchor];
  contentView11 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide8 = [contentView11 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide8 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v92[3] = v61;
  leadingAnchor5 = [(HKAttributionTextView *)self->_settingsLinkTextView leadingAnchor];
  contentView12 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide9 = [contentView12 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide9 leadingAnchor];
  v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v92[4] = v53;
  trailingAnchor5 = [(HKAttributionTextView *)self->_settingsLinkTextView trailingAnchor];
  contentView13 = [(HRAtrialFibrillationDataTypeDescriptionCell *)self contentView];
  layoutMarginsGuide10 = [contentView13 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide10 trailingAnchor];
  v58 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v92[5] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
  [v67 activateConstraints:v59];
}

- (void)setFeatureAvailable:(BOOL)available
{
  if (self->_featureAvailable != available)
  {
    self->_featureAvailable = available;
    [(HRAtrialFibrillationDataTypeDescriptionCell *)self _updateTextForDescriptionTextView];
  }
}

- (void)_updateTextForDescriptionTextView
{
  featureAvailable = [(HRAtrialFibrillationDataTypeDescriptionCell *)self featureAvailable];
  if (featureAvailable)
  {
    v4 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__unavailableVerticalConstraints;
  }

  else
  {
    v4 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__availableVerticalConstraints;
  }

  if (featureAvailable)
  {
    v5 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__availableVerticalConstraints;
  }

  else
  {
    v5 = &OBJC_IVAR___HRAtrialFibrillationDataTypeDescriptionCell__unavailableVerticalConstraints;
  }

  [(UITextView *)self->_settingsDescriptionTextView setHidden:!featureAvailable];
  [(HKAttributionTextView *)self->_settingsLinkTextView setHidden:!featureAvailable];
  [MEMORY[0x277CCAAD0] deactivateConstraints:*(&self->super.super.super.super.isa + *v4)];
  v6 = MEMORY[0x277CCAAD0];
  v7 = *(&self->super.super.super.super.isa + *v5);

  [v6 activateConstraints:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HRAtrialFibrillationDataTypeDescriptionCell;
  [(HRAtrialFibrillationDataTypeDescriptionCell *)&v4 traitCollectionDidChange:change];
  [(HRAtrialFibrillationDataTypeDescriptionCell *)self _updateTextForDescriptionTextView];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  scheme = [lCopy scheme];
  v8 = [scheme isEqualToString:@"bridge"];

  if (v8)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  return 0;
}

@end