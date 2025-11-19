@interface CertInfoBasicTrustDescription
- (BOOL)isRootCertificate;
- (CertInfoBasicTrustDescription)initWithTrust:(__SecTrust *)a3 action:(int)a4;
- (id)_expirationDate;
- (id)certificateExpirationDateAtIndex:(unint64_t)a3;
- (id)certificateIssuerSummaryAtIndex:(unint64_t)a3;
- (id)certificatePropertiesAtIndex:(unint64_t)a3;
- (id)certificateSubjectSummaryAtIndex:(unint64_t)a3;
- (id)summaryDescriptionItems;
- (id)summarySubtitle;
- (id)summaryTitle;
- (unint64_t)certificateCount;
- (void)dealloc;
@end

@implementation CertInfoBasicTrustDescription

- (CertInfoBasicTrustDescription)initWithTrust:(__SecTrust *)a3 action:(int)a4
{
  if (!a3)
  {
    [CertInfoBasicTrustDescription initWithTrust:action:];
  }

  v8.receiver = self;
  v8.super_class = CertInfoBasicTrustDescription;
  v6 = [(CertInfoBasicTrustDescription *)&v8 init];
  if (v6)
  {
    v6->_trust = CFRetain(a3);
    v6->_action = a4;
  }

  return v6;
}

- (void)dealloc
{
  trust = self->_trust;
  if (trust)
  {
    CFRelease(trust);
  }

  v4.receiver = self;
  v4.super_class = CertInfoBasicTrustDescription;
  [(CertInfoBasicTrustDescription *)&v4 dealloc];
}

- (id)summaryTitle
{
  if (SecTrustGetCertificateCount(self->_trust) < 1)
  {
    v4 = 0;
  }

  else
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, 0);
    v4 = SecCertificateCopySubjectSummary(CertificateAtIndex);
  }

  return v4;
}

- (id)summarySubtitle
{
  CertificateCount = SecTrustGetCertificateCount(self->_trust);
  if (CertificateCount < 1)
  {
    v5 = 0;
  }

  else
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, CertificateCount - 1);
    v5 = SecCertificateCopySubjectSummary(CertificateAtIndex);
  }

  return v5;
}

- (id)summaryDescriptionItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CertInfoBasicTrustDescription *)self _expirationDate];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:v4 dateStyle:2 timeStyle:2];
    if (v5)
    {
      [v4 timeIntervalSinceNow];
      v7 = v6;
      v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
      v9 = v8;
      if (v7 >= 0.0)
      {
        v10 = @"EXPIRES";
      }

      else
      {
        v10 = @"EXPIRED";
      }

      v11 = [v8 localizedStringForKey:v10 value:&stru_28561D260 table:@"CertInfo"];
      [v3 addObject:v11];

      [v3 addObject:v5];
    }
  }

  return v3;
}

- (BOOL)isRootCertificate
{
  if (SecTrustGetCertificateCount(self->_trust) < 1)
  {
    return 0;
  }

  SecTrustGetCertificateAtIndex(self->_trust, 0);

  return SecCertificateIsSelfSignedCA();
}

- (unint64_t)certificateCount
{
  result = self->_trust;
  if (result)
  {
    return SecTrustGetCertificateCount(result);
  }

  return result;
}

- (id)certificateSubjectSummaryAtIndex:(unint64_t)a3
{
  CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, a3);
  if (CertificateAtIndex)
  {
    CertificateAtIndex = SecCertificateCopySubjectSummary(CertificateAtIndex);
  }

  return CertificateAtIndex;
}

- (id)certificateIssuerSummaryAtIndex:(unint64_t)a3
{
  CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, a3);
  if (CertificateAtIndex)
  {
    CertificateAtIndex = SecCertificateCopyIssuerSummary();
  }

  return CertificateAtIndex;
}

- (id)certificateExpirationDateAtIndex:(unint64_t)a3
{
  CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, a3);
  if (CertificateAtIndex)
  {
    SecCertificateNotValidAfter();
    CertificateAtIndex = CFDateCreate(*MEMORY[0x277CBECE8], v4);
  }

  return CertificateAtIndex;
}

- (id)certificatePropertiesAtIndex:(unint64_t)a3
{
  trust = self->_trust;
  v4 = SecTrustCopyDetailedPropertiesAtIndex();

  return v4;
}

- (id)_expirationDate
{
  CertificateCount = SecTrustGetCertificateCount(self->_trust);
  if (CertificateCount < 1)
  {
    goto LABEL_10;
  }

  v4 = CertificateCount;
  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277CBECC8];
  do
  {
    if (SecTrustGetCertificateAtIndex(self->_trust, v6))
    {
      SecCertificateNotValidAfter();
      if ((v5 & (v8 >= v7)) == 0)
      {
        v7 = v8;
      }

      v5 = 1;
    }

    ++v6;
  }

  while (v4 != v6);
  if (v5)
  {
    v9 = CFDateCreate(*MEMORY[0x277CBECE8], v7);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  return v9;
}

@end