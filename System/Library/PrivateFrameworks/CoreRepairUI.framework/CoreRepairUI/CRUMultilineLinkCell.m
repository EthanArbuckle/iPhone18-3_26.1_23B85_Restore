@interface CRUMultilineLinkCell
- (CRUMultilineLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CRUMultilineLinkCell

- (CRUMultilineLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = CRUMultilineLinkCell;
  v4 = [(PSTableCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSTableCell *)v4 titleLabel];
    [v6 setNumberOfLines:0];

    v7 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D76910]];
    v8 = [(PSTableCell *)v5 titleLabel];
    [v8 setFont:v7];

    v9 = objc_alloc(MEMORY[0x277CCAB48]);
    v10 = [(PSTableCell *)v5 titleLabel];
    v11 = [v10 text];
    v12 = [v9 initWithString:v11];

    v13 = [(PSTableCell *)v5 titleLabel];
    v14 = [v13 text];
    v15 = [v14 length];

    [v12 addAttribute:*MEMORY[0x277D740E0] value:@"http://www.apple.com" range:{0, v15}];
    v16 = [(PSTableCell *)v5 titleLabel];
    [v16 setAttributedText:v12];
  }

  return v5;
}

@end