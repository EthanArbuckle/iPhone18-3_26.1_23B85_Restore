@interface CSProminentEmptyElementView
- (CSProminentEmptyElementView)initWithContentView:(id)view;
- (void)_layoutContentIfNeeded;
- (void)layoutSubviews;
@end

@implementation CSProminentEmptyElementView

- (CSProminentEmptyElementView)initWithContentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = CSProminentEmptyElementView;
  v5 = [(CSProminentEmptyElementView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_contentView = viewCopy;
    [(CSProminentEmptyElementView *)v5 addSubview:viewCopy];
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSProminentEmptyElementView;
  [(CSProminentEmptyElementView *)&v3 layoutSubviews];
  [(CSProminentEmptyElementView *)self _layoutContentIfNeeded];
}

- (void)_layoutContentIfNeeded
{
  contentView = self->_contentView;
  if (contentView)
  {
    [(CSProminentEmptyElementView *)self bounds];

    [(UIView *)contentView setFrame:?];
  }
}

@end