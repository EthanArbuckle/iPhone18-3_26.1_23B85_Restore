@interface CRUMultilineTextCell
- (CRUMultilineTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CRUMultilineTextCell

- (CRUMultilineTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = CRUMultilineTextCell;
  v4 = [(PSTableCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(PSTableCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];

    v7 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D769C8]];
    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    [titleLabel2 setFont:v7];

    appearance = [MEMORY[0x277D3FA48] appearance];
    textColor = [appearance textColor];
    labelColor = textColor;
    if (!textColor)
    {
      labelColor = [MEMORY[0x277D75340] labelColor];
    }

    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    [titleLabel3 setTextColor:labelColor];

    if (!textColor)
    {
    }
  }

  return v5;
}

@end