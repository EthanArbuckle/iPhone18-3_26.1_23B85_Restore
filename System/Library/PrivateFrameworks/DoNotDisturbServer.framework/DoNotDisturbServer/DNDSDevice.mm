@interface DNDSDevice
+ (id)currentDevice;
- (BOOL)isEqual:(id)equal;
- (id)_initWithClass:(unint64_t)class deviceCapabilities:(unint64_t)capabilities identifier:(id)identifier frameworkVersion:(id *)version;
- (id)description;
- (unint64_t)hash;
@end

@implementation DNDSDevice

+ (id)currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DNDSDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentDevice_onceToken != -1)
  {
    dispatch_once(&currentDevice_onceToken, block);
  }

  v2 = currentDevice_device;

  return v2;
}

void __27__DNDSDevice_currentDevice__block_invoke(uint64_t a1)
{
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___DNDSDevice;
  v2 = objc_msgSendSuper2(&v10, sel_currentDevice);
  v3 = IDSCopyLocalDeviceUniqueID();
  v4 = objc_alloc(*(a1 + 32));
  v5 = [v2 deviceClass];
  v6 = [v2 deviceCapabilities];
  if (v2)
  {
    [v2 frameworkVersion];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7 = [v4 _initWithClass:v5 deviceCapabilities:v6 identifier:v3 frameworkVersion:v9];
  v8 = currentDevice_device;
  currentDevice_device = v7;
}

- (id)_initWithClass:(unint64_t)class deviceCapabilities:(unint64_t)capabilities identifier:(id)identifier frameworkVersion:(id *)version
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = DNDSDevice;
  v15 = *version;
  v11 = [(DNDDevice *)&v16 initWithClass:class deviceCapabilities:capabilities frameworkVersion:&v15];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;
  }

  return v11;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DNDSDevice;
  v3 = [(DNDDevice *)&v7 hash];
  identifier = [(DNDSDevice *)self identifier];
  v5 = [identifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14.receiver = self;
      v14.super_class = DNDSDevice;
      if ([(DNDDevice *)&v14 isEqual:v5])
      {
        identifier = [(DNDSDevice *)self identifier];
        identifier2 = [(DNDSDevice *)v5 identifier];
        if (identifier == identifier2)
        {
          v12 = 1;
        }

        else
        {
          identifier3 = [(DNDSDevice *)self identifier];
          if (identifier3)
          {
            identifier4 = [(DNDSDevice *)v5 identifier];
            if (identifier4)
            {
              identifier5 = [(DNDSDevice *)self identifier];
              identifier6 = [(DNDSDevice *)v5 identifier];
              v12 = [identifier5 isEqual:identifier6];
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(DNDDevice *)self deviceClass];
  v5 = DNDStringFromDeviceClass();
  [(DNDDevice *)self deviceCapabilities];
  v6 = DNDStringFromDeviceCapabilities();
  identifier = [(DNDSDevice *)self identifier];
  [(DNDDevice *)self frameworkVersion];
  v8 = DNDStringFromOperatingSystemVersion();
  v9 = [v3 stringWithFormat:@"<%@: %p deviceClass: %@; deviceCapabilities: %@; identifier: %@; frameworkVersion: %@>", v4, self, v5, v6, identifier, v8];;

  return v9;
}

@end