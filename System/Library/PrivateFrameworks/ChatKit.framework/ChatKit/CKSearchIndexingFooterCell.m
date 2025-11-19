@interface CKSearchIndexingFooterCell
- (BOOL)titleLabelHidden;
- (CKSearchIndexingFooterCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (UIView)internalStateView;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setSubtitleString:(id)a3;
- (void)setTitleLabelHidden:(BOOL)a3;
- (void)setTitleString:(id)a3;
- (void)updateInternalViewWithTaskMonitor:(id)a3 clientState:(id)a4;
@end

@implementation CKSearchIndexingFooterCell

- (CKSearchIndexingFooterCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = CKSearchIndexingFooterCell;
  v3 = [(CKSearchIndexingFooterCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 searchIndexingTitleFont];
    [v9 setFont:v11];

    [v9 setTextAlignment:1];
    v12 = [MEMORY[0x1E69DC888] labelColor];
    [v9 setTextColor:v12];

    [v9 setNumberOfLines:0];
    [(CKSearchIndexingFooterCell *)v3 addSubview:v9];
    [(CKSearchIndexingFooterCell *)v3 setTitleLabel:v9];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v14 searchIndexingSubtitleFont];
    [v13 setFont:v15];

    [v13 setTextAlignment:1];
    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v13 setTextColor:v16];

    [v13 setNumberOfLines:0];
    [(CKSearchIndexingFooterCell *)v3 addSubview:v13];
    v17 = [(CKSearchIndexingFooterCell *)v3 internalStateView];
    if (v17)
    {
      [(CKSearchIndexingFooterCell *)v3 addSubview:v17];
    }

    [(CKSearchIndexingFooterCell *)v3 setSubtitleLabel:v13];
  }

  return v3;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = CKSearchIndexingFooterCell;
  [(CKSearchIndexingFooterCell *)&v50 layoutSubviews];
  [(CKSearchIndexingFooterCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(CKSearchIndexingFooterCell *)self _shouldReverseLayoutDirection];
  [(CKSearchIndexingFooterCell *)self safeAreaInsets];
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v4 - v10;
  v12 = 0.0;
  if (([(CKSearchIndexingFooterCell *)self _shouldReverseLayoutDirection]& 1) == 0)
  {
    [(CKSearchIndexingFooterCell *)self safeAreaInsets];
    v12 = v13;
  }

  [(CKSearchIndexingFooterCell *)self bounds];
  v51.origin.x = v12;
  v51.size.width = v11;
  v51.size.height = v6;
  Width = CGRectGetWidth(v51);
  [(CKSearchIndexingFooterCell *)self marginInsets];
  v17 = Width - (v15 + v16);
  v18 = [(CKSearchIndexingFooterCell *)self titleLabel];
  [v18 sizeThatFits:{v17, 1.79769313e308}];
  v20 = v19;
  v22 = v21;

  if (CKMainScreenScale_once_25 != -1)
  {
    [CKSearchIndexingFooterCell layoutSubviews];
  }

  v23 = *&CKMainScreenScale_sMainScreenScale_25;
  if (*&CKMainScreenScale_sMainScreenScale_25 == 0.0)
  {
    v23 = 1.0;
  }

  v24 = floor((v12 + (v11 - v20) * 0.5) * v23) / v23;
  v25 = [(CKSearchIndexingFooterCell *)self titleLabel];
  [v25 setFrame:{v24, 20.0, v20, v22}];

  v26 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [v26 sizeThatFits:{v17, 1.79769313e308}];
  v28 = v27;
  v49 = v29;

  v47 = v17;
  if (CKMainScreenScale_once_25 != -1)
  {
    [CKSearchIndexingFooterCell layoutSubviews];
  }

  v30 = *&CKMainScreenScale_sMainScreenScale_25;
  if (*&CKMainScreenScale_sMainScreenScale_25 == 0.0)
  {
    v30 = 1.0;
  }

  v48 = v11;
  v31 = floor((v12 + (v11 - v28) * 0.5) * v30) / v30;
  v32 = 20.0;
  if (![(CKSearchIndexingFooterCell *)self titleLabelHidden])
  {
    v52.origin.y = 20.0;
    v52.origin.x = v24;
    v52.size.width = v20;
    v52.size.height = v22;
    MaxY = CGRectGetMaxY(v52);
    v34 = +[CKUIBehavior sharedBehaviors];
    v35 = [v34 searchIndexingSubtitleFont];
    [v35 capHeight];
    v32 = MaxY + v36;
  }

  v37 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [v37 setFrame:{v31, v32, v28, v49}];

  v38 = [(CKSearchIndexingFooterCell *)self internalStateView];
  v39 = v38;
  if (v38)
  {
    [v38 sizeThatFits:{v47, 1.79769313e308}];
    v41 = v40;
    v43 = v42;
    if (CKMainScreenScale_once_25 != -1)
    {
      [CKSearchIndexingFooterCell layoutSubviews];
    }

    v44 = *&CKMainScreenScale_sMainScreenScale_25;
    if (*&CKMainScreenScale_sMainScreenScale_25 == 0.0)
    {
      v44 = 1.0;
    }

    v45 = floor((v12 + (v48 - v41) * 0.5) * v44) / v44;
    v46 = [(CKSearchIndexingFooterCell *)self internalStateView];
    [v46 setFrame:{v45, v49 + v32, v41, v43}];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  v8 = CGRectGetWidth(v27);
  [(CKSearchIndexingFooterCell *)self marginInsets];
  v11 = v8 - (v9 + v10);
  if ([(CKSearchIndexingFooterCell *)self titleLabelHidden])
  {
    v12 = 0.0;
  }

  else
  {
    v13 = [(CKSearchIndexingFooterCell *)self titleLabel];
    [v13 sizeThatFits:{v11, 1.79769313e308}];
    v15 = v14 + 0.0;

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 searchIndexingSubtitleFont];
    [v17 capHeight];
    v12 = v15 + v18;
  }

  v19 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [v19 sizeThatFits:{v11, 1.79769313e308}];
  v21 = v12 + v20;

  v22 = [(CKSearchIndexingFooterCell *)self internalStateView];
  [v22 sizeThatFits:{v11, 1.79769313e308}];
  v24 = v21 + v23;

  [v4 setFrame:{x, y, width, v24 + 60.0}];

  return v4;
}

- (void)setTitleLabelHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKSearchIndexingFooterCell *)self titleLabel];
  [v4 setHidden:v3];
}

- (BOOL)titleLabelHidden
{
  v2 = [(CKSearchIndexingFooterCell *)self titleLabel];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setTitleString:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_titleString isEqualToString:?])
  {
    v4 = [v7 copy];
    titleString = self->_titleString;
    self->_titleString = v4;

    v6 = [(CKSearchIndexingFooterCell *)self titleLabel];
    [v6 setText:self->_titleString];

    [(CKSearchIndexingFooterCell *)self setNeedsLayout];
  }
}

- (void)setSubtitleString:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_subtitleString isEqualToString:?])
  {
    v4 = [v8 copy];
    subtitleString = self->_subtitleString;
    self->_subtitleString = v4;

    v6 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
    [v6 setText:self->_subtitleString];

    v7 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
    [v7 setHidden:{objc_msgSend(v8, "length") == 0}];

    [(CKSearchIndexingFooterCell *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)internalStateView
{
  v2 = self;
  v3 = sub_190C67C50();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateInternalViewWithTaskMonitor:(id)a3 clientState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190C67E5C(v6, v7);
}

@end