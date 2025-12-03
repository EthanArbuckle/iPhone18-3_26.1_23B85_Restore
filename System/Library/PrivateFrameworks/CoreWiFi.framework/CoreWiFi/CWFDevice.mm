@interface CWFDevice
- (BOOL)hasFetchedDeviceInfo;
- (BOOL)isEqual:(id)equal;
- (CWFDevice)initWithRapportDevice:(id)device;
- (CWFDevice)initWithUserInfo:(id)info;
- (id)userInfo;
@end

@implementation CWFDevice

- (CWFDevice)initWithRapportDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = CWFDevice;
  v5 = [(CWFDevice *)&v21 init];
  if (v5)
  {
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    deviceRapportEffectiveIdentifier = v5->_deviceRapportEffectiveIdentifier;
    v5->_deviceRapportEffectiveIdentifier = idsDeviceIdentifier;

    ipAddress = [deviceCopy ipAddress];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = ipAddress;

    name = [deviceCopy name];
    deviceName = v5->_deviceName;
    v5->_deviceName = name;

    model = [deviceCopy model];
    model = v5->_model;
    v5->_model = model;

    name2 = [deviceCopy name];
    productMarketingName = v5->_productMarketingName;
    v5->_productMarketingName = name2;

    model2 = [deviceCopy model];
    productType = v5->_productType;
    v5->_productType = model2;

    deviceColor = [deviceCopy deviceColor];
    productColor = v5->_productColor;
    v5->_productColor = deviceColor;
  }

  return v5;
}

- (CWFDevice)initWithUserInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = CWFDevice;
  v5 = [(CWFDevice *)&v22 init];
  allValues = [infoCopy allValues];

  if (allValues)
  {
    if (v5)
    {
      v7 = [infoCopy objectForKeyedSubscript:@"deviceRapportEffectiveIdentifier"];
      deviceRapportEffectiveIdentifier = v5->_deviceRapportEffectiveIdentifier;
      v5->_deviceRapportEffectiveIdentifier = v7;

      v9 = [infoCopy objectForKeyedSubscript:@"deviceMACAddress"];
      macAddress = v5->_macAddress;
      v5->_macAddress = v9;

      v11 = [infoCopy objectForKeyedSubscript:@"deviceName"];
      deviceName = v5->_deviceName;
      v5->_deviceName = v11;

      v13 = [infoCopy objectForKeyedSubscript:@"deviceMarketingName"];
      productMarketingName = v5->_productMarketingName;
      v5->_productMarketingName = v13;

      v15 = [infoCopy objectForKeyedSubscript:@"deviceModel"];
      model = v5->_model;
      v5->_model = v15;

      v17 = [infoCopy objectForKeyedSubscript:@"deviceProductType"];
      productType = v5->_productType;
      v5->_productType = v17;

      v19 = [infoCopy objectForKeyedSubscript:@"deviceProductColor"];
      productColor = v5->_productColor;
      v5->_productColor = v19;
    }

    allValues = v5;
  }

  return allValues;
}

- (id)userInfo
{
  v3 = objc_opt_new();
  deviceRapportEffectiveIdentifier = [(CWFDevice *)self deviceRapportEffectiveIdentifier];
  [v3 setObject:deviceRapportEffectiveIdentifier forKeyedSubscript:@"deviceRapportEffectiveIdentifier"];

  macAddress = [(CWFDevice *)self macAddress];
  [v3 setObject:macAddress forKeyedSubscript:@"deviceMACAddress"];

  deviceName = [(CWFDevice *)self deviceName];
  [v3 setObject:deviceName forKeyedSubscript:@"deviceName"];

  productMarketingName = [(CWFDevice *)self productMarketingName];
  [v3 setObject:productMarketingName forKeyedSubscript:@"deviceMarketingName"];

  model = [(CWFDevice *)self model];
  [v3 setObject:model forKeyedSubscript:@"deviceModel"];

  productType = [(CWFDevice *)self productType];
  [v3 setObject:productType forKeyedSubscript:@"deviceProductType"];

  productColor = [(CWFDevice *)self productColor];
  [v3 setObject:productColor forKeyedSubscript:@"deviceProductColor"];

  return v3;
}

- (BOOL)hasFetchedDeviceInfo
{
  deviceName = [(CWFDevice *)self deviceName];
  if (deviceName)
  {
    productMarketingName = [(CWFDevice *)self productMarketingName];
    if (productMarketingName)
    {
      model = [(CWFDevice *)self model];
      v6 = model != 0;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceRapportEffectiveIdentifier = [equalCopy deviceRapportEffectiveIdentifier];
    v6 = [deviceRapportEffectiveIdentifier isEqual:self->_deviceRapportEffectiveIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end