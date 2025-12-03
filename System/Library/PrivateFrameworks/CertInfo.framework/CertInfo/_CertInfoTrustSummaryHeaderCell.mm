@interface _CertInfoTrustSummaryHeaderCell
- (NSString)trustSubtitle;
- (NSString)trustTitle;
- (_CertInfoActionButton)actionButton;
- (_CertInfoTrustSummaryHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)rowHeight;
- (id)_subtitleLabel;
- (id)_titleLabel;
- (id)_trustedLabel;
- (void)_layoutSubviewsWithActionButtonSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setExpired:(BOOL)expired;
- (void)setTrustSubtitle:(id)subtitle;
- (void)setTrustTitle:(id)title;
@end

@implementation _CertInfoTrustSummaryHeaderCell

- (_CertInfoTrustSummaryHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = _CertInfoTrustSummaryHeaderCell;
  v4 = [(_CertInfoTrustSummaryHeaderCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    imageView = [(_CertInfoTrustSummaryHeaderCell *)v4 imageView];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = v8;

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"profile-icon" inBundle:v11];
    v13 = [v12 _applicationIconImageForFormat:2 precomposed:1 scale:v9];

    [imageView setImage:v13];
    [imageView sizeToFit];
    [(_CertInfoTrustSummaryHeaderCell *)v5 setAutoresizesSubviews:0];
  }

  return v5;
}

- (_CertInfoActionButton)actionButton
{
  actionButton = self->_actionButton;
  if (!actionButton)
  {
    v4 = [[_CertInfoActionButton alloc] initWithTitle:0 isDestructive:0];
    v5 = self->_actionButton;
    self->_actionButton = v4;

    [(_CertInfoActionButton *)self->_actionButton setHidden:1];
    contentView = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [contentView addSubview:self->_actionButton];

    actionButton = self->_actionButton;
  }

  return actionButton;
}

- (void)setTrustTitle:(id)title
{
  titleCopy = title;
  _titleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  [_titleLabel setText:titleCopy];

  [_titleLabel sizeToFit];
}

- (NSString)trustTitle
{
  _titleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  text = [_titleLabel text];

  return text;
}

- (void)setTrustSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  _subtitleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  [_subtitleLabel setText:subtitleCopy];

  [_subtitleLabel sizeToFit];
}

- (NSString)trustSubtitle
{
  _subtitleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  text = [_subtitleLabel text];

  return text;
}

