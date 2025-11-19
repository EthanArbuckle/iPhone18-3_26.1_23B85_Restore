@interface HAP2AccessoryServerMetadata
+ (id)new;
- (HAP2AccessoryServerMetadata)init;
- (HAP2AccessoryServerMetadata)initWithDeviceID:(id)a3 hasPairings:(BOOL)a4 protocolVersion:(id)a5 name:(id)a6 model:(id)a7 category:(unint64_t)a8 stateNumber:(unsigned __int16)a9 configNumber:(unsigned __int16)a10 setupHash:(id)a11;
@end

@implementation HAP2AccessoryServerMetadata

- (HAP2AccessoryServerMetadata)initWithDeviceID:(id)a3 hasPairings:(BOOL)a4 protocolVersion:(id)a5 name:(id)a6 model:(id)a7 category:(unint64_t)a8 stateNumber:(unsigned __int16)a9 configNumber:(unsigned __int16)a10 setupHash:(id)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v25 = a7;
  v19 = a11;
  v26.receiver = self;
  v26.super_class = HAP2AccessoryServerMetadata;
  v20 = [(HAP2AccessoryServerMetadata *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceID, a3);
    v21->_hasPairings = a4;
    objc_storeStrong(&v21->_protocolVersion, a5);
    objc_storeStrong(&v21->_name, a6);
    objc_storeStrong(&v21->_model, a7);
    v21->_category = a8;
    v21->_stateNumber = a9;
    v21->_configNumber = a10;
    objc_storeStrong(&v21->_setupHash, a11);
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