@interface DNDDevice
+ (id)currentDevice;
+ (id)deviceWithClass:(unint64_t)a3 deviceCapabilities:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (DNDDevice)initWithClass:(unint64_t)a3 deviceCapabilities:(unint64_t)a4 frameworkVersion:(id *)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation DNDDevice

+ (id)currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__DNDDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentDevice_onceToken != -1)
  {
    dispatch_once(&currentDevice_onceToken, block);
  }

  v2 = currentDevice_device;

  return v2;
}

void __26__DNDDevice_currentDevice__block_invoke(uint64_t a1)
{
  v2 = MGGetSInt32Answer();
  v3 = DNDDeviceClassFromMGDeviceClass(v2);
  v4 = MGGetBoolAnswer();
  if (_DNDCurrentFrameworkVersion_onceToken != -1)
  {
    __26__DNDDevice_currentDevice__block_invoke_cold_1();
  }

  v10 = _DNDCurrentFrameworkVersion_currentVersion;
  v11 = qword_280AF21F8;
  v5 = objc_alloc(*(a1 + 32));
  v8 = v10;
  v9 = v11;
  v6 = [v5 initWithClass:v3 deviceCapabilities:v4 frameworkVersion:&v8];
  v7 = currentDevice_device;
  currentDevice_device = v6;
}

+ (id)deviceWithClass:(unint64_t)a3 deviceCapabilities:(unint64_t)a4
{
  memset(v6, 0, sizeof(v6));
  v4 = [[a1 alloc] initWithClass:a3 deviceCapabilities:a4 frameworkVersion:v6];

  return v4;
}

- (DNDDevice)initWithClass:(unint64_t)a3 deviceCapabilities:(unint64_t)a4 frameworkVersion:(id *)a5
{
  v10.receiver = self;
  v10.super_class = DNDDevice;
  result = [(DNDDevice *)&v10 init];
  if (result)
  {
    result->_deviceClass = a3;
    result->_deviceCapabilities = a4;
    v9 = *&a5->var0;
    result->_frameworkVersion.patchVersion = a5->var2;
    *&result->_frameworkVersion.majorVersion = v9;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(DNDDevice *)self deviceClass];
  v4 = [(DNDDevice *)self deviceCapabilities]^ v3;
  [(DNDDevice *)self frameworkVersion];
  v5 = DNDStringFromOperatingSystemVersion(v8);
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDDevice *)self deviceClass];
      if (v6 == [(DNDDevice *)v5 deviceClass]&& (v7 = [(DNDDevice *)self deviceCapabilities], v7 == [(DNDDevice *)v5 deviceCapabilities]))
      {
        [(DNDDevice *)self frameworkVersion];
        v8 = DNDStringFromOperatingSystemVersion(&v16);
        if (v5)
        {
          [(DNDDevice *)v5 frameworkVersion];
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
        }

        v10 = DNDStringFromOperatingSystemVersion(&v16);
        if (v8 == v10)
        {
          v9 = 1;
        }

        else
        {
          [(DNDDevice *)self frameworkVersion];
          v11 = DNDStringFromOperatingSystemVersion(&v16);
          if (v11)
          {
            if (v5)
            {
              [(DNDDevice *)v5 frameworkVersion];
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
            }

            v12 = DNDStringFromOperatingSystemVersion(&v16);
            if (v12)
            {
              [(DNDDevice *)self frameworkVersion];
              v13 = DNDStringFromOperatingSystemVersion(&v16);
              if (v5)
              {
                [(DNDDevice *)v5 frameworkVersion];
              }

              else
              {
                v16 = 0;
                v17 = 0;
                v18 = 0;
              }

              v14 = DNDStringFromOperatingSystemVersion(&v16);
              v9 = [v13 isEqual:v14];
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDStringFromDeviceClass([(DNDDevice *)self deviceClass]);
  v6 = DNDStringFromDeviceCapabilities([(DNDDevice *)self deviceCapabilities]);
  [(DNDDevice *)self frameworkVersion];
  v7 = DNDStringFromOperatingSystemVersion(v10);
  v8 = [v3 stringWithFormat:@"<%@: %p deviceClass: %@; deviceCapabilities: %@; frameworkVersion: %@>", v4, self, v5, v6, v7];;

  return v8;
}

@end