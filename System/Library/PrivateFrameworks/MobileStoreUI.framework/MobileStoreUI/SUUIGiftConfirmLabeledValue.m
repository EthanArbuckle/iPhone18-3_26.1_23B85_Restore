@interface SUUIGiftConfirmLabeledValue
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIGiftConfirmLabeledValue)initWithGiftConfirmLabelStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)setLabel:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation SUUIGiftConfirmLabeledValue

- (SUUIGiftConfirmLabeledValue)initWithGiftConfirmLabelStyle:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = SUUIGiftConfirmLabeledValue;
  v4 = [(SUUIGiftConfirmLabeledValue *)&v13 init];
  if (v4)
  {
    if (a3 == 2)
    {
      v5 = objc_alloc_init(SUUIGiftDashView);
      dashView = v4->_dashView;
      v4->_dashView = v5;

      v7 = v4->_dashView;
      v8 = [MEMORY[0x277D75348] clearColor];
      [(SUUIGiftDashView *)v7 setBackgroundColor:v8];

      v9 = v4->_dashView;
      v10 = [MEMORY[0x277D75348] labelColor];
      v11 = [v10 colorWithAlphaComponent:0.3];
      [(SUUIGiftDashView *)v9 setDashColor:v11];

      [(SUUIGiftDashView *)v4->_dashView setDashSize:1.0, 1.0];
      [(SUUIGiftDashView *)v4->_dashView setDashSpacing:4.0];
      [(SUUIGiftConfirmLabeledValue *)v4 addSubview:v4->_dashView];
    }

    v4->_style = a3;
  }

  return v4;
}

- (void)setLabel:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftConfirmLabeledValue *)self label];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    labelLabel = self->_labelLabel;
    if (v15)
    {
      if (!labelLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_labelLabel;
        self->_labelLabel = v6;

        v8 = self->_labelLabel;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_labelLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_labelLabel;
        v13 = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v12 setTextColor:v13];

        [(UILabel *)self->_labelLabel setTextAlignment:4];
        [(SUUIGiftConfirmLabeledValue *)self addSubview:self->_labelLabel];
        labelLabel = self->_labelLabel;
      }

      [(UILabel *)labelLabel setText:?];
      [(UILabel *)self->_labelLabel sizeToFit];
    }

    else
    {
      [(UILabel *)labelLabel removeFromSuperview];
      v14 = self->_labelLabel;
      self->_labelLabel = 0;
    }

    [(SUUIGiftConfirmLabeledValue *)self setNeedsLayout];
  }
}

- (void)setSubtitleLabel:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftConfirmLabeledValue *)self subtitleLabel];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    subtitleLabel = self->_subtitleLabel;
    if (v15)
    {
      if (!subtitleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_subtitleLabel;
        self->_subtitleLabel = v6;

        v8 = self->_subtitleLabel;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_subtitleLabel;
        v13 = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

        [(UILabel *)self->_subtitleLabel setTextAlignment:4];
        [(SUUIGiftConfirmLabeledValue *)self addSubview:self->_subtitleLabel];
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:?];
      [(UILabel *)self->_subtitleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v14 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(SUUIGiftConfirmLabeledValue *)self setNeedsLayout];
  }
}

- (void)setValue:(id)a3
{
  v20 = a3;
  v4 = [(SUUIGiftConfirmLabeledValue *)self label];
  if (v4 != v20 && ([v20 isEqualToString:v4] & 1) == 0)
  {
    valueLabel = self->_valueLabel;
    if (!v20)
    {
      [(UILabel *)valueLabel removeFromSuperview];
      v17 = self->_valueLabel;
      self->_valueLabel = 0;

LABEL_17:
      [(SUUIGiftConfirmLabeledValue *)self setNeedsLayout];
      goto LABEL_18;
    }

    if (valueLabel)
    {
LABEL_16:
      [(UILabel *)valueLabel setText:?];
      goto LABEL_17;
    }

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = self->_valueLabel;
    self->_valueLabel = v6;

    v8 = self->_valueLabel;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    v10 = self->_valueLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)v10 setFont:v11];

    v12 = self->_valueLabel;
    v13 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v12 setTextColor:v13];

    [(UILabel *)self->_valueLabel setTextAlignment:4];
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        v18 = [MEMORY[0x277D75418] currentDevice];
        v19 = [v18 userInterfaceIdiom];

        v15 = self->_valueLabel;
        if (v19 == 1)
        {
          v16 = 7;
        }

        else
        {
          v16 = 6;
        }
      }

      else
      {
        if (style != 2)
        {
LABEL_15:
          [(SUUIGiftConfirmLabeledValue *)self addSubview:self->_valueLabel];
          valueLabel = self->_valueLabel;
          goto LABEL_16;
        }

        v15 = self->_valueLabel;
        v16 = 1;
      }
    }

    else
    {
      v15 = self->_valueLabel;
      v16 = 2;
    }

    [(UILabel *)v15 setNumberOfLines:v16];
    goto LABEL_15;
  }

LABEL_18:
}

