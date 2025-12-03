@interface MFFollowUpWarningResult
- (MFFollowUpWarningResult)initWithFollowUpWarning:(id)warning error:(id)error;
@end

@implementation MFFollowUpWarningResult

- (MFFollowUpWarningResult)initWithFollowUpWarning:(id)warning error:(id)error
{
  warningCopy = warning;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = MFFollowUpWarningResult;
  v9 = [(MFFollowUpWarningResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_followUpWarning, warning);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

@end