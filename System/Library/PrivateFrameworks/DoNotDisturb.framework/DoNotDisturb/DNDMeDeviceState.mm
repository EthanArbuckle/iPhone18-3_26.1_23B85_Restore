@interface DNDMeDeviceState
- (BOOL)isEqual:(id)equal;
- (DNDMeDeviceState)initWithCoder:(id)coder;
- (DNDMeDeviceState)initWithStatus:(unint64_t)status name:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDMeDeviceState

- (DNDMeDeviceState)initWithStatus:(unint64_t)status name:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = DNDMeDeviceState;
  v7 = [(DNDMeDeviceState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_meDeviceStatus = status;
    v9 = [nameCopy copy];
    meDeviceName = v8->_meDeviceName;
    v8->_meDeviceName = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  meDeviceStatus = [(DNDMeDeviceState *)self meDeviceStatus];
  meDeviceName = [(DNDMeDeviceState *)self meDeviceName];
  v5 = [meDeviceName hash];

  return v5 ^ meDeviceStatus;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      meDeviceStatus = [(DNDMeDeviceState *)self meDeviceStatus];
      if (meDeviceStatus == [(DNDMeDeviceState *)v5 meDeviceStatus])
      {
        meDeviceName = [(DNDMeDeviceState *)self meDeviceName];
        meDeviceName2 = [(DNDMeDeviceState *)v5 meDeviceName];
        if (meDeviceName == meDeviceName2)
        {
          v13 = 1;
        }

        else
        {
          meDeviceName3 = [(DNDMeDeviceState *)self meDeviceName];
          if (meDeviceName3)
          {
            meDeviceName4 = [(DNDMeDeviceState *)v5 meDeviceName];
            if (meDeviceName4)
            {
              meDeviceName5 = [(DNDMeDeviceState *)self meDeviceName];
              meDeviceName6 = [(DNDMeDeviceState *)v5 meDeviceName];
              v13 = [meDeviceName5 isEqual:meDeviceName6];
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDMeDeviceState *)self meDeviceStatus]- 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27843A3E0[v5];
  }

  meDeviceName = [(DNDMeDeviceState *)self meDeviceName];
  v8 = [v3 stringWithFormat:@"<%@: %p meDeviceStatus: %@; meDeviceName: %@>", v4, self, v6, meDeviceName];;

  return v8;
}

- (DNDMeDeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"meDeviceStatus"])
  {
    v5 = [coderCopy decodeIntegerForKey:@"meDeviceStatus"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meDeviceName"];
  v7 = [(DNDMeDeviceState *)self initWithStatus:v5 name:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDMeDeviceState meDeviceStatus](self forKey:{"meDeviceStatus"), @"meDeviceStatus"}];
  meDeviceName = [(DNDMeDeviceState *)self meDeviceName];
  [coderCopy encodeObject:meDeviceName forKey:@"meDeviceName"];
}

@end