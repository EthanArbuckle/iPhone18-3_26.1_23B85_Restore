@interface SUUICellImageView
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SUUICellImageView

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SUUICellImageView;
  if ([(SUUICellImageView *)&v9 isHighlighted]!= a3)
  {
    if (v3)
    {
      v5 = [(SUUICellImageView *)self backgroundColor];
      cachedBackgroundColor = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = v5;

      v7 = [MEMORY[0x277D75348] clearColor];
      [(SUUICellImageView *)self setBackgroundColor:v7];
    }

    else
    {
      [(SUUICellImageView *)self setBackgroundColor:self->_cachedBackgroundColor];
      v7 = self->_cachedBackgroundColor;
      self->_cachedBackgroundColor = 0;
    }

    v8.receiver = self;
    v8.super_class = SUUICellImageView;
    [(SUUICellImageView *)&v8 setHighlighted:v3];
  }
}

@end