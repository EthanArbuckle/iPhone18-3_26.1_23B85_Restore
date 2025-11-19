@interface DMCProfileTitleTextCell
+ (id)cellIdentifier;
- (DMCProfileTitleTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)text;
- (void)setText:(id)a3;
@end

@implementation DMCProfileTitleTextCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (DMCProfileTitleTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = DMCProfileTitleTextCell;
  v4 = [(DMCProfileTitleTextCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(DMCProfileTitleTextCell *)v4 setUserInteractionEnabled:0];
    v6 = objc_opt_new();
    label = v5->_label;
    v5->_label = v6;

    [(UILabel *)v5->_label setNumberOfLines:0];
    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    -[UILabel setTextAlignment:](v5->_label, "setTextAlignment:", 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 0));
    v8 = *MEMORY[0x277D76A20];
    v9 = MEMORY[0x277D74310];
    v10 = [(DMCProfileTitleTextCell *)v5 traitCollection];
    v11 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v10];

    v12 = MEMORY[0x277D74300];
    v13 = [v11 fontDescriptorWithSymbolicTraits:2];
    v14 = [v12 fontWithDescriptor:v13 size:0.0];

    [(UILabel *)v5->_label setFont:v14];
    v15 = [(DMCProfileTitleTextCell *)v5 contentView];
    [v15 addSubview:v5->_label];

    v16 = [MEMORY[0x277D75348] clearColor];
    [(DMCProfileTitleTextCell *)v5 setBackgroundColor:v16];

    v17 = [MEMORY[0x277D75348] clearColor];
    v18 = [(DMCProfileTitleTextCell *)v5 contentView];
    [v18 setBackgroundColor:v17];

    v27 = @"label";
    v28[0] = v5->_label;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x4030000000000000, 0x4030000000000000];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v20 options:0 metrics:0 views:v19];
    v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[label]-0-|" options:0 metrics:0 views:v19];
    v23 = [(DMCProfileTitleTextCell *)v5 contentView];
    [v23 addConstraints:v21];

    v24 = [(DMCProfileTitleTextCell *)v5 contentView];
    [v24 addConstraints:v22];
  }

  return v5;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(DMCProfileTitleTextCell *)self label];
  [v5 setText:v4];
}

- (NSString)text
{
  v2 = [(DMCProfileTitleTextCell *)self label];
  v3 = [v2 text];

  return v3;
}

@end