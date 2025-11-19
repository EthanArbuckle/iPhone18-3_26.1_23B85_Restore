@interface WDSource
- (WDSource)initWithSource:(id)a3 device:(id)a4;
@end

@implementation WDSource

- (WDSource)initWithSource:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = WDSource;
  v9 = [(WDSource *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceModel, a3);
    objc_storeStrong(&v10->_device, a4);
    if (v7)
    {
      v11 = [v7 source];
      name = [v11 name];
      v13 = [name copy];
      v14 = v13;
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
      if ([v8 _isConnectedGymDevice])
      {
        v16 = [v8 manufacturer];

        if (v16)
        {
          v17 = [v8 _connectedGymDeviceFullName];
          v11 = v17;
          if (v17)
          {
            v18 = v17;
            v11 = v18;
          }

          else
          {
            v18 = [v8 manufacturer];
          }

          name = v10->_name;
          v10->_name = v18;
          goto LABEL_23;
        }
      }

      v11 = [v8 name];
      v19 = [v11 copy];
      name = v19;
      if (v19)
      {
        v20 = v19;
        v14 = v10->_name;
        v10->_name = v20;
      }

      else
      {
        v14 = [v8 model];
        v21 = [v14 copy];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
          v24 = v10->_name;
          v10->_name = v23;
        }

        else
        {
          v24 = [v8 manufacturer];
          v25 = [v24 copy];
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