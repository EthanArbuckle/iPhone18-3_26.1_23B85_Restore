@interface CRUMultilineLinkCell
- (CRUMultilineLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CRUMultilineLinkCell

- (CRUMultilineLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = CRUMultilineLinkCell;
  v4 = [(PSTableCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(PSTableCell *)v4 titleLabel];
    [titleLabel setNumberOfLines:0];

    v7 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D76910]];
    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    [titleLabel2 setFont:v7];

    v9 = objc_alloc(MEMORY[0x277CCAB48]);
    titleLabel3 = [(PSTableCell *)v5 titleLabel];
    text = [titleLabel3 text];
    v12 = [v9 initWithString:text];

    titleLabel4 = [(PSTableCell *)v5 titleLabel];
    text2 = [titleLabel4 text];
    v15 = [text2 length];

    [v12 addAttribute:*MEMORY[0x277D740E0] value:@"http://www.apple.com" range:{0, v15}];
    titleLabel5 = [(PSTableCell *)v5 titleLabel];
    [titleLabel5 setAttributedText:v12];
  }

  return v5;
}

@end