@interface SUUIRedeemResultMessageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
@end

@implementation SUUIRedeemResultMessageView

- (void)setMessage:(id)message
{
  messageCopy = message;
  message = [(SUUIRedeemResultMessageView *)self message];
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
        backgroundColor = [(SUUIRedeemResultMessageView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v12 = self->_messageLabel;
        v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
        [(UILabel *)v12 setTextColor:v13];

        [(SUUIRedeemResultMessageView *)self addSubview:self->_messageLabel];
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

    [(SUUIRedeemResultMessageView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIRedeemResultMessageView *)self title];
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
        backgroundColor = [(SUUIRedeemResultMessageView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:3];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        blackColor = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v12 setTextColor:blackColor];

        [(SUUIRedeemResultMessageView *)self addSubview:self->_titleLabel];
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

    [(SUUIRedeemResultMessageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIRedeemResultMessageView *)self bounds];
  v4 = v3;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 60.0;
  v8 = 30.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 30.0;
  }

  v9 = v4 - v7;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v8 = 15.0;
    }

    [(UILabel *)self->_titleLabel sizeThatFits:v9, 1.79769313e308];
    v14 = v13;
    [(UILabel *)self->_titleLabel setFrame:v8, 0.0, v9, v13];
    v23.origin.y = 0.0;
    v23.origin.x = v8;
    v23.size.width = v9;
    v23.size.height = v14;
    v15 = CGRectGetMaxY(v23) + 13.0;
  }

  else
  {
    v15 = 0.0;
  }

  messageLabel = self->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel frame];
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v19 = 30.0;
    }

    else
    {
      v19 = 15.0;
    }

    [(UILabel *)self->_messageLabel sizeThatFits:v9, 1.79769313e308];
    v21 = self->_messageLabel;

    [(UILabel *)v21 setFrame:v19, v15, v9, v20];
  }
}

- (void)setBackgroundColor:(id)color
{
  messageLabel = self->_messageLabel;
  colorCopy = color;
  [(UILabel *)messageLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIRedeemResultMessageView;
  [(SUUIRedeemResultMessageView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 60.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 30.0;
  }

  v8 = width - v7;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:width - v7, 1.79769313e308];
    v11 = v10 + 0.0;
  }

  else
  {
    v11 = 0.0;
  }

  messageLabel = self->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel sizeThatFits:v8, 1.79769313e308];
    v11 = v11 + v13;
  }

  if (self->_titleLabel && self->_messageLabel)
  {
    v11 = v11 + 13.0;
  }

  v14 = width;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

@end