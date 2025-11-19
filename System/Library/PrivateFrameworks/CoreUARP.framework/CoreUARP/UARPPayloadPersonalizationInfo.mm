@interface UARPPayloadPersonalizationInfo
- (UARPPayloadPersonalizationInfo)init;
@end

@implementation UARPPayloadPersonalizationInfo

- (UARPPayloadPersonalizationInfo)init
{
  v8.receiver = self;
  v8.super_class = UARPPayloadPersonalizationInfo;
  v2 = [(UARPPayloadPersonalizationInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    trimmedTlvs = v2->_trimmedTlvs;
    v2->_trimmedTlvs = v3;

    v5 = objc_opt_new();
    tssOptions = v2->_tssOptions;
    v2->_tssOptions = v5;
  }

  return v2;
}

@end