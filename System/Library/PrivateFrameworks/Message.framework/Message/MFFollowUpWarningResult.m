@interface MFFollowUpWarningResult
- (MFFollowUpWarningResult)initWithFollowUpWarning:(id)a3 error:(id)a4;
@end

@implementation MFFollowUpWarningResult

- (MFFollowUpWarningResult)initWithFollowUpWarning:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFFollowUpWarningResult;
  v9 = [(MFFollowUpWarningResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_followUpWarning, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

@end