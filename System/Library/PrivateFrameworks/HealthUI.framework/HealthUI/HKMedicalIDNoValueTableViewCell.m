@interface HKMedicalIDNoValueTableViewCell
- (HKMedicalIDNoValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createAddValueLabel;
@end

@implementation HKMedicalIDNoValueTableViewCell

- (HKMedicalIDNoValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = HKMedicalIDNoValueTableViewCell;
  v4 = [(HKMedicalIDNoValueTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDNoValueTableViewCell *)v4 createAddValueLabel];
    v6 = [(HKMedicalIDNoValueTableViewCell *)v5 contentView];
    v7 = [v6 heightAnchor];
    v8 = [v7 constraintGreaterThanOrEqualToConstant:44.0];

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

  v5 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v6 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [v5 addSubview:v6];

  v7 = HKHealthKeyColor();
  v8 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [v8 setTextColor:v7];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v10 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [v10 setFont:v9];

  v11 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  LODWORD(v12) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v12];

  v13 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  v15 = [v14 centerYAnchor];
  v16 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v17 = [v16 centerYAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  v20 = [v19 topAnchor];
  v21 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v22 multiplier:1.0];

  LODWORD(v24) = 1144750080;
  [v23 setPriority:v24];
  [v23 setActive:1];
  v25 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  v28 = [v27 bottomAnchor];
  v40 = [v26 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v28 multiplier:1.0];

  LODWORD(v29) = 1144750080;
  [v40 setPriority:v29];
  [v40 setActive:1];
  v30 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  v31 = [v30 leadingAnchor];
  v32 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintEqualToSystemSpacingAfterAnchor:v33 multiplier:1.0];
  [v34 setActive:1];

  v35 = [(HKMedicalIDNoValueTableViewCell *)self contentView];
  v36 = [v35 trailingAnchor];
  v37 = [(HKMedicalIDNoValueTableViewCell *)self addValueLabel];
  v38 = [v37 trailingAnchor];
  v39 = [v36 constraintEqualToSystemSpacingAfterAnchor:v38 multiplier:1.0];
  [v39 setActive:1];
}

@end