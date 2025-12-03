@interface CertInfoCertificateSummaryDescriptionCell
- (CertInfoCertificateSummaryDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CertInfoCertificateSummaryDescriptionCell

- (CertInfoCertificateSummaryDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CertInfoCertificateSummaryDescriptionCell;
  v4 = [(CertInfoCertificateSummaryDescriptionCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(CertInfoCertificateSummaryDescriptionCell *)v4 contentView];
    v7 = [CertInfoDescriptionCellContentView alloc];
    [contentView bounds];
    v8 = [(CertInfoDescriptionCellContentView *)v7 initWithFrame:?];
    customContentView = v5->_customContentView;
    v5->_customContentView = v8;

    [(CertInfoDescriptionCellContentView *)v5->_customContentView setOpaque:0];
    [(CertInfoDescriptionCellContentView *)v5->_customContentView setAutoresizingMask:18];
    [contentView addSubview:v5->_customContentView];
  }

  return v5;
}

@end