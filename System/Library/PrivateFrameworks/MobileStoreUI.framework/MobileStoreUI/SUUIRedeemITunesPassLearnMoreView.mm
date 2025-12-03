@interface SUUIRedeemITunesPassLearnMoreView
- (UIControl)button;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setButtonTitle:(id)title;
- (void)setExplanationString:(id)string;
- (void)setHeaderImage:(id)image;
@end

@implementation SUUIRedeemITunesPassLearnMoreView

- (UIControl)button
{
  button = self->_button;
  if (!button)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    v5 = self->_button;
    self->_button = v4;

    v6 = self->_button;
    backgroundColor = [(SUUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIButton *)v6 setBackgroundColor:backgroundColor];

    titleLabel = [(UIButton *)self->_button titleLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v9];

    [(SUUIRedeemITunesPassLearnMoreView *)self addSubview:self->_button];
    button = self->_button;
  }

  return button;
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  button = [(SUUIRedeemITunesPassLearnMoreView *)self button];
  [button setTitle:titleCopy forState:0];

  [(SUUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setExplanationString:(id)string
{
  stringCopy = string;
  explanationLabel = self->_explanationLabel;
  v14 = stringCopy;
  if (!explanationLabel)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_explanationLabel;
    self->_explanationLabel = v6;

    v8 = self->_explanationLabel;
    backgroundColor = [(SUUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UILabel *)v8 setBackgroundColor:backgroundColor];

    v10 = self->_explanationLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)self->_explanationLabel setNumberOfLines:0];
    [(UILabel *)self->_explanationLabel setTextAlignment:1];
    v12 = self->_explanationLabel;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)v12 setTextColor:v13];

    [(SUUIRedeemITunesPassLearnMoreView *)self addSubview:self->_explanationLabel];
    stringCopy = v14;
    explanationLabel = self->_explanationLabel;
  }

  [(UILabel *)explanationLabel setText:stringCopy];
  [(SUUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  headerImageView = self->_headerImageView;
  v10 = imageCopy;
  if (!headerImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    v7 = self->_headerImageView;
    self->_headerImageView = v6;

    v8 = self->_headerImageView;
    backgroundColor = [(SUUIRedeemITunesPassLearnMoreView *)self backgroundColor];
    [(UIImageView *)v8 setBackgroundColor:backgroundColor];

    [(SUUIRedeemITunesPassLearnMoreView *)self addSubview:self->_headerImageView];
    imageCopy = v10;
    headerImageView = self->_headerImageView;
  }

  [(UIImageView *)headerImageView setImage:imageCopy];
  [(SUUIRedeemITunesPassLearnMoreView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(SUUIRedeemITunesPassLearnMoreView *)self bounds];
  v32 = v3;
  v5 = v4;
  v6 = v4 + -20.0;
  v7 = v3 + -30.0;
  [(UIImageView *)self->_headerImageView frame];
  [(UIImageView *)self->_headerImageView sizeThatFits:v7, 1.79769313e308];
  v9 = v8;
  v11 = v10;
  [(UILabel *)self->_explanationLabel frame];
  [(UILabel *)self->_explanationLabel sizeThatFits:v7, 1.79769313e308];
  v13 = v12;
  v15 = v14;
  v30 = v14;
  [(UIButton *)self->_button frame];
  [(UIButton *)self->_button sizeThatFits:v7, 1.79769313e308];
  v31 = v16;
  v33 = v17;
  v18 = v11 + v15 + v17;
  *&v17 = fmin((v6 - v18) * 0.5, 40.0);
  v19 = floorf(*&v17);
  *&v18 = v18 + v19 + -7.0 + v19;
  *&v17 = (v32 - v9) * 0.5;
  v20 = floorf(*&v17);
  *&v18 = (v5 - ceilf(*&v18)) * 0.5;
  v21 = floorf(*&v18);
  [(UIImageView *)self->_headerImageView setFrame:v20, v21, v9, v11];
  v22 = v13;
  v23 = (v32 - v13) * 0.5;
  v24 = floorf(v23);
  v35.origin.x = v20;
  v35.origin.y = v21;
  v35.size.width = v9;
  v35.size.height = v11;
  v25 = CGRectGetMaxY(v35) + v19 + -7.0;
  [(UILabel *)self->_explanationLabel setFrame:v24, v25, v13, v30];
  v26 = (v32 - v31) * 0.5;
  v27 = floorf(v26);
  v36.origin.x = v24;
  v36.origin.y = v25;
  v36.size.width = v22;
  v36.size.height = v30;
  MaxY = CGRectGetMaxY(v36);
  button = self->_button;

  [(UIButton *)button setFrame:v27, MaxY + v19, v31, v33];
}

- (void)setBackgroundColor:(id)color
{
  button = self->_button;
  colorCopy = color;
  [(UIButton *)button setBackgroundColor:colorCopy];
  [(UILabel *)self->_explanationLabel setBackgroundColor:colorCopy];
  [(UIImageView *)self->_headerImageView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIRedeemITunesPassLearnMoreView;
  [(SUUIRedeemITunesPassLearnMoreView *)&v6 setBackgroundColor:colorCopy];
}

@end