@interface HeaderBottomEdgeDecoration
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)updateLayers;
@end

@implementation HeaderBottomEdgeDecoration

- (void)layoutSubviews
{
  v2 = self;
  sub_2153165BC();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(HeaderBottomEdgeDecoration *)v2 window];
  v4 = 1.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 screen];

    [v6 scale];
    v4 = v7;
  }

  v8 = *MEMORY[0x277D77260];

  v9 = 1.0 / v4;
  v10 = v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)updateLayers
{
  v2 = self;
  sub_215316848();
}

@end