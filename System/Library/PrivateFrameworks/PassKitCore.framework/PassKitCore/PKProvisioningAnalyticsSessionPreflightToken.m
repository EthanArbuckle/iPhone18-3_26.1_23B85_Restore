@interface PKProvisioningAnalyticsSessionPreflightToken
- (PKProvisioningAnalyticsSessionPreflightToken)init;
@end

@implementation PKProvisioningAnalyticsSessionPreflightToken

- (PKProvisioningAnalyticsSessionPreflightToken)init
{
  v6.receiver = self;
  v6.super_class = PKProvisioningAnalyticsSessionPreflightToken;
  v2 = [(PKProvisioningAnalyticsSessionPreflightToken *)&v6 init];
  if (v2)
  {
    v2->_start = CFAbsoluteTimeGetCurrent();
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stepProperties = v2->_stepProperties;
    v2->_stepProperties = v3;
  }

  return v2;
}

@end