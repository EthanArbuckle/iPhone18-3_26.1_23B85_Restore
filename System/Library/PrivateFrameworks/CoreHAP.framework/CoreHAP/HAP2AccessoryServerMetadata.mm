@interface HAP2AccessoryServerMetadata
+ (id)new;
- (HAP2AccessoryServerMetadata)init;
- (HAP2AccessoryServerMetadata)initWithDeviceID:(id)d hasPairings:(BOOL)pairings protocolVersion:(id)version name:(id)name model:(id)model category:(unint64_t)category stateNumber:(unsigned __int16)number configNumber:(unsigned __int16)self0 setupHash:(id)self1;
@end

@implementation HAP2AccessoryServerMetadata

- (HAP2AccessoryServerMetadata)initWithDeviceID:(id)d hasPairings:(BOOL)pairings protocolVersion:(id)version name:(id)name model:(id)model category:(unint64_t)category stateNumber:(unsigned __int16)number configNumber:(unsigned __int16)self0 setupHash:(id)self1
{
  dCopy = d;
  versionCopy = version;
  nameCopy = name;
  modelCopy = model;
  hashCopy = hash;
  v26.receiver = self;
  v26.super_class = HAP2AccessoryServerMetadata;
  v20 = [(HAP2AccessoryServerMetadata *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceID, d);
    v21->_hasPairings = pairings;
    objc_storeStrong(&v21->_protocolVersion, version);
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v21->_model, model);
    v21->_category = category;
    v21->_stateNumber = number;
    v21->_configNumber = configNumber;
    objc_storeStrong(&v21->_setupHash, hash);
  }

  return v21;
}

- (HAP2AccessoryServerMetadata)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end