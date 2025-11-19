@interface _CPUIBaseTableCell
+ (UIColor)disabledHighlightedColor;
+ (id)cellForTableView:(id)a3;
- (void)_updateTintColors;
@end

@implementation _CPUIBaseTableCell

- (void)_updateTintColors
{
  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledColor];
  }
  v3 = ;
  v4 = [(_CPUIBaseTableCell *)self textLabel];
  [v4 setTextColor:v3];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v5 = ;
  v6 = [(_CPUIBaseTableCell *)self textLabel];
  [v6 setHighlightedTextColor:v5];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemSecondaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledColor];
  }
  v7 = ;
  v8 = [(_CPUIBaseTableCell *)self detailTextLabel];
  [v8 setTextColor:v7];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v10 = ;
  v9 = [(_CPUIBaseTableCell *)self detailTextLabel];
  [v9 setHighlightedTextColor:v10];
}

+ (id)cellForTableView:(id)a3
{
  v4 = a3;
  v5 = [a1 identifier];
  v6 = [v4 dequeueReusableCellWithIdentifier:v5];

  if (!v6)
  {
    v6 = [[a1 alloc] initWithStyle:3 reuseIdentifier:v5];
    [v6 configureCell];
  }

  return v6;
}

+ (UIColor)disabledHighlightedColor
{
  v2 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  v3 = [v2 colorWithAlphaComponent:0.25];

  return v3;
}

@end