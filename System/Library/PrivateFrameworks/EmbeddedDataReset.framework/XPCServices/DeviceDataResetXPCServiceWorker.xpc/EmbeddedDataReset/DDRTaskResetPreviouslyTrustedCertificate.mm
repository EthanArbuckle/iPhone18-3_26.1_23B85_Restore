@interface DDRTaskResetPreviouslyTrustedCertificate
- (void)run;
@end

@implementation DDRTaskResetPreviouslyTrustedCertificate

- (void)run
{
  if (SecTrustIncrementExceptionResetCount())
  {
    v2 = DDRLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset of previously trusted certificate failed.", buf, 2u);
    }
  }
}

@end