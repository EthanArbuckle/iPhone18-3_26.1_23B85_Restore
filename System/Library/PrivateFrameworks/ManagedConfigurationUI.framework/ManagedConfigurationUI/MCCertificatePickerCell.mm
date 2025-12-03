@interface MCCertificatePickerCell
+ (float)_attributeLabelSpace;
+ (id)_dateFormatter;
- (MCCertificatePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_attributeLabelCopy;
- (id)_labelColor;
- (void)layoutSubviews;
- (void)setExpirationDate:(id)date;
- (void)setIssuer:(id)issuer;
@end

@implementation MCCertificatePickerCell

+ (float)_attributeLabelSpace
{
  LODWORD(v2) = __ExpiresWidth;
  if (*&__ExpiresWidth == 0.0)
  {
    _attributeFont = [self _attributeFont];
    v4 = MCUILocalizedString(@"EXPIRES");
    [v4 _legacy_sizeWithFont:_attributeFont forWidth:4 lineBreakMode:150.0];
    *&v5 = v5;
    __ExpiresWidth = LODWORD(v5);

    v6 = MCUILocalizedString(@"ISSUED_BY");
    [v6 _legacy_sizeWithFont:_attributeFont forWidth:4 lineBreakMode:150.0];
    *&v7 = v7;
    __IssuedByWidth = LODWORD(v7);

    LODWORD(v2) = __ExpiresWidth;
  }

  if (*&v2 < *&__IssuedByWidth)
  {
    LODWORD(v2) = __IssuedByWidth;
  }

  return *&v2 + 9.0;
}

+ (id)_dateFormatter
{
  v2 = _dateFormatter_sFormatter_0;
  if (!_dateFormatter_sFormatter_0)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = _dateFormatter_sFormatter_0;
    _dateFormatter_sFormatter_0 = v3;

    [_dateFormatter_sFormatter_0 setDateStyle:3];
    [_dateFormatter_sFormatter_0 setTimeStyle:0];
    v2 = _dateFormatter_sFormatter_0;
  }

  return v2;
}

- (MCCertificatePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = MCCertificatePickerCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(MCCertificatePickerCell *)v5 setAccessoryType:2];
  }

  return v6;
}

- (id)_labelColor
{
  if ([(PSTableCell *)self isChecked])
  {
    titleLabel = [(PSTableCell *)self titleLabel];
    textColor = [titleLabel textColor];
  }

  else
  {
    textColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  return textColor;
}

- (id)_attributeLabelCopy
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  _attributeFont = [objc_opt_class() _attributeFont];
  [v3 setFont:_attributeFont];

  _labelColor = [(MCCertificatePickerCell *)self _labelColor];
  [v3 setTextColor:_labelColor];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setHighlightedTextColor:whiteColor];

  [v3 setBackgroundColor:0];
  [v3 setOpaque:0];

  return v3;
}

