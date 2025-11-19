@interface AddInputModeTableViewCell
- (AddInputModeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation AddInputModeTableViewCell

- (AddInputModeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = AddInputModeTableViewCell;
  v6 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    if (![a5 propertyForKey:@"TIKBAllIdentifiersKey"])
    {
      [a5 propertyForKey:*MEMORY[0x277D3FFB8]];
      if ([TIInputModeGetVariant() length])
      {
        [-[AddInputModeTableViewCell detailTextLabel](v6 "detailTextLabel")];
      }
    }
  }

  return v6;
}

@end