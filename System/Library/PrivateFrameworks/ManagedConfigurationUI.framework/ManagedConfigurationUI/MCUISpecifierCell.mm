@interface MCUISpecifierCell
- (id)_scriptingInfo;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation MCUISpecifierCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = MCUISpecifierCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"MCUIPSExpiredKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [MEMORY[0x277D75348] DMCProfileRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  }
  v7 = ;
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  [MEMORY[0x277D032A8] updateConfiguration:cellConfiguration forSpecifier:specifierCopy subtitleColor:v7];
  [(MCUISpecifierCell *)self setContentConfiguration:cellConfiguration];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MCUISpecifierCell;
  [(PSTableCell *)&v3 prepareForReuse];
  [(MCUISpecifierCell *)self setContentConfiguration:0];
}

- (id)_scriptingInfo
{
  v9.receiver = self;
  v9.super_class = MCUISpecifierCell;
  _scriptingInfo = [(MCUISpecifierCell *)&v9 _scriptingInfo];
  textLabel = [(MCUISpecifierCell *)self textLabel];
  text = [textLabel text];

  if (text)
  {
    textLabel2 = [(MCUISpecifierCell *)self textLabel];
    text2 = [textLabel2 text];
    [_scriptingInfo setObject:text2 forKey:@"ID"];
  }

  return _scriptingInfo;
}

@end