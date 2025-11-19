@interface HAP2AccessoryServerDiscoveryHAPAccessoryInfo
- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4;
- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4 name:(id)a5 model:(id)a6 status:(unsigned __int8)a7 category:(unint64_t)a8 configurationNumber:(unint64_t)a9 stateNumber:(unint64_t)a10 protocolVersion:(id)a11 featureFlags:(unint64_t)a12 setupHash:(id)a13;
@end

@implementation HAP2AccessoryServerDiscoveryHAPAccessoryInfo

- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4 name:(id)a5 model:(id)a6 status:(unsigned __int8)a7 category:(unint64_t)a8 configurationNumber:(unint64_t)a9 stateNumber:(unint64_t)a10 protocolVersion:(id)a11 featureFlags:(unint64_t)a12 setupHash:(id)a13
{
  v18 = a5;
  v19 = a6;
  v26 = a11;
  v20 = a13;
  v27.receiver = self;
  v27.super_class = HAP2AccessoryServerDiscoveryHAPAccessoryInfo;
  v21 = [(HAP2AccessoryServerDiscoveryAccessoryInfo *)&v27 initWithDeviceID:a3 rawDiscoveryInfo:a4];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, a5);
    objc_storeStrong(&v22->_model, a6);
    v22->_status = a7;
    v22->_category = a8;
    v22->_configurationNumber = a9;
    v22->_stateNumber = a10;
    objc_storeStrong(&v22->_protocolVersion, a11);
    v22->_featureFlags = a12;
    objc_storeStrong(&v22->_setupHash, a13);
  }

  return v22;
}

- (HAP2AccessoryServerDiscoveryHAPAccessoryInfo)initWithDeviceID:(id)a3 rawDiscoveryInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
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