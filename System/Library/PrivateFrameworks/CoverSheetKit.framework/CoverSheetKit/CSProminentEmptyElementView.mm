@interface CSProminentEmptyElementView
- (CSProminentEmptyElementView)initWithContentView:(id)a3;
- (void)_layoutContentIfNeeded;
- (void)layoutSubviews;
@end

@implementation CSProminentEmptyElementView

- (CSProminentEmptyElementView)initWithContentView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSProminentEmptyElementView;
  v5 = [(CSProminentEmptyElementView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_contentView = v4;
    [(CSProminentEmptyElementView *)v5 addSubview:v4];
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