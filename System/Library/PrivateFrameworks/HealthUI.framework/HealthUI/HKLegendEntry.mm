@interface HKLegendEntry
+ (id)legendEntryWithTitle:(id)title dotColor:(id)color innerDotColor:(id)dotColor;
+ (id)legendEntryWithTitle:(id)title icon:(id)icon iconTint:(id)tint;
+ (id)legendEntryWithTitle:(id)title labelColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (HKLegendEntry)initWithTitle:(id)title dotColor:(id)color innerDotColor:(id)dotColor labelColor:(id)labelColor icon:(id)icon iconTint:(id)tint;
@end

@implementation HKLegendEntry

+ (id)legendEntryWithTitle:(id)title dotColor:(id)color innerDotColor:(id)dotColor
{
  dotColorCopy = dotColor;
  colorCopy = color;
  titleCopy = title;
  v10 = [[HKLegendEntry alloc] initWithTitle:titleCopy dotColor:colorCopy innerDotColor:dotColorCopy labelColor:0 icon:0 iconTint:0];

  return v10;
}

+ (id)legendEntryWithTitle:(id)title labelColor:(id)color
{
  colorCopy = color;
  titleCopy = title;
  v7 = [[HKLegendEntry alloc] initWithTitle:titleCopy dotColor:0 innerDotColor:0 labelColor:colorCopy icon:0 iconTint:0];

  return v7;
}

+ (id)legendEntryWithTitle:(id)title icon:(id)icon iconTint:(id)tint
{
  tintCopy = tint;
  iconCopy = icon;
  titleCopy = title;
  v10 = [[HKLegendEntry alloc] initWithTitle:titleCopy dotColor:0 innerDotColor:0 labelColor:0 icon:iconCopy iconTint:tintCopy];

  return v10;
}

- (HKLegendEntry)initWithTitle:(id)title dotColor:(id)color innerDotColor:(id)dotColor labelColor:(id)labelColor icon:(id)icon iconTint:(id)tint
{
  titleCopy = title;
  colorCopy = color;
  dotColorCopy = dotColor;
  labelColorCopy = labelColor;
  iconCopy = icon;
  tintCopy = tint;
  v23.receiver = self;
  v23.super_class = HKLegendEntry;
  v20 = [(HKLegendEntry *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(HKLegendEntry *)v20 setTitle:titleCopy];
    [(HKLegendEntry *)v21 setDotColor:colorCopy];
    [(HKLegendEntry *)v21 setInnerDotColor:dotColorCopy];
    [(HKLegendEntry *)v21 setLabelColor:labelColorCopy];
    [(HKLegendEntry *)v21 setIcon:iconCopy];
    [(HKLegendEntry *)v21 setIconTint:tintCopy];
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  title = [(HKLegendEntry *)self title];
  title2 = [equalCopy title];
  if (title == title2)
  {
    v10 = 0;
  }

  else
  {
    title3 = [(HKLegendEntry *)self title];
    title4 = [equalCopy title];
    v9 = [title3 isEqual:title4];

    v10 = v9 ^ 1;
  }

  dotColor = [(HKLegendEntry *)self dotColor];
  dotColor2 = [equalCopy dotColor];
  if (dotColor == dotColor2)
  {
    v16 = 0;
  }

  else
  {
    dotColor3 = [(HKLegendEntry *)self dotColor];
    dotColor4 = [equalCopy dotColor];
    v15 = [dotColor3 isEqual:dotColor4];

    v16 = v15 ^ 1;
  }

  labelColor = [(HKLegendEntry *)self labelColor];
  labelColor2 = [equalCopy labelColor];
  if (labelColor == labelColor2)
  {
    v21 = 1;
  }

  else
  {
    labelColor3 = [(HKLegendEntry *)self labelColor];
    labelColor4 = [equalCopy labelColor];
    v21 = [labelColor3 isEqual:labelColor4];
  }

  icon = [(HKLegendEntry *)self icon];
  icon2 = [equalCopy icon];

  if ((v10 | v16))
  {
    v24 = 0;
  }

  else if (icon == icon2)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end