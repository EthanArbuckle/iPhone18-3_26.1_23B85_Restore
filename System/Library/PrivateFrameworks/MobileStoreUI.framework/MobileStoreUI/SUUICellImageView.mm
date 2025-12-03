@interface SUUICellImageView
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SUUICellImageView

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = SUUICellImageView;
  if ([(SUUICellImageView *)&v9 isHighlighted]!= highlighted)
  {
    if (highlightedCopy)
    {
      backgroundColor = [(SUUICellImageView *)self backgroundColor];
      cachedBackgroundColor = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = backgroundColor;

      clearColor = [MEMORY[0x277D75348] clearColor];
      [(SUUICellImageView *)self setBackgroundColor:clearColor];
    }

    else
    {
      [(SUUICellImageView *)self setBackgroundColor:self->_cachedBackgroundColor];
      clearColor = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = 0;
    }

    v8.receiver = self;
    v8.super_class = SUUICellImageView;
    [(SUUICellImageView *)&v8 setHighlighted:highlightedCopy];
  }
}

@end