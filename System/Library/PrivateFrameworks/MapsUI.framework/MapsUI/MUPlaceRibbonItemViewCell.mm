@interface MUPlaceRibbonItemViewCell
- (MUPlaceRibbonItemViewCell)initWithFrame:(CGRect)frame;
- (void)_setupItemView;
@end

@implementation MUPlaceRibbonItemViewCell

- (void)_setupItemView
{
  v3 = [MUPlaceRibbonItemView alloc];
  v4 = [(MUPlaceRibbonItemView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  itemView = self->_itemView;
  self->_itemView = v4;

  contentView = [(MUPlaceRibbonItemViewCell *)self contentView];
  [contentView addSubview:self->_itemView];

  v7 = [MUEdgeLayout alloc];
  v8 = self->_itemView;
  contentView2 = [(MUPlaceRibbonItemViewCell *)self contentView];
  v9 = [(MUEdgeLayout *)v7 initWithItem:v8 container:contentView2];
  [(MUConstraintLayout *)v9 activate];
}

- (MUPlaceRibbonItemViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceRibbonItemViewCell;
  v3 = [(MUPlaceRibbonItemViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceRibbonItemViewCell *)v3 _setupItemView];
  }

  return v4;
}

@end