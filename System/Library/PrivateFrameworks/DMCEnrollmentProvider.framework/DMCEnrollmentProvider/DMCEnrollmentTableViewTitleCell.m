@interface DMCEnrollmentTableViewTitleCell
- (DMCEnrollmentTableViewTitleCell)initWithTitle:(id)a3;
- (id)_fontForTitle;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
@end

@implementation DMCEnrollmentTableViewTitleCell

- (DMCEnrollmentTableViewTitleCell)initWithTitle:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v29.receiver = self;
  v29.super_class = DMCEnrollmentTableViewTitleCell;
  v7 = [(DMCEnrollmentTableViewTitleCell *)&v29 initWithStyle:0 reuseIdentifier:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewTitleCell *)v7 setBackgroundColor:v8];

    [(DMCEnrollmentTableViewTitleCell *)v7 setSelectionStyle:0];
    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setNumberOfLines:0];
    v10 = [(DMCEnrollmentTableViewTitleCell *)v7 _fontForTitle];
    [v9 setFont:v10];

    [v9 setTextAlignment:{2 * (objc_msgSend(*MEMORY[0x277D76620], "userInterfaceLayoutDirection") != 0)}];
    [v9 setText:v4];
    [v9 sizeToFit];
    v11 = [(DMCEnrollmentTableViewTitleCell *)v7 contentView];
    [v11 addSubview:v9];

    v31 = @"label";
    v32[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v13 = MEMORY[0x277CCAAD0];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x4014000000000000, 0x4014000000000000];
    v15 = [v13 constraintsWithVisualFormat:v14 options:0 metrics:0 views:v12];

    v16 = MEMORY[0x277CCAAD0];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"V:|-%f-[label]-%f-|", 0x4008000000000000, 0x4008000000000000];
    v18 = [v16 constraintsWithVisualFormat:v17 options:0 metrics:0 views:v12];

    v19 = [(DMCEnrollmentTableViewTitleCell *)v7 contentView];
    [v19 addConstraints:v15];

    v20 = [(DMCEnrollmentTableViewTitleCell *)v7 contentView];
    [v20 addConstraints:v18];

    v21 = [v4 copy];
    title = v7->_title;
    v7->_title = v21;

    objc_storeStrong(&v7->_label, v9);
    objc_initWeak(&location, v7);
    v30 = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__DMCEnrollmentTableViewTitleCell_initWithTitle___block_invoke;
    v26[3] = &unk_278EE7C08;
    objc_copyWeak(&v27, &location);
    v24 = [(DMCEnrollmentTableViewTitleCell *)v7 registerForTraitChanges:v23 withHandler:v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__DMCEnrollmentTableViewTitleCell_initWithTitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _fontForTitle];
  v2 = [WeakRetained label];
  [v2 setFont:v1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DMCEnrollmentTableViewTitleCell;
  [(DMCEnrollmentTableViewTitleCell *)&v3 layoutSubviews];
  [(DMCEnrollmentTableViewTitleCell *)self setUserInteractionEnabled:0];
  [(DMCEnrollmentTableViewTitleCell *)self bounds];
  [(DMCEnrollmentTableViewTitleCell *)self setSeparatorInset:0.0, CGRectGetWidth(v4), 0.0, 0.0];
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v7 copy];
    title = self->_title;
    self->_title = v4;

    v6 = [(DMCEnrollmentTableViewTitleCell *)self label];
    [v6 setText:v7];

    [(DMCEnrollmentTableViewTitleCell *)self setNeedsDisplay];
  }
}

- (id)_fontForTitle
{
  v2 = *MEMORY[0x277D76A20];
  v3 = MEMORY[0x277D74310];
  v4 = [(DMCEnrollmentTableViewTitleCell *)self traitCollection];
  v5 = [v3 preferredFontDescriptorWithTextStyle:v2 compatibleWithTraitCollection:v4];

  v6 = MEMORY[0x277D74300];
  v7 = [v5 fontDescriptorWithSymbolicTraits:2];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end