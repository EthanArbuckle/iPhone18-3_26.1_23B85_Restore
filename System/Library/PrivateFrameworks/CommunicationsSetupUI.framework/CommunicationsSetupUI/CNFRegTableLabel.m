@interface CNFRegTableLabel
- (CNFRegTableLabel)initWithSpecifier:(id)a3;
- (double)_labelInset;
- (double)_topPadding;
- (double)preferredHeightForWidth:(double)a3;
- (void)_urlTapped:(id)a3;
- (void)clearSpecifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateLabelText;
@end

@implementation CNFRegTableLabel

- (CNFRegTableLabel)initWithSpecifier:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CNFRegTableLabel;
  v6 = [(CNFRegTableLabel *)&v16 init];
  if (v6)
  {
    v7 = +[CNFRegAppearanceController globalAppearanceController];
    [(CNFRegTableLabel *)v6 setContentMode:3];
    [(CNFRegTableLabel *)v6 setOpaque:0];
    v8 = [MEMORY[0x277D75348] clearColor];
    [(CNFRegTableLabel *)v6 setBackgroundColor:v8];

    objc_storeStrong(&v6->_specifier, a3);
    v9 = objc_alloc(MEMORY[0x277D756B8]);
    [(CNFRegTableLabel *)v6 frame];
    v10 = [v9 initWithFrame:?];
    label = v6->_label;
    v6->_label = v10;

    v12 = [v7 tableHeaderTextColor];
    [(UILabel *)v6->_label setTextColor:v12];

    [(UILabel *)v6->_label setNumberOfLines:0];
    [(UILabel *)v6->_label setLineBreakMode:0];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v6->_label setBackgroundColor:v13];

    v14 = [v7 tableHeaderTextShadowColor];
    [(UILabel *)v6->_label setShadowColor:v14];

    [v7 tableHeaderTextShadowOffset];
    [(UILabel *)v6->_label setShadowOffset:?];
    [(UILabel *)v6->_label setAutoresizingMask:18];
    [(CNFRegTableLabel *)v6 addSubview:v6->_label];
    [(CNFRegTableLabel *)v6 updateLabelText];
  }

  return v6;
}

- (void)dealloc
{
  [(CNFRegLearnMoreButton *)self->_urlButton removeTarget:self action:sel__handleUrlTapped_ forControlEvents:64];
  self->_cnfreg_tableView = 0;
  v3.receiver = self;
  v3.super_class = CNFRegTableLabel;
  [(CNFRegTableLabel *)&v3 dealloc];
}

- (void)clearSpecifier
{
  specifier = self->_specifier;
  self->_specifier = 0;
  MEMORY[0x2821F96F8]();
}

- (double)_labelInset
{
  PreferencesTableViewCellLeftPad();
  v3 = v2;
  PreferencesTableViewCellRightPad();
  return fmaxf(v3, v4);
}

