@interface _CDDevice
+ (id)localDevice;
+ (unint64_t)identifierForDeviceID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDeviceTypes:(unint64_t)a3;
- (_CDDevice)initWithCoder:(id)a3;
- (_CDDevice)initWithName:(id)a3 deviceID:(id)a4 deviceClass:(int64_t)a5 model:(id)a6 companion:(BOOL)a7;
- (_CDDevice)initWithName:(id)a3 identifier:(unint64_t)a4 deviceClass:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDDevice

+ (id)localDevice
{
  if (localDevice_onceToken != -1)
  {
    +[_CDDevice localDevice];
  }

  v3 = localDevice_localDevice;

  return v3;
}

+ (unint64_t)identifierForDeviceID:(id)a3
{
  result = a3;
  if (a3)
  {
    strlen([a3 UTF8String]);
    __memcpy_chk();
    return 0;
  }

  return result;
}

- (_CDDevice)initWithName:(id)a3 deviceID:(id)a4 deviceClass:(int64_t)a5 model:(id)a6 companion:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [(_CDDevice *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    objc_storeStrong(&v17->_deviceID, a4);
    v17->_identifier = [_CDDevice identifierForDeviceID:v14];
    v17->_deviceClass = a5;
    objc_storeStrong(&v17->_model, a6);
    v17->_companion = a7;
  }

  return v17;
}

- (_CDDevice)initWithName:(id)a3 identifier:(unint64_t)a4 deviceClass:(int64_t)a5
{
  v9 = a3;
  v10 = [(_CDDevice *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    v11->_identifier = a4;
    v11->_deviceClass = a5;
  }

  return v11;
}

- (BOOL)matchesDeviceTypes:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 0x1000000)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Companion requested without a specific device type.", v8, 2u);
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    LOBYTE(v5) = 0;
    deviceClass = self->_deviceClass;
    if (deviceClass > 3)
    {
      if (deviceClass > 5)
      {
        if (deviceClass == 6)
        {
          v5 = (a3 >> 6) & 1;
        }

        else
        {
          if (deviceClass != 7)
          {
            return v5 & 1;
          }

          v5 = (a3 >> 7) & 1;
        }
      }

      else if (deviceClass == 4)
      {
        v5 = (a3 >> 4) & 1;
      }

      else
      {
        v5 = (a3 >> 5) & 1;
      }
    }

    else if (deviceClass > 1)
    {
      if (deviceClass == 2)
      {
        v5 = (a3 >> 2) & 1;
      }

      else
      {
        v5 = (a3 >> 3) & 1;
      }
    }

    else if (deviceClass)
    {
      if (deviceClass != 1)
      {
        return v5 & 1;
      }

      v5 = (a3 >> 1) & 1;
    }

    else
    {
      LOBYTE(v5) = a3;
    }
  }

  if (v3 & 0x1000000) != 0 && (v5)
  {
    LOBYTE(v5) = self->_companion;
  }

  return v5 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v6 = a3;
  [v6 encodeObject:name forKey:@"name"];
  [v6 encodeObject:self->_deviceID forKey:@"deviceID"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceClass];
  [v6 encodeObject:v5 forKey:@"deviceClass"];

  [v6 encodeObject:self->_model forKey:@"model"];
  [v6 encodeBool:self->_companion forKey:@"companion"];
}

- (_CDDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
  v8 = [v7 integerValue];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  v10 = [v4 decodeBoolForKey:@"companion"];

  v11 = [objc_alloc(objc_opt_class()) initWithName:v5 deviceID:v6 deviceClass:v8 model:v9 companion:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CDDevice allocWithZone:a3];
  deviceID = self->_deviceID;
  name = self->_name;
  deviceClass = self->_deviceClass;
  model = self->_model;
  companion = self->_companion;

  return [(_CDDevice *)v4 initWithName:name deviceID:deviceID deviceClass:deviceClass model:model companion:companion];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceID = self->_deviceID;
      v6 = [(_CDDevice *)v4 deviceID];
      v7 = [(NSString *)deviceID isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [(_CDDevice *)self deviceClass];
  if (v3 > 7)
  {
    v4 = @"??";
  }

  else
  {
    v4 = off_1E78864C0[v3];
  }

  if (self->_companion)
  {
    v5 = @"<_CDDevice: %@: '%@' (%@), %@ (paired companion)>";
  }

  else
  {
    v5 = @"<_CDDevice: %@: '%@' (%@), %@>";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v4, self->_name, self->_deviceID, self->_model];

  return v6;
}

@end