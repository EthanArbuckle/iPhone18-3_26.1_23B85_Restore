@interface NDOWarrantySubTextCell
- (NDOWarrantySubTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation NDOWarrantySubTextCell

- (NDOWarrantySubTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = NDOWarrantySubTextCell;
  v4 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(NDOWarrantySubTextCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(NDOWarrantySubTextCell *)v5 detailTextLabel];
    [detailTextLabel setNumberOfLines:2];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    detailTextLabel2 = [(NDOWarrantySubTextCell *)v5 detailTextLabel];
    [detailTextLabel2 setFont:v8];
  }

  return v5;
}

@end