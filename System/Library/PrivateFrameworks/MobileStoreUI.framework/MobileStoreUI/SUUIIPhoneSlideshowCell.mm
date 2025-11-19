@interface SUUIIPhoneSlideshowCell
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (SUUIIPhoneSlideshowCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setVideo:(BOOL)a3;
@end

@implementation SUUIIPhoneSlideshowCell

- (SUUIIPhoneSlideshowCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUIIPhoneSlideshowCell;
  v3 = [(SUUIIPhoneSlideshowCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:1];
    v6 = [(SUUIIPhoneSlideshowCell *)v3 contentView];
    [v6 addSubview:v3->_imageView];
  }

  return v3;
}

- (CGRect)imageFrame
{
  [(UIImageView *)self->_imageView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  v5 = v6;
  if (v4 != v6)
  {
    [(UIImageView *)self->_imageView setImage:v6];
    [(SUUIIPhoneSlideshowCell *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setImageSize:(CGSize)a3
{
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    self->_imageSize = a3;
    [(SUUIIPhoneSlideshowCell *)self setNeedsLayout];
  }
}

- (void)setVideo:(BOOL)a3
{
  playIcon = self->_playIcon;
  if ((((playIcon == 0) ^ a3) & 1) == 0)
  {
    v5 = a3;
    [(UIImageView *)playIcon removeFromSuperview];
    v6 = self->_playIcon;
    self->_playIcon = 0;

    if (v5)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = MEMORY[0x277D755B8];
      if ([(SUUIIPhoneSlideshowCell *)self isHighlighted])
      {
        v8 = @"PlayControlPressed";
      }

      else
      {
        v8 = @"PlayControl";
      }

      v9 = [v7 imageNamed:v8 inBundle:v13];
      v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
      v11 = self->_playIcon;
      self->_playIcon = v10;

      v12 = [(SUUIIPhoneSlideshowCell *)self contentView];
      [v12 addSubview:self->_playIcon];

      [(SUUIIPhoneSlideshowCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SUUIIPhoneSlideshowCell;
  [(SUUIIPhoneSlideshowCell *)&v9 setHighlighted:?];
  if (self->_playIcon)
  {
    v5 = MEMORY[0x277D755B8];
    if (v3)
    {
      v6 = @"PlayControlPressed";
    }

    else
    {
      v6 = @"PlayControl";
    }

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v5 imageNamed:v6 inBundle:v7];

    [(UIImageView *)self->_playIcon setImage:v8];
    [(SUUIIPhoneSlideshowCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SUUIIPhoneSlideshowCell;
  [(SUUIIPhoneSlideshowCell *)&v19 layoutSubviews];
  v3 = [(SUUIIPhoneSlideshowCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  imageView = self->_imageView;
  if (imageView)
  {
    width = self->_imageSize.width;
    height = self->_imageSize.height;
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      v12 = [(UIImageView *)imageView image];
      [v12 size];
      width = v13;
      height = v14;

      imageView = self->_imageView;
    }

    v15 = (v5 - fmin(width, v5)) * 0.5;
    v16 = (v7 - fmin(height, v7)) * 0.5;
    [(UIImageView *)imageView setFrame:roundf(v15), roundf(v16)];
  }

  playIcon = self->_playIcon;
  if (playIcon)
  {
    [(UIImageView *)playIcon sizeToFit];
    [(UIImageView *)self->_playIcon frame];
    v18 = self->_playIcon;
    [(SUUIIPhoneSlideshowCell *)self center];
    [(UIImageView *)v18 setCenter:?];
    [(SUUIIPhoneSlideshowCell *)self bringSubviewToFront:self->_playIcon];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end