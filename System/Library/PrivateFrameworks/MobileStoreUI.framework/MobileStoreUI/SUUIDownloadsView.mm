@interface SUUIDownloadsView
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setOverlayView:(id)view;
@end

@implementation SUUIDownloadsView

- (void)setContentView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = viewCopy;
  v6 = viewCopy;

  [(SUUIDownloadsView *)self insertSubview:self->_contentView atIndex:0];

  [(SUUIDownloadsView *)self setNeedsLayout];
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_overlayView removeFromSuperview];
  overlayView = self->_overlayView;
  self->_overlayView = viewCopy;
  v6 = viewCopy;

  [(SUUIDownloadsView *)self addSubview:self->_overlayView];

  [(SUUIDownloadsView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUUIDownloadsView;
  [(SUUIDownloadsView *)&v11 layoutSubviews];
  [(SUUIDownloadsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_overlayView setFrame:v4, v6, v8, v10];
}

@end