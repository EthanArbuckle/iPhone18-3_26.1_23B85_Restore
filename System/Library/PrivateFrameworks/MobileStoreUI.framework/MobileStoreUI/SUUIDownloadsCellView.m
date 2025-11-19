@interface SUUIDownloadsCellView
- (SUUIDownloadsCellView)init;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setButtonType:(int64_t)a3;
- (void)setImage:(id)a3;
- (void)setIsPad:(BOOL)a3;
- (void)setSubtitle:(id)a3;
@end

@implementation SUUIDownloadsCellView

- (SUUIDownloadsCellView)init
{
  v28.receiver = self;
  v28.super_class = SUUIDownloadsCellView;
  v2 = [(SUUIDownloadsCellView *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;

    [(SUUIDownloadsCellView *)v2 addSubview:v2->_titleLabel];
    [(SUUIDownloadsCellView *)v2 setAttributedTitle:0];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v2->_subtitleLabel;
    v2->_subtitleLabel = v5;

    v7 = v2->_subtitleLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v7 setFont:v8];

    v9 = v2->_subtitleLabel;
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v9 setTextColor:v10];

    [(SUUIDownloadsCellView *)v2 addSubview:v2->_subtitleLabel];
    [(SUUIDownloadsCellView *)v2 setSubtitle:0];
    v11 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v2->_imageView;
    v2->_imageView = v11;

    [(UIImageView *)v2->_imageView setContentMode:1];
    v13 = [(UIImageView *)v2->_imageView layer];
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [v13 setBorderColor:{objc_msgSend(v14, "CGColor")}];

    v15 = [(UIImageView *)v2->_imageView layer];
    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 scale];
    [v15 setBorderWidth:1.0 / v17];

    v18 = v2->_imageView;
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    [(UIImageView *)v18 setBackgroundColor:v19];

    [(SUUIDownloadsCellView *)v2 addSubview:v2->_imageView];
    v20 = [MEMORY[0x277D75220] buttonWithType:0];
    button = v2->_button;
    v2->_button = v20;

    [(UIButton *)v2->_button setUserInteractionEnabled:0];
    [(SUUIDownloadsCellView *)v2 addSubview:v2->_button];
    v22 = objc_alloc_init(MEMORY[0x277D75A30]);
    progressSlider = v2->_progressSlider;
    v2->_progressSlider = v22;

    [(UISlider *)v2->_progressSlider setUserInteractionEnabled:0];
    v24 = v2->_progressSlider;
    v25 = objc_alloc_init(MEMORY[0x277D755B8]);
    [(UISlider *)v24 setThumbImage:v25 forState:0];

    [(SUUIDownloadsCellView *)v2 addSubview:v2->_progressSlider];
    v26 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIDownloadsCellView *)v2 setBackgroundColor:v26];
  }

  return v2;
}

- (void)setAttributedTitle:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_attributedTitle != v5)
  {
    objc_storeStrong(&self->_attributedTitle, a3);
    titleLabel = self->_titleLabel;
    if (v5)
    {
      [(UILabel *)titleLabel setAttributedText:v5];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277CCA898]);
      v11 = *MEMORY[0x277D740A8];
      v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      v12[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v10 = [v7 initWithString:@" " attributes:v9];
      [(UILabel *)titleLabel setAttributedText:v10];
    }
  }
}

