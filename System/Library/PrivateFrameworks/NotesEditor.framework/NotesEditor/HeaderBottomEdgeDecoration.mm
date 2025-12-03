@interface HeaderBottomEdgeDecoration
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)updateLayers;
@end

@implementation HeaderBottomEdgeDecoration

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2153165BC();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  window = [(HeaderBottomEdgeDecoration *)selfCopy window];
  v4 = 1.0;
  if (window)
  {
    v5 = window;
    screen = [window screen];

    [screen scale];
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
  selfCopy = self;
  sub_215316848();
}

@end