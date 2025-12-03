@interface CertInfoCertificateHeaderCell
- (CertInfoCertificateHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)rowHeight;
- (id)_certificateImage;
- (id)_notTrustedGradient;
- (id)_subtitleLabel;
- (id)_titleLabel;
- (id)_trustedLabel;
- (void)layoutSubviews;
- (void)setExpired:(BOOL)expired;
- (void)setTrustSubtitle:(id)subtitle;
- (void)setTrustTitle:(id)title;
@end

@implementation CertInfoCertificateHeaderCell

- (CertInfoCertificateHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = CertInfoCertificateHeaderCell;
  v4 = [(CertInfoCertificateHeaderCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    imageView = [(CertInfoCertificateHeaderCell *)v4 imageView];
    _certificateImage = [(CertInfoCertificateHeaderCell *)v5 _certificateImage];
    [imageView setImage:_certificateImage];

    imageView2 = [(CertInfoCertificateHeaderCell *)v5 imageView];
    [imageView2 sizeToFit];

    _trustedLabel = [(CertInfoCertificateHeaderCell *)v5 _trustedLabel];
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v11 = [v10 localizedStringForKey:@"NOT_TRUSTED" value:&stru_28561D260 table:@"CertInfo"];
    [_trustedLabel setText:v11];

    [_trustedLabel sizeToFit];
    [(CertInfoCertificateHeaderCell *)v5 setAutoresizesSubviews:0];
  }

  return v5;
}

- (id)_certificateImage
{
  certificateImage = self->_certificateImage;
  if (!certificateImage)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:@"profile-icon" inBundle:v8];
    v10 = [v9 _applicationIconImageForFormat:2 precomposed:1 scale:v6];
    v11 = self->_certificateImage;
    self->_certificateImage = v10;

    certificateImage = self->_certificateImage;
  }

  return certificateImage;
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
    contentView = [(CertInfoCertificateHeaderCell *)self contentView];
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
    contentView = [(CertInfoCertificateHeaderCell *)self contentView];
    [contentView addSubview:self->_subtitleLabel];

    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

- (id)_notTrustedGradient
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"NotTrustedTextGradient" inBundle:v3];

  return v4;
}

- (id)_trustedLabel
{
  trustedLabel = self->_trustedLabel;
  if (!trustedLabel)
  {
    v4 = [CertInfoGradientLabel alloc];
    v5 = [(CertInfoGradientLabel *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_trustedLabel;
    self->_trustedLabel = v5;

    [(CertInfoGradientLabel *)self->_trustedLabel setBackgroundColor:0];
    [(CertInfoGradientLabel *)self->_trustedLabel setOpaque:0];
    v7 = self->_trustedLabel;
    v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
    [(CertInfoGradientLabel *)v7 setFont:v8];

    v9 = self->_trustedLabel;
    _notTrustedGradient = [(CertInfoCertificateHeaderCell *)self _notTrustedGradient];
    [(CertInfoGradientLabel *)v9 setGradient:_notTrustedGradient];

    contentView = [(CertInfoCertificateHeaderCell *)self contentView];
    [contentView addSubview:self->_trustedLabel];

    trustedLabel = self->_trustedLabel;
  }

  return trustedLabel;
}

- (void)setTrustTitle:(id)title
{
  titleCopy = title;
  _titleLabel = [(CertInfoCertificateHeaderCell *)self _titleLabel];
  [_titleLabel setText:titleCopy];

  [_titleLabel sizeToFit];
}

- (void)setTrustSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  _subtitleLabel = [(CertInfoCertificateHeaderCell *)self _subtitleLabel];
  [_subtitleLabel setText:subtitleCopy];

  [_subtitleLabel sizeToFit];
}

- (void)setExpired:(BOOL)expired
{
  _subtitleLabel = [(CertInfoCertificateHeaderCell *)self _subtitleLabel];
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
  imageView = [(CertInfoCertificateHeaderCell *)self imageView];
  [imageView frame];
  v4 = v3 + 14.0 + 13.0;

  return v4;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = CertInfoCertificateHeaderCell;
  [(CertInfoCertificateHeaderCell *)&v47 layoutSubviews];
  imageView = [(CertInfoCertificateHeaderCell *)self imageView];
  [imageView frame];
  v5 = v4;
  v7 = v6;

  contentView = [(CertInfoCertificateHeaderCell *)self contentView];
  [contentView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  _trustedLabel = [(CertInfoCertificateHeaderCell *)self _trustedLabel];
  [_trustedLabel frame];
  v45 = v19;
  v46 = v18;

  imageView2 = [(CertInfoCertificateHeaderCell *)self imageView];
  [imageView2 setFrame:{15.0, 14.0, v5, v7}];

  v48.origin.x = 15.0;
  v48.origin.y = 14.0;
  v48.size.width = v5;
  v48.size.height = v7;
  v21 = CGRectGetMaxX(v48) + 10.0;
  v49.origin.x = 15.0;
  v49.origin.y = 14.0;
  v49.size.width = v5;
  v49.size.height = v7;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = v10;
  v50.origin.y = v12;
  v50.size.width = v14;
  v50.size.height = v16;
  v23 = CGRectGetMaxX(v50) + -20.0;
  _titleLabel = [(CertInfoCertificateHeaderCell *)self _titleLabel];
  [_titleLabel frame];
  v26 = v25;
  v28 = v27;
  text = [_titleLabel text];
  if (text)
  {
    font = [_titleLabel font];
    [text _legacy_sizeWithFont:font forWidth:objc_msgSend(_titleLabel lineBreakMode:{"lineBreakMode"), v23 - v21}];
    v26 = v31;
    v28 = v32;
  }

  [_titleLabel setFrame:{v21, MinY, v26, v28}];
  v33 = MinY + v28;
  _subtitleLabel = [(CertInfoCertificateHeaderCell *)self _subtitleLabel];

  [_subtitleLabel frame];
  v36 = v35;
  v38 = v37;
  text2 = [_subtitleLabel text];

  if (text2)
  {
    font2 = [_subtitleLabel font];
    [text2 _legacy_sizeWithFont:font2 constrainedToSize:objc_msgSend(_subtitleLabel lineBreakMode:{"lineBreakMode"), v23 - v21, v16 - v33 - v45}];
    v36 = v41;
    v38 = v42;
  }

  [_subtitleLabel setFrame:{v21, v33, v36, v38}];
  v51.origin.x = 15.0;
  v51.origin.y = 14.0;
  v51.size.width = v5;
  v51.size.height = v7;
  v43 = CGRectGetMaxY(v51) - v45;
  _trustedLabel2 = [(CertInfoCertificateHeaderCell *)self _trustedLabel];
  [_trustedLabel2 setFrame:{v21, v43, v46, v45}];
}

@end