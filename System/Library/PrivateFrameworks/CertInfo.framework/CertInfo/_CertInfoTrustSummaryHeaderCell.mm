@interface _CertInfoTrustSummaryHeaderCell
- (NSString)trustSubtitle;
- (NSString)trustTitle;
- (_CertInfoActionButton)actionButton;
- (_CertInfoTrustSummaryHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)rowHeight;
- (id)_subtitleLabel;
- (id)_titleLabel;
- (id)_trustedLabel;
- (void)_layoutSubviewsWithActionButtonSize:(CGSize)a3;
- (void)layoutSubviews;
- (void)setExpired:(BOOL)a3;
- (void)setTrustSubtitle:(id)a3;
- (void)setTrustTitle:(id)a3;
@end

@implementation _CertInfoTrustSummaryHeaderCell

- (_CertInfoTrustSummaryHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = _CertInfoTrustSummaryHeaderCell;
  v4 = [(_CertInfoTrustSummaryHeaderCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(_CertInfoTrustSummaryHeaderCell *)v4 imageView];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"profile-icon" inBundle:v11];
    v13 = [v12 _applicationIconImageForFormat:2 precomposed:1 scale:v9];

    [v6 setImage:v13];
    [v6 sizeToFit];
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
    v6 = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [v6 addSubview:self->_actionButton];

    actionButton = self->_actionButton;
  }

  return actionButton;
}

- (void)setTrustTitle:(id)a3
{
  v4 = a3;
  v5 = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  [v5 setText:v4];

  [v5 sizeToFit];
}

- (NSString)trustTitle
{
  v2 = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTrustSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  [v5 setText:v4];

  [v5 sizeToFit];
}

- (NSString)trustSubtitle
{
  v2 = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setExpired:(BOOL)a3
{
  v5 = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];
  if (a3)
  {
    [MEMORY[0x277D75348] redColor];
  }

  else
  {
    [MEMORY[0x277D75348] grayColor];
  }
  v4 = ;
  [v5 setTextColor:v4];
}

- (double)rowHeight
{
  v2 = [(_CertInfoTrustSummaryHeaderCell *)self imageView];
  [v2 frame];
  v4 = v3 + 5.0 + 6.0;

  return v4;
}

- (void)layoutSubviews
{
  v3 = [(_CertInfoTrustSummaryHeaderCell *)self actionButton];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;
  v7 = v6;

  [(_CertInfoTrustSummaryHeaderCell *)self _layoutSubviewsWithActionButtonSize:v5, v7];
}

- (void)_layoutSubviewsWithActionButtonSize:(CGSize)a3
{
  rect_24 = a3.height;
  width = a3.width;
  v73.receiver = self;
  v73.super_class = _CertInfoTrustSummaryHeaderCell;
  [(_CertInfoTrustSummaryHeaderCell *)&v73 layoutSubviews];
  v4 = [(_CertInfoTrustSummaryHeaderCell *)self imageView];
  v5 = [(_CertInfoTrustSummaryHeaderCell *)self _trustedLabel];
  v6 = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 frame];
  v16 = v15;
  v18 = v17;
  [v5 frame];
  rect = v19;
  v71 = v20;
  v72 = v21;
  v70 = v22;
  [v4 setFrame:{5.0, 5.0, v16, v18}];
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
  v26 = [(_CertInfoTrustSummaryHeaderCell *)self _titleLabel];
  [v26 frame];
  v28 = v27;
  v30 = v29;
  v76.origin.x = 5.0;
  v76.origin.y = 5.0;
  v76.size.width = v16;
  v76.size.height = v18;
  MinY = CGRectGetMinY(v76);
  v32 = [v26 text];
  v65 = v25;
  if (v32)
  {
    v33 = [v26 font];
    [v32 _legacy_sizeWithFont:v33 forWidth:objc_msgSend(v26 lineBreakMode:{"lineBreakMode"), v25 - v23}];
    v28 = v34;
    v30 = v35;
  }

  rect_8 = v30;
  rect_16 = v28;
  [v26 setFrame:{v23, MinY, v28, v30}];
  v36 = [(_CertInfoTrustSummaryHeaderCell *)self actionButton];
  if ([v36 isHidden])
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
    [v36 frame];
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
    [v36 setFrame:{v41, v42, width, rect_24}];
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

  [v5 setFrame:{v23, v40, v38, v39}];
  v47 = [(_CertInfoTrustSummaryHeaderCell *)self _subtitleLabel];

  [v47 frame];
  v49 = v48;
  v51 = v50;
  v87.origin.x = v23;
  v87.origin.y = MinY;
  v87.size.height = rect_8;
  v87.size.width = rect_16;
  v52 = CGRectGetMaxY(v87);
  v53 = [v47 text];

  if (v53)
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
    v56 = [v47 font];
    [v53 _legacy_sizeWithFont:v56 constrainedToSize:objc_msgSend(v47 lineBreakMode:{"lineBreakMode"), v65 - v23, v55}];
    v49 = v57;
    v51 = v58;
  }

  [v47 setFrame:{v23, v52, v49, v51}];
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
    v9 = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [v9 addSubview:self->_titleLabel];

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
    v10 = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v9 setTextColor:v10];

    [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
    v11 = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [v11 addSubview:self->_subtitleLabel];

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
    v6 = [(_CertInfoTrustSummaryHeaderCell *)self contentView];
    [v6 addSubview:self->_trustedLabel];

    trustedLabel = self->_trustedLabel;
  }

  return trustedLabel;
}

@end