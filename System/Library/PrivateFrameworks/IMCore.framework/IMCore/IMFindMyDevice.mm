@interface IMFindMyDevice
+ (id)deviceWithFMFDevice:(id)device;
+ (id)deviceWithFMLDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isThisDevice;
- (IMFindMyDevice)initWithFMFDevice:(id)device fmlDevice:(id)fmlDevice;
- (NSString)deviceName;
- (unint64_t)hash;
@end

@implementation IMFindMyDevice

+ (id)deviceWithFMFDevice:(id)device
{
  deviceCopy = device;
  v4 = [IMFindMyDevice alloc];
  v6 = objc_msgSend_initWithFMFDevice_fmlDevice_(v4, v5, deviceCopy, 0);

  return v6;
}

+ (id)deviceWithFMLDevice:(id)device
{
  deviceCopy = device;
  v4 = [IMFindMyDevice alloc];
  v6 = objc_msgSend_initWithFMFDevice_fmlDevice_(v4, v5, 0, deviceCopy);

  return v6;
}

- (IMFindMyDevice)initWithFMFDevice:(id)device fmlDevice:(id)fmlDevice
{
  deviceCopy = device;
  fmlDeviceCopy = fmlDevice;
  v12.receiver = self;
  v12.super_class = IMFindMyDevice;
  v9 = [(IMFindMyDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fmfDevice, device);
    objc_storeStrong(&v10->_fmlDevice, fmlDevice);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v11 = objc_msgSend_fmfDevice(self, v7, v8);
      if (v11 || (objc_msgSend_fmfDevice(v6, v9, v10), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = objc_msgSend_fmfDevice(self, v9, v10);
        v15 = objc_msgSend_fmfDevice(v6, v13, v14);
        isEqual = objc_msgSend_isEqual_(v12, v16, v15);

        if (v11)
        {

          if (isEqual)
          {
            goto LABEL_7;
          }
        }

        else
        {

          if (isEqual)
          {
            goto LABEL_7;
          }
        }

        v26 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_7:
      v20 = objc_msgSend_fmlDevice(self, v9, v10);
      if (v20 || (objc_msgSend_fmlDevice(v6, v18, v19), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = objc_msgSend_fmlDevice(self, v18, v19);
        v24 = objc_msgSend_fmlDevice(v6, v22, v23);
        v26 = objc_msgSend_isEqual_(v21, v25, v24);

        if (v20)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v26 = 1;
      }

      goto LABEL_17;
    }

    v26 = 0;
  }

LABEL_19:

  return v26;
}

- (BOOL)isThisDevice
{
  v4 = objc_msgSend_fmlDevice(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = objc_msgSend_fmlDevice(self, v6, v7);
LABEL_5:
    v15 = v8;
    isThisDevice = objc_msgSend_isThisDevice(v8, v9, v10);

    return isThisDevice;
  }

  v11 = objc_msgSend_fmfDevice(self, v6, v7);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v8 = objc_msgSend_fmfDevice(self, v13, v14);
    goto LABEL_5;
  }

  return 0;
}

- (NSString)deviceName
{
  v4 = objc_msgSend_fmlDevice(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = objc_msgSend_fmlDevice(self, v6, v7);
LABEL_5:
    v15 = v8;
    v16 = objc_msgSend_deviceName(v8, v9, v10);

    goto LABEL_7;
  }

  v11 = objc_msgSend_fmfDevice(self, v6, v7);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v8 = objc_msgSend_fmfDevice(self, v13, v14);
    goto LABEL_5;
  }

  v16 = 0;
LABEL_7:
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &stru_1F1B76F98;
  }

  v18 = v17;

  return &v17->isa;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_fmlDevice(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_fmfDevice(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

@end