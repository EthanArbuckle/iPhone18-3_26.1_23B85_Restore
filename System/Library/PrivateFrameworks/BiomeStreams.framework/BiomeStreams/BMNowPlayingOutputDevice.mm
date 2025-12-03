@interface BMNowPlayingOutputDevice
- (BMNowPlayingOutputDevice)initWithDeviceType:(unint64_t)type deviceSubType:(unint64_t)subType deviceId:(id)id;
- (BOOL)isEqual:(id)equal;
- (id)proto;
@end

@implementation BMNowPlayingOutputDevice

- (BMNowPlayingOutputDevice)initWithDeviceType:(unint64_t)type deviceSubType:(unint64_t)subType deviceId:(id)id
{
  idCopy = id;
  v14.receiver = self;
  v14.super_class = BMNowPlayingOutputDevice;
  v9 = [(BMNowPlayingOutputDevice *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_deviceType = type;
    v9->_deviceSubType = subType;
    v11 = [idCopy copy];
    deviceId = v10->_deviceId;
    v10->_deviceId = v11;
  }

  return v10;
}

- (id)proto
{
  v3 = objc_opt_new();
  deviceType = self->_deviceType;
  if (deviceType > 2)
  {
    switch(deviceType)
    {
      case 3:
        v5 = 0;
        v6 = 3;
        goto LABEL_17;
      case 4:
        v5 = 0;
        v6 = 4;
        goto LABEL_17;
      case 5:
        v5 = 0;
        v6 = 5;
        goto LABEL_17;
    }
  }

  else
  {
    switch(deviceType)
    {
      case 0:
        v5 = 0;
        v6 = 0;
        goto LABEL_17;
      case 1:
        v5 = 0;
        v6 = 1;
        goto LABEL_17;
      case 2:
        v5 = 0;
        v6 = 2;
        goto LABEL_17;
    }
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(BMNowPlayingOutputDevice *)deviceType proto];
  }

  v6 = 0xFFFFFFFFLL;
  v5 = 1;
LABEL_17:
  deviceSubType = self->_deviceSubType;
  if (deviceSubType >= 0x15)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BMNowPlayingOutputDevice *)deviceSubType proto];
    }
  }

  else if ((v5 & 1) == 0)
  {
    [v3 setOutputDeviceType:v6];
    [v3 setOutputDeviceSubType:deviceSubType];
    [v3 setOutputDeviceId:self->_deviceId];
    v9 = v3;
    goto LABEL_24;
  }

  v9 = 0;
LABEL_24:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceType = self->_deviceType;
    if (deviceType == [v5 deviceType] && (deviceSubType = self->_deviceSubType, deviceSubType == objc_msgSend(v5, "deviceSubType")))
    {
      deviceId = self->_deviceId;
      v9 = deviceId;
      if (!deviceId)
      {
        deviceSubType = [v5 deviceId];
        if (!deviceSubType)
        {
          v11 = 1;
LABEL_14:

          goto LABEL_11;
        }

        v9 = self->_deviceId;
      }

      deviceId = [v5 deviceId];
      v11 = [(NSString *)v9 isEqual:deviceId];

      if (!deviceId)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

@end