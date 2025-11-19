@interface NDOLongValueCell
- (NDOLongValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation NDOLongValueCell

- (NDOLongValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44.receiver = self;
  v44.super_class = NDOLongValueCell;
  v4 = [(PSTableCell *)&v44 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(NDOLongValueCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PSTableCell *)v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(PSTableCell *)v5 valueLabel];
    [v7 setHidden:1];

    v8 = objc_opt_new();
    [(NDOLongValueCell *)v5 setStackView:v8];

    v9 = [(NDOLongValueCell *)v5 stackView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(NDOLongValueCell *)v5 stackView];
    [v10 setAxis:0];

    v11 = [(NDOLongValueCell *)v5 stackView];
    [v11 setSpacing:10.0];

    v12 = [(NDOLongValueCell *)v5 contentView];
    v13 = [(NDOLongValueCell *)v5 stackView];
    [v12 addSubview:v13];

    v14 = objc_opt_new();
    [(NDOLongValueCell *)v5 setPrimaryLabel:v14];

    v15 = [MEMORY[0x277D75348] labelColor];
    v16 = [(NDOLongValueCell *)v5 primaryLabel];
    [v16 setTextColor:v15];

    v17 = [(NDOLongValueCell *)v5 primaryLabel];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(NDOLongValueCell *)v5 primaryLabel];
    [v18 setNumberOfLines:0];

    v19 = [(PSTableCell *)v5 titleLabel];
    v20 = [v19 font];
    v21 = [(NDOLongValueCell *)v5 primaryLabel];
    [v21 setFont:v20];

    v22 = [(NDOLongValueCell *)v5 primaryLabel];
    LODWORD(v23) = 1148846080;
    [v22 setContentCompressionResistancePriority:0 forAxis:v23];

    v24 = [(NDOLongValueCell *)v5 primaryLabel];
    LODWORD(v25) = 1148846080;
    [v24 setContentHuggingPriority:0 forAxis:v25];

    v26 = [(NDOLongValueCell *)v5 stackView];
    v27 = [(NDOLongValueCell *)v5 primaryLabel];
    [v26 addArrangedSubview:v27];

    v28 = objc_opt_new();
    [(NDOLongValueCell *)v5 setSecondaryLabel:v28];

    v29 = [MEMORY[0x277D75348] secondaryLabelColor];
    v30 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v30 setTextColor:v29];

    v31 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    v32 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v32 setNumberOfLines:0];

    v33 = [(PSTableCell *)v5 valueLabel];
    v34 = [v33 font];
    v35 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v35 setFont:v34];

    v36 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v36 setTextAlignment:2];

    v37 = [(NDOLongValueCell *)v5 secondaryLabel];
    LODWORD(v38) = 1148846080;
    [v37 setContentCompressionResistancePriority:0 forAxis:v38];

    v39 = [(NDOLongValueCell *)v5 secondaryLabel];
    LODWORD(v40) = 1148846080;
    [v39 setContentHuggingPriority:0 forAxis:v40];

    v41 = [(NDOLongValueCell *)v5 stackView];
    v42 = [(NDOLongValueCell *)v5 secondaryLabel];
    [v41 addArrangedSubview:v42];
  }

  return v5;
}

- (void)updateConstraints
{
  v3 = [(NDOLongValueCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = MEMORY[0x277CCAAD0];
  v6 = [(NDOLongValueCell *)self constraints];
  [v5 deactivateConstraints:v6];

  v7 = objc_opt_new();
  v8 = [(NDOLongValueCell *)self stackView];
  v9 = [v8 leadingAnchor];
  v10 = [v4 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v7 addObject:v11];

  v12 = [(PSTableCell *)self type];
  v13 = [(NDOLongValueCell *)self stackView];
  v14 = [v13 trailingAnchor];
  if (v12 == 2)
  {
    v15 = [(NDOLongValueCell *)self contentView];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v7 addObject:v17];
  }

  else
  {
    v15 = [v4 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v7 addObject:v16];
  }

  v18 = [(NDOLongValueCell *)self stackView];
  v19 = [v18 topAnchor];
  v20 = [v4 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v7 addObject:v21];

  v22 = [(NDOLongValueCell *)self stackView];
  v23 = [v22 bottomAnchor];
  v24 = [v4 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v7 addObject:v25];

  v26 = [(NDOLongValueCell *)self stackView];
  v27 = [v26 bottomAnchor];
  v28 = [v4 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v7 addObject:v29];

  v30 = [v7 copy];
  [(NDOLongValueCell *)self setConstraints:v30];

  v31 = MEMORY[0x277CCAAD0];
  v32 = [(NDOLongValueCell *)self constraints];
  [v31 activateConstraints:v32];

  v33.receiver = self;
  v33.super_class = NDOLongValueCell;
  [(NDOLongValueCell *)&v33 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = NDOLongValueCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSTableCell *)self titleLabel];
  v5 = [v4 text];
  v6 = [(NDOLongValueCell *)self primaryLabel];
  [v6 setText:v5];

  v7 = [(PSTableCell *)self valueLabel];
  v8 = [v7 text];
  v9 = [v8 length];

  v10 = objc_opt_self();
  v11 = [v10 stackView];
  v12 = [(NDOLongValueCell *)self secondaryLabel];
  v13 = [v11 containsView:v12];

  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      v14 = [(NDOLongValueCell *)self stackView];
      v15 = [(NDOLongValueCell *)self secondaryLabel];
      [v14 addArrangedSubview:v15];
    }

    v16 = [(PSTableCell *)self valueLabel];
    v17 = [v16 text];
    v18 = [(NDOLongValueCell *)self secondaryLabel];
    [v18 setText:v17];

    goto LABEL_7;
  }

  if (v13)
  {
    v16 = [(NDOLongValueCell *)self stackView];
    v17 = [(NDOLongValueCell *)self secondaryLabel];
    [v16 removeArrangedSubview:v17];
LABEL_7:
  }

  [(NDOLongValueCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self layoutSubviews];
}

@end