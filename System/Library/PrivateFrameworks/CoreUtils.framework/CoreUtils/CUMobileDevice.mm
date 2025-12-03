@interface CUMobileDevice
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation CUMobileDevice

- (id)description
{
  v41 = 0;
  NSAppendPrintF(&v41, "CUMobileDevice ID %@", v2, v3, v4, v5, v6, v7, self->_identifier);
  v9 = v41;
  v16 = v9;
  udid = self->_udid;
  if (udid)
  {
    v40 = v9;
    NSAppendPrintF(&v40, ", UDID '%@'", v10, v11, v12, v13, v14, v15, udid);
    v18 = v40;

    v16 = v18;
  }

  name = self->_name;
  if (name)
  {
    v39 = v16;
    NSAppendPrintF(&v39, ", Name '%@'", v10, v11, v12, v13, v14, v15, name);
    v20 = v39;

    v16 = v20;
  }

  internalModel = self->_internalModel;
  if (internalModel)
  {
    v38 = v16;
    NSAppendPrintF(&v38, ", Model '%@'", v10, v11, v12, v13, v14, v15, internalModel);
    v22 = v38;

    v16 = v22;
  }

  wifiAddress = self->_wifiAddress;
  if (wifiAddress)
  {
    v37 = v16;
    NSAppendPrintF(&v37, ", WiFi '%@'", v10, v11, v12, v13, v14, v15, wifiAddress);
    v24 = v37;

    v16 = v24;
  }

  v36 = v16;
  if (self->_paired)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  NSAppendPrintF(&v36, ", Paired %s", v10, v11, v12, v13, v14, v15, v25);
  v26 = v36;

  if (self->_placeholder)
  {
    v35 = v26;
    NSAppendPrintF(&v35, ", Placeholder %s", v27, v28, v29, v30, v31, v32, "yes");
    v33 = v35;

    v26 = v33;
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    if (self->_connected)
    {
      *(v4 + 8) = 1;
    }

    identifier = self->_identifier;
    if (identifier)
    {
      objc_storeStrong((v4 + 16), identifier);
    }

    internalModel = self->_internalModel;
    if (internalModel)
    {
      objc_storeStrong((v5 + 24), internalModel);
    }

    name = self->_name;
    if (name)
    {
      objc_storeStrong((v5 + 32), name);
    }

    if (self->_paired)
    {
      *(v5 + 9) = 1;
    }

    if (self->_placeholder)
    {
      *(v5 + 10) = 1;
    }

    udid = self->_udid;
    if (udid)
    {
      objc_storeStrong((v5 + 40), udid);
    }

    wifiAddress = self->_wifiAddress;
    if (wifiAddress)
    {
      objc_storeStrong((v5 + 48), wifiAddress);
    }
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CUMobileDevice;
  [(CUMobileDevice *)&v2 dealloc];
}

@end