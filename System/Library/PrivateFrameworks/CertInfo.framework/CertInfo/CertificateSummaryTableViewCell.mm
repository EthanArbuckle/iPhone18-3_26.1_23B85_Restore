@interface CertificateSummaryTableViewCell
- (void)setCertificateName:(id)name issuer:(id)issuer isRoot:(BOOL)root;
- (void)updateWithCertificateTrust:(__SecTrust *)trust;
@end

@implementation CertificateSummaryTableViewCell

- (void)updateWithCertificateTrust:(__SecTrust *)trust
{
  if (trust && SecTrustGetCertificateCount(trust) >= 1)
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, 0);
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

- (void)setCertificateName:(id)name issuer:(id)issuer isRoot:(BOOL)root
{
  issuerCopy = issuer;
  issuerCopy = &stru_28561D260;
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = &stru_28561D260;
  }

  nameCopy2 = name;
  itemTitleLabel = [(CertUIItemSummaryCell *)self itemTitleLabel];
  [itemTitleLabel setText:nameCopy];

  if (issuerCopy)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v13 = [v12 localizedStringForKey:@"ISSUED_BY_LABEL" value:&stru_28561D260 table:@"CertInfo"];
    issuerCopy = [v11 stringWithFormat:v13, issuerCopy];
  }

  itemSubtitleLabel = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  [itemSubtitleLabel setText:issuerCopy];

  [(CertificateSummaryTableViewCell *)self setNeedsLayout];
}

@end