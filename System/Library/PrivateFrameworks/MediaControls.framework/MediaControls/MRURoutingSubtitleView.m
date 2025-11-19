@interface MRURoutingSubtitleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRURoutingSubtitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIcon:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setStylingProvider:(id)a3;
- (void)setText:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRURoutingSubtitleView

- (MRURoutingSubtitleView)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MRURoutingSubtitleView;
  v3 = [(MRURoutingSubtitleView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[MRUEqualizerView alloc] initWithNumberOfBars:4 width:2.0 spacing:1.0];
    equalizerView = v3->_equalizerView;
    v3->_equalizerView = v4;

    [(MRURoutingSubtitleView *)v3 addSubview:v3->_equalizerView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v6;

    [(MRURoutingSubtitleView *)v3 addSubview:v3->_iconImageView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v8;

    [(UILabel *)v3->_textLabel setNumberOfLines:1];
    [(MRURoutingSubtitleView *)v3 addSubview:v3->_textLabel];
    v17[0] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v11 = [(MRURoutingSubtitleView *)v3 registerForTraitChanges:v10 withAction:sel_updateVisualStyling];

    v16 = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v13 = [(MRURoutingSubtitleView *)v3 registerForTraitChanges:v12 withAction:sel_updateContentSizeCategory];

    [(MRURoutingSubtitleView *)v3 updateContentSizeCategory];
    [(MRURoutingSubtitleView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = MRURoutingSubtitleView;
  [(MRURoutingSubtitleView *)&v44 layoutSubviews];
  [(MRURoutingSubtitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UILabel *)self->_textLabel font];
  [v11 descender];
  UIRoundToViewScale();
  v13 = v12;

  v14 = [(UILabel *)self->_textLabel font];
  [v14 capHeight];
  UIRoundToViewScale();
  v16 = v15;

  [(MRUEqualizerView *)self->_equalizerView sizeThatFits:v8, v10];
  v18 = v17;
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  v20 = v13 + CGRectGetMaxY(v46) - v16;
  [(MRURoutingSubtitleView *)self bounds];
  v40 = v20;
  v41 = MinX;
  v42 = v18;
  v43 = v16;
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUEqualizerView *)self->_equalizerView setFrame:?];
  if ([(UIImage *)self->_icon isSymbolImage])
  {
    [(UIImageView *)self->_iconImageView sizeThatFits:v8, v10];
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v25 = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
    [v25 pointSize];
    v22 = v26;
    v27 = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
    [v27 pointSize];
    v24 = v28;
  }

  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  v29 = CGRectGetMinX(v47);
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  v30 = (CGRectGetMaxY(v48) - v24) * 0.5;
  [(UIImageView *)self->_iconImageView setFrame:v29, v30, v22, v24];
  state = self->_state;
  if ((state - 1) < 2)
  {
    v32 = v42;
    v33 = v43;
    v35 = v40;
    v34 = v41;
LABEL_8:
    CGRectGetWidth(*&v34);
    UIRectInset();
    v4 = v36;
    v6 = v37;
    v8 = v38;
    v10 = v39;
    goto LABEL_9;
  }

  if (state == 3)
  {
    v34 = v29;
    v35 = v30;
    v32 = v22;
    v33 = v24;
    goto LABEL_8;
  }

LABEL_9:
  [(UILabel *)self->_textLabel sizeThatFits:v8, v10, *&v40, *&v41, *&v42, *&v43];
  MRUSizeCeilToViewScale(self);
  v49.origin.x = v4;
  v49.origin.y = v6;
  v49.size.width = v8;
  v49.size.height = v10;
  CGRectGetMinX(v49);
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  CGRectGetMinY(v50);
  v51.origin.x = v4;
  v51.origin.y = v6;
  v51.size.width = v8;
  v51.size.height = v10;
  CGRectGetWidth(v51);
  [(MRURoutingSubtitleView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UILabel *)self->_textLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [(UILabel *)self->_textLabel font:a3.width];
  [v4 lineHeight];
  UIRoundToViewScale();
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setText:(id)a3
{
  objc_storeStrong(&self->_text, a3);
  v5 = a3;
  [(UILabel *)self->_textLabel setText:v5];

  [(MRURoutingSubtitleView *)self setNeedsLayout];
}

- (void)setIcon:(id)a3
{
  objc_storeStrong(&self->_icon, a3);
  v5 = a3;
  [(UIImageView *)self->_iconImageView setImage:self->_icon];
  if ([(UIImage *)self->_icon isSymbolImage])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [(UIImageView *)self->_iconImageView setContentMode:v6];

  [(MRURoutingSubtitleView *)self updateVisualStyling];

  [(MRURoutingSubtitleView *)self setNeedsLayout];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(MRURoutingSubtitleView *)self updateVisibility];

    [(MRURoutingSubtitleView *)self setNeedsLayout];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRURoutingSubtitleView *)self updateVisualStyling];
    [(MRUEqualizerView *)self->_equalizerView setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)prepareForReuse
{
  [(UILabel *)self->_textLabel setText:0];

  [(MRURoutingSubtitleView *)self setState:0];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  textLabel = self->_textLabel;
  v5 = [(MRURoutingSubtitleView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:textLabel traitCollection:v5];

  v6 = self->_stylingProvider;
  v7 = [(UIImage *)self->_icon isSymbolImage];
  iconImageView = self->_iconImageView;
  v9 = [(MRURoutingSubtitleView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:v7 toView:iconImageView traitCollection:v9];
}

- (void)updateContentSizeCategory
{
  v3 = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
  [(UILabel *)self->_textLabel setFont:v3];

  v4 = MEMORY[0x1E69DCAD8];
  v6 = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
  v5 = [v4 configurationWithFont:v6 scale:-1];
  [(UIImageView *)self->_iconImageView setPreferredSymbolConfiguration:v5];
}

- (void)updateVisibility
{
  state = self->_state;
  v4 = 0.0;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      v5 = 0;
      v6 = 1;
      v4 = 1.0;
      goto LABEL_12;
    }

    v5 = 0;
    goto LABEL_11;
  }

  if (state == 2)
  {
    v5 = 1;
    v4 = 1.0;
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (state != 3)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
LABEL_12:
  [(MRUEqualizerView *)self->_equalizerView setAlpha:v4];
  [(MRUEqualizerView *)self->_equalizerView setAnimating:v5];
  iconImageView = self->_iconImageView;

  [(UIImageView *)iconImageView setHidden:v6];
}

@end