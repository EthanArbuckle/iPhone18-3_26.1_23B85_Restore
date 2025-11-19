@interface CertInfoCertificateSummaryDescriptionCell
- (CertInfoCertificateSummaryDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CertInfoCertificateSummaryDescriptionCell

- (CertInfoCertificateSummaryDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CertInfoCertificateSummaryDescriptionCell;
  v4 = [(CertInfoCertificateSummaryDescriptionCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CertInfoCertificateSummaryDescriptionCell *)v4 contentView];
    v7 = [CertInfoDescriptionCellContentView alloc];
    [v6 bounds];
    v8 = [(CertInfoDescriptionCellContentView *)v7 initWithFrame:?];
    customContentView = v5->_customContentView;
    v5->_customContentView = v8;

    [(CertInfoDescriptionCellContentView *)v5->_customContentView setOpaque:0];
    [(CertInfoDescriptionCellContentView *)v5->_customContentView setAutoresizingMask:18];
    [v6 addSubview:v5->_customContentView];
  }

  return v5;
}

@end