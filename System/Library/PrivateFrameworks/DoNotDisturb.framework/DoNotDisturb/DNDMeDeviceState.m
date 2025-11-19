@interface DNDMeDeviceState
- (BOOL)isEqual:(id)a3;
- (DNDMeDeviceState)initWithCoder:(id)a3;
- (DNDMeDeviceState)initWithStatus:(unint64_t)a3 name:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDMeDeviceState

- (DNDMeDeviceState)initWithStatus:(unint64_t)a3 name:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = DNDMeDeviceState;
  v7 = [(DNDMeDeviceState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_meDeviceStatus = a3;
    v9 = [v6 copy];
    meDeviceName = v8->_meDeviceName;
    v8->_meDeviceName = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(DNDMeDeviceState *)self meDeviceStatus];
  v4 = [(DNDMeDeviceState *)self meDeviceName];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDMeDeviceState *)self meDeviceStatus];
      if (v6 == [(DNDMeDeviceState *)v5 meDeviceStatus])
      {
        v7 = [(DNDMeDeviceState *)self meDeviceName];
        v8 = [(DNDMeDeviceState *)v5 meDeviceName];
        if (v7 == v8)
        {
          v13 = 1;
        }

        else
        {
          v9 = [(DNDMeDeviceState *)self meDeviceName];
          if (v9)
          {
            v10 = [(DNDMeDeviceState *)v5 meDeviceName];
            if (v10)
            {
              v11 = [(DNDMeDeviceState *)self meDeviceName];
              v12 = [(DNDMeDeviceState *)v5 meDeviceName];
              v13 = [v11 isEqual:v12];
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

  v7 = [(DNDMeDeviceState *)self meDeviceName];
  v8 = [v3 stringWithFormat:@"<%@: %p meDeviceStatus: %@; meDeviceName: %@>", v4, self, v6, v7];;

  return v8;
}

- (DNDMeDeviceState)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"meDeviceStatus"])
  {
    v5 = [v4 decodeIntegerForKey:@"meDeviceStatus"];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"meDeviceName"];
  v7 = [(DNDMeDeviceState *)self initWithStatus:v5 name:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDMeDeviceState meDeviceStatus](self forKey:{"meDeviceStatus"), @"meDeviceStatus"}];
  v5 = [(DNDMeDeviceState *)self meDeviceName];
  [v4 encodeObject:v5 forKey:@"meDeviceName"];
}

@end