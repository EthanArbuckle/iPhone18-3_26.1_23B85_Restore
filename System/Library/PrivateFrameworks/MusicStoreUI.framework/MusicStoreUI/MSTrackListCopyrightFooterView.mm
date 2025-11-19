@interface MSTrackListCopyrightFooterView
- (CGSize)_textSize;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setText:(id)a3;
- (void)sizeToFit;
@end

@implementation MSTrackListCopyrightFooterView

- (void)dealloc
{
  self->_text = 0;
  v3.receiver = self;
  v3.super_class = MSTrackListCopyrightFooterView;
  [(MSTrackListCopyrightFooterView *)&v3 dealloc];
}

- (void)setText:(id)a3
{
  text = self->_text;
  if (text != a3)
  {

    self->_text = a3;
    self->_textSize = *MEMORY[0x277CBF3A8];

    [(MSTrackListCopyrightFooterView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(MSTrackListCopyrightFooterView *)self bounds:a3.origin.x];
  v5 = v4;
  [(MSTrackListCopyrightFooterView *)self _textSize];
  v7 = v6;
  v9 = v8;
  v10 = floor((v5 - v8) * 0.5);
  [objc_msgSend(MEMORY[0x277D75348] colorWithRed:0.603921569 green:0.603921569 blue:0.603921569 alpha:{1.0), "set"}];
  text = self->_text;
  v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];

  [(NSString *)text _legacy_drawInRect:v12 withFont:10.0, v10, v7, v9];
}

- (void)sizeToFit
{
  [(MSTrackListCopyrightFooterView *)self frame];
  if (self->_text)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    [(MSTrackListCopyrightFooterView *)self _textSize];
    v10 = fmax(v9 + 16.0, 44.0);

    [(MSTrackListCopyrightFooterView *)self setFrame:v6, v7, v8, v10];
  }
}

- (CGSize)_textSize
{
  p_textSize = &self->_textSize;
  width = self->_textSize.width;
  height = self->_textSize.height;
  if (self->_text)
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [(MSTrackListCopyrightFooterView *)self bounds];
      -[NSString _legacy_sizeWithFont:constrainedToSize:lineBreakMode:](self->_text, "_legacy_sizeWithFont:constrainedToSize:lineBreakMode:", [MEMORY[0x277D74300] systemFontOfSize:12.0], 4, v7 + -20.0, 1.79769313e308);
      p_textSize->width = width;
      p_textSize->height = height;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

@end