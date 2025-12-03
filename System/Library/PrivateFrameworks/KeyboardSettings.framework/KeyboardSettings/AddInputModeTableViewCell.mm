@interface AddInputModeTableViewCell
- (AddInputModeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation AddInputModeTableViewCell

- (AddInputModeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = AddInputModeTableViewCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:?];
  if (v6)
  {
    if (![specifier propertyForKey:@"TIKBAllIdentifiersKey"])
    {
      [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
      if ([TIInputModeGetVariant() length])
      {
        [-[AddInputModeTableViewCell detailTextLabel](v6 "detailTextLabel")];
      }
    }
  }

  return v6;
}

@end