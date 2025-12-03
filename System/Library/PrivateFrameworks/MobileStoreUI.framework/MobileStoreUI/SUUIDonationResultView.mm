@interface SUUIDonationResultView
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation SUUIDonationResultView

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  if (image != imageCopy)
  {
    imageView = self->_imageView;
    if (imageCopy)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        v9 = self->_imageView;
        backgroundColor = [(SUUIDonationResultView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:backgroundColor];

        [(SUUIDonationResultView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:?];
      [(UIImageView *)self->_imageView sizeToFit];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v11 = self->_imageView;
      self->_imageView = 0;
    }

    setNeedsLayout = [(SUUIDonationResultView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  message = [(SUUIDonationResultView *)self message];
  if (message != messageCopy && ([messageCopy isEqualToString:message] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (messageCopy)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        backgroundColor = [(SUUIDonationResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v12 = self->_messageLabel;
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:secondaryLabelColor];

        [(SUUIDonationResultView *)self addSubview:self->_messageLabel];
        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:?];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v14 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SUUIDonationResultView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIDonationResultView *)self title];
  if (title != titleCopy && ([titleCopy isEqualToString:title] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        backgroundColor = [(SUUIDonationResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        labelColor = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v12 setTextColor:labelColor];

        [(SUUIDonationResultView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIDonationResultView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIDonationResultView *)self bounds];
  v4 = v3;
  v36 = v5;
  v6 = v3 + -60.0;
  [(UIImageView *)self->_imageView frame];
  v8 = v7;
  v10 = v9;
  v11 = (v4 - v7) * 0.5;
  v12 = floorf(v11);
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v6, 1.79769313e308];
  v14 = v13;
  [(UILabel *)self->_messageLabel frame];
  [(UILabel *)self->_messageLabel sizeThatFits:v6, 1.79769313e308];
  v16 = v15;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v19 = 8.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v19 = 46.0;
  }

  v20 = v14 + v10 + v19;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v23 = 12.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = 10.0;
  }

  v24 = (v36 - (v16 + v20 + v23)) * 0.5;
  v25 = floorf(v24);
  [(UIImageView *)self->_imageView setFrame:v12, v25, v8, v10];
  v38.origin.x = v12;
  v38.origin.y = v25;
  v38.size.width = v8;
  v38.size.height = v10;
  MaxY = CGRectGetMaxY(v38);
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v29 = 8.0;
  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v29 = 46.0;
  }

  v30 = MaxY + v29;
  [(UILabel *)self->_titleLabel setFrame:30.0, v30, v6, v14];
  v39.origin.x = 30.0;
  v39.origin.y = v30;
  v39.size.width = v6;
  v39.size.height = v14;
  v31 = CGRectGetMaxY(v39);
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  v34 = 10.0;
  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v34 = 12.0;
  }

  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setFrame:30.0, v31 + v34, v6, v16];
}

@end