- (void)layoutSubviews
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  [(SUUIGiftConfirmLabeledValue *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  labelLabel = self->_labelLabel;
  v69 = v12;
  v13 = v12;
  v14 = v5;
  if (labelLabel)
  {
    [(UILabel *)labelLabel frame];
    v18 = v15;
    v19 = v16;
    v20 = v17;
    v21 = self->_labelLabel;
    if (v4)
    {
      [SUUICGRectHelpers rect:v6 withFlippedOriginXRelativeTo:v15, v16, v17, v6, v69, v8, v10];
    }

    else
    {
      v22 = v6;
    }

    [(UILabel *)v21 setFrame:v22];
    v71.origin.x = v6;
    v71.origin.y = v18;
    v71.size.width = v19;
    v71.size.height = v20;
    v14 = CGRectGetMaxX(v71) + 5.0;
    v72.origin.x = v6;
    v72.origin.y = v18;
    v72.size.width = v19;
    v72.size.height = v20;
    v13 = CGRectGetMaxY(v72) + 3.0;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    v68 = v13;
    v24 = v10;
    v25 = v8;
    [(UILabel *)subtitleLabel frame];
    v29 = v26;
    v30 = v27;
    v31 = v28;
    v32 = self->_subtitleLabel;
    v33 = v14;
    if (v4)
    {
      [SUUICGRectHelpers rect:v14 withFlippedOriginXRelativeTo:v26, v27, v28, v6, v69, v25, v24];
      v14 = v34;
    }

    [(UILabel *)v32 setFrame:v14];
    v73.origin.x = v33;
    v73.origin.y = v29;
    v73.size.width = v30;
    v73.size.height = v31;
    v14 = CGRectGetMaxX(v73) + 5.0;
    v8 = v25;
    v10 = v24;
    v13 = v68;
  }

  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel frame];
    v40 = v39;
    style = self->_style;
    if (style)
    {
      if (style == 1)
      {
        [(UILabel *)self->_valueLabel sizeThatFits:v8 - v6, v10 - v13];
        v47 = v48;
        v38 = v49;
        v40 = v13;
        v14 = v6;
      }

      else if (style == 2)
      {
        v42 = v10;
        v43 = v8;
        v44 = v8 + -5.0 - v14;
        [(UILabel *)self->_valueLabel sizeThatFits:v44, v42];
        v38 = v46;
        if (v45 >= v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = v45;
        }

        v8 = v43;
        v10 = v42;
        v14 = v8 - v47;
      }

      else
      {
        v47 = v37;
        v14 = v36;
      }
    }

    else
    {
      v47 = v8 - v14;
      [(UILabel *)self->_valueLabel sizeThatFits:v8 - v14, v10];
      v38 = v50;
    }

    v51 = self->_valueLabel;
    if (v4)
    {
      [SUUICGRectHelpers rect:v14 withFlippedOriginXRelativeTo:v40, v47, v38, v6, v69, v8, v10];
      v14 = v52;
      v40 = v53;
      v47 = v54;
    }

    [(UILabel *)v51 setFrame:v14, v40, v47, v38];
  }

  dashView = self->_dashView;
  if (dashView)
  {
    [(SUUIGiftDashView *)dashView frame];
    v56 = v10 + -1.0;
    if (v4)
    {
      v57 = self->_valueLabel;
      if (v57)
      {
        [(UILabel *)v57 frame];
        v6 = CGRectGetMaxX(v74) + 2.0;
      }

      v58 = self->_subtitleLabel;
      if (v58 || (v58 = self->_labelLabel) != 0)
      {
        [(UILabel *)v58 frame];
        v8 = v75.origin.x + -2.0 - v6;
        v56 = CGRectGetMaxY(v75) + -1.0 + -3.0;
      }
    }

    else
    {
      v59 = self->_subtitleLabel;
      if (v59 || (v59 = self->_labelLabel) != 0)
      {
        [(UILabel *)v59 frame];
        v60 = v8;
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        v6 = CGRectGetMaxX(v76) + 2.0;
        v77.origin.x = x;
        v8 = v60;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v56 = CGRectGetMaxY(v77) + -1.0 + -3.0;
      }

      v65 = self->_valueLabel;
      if (v65)
      {
        [(UILabel *)v65 frame];
        v8 = v66 + -2.0 - v6;
      }
    }

    v67 = self->_dashView;

    [(SUUIGiftDashView *)v67 setFrame:v6, v56, v8, 1.0];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  labelLabel = self->_labelLabel;
  if (!labelLabel)
  {
    height = a3.height;
    goto LABEL_5;
  }

  [(UILabel *)labelLabel frame:a3.width];
  height = v7;
  if ((self->_style | 2) != 2)
  {
LABEL_5:
    v9 = width;
    goto LABEL_6;
  }

  v9 = width - (v6 + 5.0);
LABEL_6:
  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel sizeThatFits:v9, 1.79769313e308];
    style = self->_style;
    switch(style)
    {
      case 2:
        goto LABEL_10;
      case 1:
        height = height + v11 + 3.0;
        break;
      case 0:
LABEL_10:
        if (height < v11)
        {
          height = v11;
        }

        break;
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

@end