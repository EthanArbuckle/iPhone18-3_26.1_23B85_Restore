@interface HKTitledIconHeaderView
- (CGSize)_sizeThatFitsLabel:(id)a3 containerSize:(CGSize)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HKTitledIconHeaderView)initWithFrame:(CGRect)a3;
- (id)_healthIconImage;
- (void)_positionSubtitleLabel;
- (void)_updateFont;
- (void)layoutSubviews;
- (void)setCentersSubtitle:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageTint:(id)a3;
- (void)setLayoutMarginsWithTableView:(id)a3;
- (void)setPrefersLargeTitle:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKTitledIconHeaderView

- (HKTitledIconHeaderView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HKTitledIconHeaderView;
  v3 = [(HKTitledIconHeaderView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v4;

    v6 = [(HKTitledIconHeaderView *)v3 _healthIconImage];
    [(UIImageView *)v3->_iconImageView setImage:v6];

    [(UIImageView *)v3->_iconImageView sizeToFit];
    [(HKTitledIconHeaderView *)v3 addSubview:v3->_iconImageView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v9];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    LODWORD(v10) = 1.0;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v10];
    objc_storeStrong(&v3->_titleTextStyle, *MEMORY[0x1E69DDDB8]);
    [(HKTitledIconHeaderView *)v3 addSubview:v3->_titleLabel];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v11;

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v13];

    [(HKTitledIconHeaderView *)v3 setCentersSubtitle:1];
    [(UILabel *)v3->_subtitleLabel setHidden:1];
    [(HKTitledIconHeaderView *)v3 addSubview:v3->_subtitleLabel];
    [(HKTitledIconHeaderView *)v3 _updateFont];
  }

  return v3;
}

- (void)_updateFont
{
  v3 = [(HKTitledIconHeaderView *)self _titleFont];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_subtitleLabel setFont:v4];
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    [(UILabel *)self->_titleLabel setText:v6];
    LODWORD(v5) = 1045220557;
    [(UILabel *)self->_titleLabel _setHyphenationFactor:v5];
    [(UILabel *)self->_titleLabel sizeToFit];
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, a3);
    [(UILabel *)self->_subtitleLabel setHidden:[(NSString *)self->_subtitle length]== 0];
    [(UILabel *)self->_subtitleLabel setText:v5];
    [(UILabel *)self->_subtitleLabel sizeToFit];
  }
}

- (void)setCentersSubtitle:(BOOL)a3
{
  self->_centersSubtitle = a3;
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  [(UILabel *)self->_subtitleLabel setTextAlignment:v3];
}

- (void)setPrefersLargeTitle:(BOOL)a3
{
  v4 = MEMORY[0x1E69DDD58];
  if (!a3)
  {
    v4 = MEMORY[0x1E69DDDB8];
  }

  objc_storeStrong(&self->_titleTextStyle, *v4);

  [(HKTitledIconHeaderView *)self _updateFont];
}

- (void)setIconImage:(id)a3
{
  [(UIImageView *)self->_iconImageView setImage:a3];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView sizeToFit];
}

- (void)setIconImageTint:(id)a3
{
  v4 = [a3 copy];
  [(UIImageView *)self->_iconImageView setTintColor:v4];
}

- (void)setLayoutMarginsWithTableView:(id)a3
{
  [a3 separatorInset];

  [(HKTitledIconHeaderView *)self setLayoutMargins:0.0, v4, 0.0, v4];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = HKTitledIconHeaderView;
  [(HKTitledIconHeaderView *)&v21 layoutSubviews];
  [(HKTitledIconHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_iconImageView frame];
  UIRectCenteredXInRect();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIImageView *)self->_iconImageView setFrame:?];
  [(HKTitledIconHeaderView *)self _sizeThatFitsLabel:self->_titleLabel containerSize:v4, v6];
  [(UILabel *)self->_titleLabel frame];
  UIRectCenteredXInRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22.origin.y = 30.0;
  v22.origin.x = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  MaxY = CGRectGetMaxY(v22);
  [(HKTitledIconHeaderView *)self _verticalOffsetForTitle];
  [(UILabel *)self->_titleLabel setFrame:v14, MaxY + v20, v16, v18];
  [(HKTitledIconHeaderView *)self _positionSubtitleLabel];
}

- (void)_positionSubtitleLabel
{
  if ([(UILabel *)self->_subtitleLabel isHidden])
  {
    v4 = *MEMORY[0x1E695F058];
    v3 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(UILabel *)self->_titleLabel frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(HKTitledIconHeaderView *)self bounds];
    v16 = v15;
    [(HKTitledIconHeaderView *)self _sizeThatFitsLabel:self->_subtitleLabel containerSize:v15, v17];
    v5 = v18;
    v6 = v19;
    [(UILabel *)self->_subtitleLabel frame];
    if ([(HKTitledIconHeaderView *)self centersSubtitle])
    {
      v4 = (v16 - v5) * 0.5;
    }

    else if ([(HKTitledIconHeaderView *)self _shouldReverseLayoutDirection])
    {
      [(HKTitledIconHeaderView *)self layoutMargins];
      v4 = v16 - v5 - v20;
    }

    else
    {
      [(HKTitledIconHeaderView *)self layoutMargins];
      v4 = v21;
    }

    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    MaxY = CGRectGetMaxY(v26);
    [(HKTitledIconHeaderView *)self _verticalOffsetForSubtitle];
    v3 = MaxY + v23;
  }

  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setFrame:v4, v3, v5, v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImageView *)self->_iconImageView frame];
  v7 = v6 + 31.0;
  [(HKTitledIconHeaderView *)self _verticalOffsetForTitle];
  v9 = v8 + v7;
  [(HKTitledIconHeaderView *)self _sizeThatFitsLabel:self->_titleLabel containerSize:width, height];
  v11 = v9 + v10;
  if (([(UILabel *)self->_subtitleLabel isHidden]& 1) == 0)
  {
    [(HKTitledIconHeaderView *)self _verticalOffsetForSubtitle];
    v13 = v11 + v12;
    [(HKTitledIconHeaderView *)self _sizeThatFitsLabel:self->_subtitleLabel containerSize:width, height];
    v11 = v13 + v14;
  }

  v15 = width;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKTitledIconHeaderView;
  [(HKTitledIconHeaderView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKTitledIconHeaderView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKTitledIconHeaderView *)self _updateFont];
      [(HKTitledIconHeaderView *)self setNeedsLayout];
    }
  }
}

- (id)_healthIconImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = HKHealthUIFrameworkBundle();
  v4 = [v2 imageNamed:@"healthauthorization_icon_large" inBundle:v3];

  return v4;
}

- (CGSize)_sizeThatFitsLabel:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(HKTitledIconHeaderView *)self layoutMargins];
  [v7 sizeThatFits:{width - (v8 + v9), height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end