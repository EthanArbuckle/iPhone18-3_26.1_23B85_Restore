@interface _CPUIBaseTableCell
+ (UIColor)disabledHighlightedColor;
+ (id)cellForTableView:(id)view;
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
  textLabel = [(_CPUIBaseTableCell *)self textLabel];
  [textLabel setTextColor:v3];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v5 = ;
  textLabel2 = [(_CPUIBaseTableCell *)self textLabel];
  [textLabel2 setHighlightedTextColor:v5];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemSecondaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledColor];
  }
  v7 = ;
  detailTextLabel = [(_CPUIBaseTableCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v7];

  if ([(_CPUIBaseTableCell *)self itemEnabled])
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    +[_CPUIBaseTableCell disabledHighlightedColor];
  }
  v10 = ;
  detailTextLabel2 = [(_CPUIBaseTableCell *)self detailTextLabel];
  [detailTextLabel2 setHighlightedTextColor:v10];
}

+ (id)cellForTableView:(id)view
{
  viewCopy = view;
  identifier = [self identifier];
  v6 = [viewCopy dequeueReusableCellWithIdentifier:identifier];

  if (!v6)
  {
    v6 = [[self alloc] initWithStyle:3 reuseIdentifier:identifier];
    [v6 configureCell];
  }

  return v6;
}

+ (UIColor)disabledHighlightedColor
{
  _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  v3 = [_carSystemFocusLabelColor colorWithAlphaComponent:0.25];

  return v3;
}

@end