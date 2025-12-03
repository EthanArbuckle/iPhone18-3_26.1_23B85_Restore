@interface MBRestoreVerificationSummary
- (MBRestoreVerificationSummary)initWithDomainsNotVerifiedCount:(unint64_t)count domainsPassingVerificationCount:(unint64_t)verificationCount domainsFailingVerificationCount:(unint64_t)failingVerificationCount domainsSkippedVerificationCount:(unint64_t)skippedVerificationCount;
- (NSString)statusToReport;
@end

@implementation MBRestoreVerificationSummary

- (MBRestoreVerificationSummary)initWithDomainsNotVerifiedCount:(unint64_t)count domainsPassingVerificationCount:(unint64_t)verificationCount domainsFailingVerificationCount:(unint64_t)failingVerificationCount domainsSkippedVerificationCount:(unint64_t)skippedVerificationCount
{
  v11.receiver = self;
  v11.super_class = MBRestoreVerificationSummary;
  result = [(MBRestoreVerificationSummary *)&v11 init];
  if (result)
  {
    result->_domainsNotVerifiedCount = count;
    result->_domainsPassingVerificationCount = verificationCount;
    result->_domainsFailingVerificationCount = failingVerificationCount;
    result->_domainsSkippedVerificationCount = skippedVerificationCount;
  }

  return result;
}

- (NSString)statusToReport
{
  if (![(MBRestoreVerificationSummary *)self verifierWasRun])
  {
    return 0;
  }

  if (self->_domainsFailingVerificationCount)
  {
    return @"FAIL";
  }

  return @"PASS";
}

@end