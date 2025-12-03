@interface HAP2AccessoryServerDiscoveryHAPAccessoryInfo
- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)d rawDiscoveryInfo:(id)info;
- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)d rawDiscoveryInfo:(id)info name:(id)name model:(id)model status:(unsigned __int8)status category:(unint64_t)category configurationNumber:(unint64_t)number stateNumber:(unint64_t)self0 protocolVersion:(id)self1 featureFlags:(unint64_t)self2 setupHash:(id)self3;
@end

@implementation HAP2AccessoryServerDiscoveryHAPAccessoryInfo

- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)d rawDiscoveryInfo:(id)info name:(id)name model:(id)model status:(unsigned __int8)status category:(unint64_t)category configurationNumber:(unint64_t)number stateNumber:(unint64_t)self0 protocolVersion:(id)self1 featureFlags:(unint64_t)self2 setupHash:(id)self3
{
  nameCopy = name;
  modelCopy = model;
  versionCopy = version;
  hashCopy = hash;
  v27.receiver = self;
  v27.super_class = HAP2AccessoryServerDiscoveryHAPAccessoryInfo;
  v21 = [(HAP2AccessoryServerDiscoveryAccessoryInfo *)&v27 initWithDeviceID:d rawDiscoveryInfo:info];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v22->_model, model);
    v22->_status = status;
    v22->_category = category;
    v22->_configurationNumber = number;
    v22->_stateNumber = stateNumber;
    objc_storeStrong(&v22->_protocolVersion, version);
    v22->_featureFlags = flags;
    objc_storeStrong(&v22->_setupHash, hash);
  }

  return v22;
}

- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)d rawDiscoveryInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

@end