- (double)_topPadding
{
  v2 = [(CNFRegTableLabel *)self isTopmostHeader];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 7.0;
  if (v4 == 1)
  {
    v5 = 5.0;
  }

  v6 = 17.0;
  if (v4 == 1)
  {
    v6 = 26.0;
  }

  if (v2)
  {
    return v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  v52[1] = *MEMORY[0x277D85DE8];
  [(CNFRegTableLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self->_cnfreg_tableView _backgroundInset];
  v12 = v11;
  [(CNFRegTableLabel *)self _labelInset];
  v14 = v12 + v13;
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  v54 = CGRectInset(v53, v14, 0.0);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v19 = CGRectGetWidth(v54);
  v20 = [(UILabel *)self->_label text];
  if (v20 && (v21 = v20, -[UILabel text](self->_label, "text"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 length], v22, v21, v23))
  {
    v51 = *MEMORY[0x277D740A8];
    v24 = [(UILabel *)self->_label font];
    v52[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    v26 = [(UILabel *)self->_label text];
    [v26 boundingRectWithSize:1 options:v25 attributes:0 context:{v19, 1.79769313e308}];
    v27 = y;
    v29 = v28;

    [(UILabel *)self->_label setTextAlignment:4];
    v30 = ceil(v29);
    y = v27;
    v55.origin.x = x;
    v55.origin.y = v27;
    v55.size.width = width;
    v55.size.height = height;
    if (v30 >= CGRectGetHeight(v55))
    {
      v30 = height;
      v32 = v27;
    }

    else
    {
      [(CNFRegTableLabel *)self _topPadding];
      v32 = v31;
    }

    v33 = x;
    v34 = width;
  }

  else
  {
    v33 = x;
    x = *MEMORY[0x277CBF3A0];
    v32 = *(MEMORY[0x277CBF3A0] + 8);
    v34 = *(MEMORY[0x277CBF3A0] + 16);
    v30 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [(UILabel *)self->_label setFrame:x, v32, v34, v30];
  urlButton = self->_urlButton;
  if (urlButton)
  {
    v48 = y;
    v49 = width;
    rect = height;
    [(CNFRegLearnMoreButton *)urlButton sizeToFit];
    v36 = [(CNFRegTableLabel *)self _labelTextAlignment];
    [(CNFRegLearnMoreButton *)self->_urlButton bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v56.origin.x = x;
    v56.origin.y = v32;
    v56.size.width = v34;
    v56.size.height = v30;
    v43 = CGRectGetMaxY(v56) + 5.0;
    if (v36 == 2)
    {
      v60.origin.x = v33;
      v60.origin.y = v48;
      v60.size.width = v49;
      v60.size.height = rect;
      MaxX = CGRectGetMaxX(v60);
      v61.origin.x = v38;
      v61.origin.y = v43;
      v61.size.width = v40;
      v61.size.height = v42;
      MinX = MaxX - CGRectGetWidth(v61);
    }

    else if (v36 == 1)
    {
      v58.origin.x = v33;
      v58.origin.y = v48;
      v58.size.width = v49;
      v58.size.height = rect;
      MidX = CGRectGetMidX(v58);
      v59.origin.x = v38;
      v59.origin.y = v43;
      v59.size.width = v40;
      v59.size.height = v42;
      MinX = MidX + CGRectGetWidth(v59) * -0.5;
    }

    else
    {
      if (v36)
      {
LABEL_16:
        [(CNFRegLearnMoreButton *)self->_urlButton setFrame:v38, v43, v40, v42];
        goto LABEL_17;
      }

      v57.origin.x = v33;
      v57.origin.y = v48;
      v57.size.width = v49;
      v57.size.height = rect;
      MinX = CGRectGetMinX(v57);
    }

    v38 = floor(MinX);
    goto LABEL_16;
  }

LABEL_17:
  v47 = *MEMORY[0x277D85DE8];
}

- (void)_urlTapped:(id)a3
{
  v3 = [(CNFRegTableLabel *)self _URLTarget];
  if (v3)
  {
    [*MEMORY[0x277D76620] openURL:v3 withCompletionHandler:0];
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateLabelText
{
  v3 = [(CNFRegTableLabel *)self _labelText];
  [(UILabel *)self->_label setText:v3];

  [(UILabel *)self->_label setTextAlignment:[(CNFRegTableLabel *)self _labelTextAlignment]];
  [(CNFRegLearnMoreButton *)self->_urlButton removeTarget:self action:sel__urlTapped_ forControlEvents:64];
  [(CNFRegLearnMoreButton *)self->_urlButton removeFromSuperview];
  urlButton = self->_urlButton;
  self->_urlButton = 0;

  v10 = [(CNFRegTableLabel *)self _URLText];
  v5 = [(CNFRegTableLabel *)self _URLTarget];
  v6 = v5;
  if (v10 && v5)
  {
    [(CNFRegTableLabel *)self setURLText:v10];
    [(CNFRegTableLabel *)self setURLTarget:v6];
    v7 = [CNFRegLearnMoreButton alloc];
    v8 = [(CNFRegLearnMoreButton *)v7 initWithFrame:1 style:v10 text:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v9 = self->_urlButton;
    self->_urlButton = v8;

    [(CNFRegLearnMoreButton *)self->_urlButton addTarget:self action:sel__urlTapped_ forControlEvents:64];
    [(CNFRegTableLabel *)self addSubview:self->_urlButton];
  }

  else
  {
    [(CNFRegTableLabel *)self setURLText:0];
    [(CNFRegTableLabel *)self setURLTarget:0];
  }

  [(CNFRegTableLabel *)self setNeedsLayout];
}

- (double)preferredHeightForWidth:(double)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a3 == 0.0)
  {
    v4 = 320.0;
  }

  else
  {
    v4 = a3;
  }

  v5 = MEMORY[0x277CBF3A8];
  cnfreg_tableView = self->_cnfreg_tableView;
  v7 = 0.0;
  if (cnfreg_tableView)
  {
    [(UITableView *)cnfreg_tableView _backgroundInset];
    v7 = v8;
  }

  v9 = *(v5 + 8);
  [(CNFRegTableLabel *)self _labelInset];
  v11 = v7 + v10;
  v12 = v11 + v11;
  v13 = v4 + v11 * -2.0;
  if (v4 >= v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [(UILabel *)self->_label text];
  if (v15)
  {
    v16 = v15;
    v17 = [(UILabel *)self->_label text];
    v18 = [v17 length];

    if (v18)
    {
      v30 = *MEMORY[0x277D740A8];
      v19 = [(UILabel *)self->_label font];
      v31[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

      v21 = [(UILabel *)self->_label text];
      [v21 boundingRectWithSize:1 options:v20 attributes:0 context:{v14, 1.79769313e308}];
      v9 = v22;
    }
  }

  if (v9 > 0.0)
  {
    [(CNFRegTableLabel *)self _topPadding];
    v24 = v9 + v23;
    [(CNFRegTableLabel *)self _bottomPadding];
    v9 = v24 + v25;
  }

  urlButton = self->_urlButton;
  if (urlButton)
  {
    [(CNFRegLearnMoreButton *)urlButton sizeToFit];
    [(CNFRegLearnMoreButton *)self->_urlButton sizeThatFits:v4, 1.79769313e308];
    v9 = v9 + v27 + 5.0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return ceil(v9);
}

@end