- (void)setSubtitle:(id)a3
{
  p_isa = a3;
  if (self->_subtitle != p_isa)
  {
    v7 = p_isa;
    objc_storeStrong(&self->_subtitle, a3);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = @" ";
    }

    [(UILabel *)self->_subtitleLabel setText:v6];
    p_isa = &v7->isa;
  }
}

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  v5 = v6;
  if (v4 != v6)
  {
    [(UIImageView *)self->_imageView setImage:v6];
    [(SUUIDownloadsCellView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setIsPad:(BOOL)a3
{
  if (self->_isPad != a3)
  {
    self->_isPad = a3;
    [(SUUIDownloadsCellView *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)a3
{
  if (self->_buttonType == a3)
  {
    return;
  }

  self->_buttonType = a3;
  if (a3 == 1)
  {
    v4 = @"DownloadsPauseIcon";
  }

  else
  {
    if (a3 != 2)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v4 = @"DownloadsResumeIcon";
  }

  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:v4 inBundle:v6];

LABEL_8:
  [(UIButton *)self->_button setHidden:self->_buttonType == 0];
  v8 = [(SUUIDownloadsCellView *)self tintColor];
  v9 = [v7 _flatImageWithColor:v8];

  [(UIButton *)self->_button setImage:v9 forState:0];
  [(SUUIDownloadsCellView *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUIDownloadsCellView;
  v4 = a3;
  [(SUUIDownloadsCellView *)&v5 setBackgroundColor:v4];
  [(UISlider *)self->_progressSlider setBackgroundColor:v4, v5.receiver, v5.super_class];
  [(UIButton *)self->_button setBackgroundColor:v4];
  [(UILabel *)self->_titleLabel setBackgroundColor:v4];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v4];
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = SUUIDownloadsCellView;
  [(SUUIDownloadsCellView *)&v50 layoutSubviews];
  [(SUUIDownloadsCellView *)self bounds];
  v7 = v6;
  if (self->_isPad)
  {
    v8 = 15.0;
  }

  else
  {
    v8 = 10.0;
  }

  v9 = v3 + v8;
  v49 = v4;
  v10 = v7;
  MaxX = CGRectGetMaxX(*&v3);
  if (self->_isPad)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = 10.0;
  }

  v13 = [(UIImageView *)self->_imageView image];

  if (v13)
  {
    v14 = [(UIImageView *)self->_imageView image];
    [v14 size];
    v16 = v15;
    v18 = v17;

    v19 = 44.0;
    if (self->_isPad)
    {
      v19 = 75.0;
    }

    v20 = v19 / v16;
    if (v19 / v16 >= v19 / v18)
    {
      v20 = v19 / v18;
    }

    v21 = v16 * v20;
    v22 = v18 * v20;
  }

  else
  {
    v19 = 44.0;
    if (self->_isPad)
    {
      v19 = 75.0;
    }

    v21 = v19;
    v22 = v19;
  }

  v23 = MaxX - v12;
  v24 = (v7 - v22) * 0.5;
  v25 = v9 + (v19 - v21) * 0.5;
  [(UIImageView *)self->_imageView setFrame:roundf(v25), roundf(v24)];
  isPad = self->_isPad;
  v27 = [(UIButton *)self->_button imageForState:0];

  if (v27)
  {
    [(UIButton *)self->_button sizeToFit];
    [(UIButton *)self->_button frame];
    v29 = v28;
    v31 = v30;
    v32 = (v7 - v30) * 0.5;
    v33 = roundf(v32);
    v34 = v23 - v28;
    [(UIButton *)self->_button setFrame:v34, v33];
    v51.origin.x = v34;
    v51.origin.y = v33;
    v51.size.width = v29;
    v51.size.height = v31;
    MinX = CGRectGetMinX(v51);
    v36 = 10.0;
    if (self->_isPad)
    {
      v36 = 15.0;
    }

    v23 = MinX - v36;
  }

  v37 = 54.0;
  if (isPad)
  {
    v37 = 90.0;
  }

  v38 = v9 + v37;
  v39 = v23 - (v9 + v37);
  [(UILabel *)self->_titleLabel sizeThatFits:v39, v7];
  v41 = v40;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v39, v7];
  v43 = v42;
  v48 = v42;
  [(UISlider *)self->_progressSlider sizeThatFits:v39, v7];
  v45 = v44;
  *&v44 = (v7 - (v43 + v41 + -4.0 + -3.0 + 10.0 + v44 + 10.0 + -3.0 + -3.0)) * 0.5;
  v46 = v49 + roundf(*&v44) + -4.0;
  [(UILabel *)self->_titleLabel setFrame:v38, v46, v39, v41];
  v52.origin.x = v38;
  v52.origin.y = v46;
  v52.size.width = v39;
  v52.size.height = v41;
  v47 = CGRectGetMaxY(v52) + -3.0 + 10.0;
  [(UISlider *)self->_progressSlider setFrame:v38, v47, v39, v45];
  v53.origin.x = v38;
  v53.origin.y = v47;
  v53.size.width = v39;
  v53.size.height = v45;
  [(UILabel *)self->_subtitleLabel setFrame:v38, CGRectGetMaxY(v53) + 10.0 + -3.0, v39, v48];
}

@end