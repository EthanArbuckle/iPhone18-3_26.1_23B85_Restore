@interface NDOWarrantySubTextCell
- (NDOWarrantySubTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation NDOWarrantySubTextCell

- (NDOWarrantySubTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = NDOWarrantySubTextCell;
  v4 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(NDOWarrantySubTextCell *)v4 textLabel];
    [v6 setNumberOfLines:0];

    v7 = [(NDOWarrantySubTextCell *)v5 detailTextLabel];
    [v7 setNumberOfLines:2];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v9 = [(NDOWarrantySubTextCell *)v5 detailTextLabel];
    [v9 setFont:v8];
  }

  return v5;
}

@end