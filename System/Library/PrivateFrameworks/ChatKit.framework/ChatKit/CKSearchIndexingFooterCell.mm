@interface CKSearchIndexingFooterCell
- (BOOL)titleLabelHidden;
- (CKSearchIndexingFooterCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (UIView)internalStateView;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setSubtitleString:(id)string;
- (void)setTitleLabelHidden:(BOOL)hidden;
- (void)setTitleString:(id)string;
- (void)updateInternalViewWithTaskMonitor:(id)monitor clientState:(id)state;
@end

@implementation CKSearchIndexingFooterCell

- (CKSearchIndexingFooterCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = CKSearchIndexingFooterCell;
  v3 = [(CKSearchIndexingFooterCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    v10 = +[CKUIBehavior sharedBehaviors];
    searchIndexingTitleFont = [v10 searchIndexingTitleFont];
    [v9 setFont:searchIndexingTitleFont];

    [v9 setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v9 setTextColor:labelColor];

    [v9 setNumberOfLines:0];
    [(CKSearchIndexingFooterCell *)v3 addSubview:v9];
    [(CKSearchIndexingFooterCell *)v3 setTitleLabel:v9];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    v14 = +[CKUIBehavior sharedBehaviors];
    searchIndexingSubtitleFont = [v14 searchIndexingSubtitleFont];
    [v13 setFont:searchIndexingSubtitleFont];

    [v13 setTextAlignment:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v13 setTextColor:secondaryLabelColor];

    [v13 setNumberOfLines:0];
    [(CKSearchIndexingFooterCell *)v3 addSubview:v13];
    internalStateView = [(CKSearchIndexingFooterCell *)v3 internalStateView];
    if (internalStateView)
    {
      [(CKSearchIndexingFooterCell *)v3 addSubview:internalStateView];
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
  _shouldReverseLayoutDirection = [(CKSearchIndexingFooterCell *)self _shouldReverseLayoutDirection];
  [(CKSearchIndexingFooterCell *)self safeAreaInsets];
  if (_shouldReverseLayoutDirection)
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
  titleLabel = [(CKSearchIndexingFooterCell *)self titleLabel];
  [titleLabel sizeThatFits:{v17, 1.79769313e308}];
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
  titleLabel2 = [(CKSearchIndexingFooterCell *)self titleLabel];
  [titleLabel2 setFrame:{v24, 20.0, v20, v22}];

  subtitleLabel = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{v17, 1.79769313e308}];
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
    searchIndexingSubtitleFont = [v34 searchIndexingSubtitleFont];
    [searchIndexingSubtitleFont capHeight];
    v32 = MaxY + v36;
  }

  subtitleLabel2 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [subtitleLabel2 setFrame:{v31, v32, v28, v49}];

  internalStateView = [(CKSearchIndexingFooterCell *)self internalStateView];
  v39 = internalStateView;
  if (internalStateView)
  {
    [internalStateView sizeThatFits:{v47, 1.79769313e308}];
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
    internalStateView2 = [(CKSearchIndexingFooterCell *)self internalStateView];
    [internalStateView2 setFrame:{v45, v49 + v32, v41, v43}];
  }
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
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
    titleLabel = [(CKSearchIndexingFooterCell *)self titleLabel];
    [titleLabel sizeThatFits:{v11, 1.79769313e308}];
    v15 = v14 + 0.0;

    v16 = +[CKUIBehavior sharedBehaviors];
    searchIndexingSubtitleFont = [v16 searchIndexingSubtitleFont];
    [searchIndexingSubtitleFont capHeight];
    v12 = v15 + v18;
  }

  subtitleLabel = [(CKSearchIndexingFooterCell *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{v11, 1.79769313e308}];
  v21 = v12 + v20;

  internalStateView = [(CKSearchIndexingFooterCell *)self internalStateView];
  [internalStateView sizeThatFits:{v11, 1.79769313e308}];
  v24 = v21 + v23;

  [attributesCopy setFrame:{x, y, width, v24 + 60.0}];

  return attributesCopy;
}

- (void)setTitleLabelHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  titleLabel = [(CKSearchIndexingFooterCell *)self titleLabel];
  [titleLabel setHidden:hiddenCopy];
}

- (BOOL)titleLabelHidden
{
  titleLabel = [(CKSearchIndexingFooterCell *)self titleLabel];
  isHidden = [titleLabel isHidden];

  return isHidden;
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_titleString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    titleString = self->_titleString;
    self->_titleString = v4;

    titleLabel = [(CKSearchIndexingFooterCell *)self titleLabel];
    [titleLabel setText:self->_titleString];

    [(CKSearchIndexingFooterCell *)self setNeedsLayout];
  }
}

- (void)setSubtitleString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_subtitleString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    subtitleString = self->_subtitleString;
    self->_subtitleString = v4;

    subtitleLabel = [(CKSearchIndexingFooterCell *)self subtitleLabel];
    [subtitleLabel setText:self->_subtitleString];

    subtitleLabel2 = [(CKSearchIndexingFooterCell *)self subtitleLabel];
    [subtitleLabel2 setHidden:{objc_msgSend(stringCopy, "length") == 0}];

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
  selfCopy = self;
  v3 = sub_190C67C50();
  if (v3)
  {
    v4 = v3;
    view = [v3 view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)updateInternalViewWithTaskMonitor:(id)monitor clientState:(id)state
{
  monitorCopy = monitor;
  stateCopy = state;
  selfCopy = self;
  sub_190C67E5C(monitorCopy, stateCopy);
}

@end