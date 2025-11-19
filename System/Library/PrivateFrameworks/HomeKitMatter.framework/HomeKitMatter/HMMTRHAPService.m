@interface HMMTRHAPService
+ (id)chipPluginServiceForCharacteristic:(id)a3;
- (HMMTRHAPService)initWithType:(id)a3 instanceID:(id)a4 parsedCharacteristics:(id)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7 endpoint:(id)a8;
- (unint64_t)serviceProperties;
@end

@implementation HMMTRHAPService

- (unint64_t)serviceProperties
{
  v5.receiver = self;
  v5.super_class = HMMTRHAPService;
  v3 = [(HAPService *)&v5 serviceProperties];
  return v3 | [(HMMTRHAPService *)self overriddenAsPrimary];
}

- (HMMTRHAPService)initWithType:(id)a3 instanceID:(id)a4 parsedCharacteristics:(id)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7 endpoint:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = HMMTRHAPService;
  v16 = [(HAPService *)&v19 initWithType:a3 instanceID:a4 parsedCharacteristics:a5 serviceProperties:a6 linkedServices:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_endpoint, a8);
  }

  return v17;
}

+ (id)chipPluginServiceForCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 service];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end