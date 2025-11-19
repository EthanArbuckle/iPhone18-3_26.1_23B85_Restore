@interface SUUIDonationResultView
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIDonationResultView

- (void)setImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  if (v4 != v12)
  {
    imageView = self->_imageView;
    if (v12)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        v9 = self->_imageView;
        v10 = [(SUUIDonationResultView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

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

    v5 = [(SUUIDonationResultView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setMessage:(id)a3
{
  v15 = a3;
  v4 = [(SUUIDonationResultView *)self message];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (v15)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        v9 = [(SUUIDonationResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v12 = self->_messageLabel;
        v13 = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

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

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(SUUIDonationResultView *)self title];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SUUIDonationResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        v13 = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v12 setTextColor:v13];

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
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = 8.0;
  if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v19 = 46.0;
  }

  v20 = v14 + v10 + v19;
  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  v23 = 12.0;
  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v27 = [MEMORY[0x277D75418] currentDevice];
  v28 = [v27 userInterfaceIdiom];

  v29 = 8.0;
  if ((v28 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v32 = [MEMORY[0x277D75418] currentDevice];
  v33 = [v32 userInterfaceIdiom];

  v34 = 10.0;
  if ((v33 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v34 = 12.0;
  }

  messageLabel = self->_messageLabel;

  [(UILabel *)messageLabel setFrame:30.0, v31 + v34, v6, v16];
}

@end