@interface HAPAccessoryProtocolInfo
- (HAPAccessoryProtocolInfo)initWithIdentifier:(id)a3 currentStateNumber:(id)a4 currentConfigNumber:(id)a5 modelName:(id)a6 protocolVersion:(id)a7 authMethods:(unsigned __int8)a8 statusFlags:(unsigned __int8)a9 categoryIdentifier:(unsigned __int16)a10 setupHash:(id)a11;
@end

@implementation HAPAccessoryProtocolInfo

- (HAPAccessoryProtocolInfo)initWithIdentifier:(id)a3 currentStateNumber:(id)a4 currentConfigNumber:(id)a5 modelName:(id)a6 protocolVersion:(id)a7 authMethods:(unsigned __int8)a8 statusFlags:(unsigned __int8)a9 categoryIdentifier:(unsigned __int16)a10 setupHash:(id)a11
{
  v17 = a3;
  v18 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  v19 = a11;
  v27.receiver = self;
  v27.super_class = HAPAccessoryProtocolInfo;
  v20 = [(HAPAccessoryProtocolInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceIdentifier, a3);
    objc_storeStrong(&v21->_currentStateNumber, a4);
    objc_storeStrong(&v21->_currentConfigNumber, a5);
    objc_storeStrong(&v21->_modelName, a6);
    objc_storeStrong(&v21->_protocolVersion, a7);
    v21->_featureFlags = a8;
    v21->_statusFlags = a9;
    v21->_categoryIdentifier = a10;
    objc_storeStrong(&v21->_setupHash, a11);
  }

  return v21;
}

@end