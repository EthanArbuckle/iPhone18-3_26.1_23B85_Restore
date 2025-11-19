@interface DOCTagListCellAppearance
- (DOCTagContainerAppearanceProviding)container;
- (NSDirectionalEdgeInsets)cellExternalMargins;
- (NSDirectionalEdgeInsets)cellInteriorLayoutMargins;
- (double)cellCornerRadius;
- (id)_init;
- (id)backgroundColorForTag:(id)a3 selected:(BOOL)a4;
- (id)checkmarkImageColorForTag:(id)a3;
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

- (id)checkmarkImageColorForTag:(id)a3
{
  v3 = [a3 tagColorIfNotClear];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D06260] nonClearNoneTagColor];
  }

  v6 = v5;

  return v6;
}

- (id)backgroundColorForTag:(id)a3 selected:(BOOL)a4
{
  if (a3 && a4)
  {
    v4 = [a3 tagBackgroundColor];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] labelColor];
    v4 = [v5 colorWithAlphaComponent:0.04];
  }

  return v4;
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