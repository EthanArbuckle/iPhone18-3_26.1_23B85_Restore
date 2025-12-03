@interface DMCProfileInfoTextCell
+ (id)cellIdentifier;
- (DMCProfileInfoTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSAttributedString)attributedText;
- (NSString)text;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
@end

@implementation DMCProfileInfoTextCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (DMCProfileInfoTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = DMCProfileInfoTextCell;
  v4 = [(DMCProfileInfoTextCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setNumberOfLines:0];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(DMCProfileInfoTextCell *)v4 contentView];
    [contentView addSubview:v4->_label];

    v16 = @"label";
    v17[0] = v4->_label;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    0x4030000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[label]-%f-|", 0x4030000000000000, 0x4030000000000000];
    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:0x4030000000000000 options:0 metrics:0 views:v8];
    v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[label]-0-|" options:0 metrics:0 views:v8];
    contentView2 = [(DMCProfileInfoTextCell *)v4 contentView];
    [contentView2 addConstraints:v10];

    contentView3 = [(DMCProfileInfoTextCell *)v4 contentView];
    [contentView3 addConstraints:v11];
  }

  return v4;
}

- (NSString)text
{
  label = [(DMCProfileInfoTextCell *)self label];
  text = [label text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(DMCProfileInfoTextCell *)self label];
  [label setText:textCopy];
}

- (NSAttributedString)attributedText
{
  label = [(DMCProfileInfoTextCell *)self label];
  attributedText = [label attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  label = [(DMCProfileInfoTextCell *)self label];
  [label setAttributedText:textCopy];
}

@end