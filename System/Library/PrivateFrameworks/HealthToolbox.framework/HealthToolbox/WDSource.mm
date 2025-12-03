@interface WDSource
- (WDSource)initWithSource:(id)source device:(id)device;
@end

@implementation WDSource

- (WDSource)initWithSource:(id)source device:(id)device
{
  sourceCopy = source;
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = WDSource;
  v9 = [(WDSource *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceModel, source);
    objc_storeStrong(&v10->_device, device);
    if (sourceCopy)
    {
      source = [sourceCopy source];
      name = [source name];
      v13 = [name copy];
      model = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = &stru_28641D9B8;
      }

      objc_storeStrong(&v10->_name, v15);
    }

    else
    {
      if ([deviceCopy _isConnectedGymDevice])
      {
        manufacturer = [deviceCopy manufacturer];

        if (manufacturer)
        {
          _connectedGymDeviceFullName = [deviceCopy _connectedGymDeviceFullName];
          source = _connectedGymDeviceFullName;
          if (_connectedGymDeviceFullName)
          {
            manufacturer2 = _connectedGymDeviceFullName;
            source = manufacturer2;
          }

          else
          {
            manufacturer2 = [deviceCopy manufacturer];
          }

          name = v10->_name;
          v10->_name = manufacturer2;
          goto LABEL_23;
        }
      }

      source = [deviceCopy name];
      v19 = [source copy];
      name = v19;
      if (v19)
      {
        v20 = v19;
        model = v10->_name;
        v10->_name = v20;
      }

      else
      {
        model = [deviceCopy model];
        v21 = [model copy];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
          manufacturer3 = v10->_name;
          v10->_name = v23;
        }

        else
        {
          manufacturer3 = [deviceCopy manufacturer];
          v25 = [manufacturer3 copy];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = &stru_28641D9B8;
          }

          objc_storeStrong(&v10->_name, v27);
        }
      }
    }

LABEL_23:
  }

  return v10;
}

@end