- (void)setExpired:(BOOL)expired
{
  _subtitleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  if (expired)
  {
    [MEMORY[0x277D75348] redColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v4 = ;
  [_subtitleLabel setTextColor:v4];
}

- (double)rowHeight
{
  imageView = [(_CertInfoTrustSummaryHeaderCell *)self imageView];
  [imageView frame];
  v4 = v3 + 5.0 + 6.0;

  return v4;
}

- (void)layoutSubviews
{
  actionButton = [(_CertInfoTrustSummaryHeaderCell *)self actionButton];
  [actionButton sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;
  v7 = v6;

  [(_CertInfoTrustSummaryHeaderCell *)self _layoutSubviewsWithActionButtonSize:v5, v7];
}

- (void)_layoutSubviewsWithActionButtonSize:(CGSize)size
{
  rect_24 = size.height;
  width = size.width;
  v73.receiver = self;
  v73.super_class = _CertInfoTrustSummaryHeaderCell;
  [(_CertInfoTrustSummaryHeaderCell *)&v73 layoutSubviews];
  imageView = [(_CertInfoTrustSummaryHeaderCell *)self imageView];
  _trustedLabel = [(_CertInfoTrustSummaryHeaderCell *)self _trustedLabel];
  contentView = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
  [contentView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [imageView frame];
  v16 = v15;
  v18 = v17;
  [_trustedLabel frame];
  rect = v19;
  v71 = v20;
  v72 = v21;
  v70 = v22;
  [imageView setFrame:{5.0, 5.0, v16, v18}];
  v74.origin.x = 5.0;
  v74.origin.y = 5.0;
  v74.size.width = v16;
  v74.size.height = v18;
  v23 = CGRectGetMaxX(v74) + 10.0;
  v61 = v10;
  v62 = v8;
  v75.origin.x = v8;
  v75.origin.y = v10;
  v60 = v12;
  v75.size.width = v12;
  v24 = v14;
  v75.size.height = v14;
  v25 = CGRectGetMaxX(v75) + -20.0;
  _titleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  [_titleLabel frame];
  v28 = v27;
  v30 = v29;
  v76.origin.x = 5.0;
  v76.origin.y = 5.0;
  v76.size.width = v16;
  v76.size.height = v18;
  MinY = CGRectGetMinY(v76);
  text = [_titleLabel text];
  v65 = v25;
  if (text)
  {
    font = [_titleLabel font];
    [text _legacy_sizeWithFont:font forWidth:objc_msgSend(_titleLabel lineBreakMode:{"lineBreakMode"), v25 - v23}];
    v28 = v34;
    v30 = v35;
  }

  rect_8 = v30;
  rect_16 = v28;
  [_titleLabel setFrame:{v23, MinY, v28, v30}];
  actionButton = [(_CertInfoTrustSummaryHeaderCell *)self actionButton];
  if ([actionButton isHidden])
  {
    v77.origin.x = 5.0;
    v77.origin.y = 5.0;
    v77.size.width = v16;
    v77.size.height = v18;
    MaxY = CGRectGetMaxY(v77);
    v78.origin.x = rect;
    v78.origin.y = v71;
    v38 = v72;
    v78.size.width = v72;
    v39 = v70;
    v78.size.height = v70;
    v40 = MaxY - CGRectGetHeight(v78);
  }

  else
  {
    v59 = MinY;
    [actionButton frame];
    v79.origin.x = v62;
    v79.origin.y = v61;
    v79.size.width = v60;
    v79.size.height = v24;
    v41 = CGRectGetWidth(v79) + -5.0 - width;
    v80.origin.x = v62;
    v80.origin.y = v61;
    v80.size.width = v60;
    v80.size.height = v24;
    v42 = CGRectGetHeight(v80) + -6.0 - rect_24;
    [actionButton setFrame:{v41, v42, width, rect_24}];
    v81.origin.x = rect;
    v81.origin.y = v71;
    v81.size.width = v72;
    v81.size.height = v70;
    v43 = CGRectGetWidth(v81);
    v82.origin.x = v41;
    v82.origin.y = v42;
    v82.size.width = width;
    v82.size.height = rect_24;
    v44 = CGRectGetMinX(v82) - v23 + -5.0;
    v83.origin.x = v41;
    v83.origin.y = v42;
    v83.size.width = width;
    v83.size.height = rect_24;
    v63 = CGRectGetMinY(v83);
    if (v43 >= v44)
    {
      v86.origin.x = rect;
      v86.origin.y = v71;
      v38 = v72;
      v86.size.width = v72;
      v86.size.height = v70;
      v40 = v63 - CGRectGetHeight(v86) + -4.0;
    }

    else
    {
      v84.origin.x = v41;
      v84.origin.y = v42;
      v84.size.width = width;
      v84.size.height = rect_24;
      Height = CGRectGetHeight(v84);
      v85.origin.x = rect;
      v85.origin.y = v71;
      v38 = v72;
      v85.size.width = v72;
      v85.size.height = v70;
      v46 = (Height - CGRectGetHeight(v85)) * 0.5;
      v40 = v63 + floorf(v46);
    }

    v39 = v70;
    MinY = v59;
  }

  [_trustedLabel setFrame:{v23, v40, v38, v39}];
  _subtitleLabel = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];

  [_subtitleLabel frame];
  v49 = v48;
  v51 = v50;
  v87.origin.x = v23;
  v87.origin.y = MinY;
  v87.size.height = rect_8;
  v87.size.width = rect_16;
  v52 = CGRectGetMaxY(v87);
  text2 = [_subtitleLabel text];

  if (text2)
  {
    v88.size.height = v39;
    v88.origin.x = v23;
    v88.origin.y = v40;
    v88.size.width = v38;
    v54 = CGRectGetMinY(v88);
    v89.origin.x = v23;
    v89.origin.y = v52;
    v89.size.width = v49;
    v89.size.height = v51;
    v55 = v54 - CGRectGetMinY(v89);
    font2 = [_subtitleLabel font];
    [text2 _legacy_sizeWithFont:font2 constrainedToSize:objc_msgSend(_subtitleLabel lineBreakMode:{"lineBreakMode"), v65 - v23, v55}];
    v49 = v57;
    v51 = v58;
  }

  [_subtitleLabel setFrame:{v23, v52, v49, v51}];
}

- (id)_titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    [(UILabel *)self->_titleLabel setBackgroundColor:0];
    [(UILabel *)self->_titleLabel setOpaque:0];
    v7 = self->_titleLabel;
    v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)self->_titleLabel setNumberOfLines:1];
    contentView = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [contentView addSubview:self->_titleLabel];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (id)_subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_subtitleLabel;
    self->_subtitleLabel = v5;

    [(UILabel *)self->_subtitleLabel setBackgroundColor:0];
    [(UILabel *)self->_subtitleLabel setOpaque:0];
    v7 = self->_subtitleLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_subtitleLabel;
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v9 setTextColor:grayColor];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
    contentView = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [contentView addSubview:self->_subtitleLabel];

    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

- (id)_trustedLabel
{
  trustedLabel = self->_trustedLabel;
  if (!trustedLabel)
  {
    v4 = [[_CertInfoGradientLabel alloc] initWithTrusted:self->_trusted];
    v5 = self->_trustedLabel;
    self->_trustedLabel = v4;

    [(_CertInfoGradientLabel *)self->_trustedLabel sizeToFit];
    contentView = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [contentView addSubview:self->_trustedLabel];

    trustedLabel = self->_trustedLabel;
  }

  return trustedLabel;
}

@end