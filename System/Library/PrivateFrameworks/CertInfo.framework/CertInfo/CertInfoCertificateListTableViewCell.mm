@interface CertInfoCertificateListTableViewCell
- (CertInfoCertificateListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)updateWithTrustDescription:(id)description certificateIndex:(unint64_t)index;
@end

@implementation CertInfoCertificateListTableViewCell

- (CertInfoCertificateListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = CertInfoCertificateListTableViewCell;
  v4 = [(CertInfoCertificateListTableViewCell *)&v15 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CertInfoCertificateListTableViewCell_initWithStyle_reuseIdentifier___block_invoke;
    block[3] = &unk_278DB1370;
    v6 = v4;
    v14 = v6;
    if (initWithStyle_reuseIdentifier__onceToken != -1)
    {
      dispatch_once(&initWithStyle_reuseIdentifier__onceToken, block);
    }

    imageView = [v6 imageView];
    [imageView setImage:initWithStyle_reuseIdentifier__sBlobImage];

    v8 = [CertInfoCertificateListCellContentView alloc];
    v9 = [(CertInfoCertificateListCellContentView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v10 = v6[128];
    v6[128] = v9;

    [v6[128] setUserInteractionEnabled:0];
    contentView = [v6 contentView];
    [contentView addSubview:v6[128]];
  }

  return v5;
}

void __70__CertInfoCertificateListTableViewCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [MEMORY[0x277D755B8] imageNamed:@"profiles-list-icon" inBundle:v4];
  v3 = initWithStyle_reuseIdentifier__sBlobImage;
  initWithStyle_reuseIdentifier__sBlobImage = v2;
}

- (void)updateWithTrustDescription:(id)description certificateIndex:(unint64_t)index
{
  certificateContentView = self->_certificateContentView;
  descriptionCopy = description;
  v8 = [descriptionCopy certificateSubjectSummaryAtIndex:index];
  [(CertInfoCertificateListCellContentView *)certificateContentView setTitle:v8];

  v9 = self->_certificateContentView;
  v10 = [descriptionCopy certificateIssuerSummaryAtIndex:index];
  [(CertInfoCertificateListCellContentView *)v9 setSubtitle:v10];

  v11 = self->_certificateContentView;
  v12 = [descriptionCopy certificateExpirationDateAtIndex:index];

  [(CertInfoCertificateListCellContentView *)v11 setExpiration:v12];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CertInfoCertificateListTableViewCell;
  [(CertInfoCertificateListTableViewCell *)&v23 layoutSubviews];
  contentView = [(CertInfoCertificateListTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(CertInfoCertificateListTableViewCell *)self imageView];
  [imageView frame];
  v14 = v13;
  v16 = v15;

  v17 = (v11 - v16) * 0.5;
  v18 = roundf(v17);
  imageView2 = [(CertInfoCertificateListTableViewCell *)self imageView];
  [imageView2 setFrame:{8.0, v18, v14, v16}];

  [(CertInfoCertificateListCellContentView *)self->_certificateContentView frame];
  v24.origin.x = 8.0;
  v24.origin.y = v18;
  v24.size.width = v14;
  v24.size.height = v16;
  v20 = CGRectGetMaxX(v24) + 8.0;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v21 = CGRectGetMinY(v25) + 1.0;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v22 = CGRectGetMaxX(v26) - v20 + -9.0;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  [(CertInfoCertificateListCellContentView *)self->_certificateContentView setFrame:v20, v21, v22, CGRectGetHeight(v27) + -1.0];
}

@end