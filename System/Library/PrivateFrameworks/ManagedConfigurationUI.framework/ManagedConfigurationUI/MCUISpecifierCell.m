@interface MCUISpecifierCell
- (id)_scriptingInfo;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation MCUISpecifierCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MCUISpecifierCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"MCUIPSExpiredKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [MEMORY[0x277D75348] DMCProfileRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  }
  v7 = ;
  v8 = [MEMORY[0x277D756E0] cellConfiguration];
  [MEMORY[0x277D032A8] updateConfiguration:v8 forSpecifier:v4 subtitleColor:v7];
  [(MCUISpecifierCell *)self setContentConfiguration:v8];
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
  v3 = [(MCUISpecifierCell *)&v9 _scriptingInfo];
  v4 = [(MCUISpecifierCell *)self textLabel];
  v5 = [v4 text];

  if (v5)
  {
    v6 = [(MCUISpecifierCell *)self textLabel];
    v7 = [v6 text];
    [v3 setObject:v7 forKey:@"ID"];
  }

  return v3;
}

@end