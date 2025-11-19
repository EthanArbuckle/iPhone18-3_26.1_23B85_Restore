@interface GKRectShadowCell
- (void)awakeFromNib;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation GKRectShadowCell

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v3 awakeFromNib];
  [(GKRectShadowCell *)self setClipsToBounds:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v7 setHighlighted:?];
  if (v3)
  {
    v5 = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(GKRectShadowCell *)self contentView];
  [v6 setBackgroundColor:v5];

  if (v3)
  {
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = GKRectShadowCell;
  [(GKRectShadowCell *)&v8 setSelected:?];
  v5 = [(GKRectShadowCell *)self layer];
  [v5 setBackgroundColor:0];

  if (v3)
  {
    v6 = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(GKRectShadowCell *)self contentView];
  [v7 setBackgroundColor:v6];

  if (v3)
  {
  }
}

@end