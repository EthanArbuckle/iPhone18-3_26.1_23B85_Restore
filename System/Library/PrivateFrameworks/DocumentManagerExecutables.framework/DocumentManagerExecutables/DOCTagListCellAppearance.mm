@interface DOCTagListCellAppearance
- (DOCTagContainerAppearanceProviding)container;
- (NSDirectionalEdgeInsets)cellExternalMargins;
- (NSDirectionalEdgeInsets)cellInteriorLayoutMargins;
- (double)cellCornerRadius;
- (id)_init;
- (id)backgroundColorForTag:(id)tag selected:(BOOL)selected;
- (id)checkmarkImageColorForTag:(id)tag;
@end

@implementation DOCTagListCellAppearance

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DOCTagListCellAppearance;
  return [(DOCTagListCellAppearance *)&v3 init];
}

- (DOCTagContainerAppearanceProviding)container
{
  v2 = [[DOCTagPickerPanelAppearance alloc] initWithTopMargin:18.0 bottomMargin:10.0 maxHeight:428.0];

  return v2;
}

- (id)checkmarkImageColorForTag:(id)tag
{
  tagColorIfNotClear = [tag tagColorIfNotClear];
  v4 = tagColorIfNotClear;
  if (tagColorIfNotClear)
  {
    nonClearNoneTagColor = tagColorIfNotClear;
  }

  else
  {
    nonClearNoneTagColor = [MEMORY[0x277D06260] nonClearNoneTagColor];
  }

  v6 = nonClearNoneTagColor;

  return v6;
}

- (id)backgroundColorForTag:(id)tag selected:(BOOL)selected
{
  if (tag && selected)
  {
    tagBackgroundColor = [tag tagBackgroundColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    tagBackgroundColor = [labelColor colorWithAlphaComponent:0.04];
  }

  return tagBackgroundColor;
}

- (NSDirectionalEdgeInsets)cellExternalMargins
{
  v2 = 0.0;
  v3 = 15.0;
  v4 = 7.0;
  v5 = 15.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)cellInteriorLayoutMargins
{
  v2 = 0.0;
  v3 = 13.0;
  v4 = 0.0;
  v5 = 14.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)cellCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 3.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

@end