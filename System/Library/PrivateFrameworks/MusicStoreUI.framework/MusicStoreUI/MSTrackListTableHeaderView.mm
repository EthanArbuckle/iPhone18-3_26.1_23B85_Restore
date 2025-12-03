@interface MSTrackListTableHeaderView
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setTitle:(id)title;
- (void)sizeToFit;
@end

@implementation MSTrackListTableHeaderView

- (void)dealloc
{
  self->_title = 0;
  v3.receiver = self;
  v3.super_class = MSTrackListTableHeaderView;
  [(MSTrackListTableHeaderView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  [(MSTrackListTableHeaderView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  if (self->_title)
  {
    v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
    width = self->_titleSize.width;
    height = self->_titleSize.height;
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [(NSString *)self->_title _legacy_sizeWithFont:v8];
      height = v12;
      self->_titleSize.width = width;
      self->_titleSize.height = v12;
    }

    if (width >= v5 + -16.0)
    {
      v13 = v5 + -16.0;
    }

    else
    {
      v13 = width;
    }

    [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.462745098 alpha:{1.0), "set"}];
    [(NSString *)self->_title _legacy_drawInRect:v8 withFont:floor((v5 - v13) * 0.5), 13.0, v13, height];
  }

  [MSGetTrackListBorderColor() set];
  v15 = 0;
  v16 = 1.0;
  v17 = v5;

  v14 = v7 + -1.0;
  UIRectFill(*&v15);
}

- (void)sizeToFit
{
  [(MSTrackListTableHeaderView *)self frame];

  [(MSTrackListTableHeaderView *)self setFrame:?];
}

- (void)setTitle:(id)title
{
  title = self->_title;
  if (title != title)
  {

    self->_title = title;
    self->_titleSize = *MEMORY[0x277CBF3A8];

    [(MSTrackListTableHeaderView *)self setNeedsDisplay];
  }
}

@end