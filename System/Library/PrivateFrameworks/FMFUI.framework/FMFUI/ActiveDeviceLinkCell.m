@interface ActiveDeviceLinkCell
- (ActiveDeviceLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation ActiveDeviceLinkCell

- (ActiveDeviceLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = ActiveDeviceLinkCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(ActiveDeviceLinkCell *)v5 setupSubviews];
    [(ActiveDeviceLinkCell *)v6 setupConstraints];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = ActiveDeviceLinkCell;
  v4 = a3;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v15.receiver, v15.super_class}];
  v6 = [v5 localizedStringForKey:@"FROM_TITLE" value:&stru_285D99658 table:@"LocalizableUI"];
  v7 = [(ActiveDeviceLinkCell *)self fromLabel];
  [v7 setText:v6];

  v8 = [v4 propertyForKey:@"ActiveDeviceLinkNameKey"];
  v9 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v9 setText:v8];

  v10 = [v4 propertyForKey:@"ActiveDeviceLinkDetailsKey"];

  v11 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v11 setText:v10];

  v12 = [(ActiveDeviceLinkCell *)self detailsLabel];
  v13 = [v12 text];
  v14 = [(ActiveDeviceLinkCell *)self detailsHeightContraint];
  [v14 setActive:v13 == 0];

  [(ActiveDeviceLinkCell *)self setNeedsLayout];
}

- (void)setupSubviews
{
  v3 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1);
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setFromLabel:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v6 = [(ActiveDeviceLinkCell *)self fromLabel];
  [v6 setFont:v5];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setDeviceNameLabel:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v9 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277D75348] tableCellGrayTextColor];
  v11 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v11 setTextColor:v10];

  v12 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v12 setTextAlignment:v3];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ActiveDeviceLinkCell *)self setDetailsLabel:v13];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v15 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v15 setFont:v14];

  v16 = [MEMORY[0x277D75348] tableCellGrayTextColor];
  v17 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v17 setTextColor:v16];

  v18 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v18 setTextAlignment:v3];

  v19 = [(ActiveDeviceLinkCell *)self contentView];
  v20 = [(ActiveDeviceLinkCell *)self fromLabel];
  [v19 addSubview:v20];

  v21 = [(ActiveDeviceLinkCell *)self contentView];
  v22 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v21 addSubview:v22];

  v24 = [(ActiveDeviceLinkCell *)self contentView];
  v23 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v24 addSubview:v23];
}

