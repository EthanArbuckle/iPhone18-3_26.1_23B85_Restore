@interface HKMedicalIDNoValueTableViewCell
- (HKMedicalIDNoValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)createAddValueLabel;
@end

@implementation HKMedicalIDNoValueTableViewCell

- (HKMedicalIDNoValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HKMedicalIDNoValueTableViewCell;
  v4 = [(HKMedicalIDNoValueTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDNoValueTableViewCell *)v4 createAddValueLabel];
    contentView = [(HKMedicalIDNoValueTableViewCell *)v5 contentView];
    heightAnchor = [contentView heightAnchor];
    v8 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];

    LODWORD(v9) = 1132068864;
    [v8 setPriority:v9];
    [v8 setActive:1];
  }

  return v5;
}

- (void)createAddValueLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKMedicalIDNoValueTableViewCell *)self setAddValueLabel:v4];

  contentView = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  addValueLabel = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [contentView addSubview:addValueLabel];

  v7 = HKHealthKeyColor();
  addValueLabel2 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [addValueLabel2 setTextColor:v7];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  addValueLabel3 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [addValueLabel3 setFont:v9];

  addValueLabel4 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  LODWORD(v12) = 1148846080;
  [addValueLabel4 setContentHuggingPriority:1 forAxis:v12];

  addValueLabel5 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [addValueLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  addValueLabel6 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  centerYAnchor = [addValueLabel6 centerYAnchor];
  contentView2 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];

  addValueLabel7 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  topAnchor = [addValueLabel7 topAnchor];
  contentView3 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v23 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];

  LODWORD(v24) = 1144750080;
  [v23 setPriority:v24];
  [v23 setActive:1];
  contentView4 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  addValueLabel8 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  bottomAnchor2 = [addValueLabel8 bottomAnchor];
  v40 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];

  LODWORD(v29) = 1144750080;
  [v40 setPriority:v29];
  [v40 setActive:1];
  addValueLabel9 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  leadingAnchor = [addValueLabel9 leadingAnchor];
  contentView5 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  [v34 setActive:1];

  contentView6 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  trailingAnchor = [contentView6 trailingAnchor];
  addValueLabel10 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  trailingAnchor2 = [addValueLabel10 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  [v39 setActive:1];
}

@end