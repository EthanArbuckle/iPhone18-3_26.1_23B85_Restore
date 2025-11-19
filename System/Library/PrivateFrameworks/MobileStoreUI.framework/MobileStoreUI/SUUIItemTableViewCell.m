@interface SUUIItemTableViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SUUIItemTableViewCell

- (void)prepareForReuse
{
  v3 = [(SUUIItemTableViewCell *)self layout];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SUUIItemTableViewCell *)self layout];
  [v7 setHighlighted:v5];

  v8.receiver = self;
  v8.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v8 setHighlighted:v5 animated:v4];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SUUIItemTableViewCell *)self layout];
  [v7 setSelected:v5];

  v8.receiver = self;
  v8.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v8 setSelected:v5 animated:v4];
}

- (void)layoutSubviews
{
  v3 = [(SUUIItemTableViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SUUIItemTableViewCell;
  [(SUUITableViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([v3 frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    v11 = [(SUUIItemTableViewCell *)self layout];
    [v11 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(SUUIItemTableViewCell *)self layout];
  [v5 setBackgroundColor:v4];

  v6.receiver = self;
  v6.super_class = SUUIItemTableViewCell;
  [(SUUIItemTableViewCell *)&v6 setBackgroundColor:v4];
}

@end