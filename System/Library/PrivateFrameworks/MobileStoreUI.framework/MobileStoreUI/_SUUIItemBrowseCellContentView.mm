@interface _SUUIItemBrowseCellContentView
- (_SUUIItemBrowseCellContentView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setBackgroundColor:(id)color;
@end

@implementation _SUUIItemBrowseCellContentView

- (_SUUIItemBrowseCellContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SUUIItemBrowseCellContentView;
  v3 = [(_SUUIItemBrowseCellContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_SUUIItemBrowseCellContentView *)v3 setBackgroundColor:clearColor];

    [(_SUUIItemBrowseCellContentView *)v3 setContentMode:7];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  subtitleLabel = self->_subtitleLabel;
  [(UILabel *)subtitleLabel frame:rect.origin.x];
  [(UILabel *)subtitleLabel drawTextInRect:?];
  indexNumberLabel = self->_indexNumberLabel;
  [(UILabel *)indexNumberLabel frame];
  [(UILabel *)indexNumberLabel drawTextInRect:?];
  titleLabel = self->_titleLabel;
  [(UILabel *)titleLabel frame];
  [(UILabel *)titleLabel drawTextInRect:?];
  userRatingLabel = self->_userRatingLabel;
  [(UILabel *)userRatingLabel frame];
  [(UILabel *)userRatingLabel drawTextInRect:?];
  if (([(SUUICellImageView *)self->_userRatingImageView isHidden]& 1) == 0)
  {
    image = [(SUUICellImageView *)self->_userRatingImageView image];
    [(SUUICellImageView *)self->_userRatingImageView frame];
    [image drawInRect:?];
  }
}

- (void)setBackgroundColor:(id)color
{
  subtitleLabel = self->_subtitleLabel;
  colorCopy = color;
  [(UILabel *)subtitleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_indexNumberLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(SUUICellImageView *)self->_userRatingImageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_userRatingLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = _SUUIItemBrowseCellContentView;
  [(_SUUIItemBrowseCellContentView *)&v6 setBackgroundColor:colorCopy];
}

@end