@interface GKRectShadowCell
- (void)awakeFromNib;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation GKRectShadowCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v3 awakeFromNib];
  [(GKRectShadowCell *)self setClipsToBounds:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    _gkSelectedCellBackgroundColor = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    _gkSelectedCellBackgroundColor = 0;
  }

  contentView = [(GKRectShadowCell *)self contentView];
  [contentView setBackgroundColor:_gkSelectedCellBackgroundColor];

  if (highlightedCopy)
  {
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v8 setSelected:?];
  layer = [(GKRectShadowCell *)self layer];
  [layer setBackgroundColor:0];

  if (selectedCopy)
  {
    _gkSelectedCellBackgroundColor = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    _gkSelectedCellBackgroundColor = 0;
  }

  contentView = [(GKRectShadowCell *)self contentView];
  [contentView setBackgroundColor:_gkSelectedCellBackgroundColor];

  if (selectedCopy)
  {
  }
}

@end