@interface SUUIItemTableViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SUUIItemTableViewCell

- (void)prepareForReuse
{
  layout = [(SUUIItemTableViewCell *)self layout];
  [layout prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  layout = [(SUUIItemTableViewCell *)self layout];
  [layout setHighlighted:highlightedCopy];

  v8.receiver = self;
  v8.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v8 setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  layout = [(SUUIItemTableViewCell *)self layout];
  [layout setSelected:selectedCopy];

  v8.receiver = self;
  v8.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v8 setSelected:selectedCopy animated:animatedCopy];
}

- (void)layoutSubviews
{
  contentView = [(SUUIItemTableViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([contentView frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    layout = [(SUUIItemTableViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  layout = [(SUUIItemTableViewCell *)self layout];
  [layout setBackgroundColor:colorCopy];

  v6.receiver = self;
  v6.super_class = SUUIItemTableViewCell;
  [(SUUIItemTableViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end