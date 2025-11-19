@interface DOCTagInfoCollectionAppearance
- (NSDirectionalEdgeInsets)cellContentInsets;
- (double)cellCornerRadius;
- (double)horizontalTagSpacing;
- (double)tagToLabelSpacing;
- (double)verticalTagSpacing;
- (id)_init;
@end

@implementation DOCTagInfoCollectionAppearance

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DOCTagInfoCollectionAppearance;
  return [(DOCTagInfoCollectionAppearance *)&v3 init];
}

- (double)horizontalTagSpacing
{
  v2 = [MEMORY[0x277D75520] defaultMetrics];
  v3 = _UISolariumEnabled();
  v4 = 3.0;
  if (v3)
  {
    v4 = 8.0;
  }

  [v2 scaledValueForValue:v4];
  v6 = v5;

  return v6;
}

- (double)verticalTagSpacing
{
  v2 = _UISolariumEnabled();
  result = 3.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (double)tagToLabelSpacing
{
  v2 = [MEMORY[0x277D75520] defaultMetrics];
  v3 = _UISolariumEnabled();
  v4 = 4.0;
  if (v3)
  {
    v4 = 6.0;
  }

  [v2 scaledValueForValue:v4];
  v6 = v5;

  return v6;
}

- (double)cellCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 3.0;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

- (NSDirectionalEdgeInsets)cellContentInsets
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 4.0;
  }

  if (v2)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 2.0;
  }

  v5 = [MEMORY[0x277D75520] defaultMetrics];
  [v5 scaledValueForValue:v3];
  v7 = v6;

  v8 = [MEMORY[0x277D75520] defaultMetrics];
  [v8 scaledValueForValue:v3];
  v10 = v9;

  v11 = v4;
  v12 = v7;
  v13 = v4;
  v14 = v10;
  result.trailing = v14;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

@end