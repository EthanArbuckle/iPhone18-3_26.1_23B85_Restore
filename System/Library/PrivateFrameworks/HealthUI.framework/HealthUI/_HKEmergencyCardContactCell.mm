@interface _HKEmergencyCardContactCell
- (_HKEmergencyCardContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_setupIndividualViews;
- (void)dealloc;
- (void)setContact:(id)contact showRelationship:(BOOL)relationship showPhoneIcon:(BOOL)icon;
- (void)setupConstraints;
- (void)setupViewHeirarchy;
@end

@implementation _HKEmergencyCardContactCell

- (_HKEmergencyCardContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = _HKEmergencyCardContactCell;
  v4 = [(_HKEmergencyCardContactCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(_HKEmergencyCardContactCell *)v4 _setupIndividualViews];
    [(_HKEmergencyCardContactCell *)v5 setupViewHeirarchy];
    [(_HKEmergencyCardContactCell *)v5 setupConstraints];
    [(_HKEmergencyCardContactCell *)v5 _contentSizeCategoryDidChange:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = _HKEmergencyCardContactCell;
  [(_HKEmergencyCardContactCell *)&v4 dealloc];
}

- (void)_setupIndividualViews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  relationshipLabel = self->_relationshipLabel;
  self->_relationshipLabel = v3;

  [(UILabel *)self->_relationshipLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_relationshipLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_relationshipLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  nameLabel = self->_nameLabel;
  self->_nameLabel = v6;

  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_nameLabel setTextColor:labelColor];

  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  phoneNumberLabel = self->_phoneNumberLabel;
  self->_phoneNumberLabel = v9;

  [(UILabel *)self->_phoneNumberLabel setNumberOfLines:0];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UILabel *)self->_phoneNumberLabel setTextColor:systemBlueColor];

  v12 = self->_phoneNumberLabel;

  [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setupViewHeirarchy
{
  contentView = [(_HKEmergencyCardContactCell *)self contentView];
  relationshipLabel = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  [contentView addSubview:relationshipLabel];

  contentView2 = [(_HKEmergencyCardContactCell *)self contentView];
  nameLabel = [(_HKEmergencyCardContactCell *)self nameLabel];
  [contentView2 addSubview:nameLabel];

  contentView3 = [(_HKEmergencyCardContactCell *)self contentView];
  phoneNumberLabel = [(_HKEmergencyCardContactCell *)self phoneNumberLabel];
  [contentView3 addSubview:phoneNumberLabel];
}

- (void)setupConstraints
{
  relationshipLabel = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  firstBaselineAnchor = [relationshipLabel firstBaselineAnchor];
  contentView = [(_HKEmergencyCardContactCell *)self contentView];
  topAnchor = [contentView topAnchor];
  relationshipLabel2 = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  font = [relationshipLabel2 font];
  [font _scaledValueForValue:20.0];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 setActive:1];

  relationshipLabel3 = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  leftAnchor = [relationshipLabel3 leftAnchor];
  contentView2 = [(_HKEmergencyCardContactCell *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:16.0];
  [v14 setActive:1];

  contentView3 = [(_HKEmergencyCardContactCell *)self contentView];
  rightAnchor = [contentView3 rightAnchor];
  relationshipLabel4 = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  rightAnchor2 = [relationshipLabel4 rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:16.0];
  [v19 setActive:1];

  nameLabel = [(_HKEmergencyCardContactCell *)self nameLabel];
  firstBaselineAnchor2 = [nameLabel firstBaselineAnchor];
  relationshipLabel5 = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  lastBaselineAnchor = [relationshipLabel5 lastBaselineAnchor];
  nameLabel2 = [(_HKEmergencyCardContactCell *)self nameLabel];
  font2 = [nameLabel2 font];
  [font2 _scaledValueForValue:24.0];
  v26 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v26 setActive:1];

  nameLabel3 = [(_HKEmergencyCardContactCell *)self nameLabel];
  leftAnchor3 = [nameLabel3 leftAnchor];
  contentView4 = [(_HKEmergencyCardContactCell *)self contentView];
  leftAnchor4 = [contentView4 leftAnchor];
  v31 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:16.0];
  [v31 setActive:1];

  contentView5 = [(_HKEmergencyCardContactCell *)self contentView];
  rightAnchor3 = [contentView5 rightAnchor];
  nameLabel4 = [(_HKEmergencyCardContactCell *)self nameLabel];
  rightAnchor4 = [nameLabel4 rightAnchor];
  v36 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:16.0];
  [v36 setActive:1];

  phoneNumberLabel = [(_HKEmergencyCardContactCell *)self phoneNumberLabel];
  firstBaselineAnchor3 = [phoneNumberLabel firstBaselineAnchor];
  nameLabel5 = [(_HKEmergencyCardContactCell *)self nameLabel];
  lastBaselineAnchor2 = [nameLabel5 lastBaselineAnchor];
  nameLabel6 = [(_HKEmergencyCardContactCell *)self nameLabel];
  font3 = [nameLabel6 font];
  [font3 _scaledValueForValue:24.0];
  v43 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v43 setActive:1];

  phoneNumberLabel2 = [(_HKEmergencyCardContactCell *)self phoneNumberLabel];
  leftAnchor5 = [phoneNumberLabel2 leftAnchor];
  contentView6 = [(_HKEmergencyCardContactCell *)self contentView];
  leftAnchor6 = [contentView6 leftAnchor];
  v48 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:16.0];
  [v48 setActive:1];

  contentView7 = [(_HKEmergencyCardContactCell *)self contentView];
  rightAnchor5 = [contentView7 rightAnchor];
  phoneNumberLabel3 = [(_HKEmergencyCardContactCell *)self phoneNumberLabel];
  rightAnchor6 = [phoneNumberLabel3 rightAnchor];
  v53 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:16.0];
  [v53 setActive:1];

  contentView8 = [(_HKEmergencyCardContactCell *)self contentView];
  bottomAnchor = [contentView8 bottomAnchor];
  phoneNumberLabel4 = [(_HKEmergencyCardContactCell *)self phoneNumberLabel];
  bottomAnchor2 = [phoneNumberLabel4 bottomAnchor];
  relationshipLabel6 = [(_HKEmergencyCardContactCell *)self relationshipLabel];
  font4 = [relationshipLabel6 font];
  [font4 _scaledValueForValue:20.0];
  v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
  [v59 setActive:1];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_relationshipLabel setFont:v4];

  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_nameLabel setFont:v6];

  v7 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v5];
  [(UILabel *)self->_phoneNumberLabel setFont:v7];
}

- (void)setContact:(id)contact showRelationship:(BOOL)relationship showPhoneIcon:(BOOL)icon
{
  relationshipCopy = relationship;
  contactCopy = contact;
  objc_storeStrong(&self->_contact, contact);
  name = [contactCopy name];
  [(UILabel *)self->_nameLabel setText:name];

  phoneNumber = [contactCopy phoneNumber];
  [(UILabel *)self->_phoneNumberLabel setText:phoneNumber];

  if (relationshipCopy)
  {
    v10 = MEMORY[0x1E695CEE0];
    relationship = [contactCopy relationship];
    v12 = [v10 localizedStringForLabel:relationship];
    [(UILabel *)self->_relationshipLabel setText:v12];
  }

  else
  {
    [(UILabel *)self->_relationshipLabel setText:0];
  }
}

@end