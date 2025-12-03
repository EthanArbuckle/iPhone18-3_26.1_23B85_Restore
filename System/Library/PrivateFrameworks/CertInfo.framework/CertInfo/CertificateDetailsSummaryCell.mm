@interface CertificateDetailsSummaryCell
- (CertificateDetailsSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setDetails:(id)details;
- (void)setDetailsWithCertificateTrust:(__SecTrust *)trust certificateExpiration:(id)expiration certificateIsTrusted:(BOOL)trusted;
@end

@implementation CertificateDetailsSummaryCell

- (CertificateDetailsSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CertificateDetailsSummaryCell;
  v4 = [(CertUIItemDetailsSummaryCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CertificateDetailsSummaryCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

- (void)setDetails:(id)details
{
  detailsCopy = details;
  if (self->_details != detailsCopy)
  {
    v6 = detailsCopy;
    objc_storeStrong(&self->_details, details);
    [(CertUIItemDetailsSummaryCell *)self createViewWithItemDetailArray:self->_details];
    [(CertificateDetailsSummaryCell *)self setNeedsLayout];
    detailsCopy = v6;
  }
}

- (void)setDetailsWithCertificateTrust:(__SecTrust *)trust certificateExpiration:(id)expiration certificateIsTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  expirationCopy = expiration;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v9 = v8;
  if (trustedCopy)
  {
    v10 = @"TRUSTED";
  }

  else
  {
    v10 = @"NOT_TRUSTED";
  }

  v11 = &stru_28561D260;
  v12 = [v8 localizedStringForKey:v10 value:&stru_28561D260 table:@"CertInfo"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_28561D260;
  }

  if (trustedCopy)
  {
    [MEMORY[0x277D75348] CertUIVerifiedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v14 = ;
  LOBYTE(v33) = trustedCopy;
  v15 = [CertUIItemDetail itemDetailWithDetailTitle:0 detail:0 detailHighlightColor:0 showCheckmarkView:1 checkmarkText:v13 checkmarkHighlightColor:v14 showCheckmark:v33];
  [v7 addObject:v15];
  if (trust)
  {
    CertificateCount = SecTrustGetCertificateCount(trust);
    if (CertificateCount < 1)
    {
      v22 = 0;
    }

    else
    {
      v17 = CertificateCount;
      v18 = 0;
      v19 = 0;
      v20 = *MEMORY[0x277CBECC8];
      do
      {
        if (SecTrustGetCertificateAtIndex(trust, v18))
        {
          SecCertificateNotValidAfter();
          if ((v19 & (v21 >= v20)) == 0)
          {
            v20 = v21;
          }

          v19 = 1;
        }

        ++v18;
      }

      while (v17 != v18);
      if (v19)
      {
        v22 = CFDateCreate(*MEMORY[0x277CBECE8], v20);
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = expirationCopy;
  }

  v23 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v23 setDateStyle:1];
  [v23 setTimeStyle:2];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v23 setLocale:currentLocale];

  v25 = [v23 stringFromDate:v22];
  if (v25)
  {
    v11 = v25;
  }

  [(__CFDate *)v22 timeIntervalSinceNow];
  v27 = v26;
  v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v29 = v28;
  if (v27 >= 0.0)
  {
    v30 = [v28 localizedStringForKey:@"EXPIRES" value:&stru_28561D260 table:@"CertInfo"];

    v32 = [CertUIItemDetail itemDetailWithDetailTitle:v30 detail:v11 detailHighlightColor:0];
  }

  else
  {
    v30 = [v28 localizedStringForKey:@"EXPIRED" value:&stru_28561D260 table:@"CertInfo"];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v32 = [CertUIItemDetail itemDetailWithDetailTitle:v30 detail:v11 detailHighlightColor:systemRedColor];
  }

  [v7 addObject:v32];
  [(CertificateDetailsSummaryCell *)self setDetails:v7];
  [(CertificateDetailsSummaryCell *)self setNeedsLayout];
}

@end