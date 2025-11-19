@interface CRUMultilineTextCell
- (CRUMultilineTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CRUMultilineTextCell

- (CRUMultilineTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = CRUMultilineTextCell;
  v4 = [(PSTableCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PSTableCell *)v4 titleLabel];
    [v6 setNumberOfLines:0];

    v7 = [MEMORY[0x277D742F8] preferredFontForTextStyle:*MEMORY[0x277D769C8]];
    v8 = [(PSTableCell *)v5 titleLabel];
    [v8 setFont:v7];

    v9 = [MEMORY[0x277D3FA48] appearance];
    v10 = [v9 textColor];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277D75340] labelColor];
    }

    v12 = [(PSTableCell *)v5 titleLabel];
    [v12 setTextColor:v11];

    if (!v10)
    {
    }
  }

  return v5;
}

@end