- (void)setIssuer:(id)issuer
{
  issuerCopy = issuer;
  v4 = [issuerCopy length];
  issuedByLabel = self->_issuedByLabel;
  if (v4)
  {
    if (!issuedByLabel)
    {
      _attributeLabelCopy = [(MCCertificatePickerCell *)self _attributeLabelCopy];
      v7 = self->_issuedByLabel;
      self->_issuedByLabel = _attributeLabelCopy;

      v8 = self->_issuedByLabel;
      v9 = MCUILocalizedString(@"ISSUED_BY");
      [(UILabel *)v8 setText:v9];

      contentView = [(MCCertificatePickerCell *)self contentView];
      [contentView addSubview:self->_issuedByLabel];
    }

    issuerLabel = self->_issuerLabel;
    if (!issuerLabel)
    {
      _attributeLabelCopy2 = [(MCCertificatePickerCell *)self _attributeLabelCopy];
      v13 = self->_issuerLabel;
      self->_issuerLabel = _attributeLabelCopy2;

      contentView2 = [(MCCertificatePickerCell *)self contentView];
      [contentView2 addSubview:self->_issuerLabel];

      issuerLabel = self->_issuerLabel;
    }

    [(UILabel *)issuerLabel setText:issuerCopy];
  }

  else
  {
    [(UILabel *)issuedByLabel removeFromSuperview];
    [(UILabel *)self->_issuerLabel removeFromSuperview];
  }

  [(MCCertificatePickerCell *)self setNeedsLayout];
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = +[MCCertificatePickerCell _dateFormatter];
    v5 = [v4 stringFromDate:dateCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 length];
  expiresByLabel = self->_expiresByLabel;
  if (v6)
  {
    if (!expiresByLabel)
    {
      _attributeLabelCopy = [(MCCertificatePickerCell *)self _attributeLabelCopy];
      v9 = self->_expiresByLabel;
      self->_expiresByLabel = _attributeLabelCopy;

      v10 = self->_expiresByLabel;
      v11 = MCUILocalizedString(@"EXPIRES");
      [(UILabel *)v10 setText:v11];

      contentView = [(MCCertificatePickerCell *)self contentView];
      [contentView addSubview:self->_expiresByLabel];
    }

    expiryDateLabel = self->_expiryDateLabel;
    if (!expiryDateLabel)
    {
      _attributeLabelCopy2 = [(MCCertificatePickerCell *)self _attributeLabelCopy];
      v15 = self->_expiryDateLabel;
      self->_expiryDateLabel = _attributeLabelCopy2;

      contentView2 = [(MCCertificatePickerCell *)self contentView];
      [contentView2 addSubview:self->_expiryDateLabel];

      expiryDateLabel = self->_expiryDateLabel;
    }

    [(UILabel *)expiryDateLabel setText:v5];
  }

  else
  {
    [(UILabel *)expiresByLabel removeFromSuperview];
    [(UILabel *)self->_expiryDateLabel removeFromSuperview];
  }

  [(MCCertificatePickerCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = MCCertificatePickerCell;
  [(PSTableCell *)&v53 layoutSubviews];
  superview = [(UILabel *)self->_expiresByLabel superview];

  superview2 = [(UILabel *)self->_issuerLabel superview];

  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel sizeToFit];
  [titleLabel bounds];
  v7 = 0.0;
  if (superview2 | superview)
  {
    v7 = 1.0;
  }

  v8 = v6 + 0.0;
  v9 = v7 + v8;
  if (superview2)
  {
    [(UILabel *)self->_issuedByLabel sizeToFit];
    [(UILabel *)self->_issuerLabel sizeToFit];
    [(UILabel *)self->_issuedByLabel bounds];
    if (superview)
    {
      v11 = v10 + v9;
      v9 = v11 + 2.0;
    }

    else
    {
      v9 = v10 + v9;
    }
  }

  if (superview)
  {
    [(UILabel *)self->_expiresByLabel sizeToFit];
    [(UILabel *)self->_expiryDateLabel sizeToFit];
    [(UILabel *)self->_expiresByLabel bounds];
    v9 = v12 + v9;
  }

  _checkmarkView = [(MCCertificatePickerCell *)self _checkmarkView];
  [_checkmarkView frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  _checkmarkView2 = [(MCCertificatePickerCell *)self _checkmarkView];
  [_checkmarkView2 setFrame:{10.0, v15, v17, v19}];

  [(MCCertificatePickerCell *)self bounds];
  v22 = v21;
  contentView = [(MCCertificatePickerCell *)self contentView];
  [contentView bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = round((v22 - v9) * 0.5);
  [titleLabel frame];
  v34 = v33;
  v36 = v35;
  v37 = v32;
  v54.origin.x = v25;
  v54.origin.y = v27;
  v54.size.width = v29;
  v54.size.height = v31;
  v38 = CGRectGetMaxX(v54) + -10.0 + -39.0;
  if (v34 >= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v34;
  }

  [titleLabel setFrame:{39.0, v37, v39, v36}];
  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setFrame:{39.0, v37, v39, v36}];

  if (superview2 | superview)
  {
    v41 = v36 + 1.0 + v37;
    [objc_opt_class() _attributeLabelSpace];
    v52 = v42;
    if (superview2)
    {
      v43 = v42;
      [(UILabel *)self->_issuerLabel frame];
      v51 = v44;
      [(UILabel *)self->_issuedByLabel frame];
      v46 = v45;
      v47 = v41;
      [(UILabel *)self->_issuedByLabel setFrame:39.0, v47, *&__IssuedByWidth];
      v55.origin.x = v25;
      v55.origin.y = v27;
      v55.size.width = v29;
      v55.size.height = v31;
      [(UILabel *)self->_issuerLabel setFrame:v43 + 39.0, v47, CGRectGetMaxX(v55) - (v43 + 39.0) + -10.0, v51];
      v41 = v46 + 2.0 + v47;
    }

    if (superview)
    {
      [(UILabel *)self->_expiryDateLabel frame];
      v49 = v48;
      [(UILabel *)self->_expiresByLabel frame];
      v50 = v41;
      [(UILabel *)self->_expiresByLabel setFrame:39.0, v50, *&__ExpiresWidth];
      v56.origin.x = v25;
      v56.origin.y = v27;
      v56.size.width = v29;
      v56.size.height = v31;
      [(UILabel *)self->_expiryDateLabel setFrame:v52 + 39.0, v50, CGRectGetMaxX(v56) - (v52 + 39.0) + -10.0, v49];
    }
  }
}

@end