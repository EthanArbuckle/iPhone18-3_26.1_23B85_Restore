@interface CWFDevice
- (BOOL)hasFetchedDeviceInfo;
- (BOOL)isEqual:(id)a3;
- (CWFDevice)initWithRapportDevice:(id)a3;
- (CWFDevice)initWithUserInfo:(id)a3;
- (id)userInfo;
@end

@implementation CWFDevice

- (CWFDevice)initWithRapportDevice:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CWFDevice;
  v5 = [(CWFDevice *)&v21 init];
  if (v5)
  {
    v6 = [v4 idsDeviceIdentifier];
    deviceRapportEffectiveIdentifier = v5->_deviceRapportEffectiveIdentifier;
    v5->_deviceRapportEffectiveIdentifier = v6;

    v8 = [v4 ipAddress];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v8;

    v10 = [v4 name];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    v12 = [v4 model];
    model = v5->_model;
    v5->_model = v12;

    v14 = [v4 name];
    productMarketingName = v5->_productMarketingName;
    v5->_productMarketingName = v14;

    v16 = [v4 model];
    productType = v5->_productType;
    v5->_productType = v16;

    v18 = [v4 deviceColor];
    productColor = v5->_productColor;
    v5->_productColor = v18;
  }

  return v5;
}

- (CWFDevice)initWithUserInfo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CWFDevice;
  v5 = [(CWFDevice *)&v22 init];
  v6 = [v4 allValues];

  if (v6)
  {
    if (v5)
    {
      v7 = [v4 objectForKeyedSubscript:@"deviceRapportEffectiveIdentifier"];
      deviceRapportEffectiveIdentifier = v5->_deviceRapportEffectiveIdentifier;
      v5->_deviceRapportEffectiveIdentifier = v7;

      v9 = [v4 objectForKeyedSubscript:@"deviceMACAddress"];
      macAddress = v5->_macAddress;
      v5->_macAddress = v9;

      v11 = [v4 objectForKeyedSubscript:@"deviceName"];
      deviceName = v5->_deviceName;
      v5->_deviceName = v11;

      v13 = [v4 objectForKeyedSubscript:@"deviceMarketingName"];
      productMarketingName = v5->_productMarketingName;
      v5->_productMarketingName = v13;

      v15 = [v4 objectForKeyedSubscript:@"deviceModel"];
      model = v5->_model;
      v5->_model = v15;

      v17 = [v4 objectForKeyedSubscript:@"deviceProductType"];
      productType = v5->_productType;
      v5->_productType = v17;

      v19 = [v4 objectForKeyedSubscript:@"deviceProductColor"];
      productColor = v5->_productColor;
      v5->_productColor = v19;
    }

    v6 = v5;
  }

  return v6;
}

- (id)userInfo
{
  v3 = objc_opt_new();
  v4 = [(CWFDevice *)self deviceRapportEffectiveIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"deviceRapportEffectiveIdentifier"];

  v5 = [(CWFDevice *)self macAddress];
  [v3 setObject:v5 forKeyedSubscript:@"deviceMACAddress"];

  v6 = [(CWFDevice *)self deviceName];
  [v3 setObject:v6 forKeyedSubscript:@"deviceName"];

  v7 = [(CWFDevice *)self productMarketingName];
  [v3 setObject:v7 forKeyedSubscript:@"deviceMarketingName"];

  v8 = [(CWFDevice *)self model];
  [v3 setObject:v8 forKeyedSubscript:@"deviceModel"];

  v9 = [(CWFDevice *)self productType];
  [v3 setObject:v9 forKeyedSubscript:@"deviceProductType"];

  v10 = [(CWFDevice *)self productColor];
  [v3 setObject:v10 forKeyedSubscript:@"deviceProductColor"];

  return v3;
}

- (BOOL)hasFetchedDeviceInfo
{
  v3 = [(CWFDevice *)self deviceName];
  if (v3)
  {
    v4 = [(CWFDevice *)self productMarketingName];
    if (v4)
    {
      v5 = [(CWFDevice *)self model];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 deviceRapportEffectiveIdentifier];
    v6 = [v5 isEqual:self->_deviceRapportEffectiveIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end