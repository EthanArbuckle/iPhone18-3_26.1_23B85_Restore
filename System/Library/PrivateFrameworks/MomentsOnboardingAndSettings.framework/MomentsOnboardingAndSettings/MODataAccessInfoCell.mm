@interface MODataAccessInfoCell
- (MODataAccessInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation MODataAccessInfoCell

- (MODataAccessInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = MODataAccessInfoCell;
  return [(PSTableCell *)&v5 initWithStyle:a3 reuseIdentifier:a4];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v43[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = MODataAccessInfoCell;
  [(PSTableCell *)&v42 refreshCellContentsWithSpecifier:v4];
  if (self)
  {
    v5 = [(MODataAccessInfoCell *)self contentView];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v6 setFont:v7];

    [v6 setNumberOfLines:0];
    [v5 addSubview:v6];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v8 setFont:v9];

    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 setTextColor:v10];

    [v8 setNumberOfLines:0];
    [v5 addSubview:v8];
    v11 = [v4 objectForKeyedSubscript:@"MOTitle"];
    [v6 setText:v11];

    v12 = [v4 objectForKeyedSubscript:@"MOBody"];
    [v8 setText:v12];

    v13 = [(MODataAccessInfoCell *)self contentView];
    v14 = [v13 layoutMarginsGuide];

    v32 = MEMORY[0x277CCAAD0];
    v41 = [v6 topAnchor];
    v31 = v5;
    v40 = [v5 topAnchor];
    v39 = [v41 constraintEqualToSystemSpacingBelowAnchor:v40 multiplier:2.0];
    v43[0] = v39;
    v38 = [v6 leadingAnchor];
    v37 = [v14 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v43[1] = v36;
    v35 = [v6 trailingAnchor];
    v30 = v14;
    v34 = [v14 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v43[2] = v33;
    v29 = [v8 topAnchor];
    v28 = [v6 bottomAnchor];
    v27 = [v29 constraintEqualToSystemSpacingBelowAnchor:v28 multiplier:1.0];
    v43[3] = v27;
    v26 = [v8 leadingAnchor];
    v25 = [v14 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v43[4] = v24;
    v15 = [v8 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v43[5] = v17;
    v18 = [v5 bottomAnchor];
    v19 = [v8 bottomAnchor];
    v20 = [v18 constraintEqualToSystemSpacingBelowAnchor:v19 multiplier:2.0];
    v43[6] = v20;
    [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
    v22 = v21 = v4;
    [v32 activateConstraints:v22];

    v4 = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end