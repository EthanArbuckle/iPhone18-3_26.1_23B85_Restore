@interface SUUITrailersCell
- (CGRect)imageFrame;
- (SUUITrailersCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation SUUITrailersCell

- (SUUITrailersCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUITrailersCell;
  v3 = [(SUUITrailersCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(SUUITrailersCell *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];

  v6 = titleCopy;
  if (text != titleCopy)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_titleLabel;
        self->_titleLabel = v8;

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:1];
        v12 = self->_titleLabel;
        backgroundColor = [(SUUITrailersCell *)self backgroundColor];
        [(UILabel *)v12 setBackgroundColor:backgroundColor];

        [(SUUITrailersCell *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      setNeedsLayout = [(SUUITrailersCell *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    v6 = titleCopy;
  }

  MEMORY[0x2821F96F8](setNeedsLayout, v6);
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];

  v6 = subtitleCopy;
  if (text != subtitleCopy)
  {
    subtitleLabel = self->_subtitleLabel;
    if (subtitleCopy)
    {
      if (!subtitleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_subtitleLabel;
        self->_subtitleLabel = v8;

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
        v12 = self->_subtitleLabel;
        backgroundColor = [(SUUITrailersCell *)self backgroundColor];
        [(UILabel *)v12 setBackgroundColor:backgroundColor];

        [(SUUITrailersCell *)self addSubview:self->_subtitleLabel];
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:subtitleCopy];
      setNeedsLayout = [(SUUITrailersCell *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v14 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    v6 = subtitleCopy;
  }

  MEMORY[0x2821F96F8](setNeedsLayout, v6);
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  v5 = imageCopy;
  if (image != imageCopy)
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
    [(UIImageView *)self->_imageView sizeToFit];
    [(SUUITrailersCell *)self setNeedsLayout];
    v5 = imageCopy;
  }
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

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SUUITrailersCell;
  [(SUUITrailersCell *)&v28 layoutSubviews];
  [(SUUITrailersCell *)self bounds];
  v4 = v3;
  v6 = v5;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = 7.5;
  v10 = 10.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 10.0;
  }

  v11 = floor(v9);
  [(UIImageView *)self->_imageView frame];
  v13 = v12;
  v15 = v14;
  [(SUUITrailersCell *)self bounds];
  v17 = floor((v16 - v13) * 0.5);
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 15.0;
  }

  [(UIImageView *)self->_imageView setFrame:v17, v10, v13, v15];
  v29.origin.x = v17;
  v29.origin.y = v10;
  v29.size.width = v13;
  v29.size.height = v15;
  MaxY = CGRectGetMaxY(v29);
  [(UILabel *)self->_titleLabel sizeThatFits:v4, v6];
  v22 = v21;
  v24 = v23;
  [(UILabel *)self->_titleLabel setFrame:v11, MaxY, v21, v23];
  v30.origin.x = v11;
  v30.origin.y = MaxY;
  v30.size.width = v22;
  v30.size.height = v24;
  v25 = CGRectGetMaxY(v30);
  [(UILabel *)self->_subtitleLabel sizeThatFits:v4, v6];
  [(UILabel *)self->_subtitleLabel setFrame:v11, v25, v26, v27];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SUUITrailersCell;
  colorCopy = color;
  [(SUUITrailersCell *)&v5 setBackgroundColor:colorCopy];
  [(UIImageView *)self->_imageView setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:colorCopy];
}

- (void)prepareForReuse
{
  [(UIImageView *)self->_imageView setImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setText:0];
}

@end