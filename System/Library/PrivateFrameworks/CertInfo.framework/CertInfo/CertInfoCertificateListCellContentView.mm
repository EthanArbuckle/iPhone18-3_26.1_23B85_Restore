@interface CertInfoCertificateListCellContentView
- (CertInfoCertificateListCellContentView)initWithFrame:(CGRect)frame;
- (void)_setText:(id)text forLabel:(id)label withRedColor:(BOOL)color;
- (void)_setupLabel:(id)label isSubtitle:(BOOL)subtitle;
- (void)layoutSubviews;
- (void)setExpiration:(id)expiration;
- (void)setSubtitle:(id)subtitle;
@end

@implementation CertInfoCertificateListCellContentView

- (CertInfoCertificateListCellContentView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CertInfoCertificateListCellContentView;
  v3 = [(CertInfoCertificateListCellContentView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(CertInfoCertificateListCellContentView *)v3 _setupLabel:v3->_titleLabel isSubtitle:0];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v11;

    [(CertInfoCertificateListCellContentView *)v3 _setupLabel:v3->_subtitleLabel isSubtitle:1];
    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    expirationLabel = v3->_expirationLabel;
    v3->_expirationLabel = v13;

    [(CertInfoCertificateListCellContentView *)v3 _setupLabel:v3->_expirationLabel isSubtitle:1];
  }

  return v3;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v9 = subtitleCopy;
  if (subtitleCopy && ([subtitleCopy isEqualToString:&stru_28561D260] & 1) == 0)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v8 = [v7 localizedStringForKey:@"ISSUED_BY_LABEL" value:&stru_28561D260 table:@"CertInfo"];
    v5 = [v6 stringWithFormat:v8, v9];
  }

  else
  {
    v5 = 0;
  }

  [(CertInfoCertificateListCellContentView *)self _setText:v5 forLabel:self->_subtitleLabel withRedColor:0];
}

- (void)setExpiration:(id)expiration
{
  expirationCopy = expiration;
  [expirationCopy timeIntervalSinceNow];
  v5 = v4;
  if (expirationCopy)
  {
    v6 = [MEMORY[0x277CCA968] localizedStringFromDate:expirationCopy dateStyle:2 timeStyle:2];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = v8;
    if (v5 >= 0.0)
    {
      v10 = @"EXPIRES_LABEL";
    }

    else
    {
      v10 = @"EXPIRED_LABEL";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_28561D260 table:@"CertInfo"];
    v12 = [v7 stringWithFormat:v11, v6];
  }

  else
  {
    v12 = 0;
  }

  [(CertInfoCertificateListCellContentView *)self _setText:v12 forLabel:self->_expirationLabel withRedColor:v5 < 0.0];
}

- (void)_setupLabel:(id)label isSubtitle:(BOOL)subtitle
{
  subtitleCopy = subtitle;
  labelCopy = label;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [labelCopy setHighlightedTextColor:whiteColor];

  [labelCopy setBackgroundColor:0];
  [labelCopy setOpaque:0];
  if (subtitleCopy)
  {
    grayColor = [MEMORY[0x277D75348] grayColor];
    [labelCopy setTextColor:grayColor];

    [MEMORY[0x277D74300] systemFontOfSize:13.0];
  }

  else
  {
    [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  }
  v7 = ;
  [labelCopy setFont:v7];
}

- (void)_setText:(id)text forLabel:(id)label withRedColor:(BOOL)color
{
  colorCopy = color;
  labelCopy = label;
  if (text)
  {
    [labelCopy setText:text];
    [labelCopy sizeToFit];
    if (colorCopy)
    {
      redColor = [MEMORY[0x277D75348] redColor];
      [labelCopy setTextColor:redColor];
    }

    [(CertInfoCertificateListCellContentView *)self addSubview:labelCopy];
  }

  else
  {
    [labelCopy removeFromSuperview];
  }

  [(CertInfoCertificateListCellContentView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(CertInfoCertificateListCellContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v16 = v6 + -8.0;
  superview = [(UILabel *)self->_subtitleLabel superview];

  superview2 = [(UILabel *)self->_expirationLabel superview];

  if (superview | superview2)
  {
    if (superview)
    {
      v20 = superview2 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
      text = [(UILabel *)self->_subtitleLabel text];
      font = [(UILabel *)self->_subtitleLabel font];
      [text _legacy_sizeWithFont:font constrainedToSize:{v16, 0.0}];
      v41 = v40;
      v52 = v4;
      v43 = v42;

      text2 = [(UILabel *)self->_subtitleLabel text];
      font2 = [(UILabel *)self->_subtitleLabel font];
      [text2 _legacy_sizeWithFont:font2 constrainedToSize:{v41, v43 + v43}];
      v47 = v46;
      v55 = v11;
      v49 = v48;

      if (v43 < v49)
      {
        v47 = v41;
        v49 = v43 + v43;
      }

      [(UILabel *)self->_subtitleLabel frame];
      v50 = v53 + v8 * 0.5 - (v15 + 2.0 + v49) * 0.5 + -2.0;
      v13 = roundf(v50);
      v35 = v15 + 2.0 + v13;
      subtitleLabel = self->_subtitleLabel;
      v36 = v47;
      v37 = v49;
      v11 = v55;
    }

    else
    {
      if (superview)
      {
        v21 = superview2 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        goto LABEL_19;
      }

      [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
      [(UILabel *)self->_subtitleLabel frame];
      v23 = v22;
      v54 = v11;
      v25 = v24;
      [(UILabel *)self->_expirationLabel frame];
      v26 = v4;
      v28 = v27;
      v30 = v29;
      v31 = v26 + v8 * 0.5 - (v15 + 2.0 + v25 + 2.0 + v29) * 0.5 + -2.0;
      v13 = roundf(v31);
      v32 = v25 + 2.0 + v15 + 2.0 + v13;
      v11 = v54;
      [(UILabel *)self->_subtitleLabel setFrame:v23];
      subtitleLabel = self->_expirationLabel;
      v34 = v28;
      v35 = v32;
      v36 = v16;
      v37 = v30;
    }

    [(UILabel *)subtitleLabel setFrame:v34, v35, v36, v37];
  }

  else
  {
    v19 = v4 + v8 * 0.5 - v15 * 0.5 + -2.0;
    v13 = roundf(v19);
  }

LABEL_19:
  v51 = self->_titleLabel;

  [(UILabel *)v51 setFrame:v11, v13, v16, v15];
}

@end