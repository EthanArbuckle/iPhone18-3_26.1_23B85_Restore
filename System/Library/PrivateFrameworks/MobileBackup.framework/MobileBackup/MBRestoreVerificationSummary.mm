@interface MBRestoreVerificationSummary
- (MBRestoreVerificationSummary)initWithDomainsNotVerifiedCount:(unint64_t)a3 domainsPassingVerificationCount:(unint64_t)a4 domainsFailingVerificationCount:(unint64_t)a5 domainsSkippedVerificationCount:(unint64_t)a6;
- (NSString)statusToReport;
@end

@implementation MBRestoreVerificationSummary

- (MBRestoreVerificationSummary)initWithDomainsNotVerifiedCount:(unint64_t)a3 domainsPassingVerificationCount:(unint64_t)a4 domainsFailingVerificationCount:(unint64_t)a5 domainsSkippedVerificationCount:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MBRestoreVerificationSummary;
  result = [(MBRestoreVerificationSummary *)&v11 init];
  if (result)
  {
    result->_domainsNotVerifiedCount = a3;
    result->_domainsPassingVerificationCount = a4;
    result->_domainsFailingVerificationCount = a5;
    result->_domainsSkippedVerificationCount = a6;
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