- (void)setupConstraints
{
  v3 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ActiveDeviceLinkCell *)self fromLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ActiveDeviceLinkCell *)self fromLabel];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v7];

  v8 = [(ActiveDeviceLinkCell *)self fromLabel];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];

  v10 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  LODWORD(v8) = UIContentSizeCategoryIsAccessibilityCategory(v10);

  v11 = [(ActiveDeviceLinkCell *)self fromLabel];
  v12 = [v11 leadingAnchor];
  v13 = [(ActiveDeviceLinkCell *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(ActiveDeviceLinkCell *)self fromLabel];
  v18 = [v17 topAnchor];
  v19 = [(ActiveDeviceLinkCell *)self contentView];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:8.0];
  [v21 setActive:1];

  v22 = [(ActiveDeviceLinkCell *)self fromLabel];
  v23 = [v22 trailingAnchor];
  if (v8)
  {
    v24 = [(ActiveDeviceLinkCell *)self contentView];
    v25 = [v24 trailingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:8.0];
    [v26 setActive:1];

    v27 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v28 = [v27 topAnchor];
    v29 = [(ActiveDeviceLinkCell *)self fromLabel];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v33 = [v32 leadingAnchor];
    v34 = [(ActiveDeviceLinkCell *)self contentView];
    v35 = [v34 layoutMarginsGuide];
    v36 = [v35 leadingAnchor];
    v37 = [v33 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v39 = [v38 trailingAnchor];
    v40 = [(ActiveDeviceLinkCell *)self contentView];
    v41 = [v40 trailingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v44 = [v43 bottomAnchor];
    v45 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v46 = [v45 topAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    [v47 setActive:1];

    v48 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    [v48 setTextAlignment:0];

    v49 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    [v49 setNumberOfLines:0];

    v50 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v51 = [v50 leadingAnchor];
    v52 = [(ActiveDeviceLinkCell *)self contentView];
    v53 = [v52 layoutMarginsGuide];
    v54 = [v53 leadingAnchor];
    v55 = [v51 constraintEqualToAnchor:v54];
    [v55 setActive:1];

    v56 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v57 = [v56 trailingAnchor];
    v58 = [(ActiveDeviceLinkCell *)self contentView];
    v59 = [v58 trailingAnchor];
    v60 = [v57 constraintEqualToAnchor:v59];
    [v60 setActive:1];

    v61 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v62 = [v61 bottomAnchor];
    v63 = [(ActiveDeviceLinkCell *)self contentView];
    v64 = [v63 bottomAnchor];
    v65 = [v62 constraintEqualToAnchor:v64 constant:-8.0];
    [v65 setActive:1];

    v66 = [(ActiveDeviceLinkCell *)self detailsLabel];
    [v66 setTextAlignment:0];

    v67 = [(ActiveDeviceLinkCell *)self detailsLabel];
    [v67 setNumberOfLines:0];
  }

  else
  {
    v68 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v69 = [v68 leadingAnchor];
    v70 = [v23 constraintEqualToAnchor:v69 constant:-8.0];
    [v70 setActive:1];

    v71 = [(ActiveDeviceLinkCell *)self fromLabel];
    v72 = [v71 bottomAnchor];
    v73 = [(ActiveDeviceLinkCell *)self contentView];
    v74 = [v73 bottomAnchor];
    v75 = [v72 constraintEqualToAnchor:v74 constant:-8.0];
    [v75 setActive:1];

    v76 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v77 = [v76 topAnchor];
    v78 = [(ActiveDeviceLinkCell *)self contentView];
    v79 = [v78 topAnchor];
    v80 = [v77 constraintEqualToAnchor:v79 constant:8.0];
    [v80 setActive:1];

    v81 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v82 = [v81 trailingAnchor];
    v83 = [(ActiveDeviceLinkCell *)self contentView];
    v84 = [v83 layoutMarginsGuide];
    v85 = [v84 trailingAnchor];
    v86 = [v82 constraintEqualToAnchor:v85];
    [v86 setActive:1];

    v87 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v88 = [v87 bottomAnchor];
    v89 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v90 = [v89 topAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    [v91 setActive:1];

    v92 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v93 = [v92 leadingAnchor];
    v94 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
    v95 = [v94 leadingAnchor];
    v96 = [v93 constraintEqualToAnchor:v95];
    [v96 setActive:1];

    v97 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v98 = [v97 trailingAnchor];
    v99 = [(ActiveDeviceLinkCell *)self contentView];
    v100 = [v99 layoutMarginsGuide];
    v101 = [v100 trailingAnchor];
    v102 = [v98 constraintEqualToAnchor:v101];
    [v102 setActive:1];

    v67 = [(ActiveDeviceLinkCell *)self detailsLabel];
    v103 = [v67 bottomAnchor];
    v104 = [(ActiveDeviceLinkCell *)self contentView];
    v105 = [v104 bottomAnchor];
    v106 = [v103 constraintEqualToAnchor:v105 constant:-8.0];
    [v106 setActive:1];
  }

  v109 = [(ActiveDeviceLinkCell *)self detailsLabel];
  v107 = [v109 heightAnchor];
  v108 = [v107 constraintEqualToConstant:0.0];
  [(ActiveDeviceLinkCell *)self setDetailsHeightContraint:v108];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = ActiveDeviceLinkCell;
  [(PSTableCell *)&v10 layoutSubviews];
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 propertyForKey:*MEMORY[0x277D3FF38]];
  v5 = [v4 BOOLValue];

  v6 = [(ActiveDeviceLinkCell *)self deviceNameLabel];
  [v6 setHidden:v5 ^ 1];

  v7 = [(ActiveDeviceLinkCell *)self detailsLabel];
  [v7 setHidden:v5 ^ 1];

  if (v5)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.400000006;
  }

  v9 = [(ActiveDeviceLinkCell *)self fromLabel];
  [v9 setAlpha:v8];

  [(PSTableCell *)self setCellEnabled:v5];
}

@end