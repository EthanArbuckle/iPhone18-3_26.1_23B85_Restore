@interface HMMTRHAPService
+ (id)chipPluginServiceForCharacteristic:(id)characteristic;
- (HMMTRHAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services endpoint:(id)endpoint;
- (unint64_t)serviceProperties;
@end

@implementation HMMTRHAPService

- (unint64_t)serviceProperties
{
  v5.receiver = self;
  v5.super_class = HMMTRHAPService;
  serviceProperties = [(HAPService *)&v5 serviceProperties];
  return serviceProperties | [(HMMTRHAPService *)self overriddenAsPrimary];
}

- (HMMTRHAPService)initWithType:(id)type instanceID:(id)d parsedCharacteristics:(id)characteristics serviceProperties:(unint64_t)properties linkedServices:(id)services endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v19.receiver = self;
  v19.super_class = HMMTRHAPService;
  v16 = [(HAPService *)&v19 initWithType:type instanceID:d parsedCharacteristics:characteristics serviceProperties:properties linkedServices:services];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_endpoint, endpoint);
  }

  return v17;
}

+ (id)chipPluginServiceForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    service2 = [characteristicCopy service];
  }

  else
  {
    service2 = 0;
  }

  return service2;
}

@end