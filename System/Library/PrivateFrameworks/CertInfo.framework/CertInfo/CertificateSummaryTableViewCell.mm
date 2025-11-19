@interface CertificateSummaryTableViewCell
- (void)setCertificateName:(id)a3 issuer:(id)a4 isRoot:(BOOL)a5;
- (void)updateWithCertificateTrust:(__SecTrust *)a3;
@end

@implementation CertificateSummaryTableViewCell

- (void)updateWithCertificateTrust:(__SecTrust *)a3
{
  if (a3 && SecTrustGetCertificateCount(a3) >= 1)
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(a3, 0);
    v10 = SecCertificateCopySubjectSummary(CertificateAtIndex);
    v6 = SecCertificateCopyIssuerSummary();
    IsSelfSignedCA = SecCertificateIsSelfSignedCA();
    v8 = v10;
    v9 = IsSelfSignedCA;
  }

  else
  {
    v9 = 0;
    v8 = &stru_28561D260;
    v6 = &stru_28561D260;
  }

  v11 = v8;
  [(CertificateSummaryTableViewCell *)self setCertificateName:v8 issuer:v6 isRoot:v9];
}

- (void)setCertificateName:(id)a3 issuer:(id)a4 isRoot:(BOOL)a5
{
  v15 = a4;
  v7 = &stru_28561D260;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &stru_28561D260;
  }

  v9 = a3;
  v10 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  [v10 setText:v8];

  if (v15)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v13 = [v12 localizedStringForKey:@"ISSUED_BY_LABEL" value:&stru_28561D260 table:@"CertInfo"];
    v7 = [v11 stringWithFormat:v13, v15];
  }

  v14 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  [v14 setText:v7];

  [(CertificateSummaryTableViewCell *)self setNeedsLayout];
}

@end