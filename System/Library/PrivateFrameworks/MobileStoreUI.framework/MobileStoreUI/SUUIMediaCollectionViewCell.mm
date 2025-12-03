@interface SUUIMediaCollectionViewCell
- (SUUIEmbeddedMediaView)mediaView;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIMediaCollectionViewCell

- (SUUIEmbeddedMediaView)mediaView
{
  mediaView = self->_mediaView;
  if (!mediaView)
  {
    contentView = [(SUUIMediaCollectionViewCell *)self contentView];
    v5 = [SUUIEmbeddedMediaView alloc];
    [contentView bounds];
    v10 = [(SUUIEmbeddedMediaView *)v5 initWithFrame:v6 + self->_contentInset.left, v7 + self->_contentInset.top, v8 - (self->_contentInset.left + self->_contentInset.right), v9 - (self->_contentInset.top + self->_contentInset.bottom)];
    v11 = self->_mediaView;
    self->_mediaView = v10;

    v12 = self->_mediaView;
    backgroundColor = [(SUUIMediaCollectionViewCell *)self backgroundColor];
    [(SUUIEmbeddedMediaView *)v12 setBackgroundColor:backgroundColor];

    [contentView addSubview:self->_mediaView];
    mediaView = self->_mediaView;
  }

  return mediaView;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIMediaCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SUUIMediaCollectionViewCell;
  [(SUUICollectionViewCell *)&v9 layoutSubviews];
  mediaView = self->_mediaView;
  contentView = [(SUUIMediaCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SUUIEmbeddedMediaView *)mediaView setFrame:v5 + self->_contentInset.left, v6 + self->_contentInset.top, v7 - (self->_contentInset.left + self->_contentInset.right), v8 - (self->_contentInset.top + self->_contentInset.bottom)];
}

- (void)setBackgroundColor:(id)color
{
  mediaView = self->_mediaView;
  colorCopy = color;
  [(SUUIEmbeddedMediaView *)mediaView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIMediaCollectionViewCell;
  [(SUUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end