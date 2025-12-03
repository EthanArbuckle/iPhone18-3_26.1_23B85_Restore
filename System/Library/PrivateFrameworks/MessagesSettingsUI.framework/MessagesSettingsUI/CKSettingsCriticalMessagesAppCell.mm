@interface CKSettingsCriticalMessagesAppCell
- (CKSettingsCriticalMessagesAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation CKSettingsCriticalMessagesAppCell

- (CKSettingsCriticalMessagesAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = CKSettingsCriticalMessagesAppCell;
  v9 = [(PSTableCell *)&v15 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    detailTextLabel = [(CKSettingsCriticalMessagesAppCell *)v9 detailTextLabel];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [detailTextLabel setTextColor:lightGrayColor];

    v13 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
    [detailTextLabel setText:v13];
  }

  return v10;
}

@end