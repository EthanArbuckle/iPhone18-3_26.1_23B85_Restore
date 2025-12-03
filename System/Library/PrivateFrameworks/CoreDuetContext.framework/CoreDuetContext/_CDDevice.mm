@interface _CDDevice
+ (id)localDevice;
+ (unint64_t)identifierForDeviceID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDeviceTypes:(unint64_t)types;
- (_CDDevice)initWithCoder:(id)coder;
- (_CDDevice)initWithName:(id)name deviceID:(id)d deviceClass:(int64_t)class model:(id)model companion:(BOOL)companion;
- (_CDDevice)initWithName:(id)name identifier:(unint64_t)identifier deviceClass:(int64_t)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

+ (unint64_t)identifierForDeviceID:(id)d
{
  result = d;
  if (d)
  {
    strlen([d UTF8String]);
    __memcpy_chk();
    return 0;
  }

  return result;
}

- (_CDDevice)initWithName:(id)name deviceID:(id)d deviceClass:(int64_t)class model:(id)model companion:(BOOL)companion
{
  nameCopy = name;
  dCopy = d;
  modelCopy = model;
  v16 = [(_CDDevice *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_deviceID, d);
    v17->_identifier = [_CDDevice identifierForDeviceID:dCopy];
    v17->_deviceClass = class;
    objc_storeStrong(&v17->_model, model);
    v17->_companion = companion;
  }

  return v17;
}

- (_CDDevice)initWithName:(id)name identifier:(unint64_t)identifier deviceClass:(int64_t)class
{
  nameCopy = name;
  v10 = [(_CDDevice *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_identifier = identifier;
    v11->_deviceClass = class;
  }

  return v11;
}

- (BOOL)matchesDeviceTypes:(unint64_t)types
{
  typesCopy = types;
  if (types == 0x1000000)
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
          v5 = (types >> 6) & 1;
        }

        else
        {
          if (deviceClass != 7)
          {
            return v5 & 1;
          }

          v5 = (types >> 7) & 1;
        }
      }

      else if (deviceClass == 4)
      {
        v5 = (types >> 4) & 1;
      }

      else
      {
        v5 = (types >> 5) & 1;
      }
    }

    else if (deviceClass > 1)
    {
      if (deviceClass == 2)
      {
        v5 = (types >> 2) & 1;
      }

      else
      {
        v5 = (types >> 3) & 1;
      }
    }

    else if (deviceClass)
    {
      if (deviceClass != 1)
      {
        return v5 & 1;
      }

      v5 = (types >> 1) & 1;
    }

    else
    {
      LOBYTE(v5) = types;
    }
  }

  if (typesCopy & 0x1000000) != 0 && (v5)
  {
    LOBYTE(v5) = self->_companion;
  }

  return v5 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_deviceID forKey:@"deviceID"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceClass];
  [coderCopy encodeObject:v5 forKey:@"deviceClass"];

  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeBool:self->_companion forKey:@"companion"];
}

- (_CDDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
  integerValue = [v7 integerValue];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  v10 = [coderCopy decodeBoolForKey:@"companion"];

  v11 = [objc_alloc(objc_opt_class()) initWithName:v5 deviceID:v6 deviceClass:integerValue model:v9 companion:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CDDevice allocWithZone:zone];
  deviceID = self->_deviceID;
  name = self->_name;
  deviceClass = self->_deviceClass;
  model = self->_model;
  companion = self->_companion;

  return [(_CDDevice *)v4 initWithName:name deviceID:deviceID deviceClass:deviceClass model:model companion:companion];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      deviceID = self->_deviceID;
      deviceID = [(_CDDevice *)equalCopy deviceID];
      v7 = [(NSString *)deviceID isEqualToString:deviceID];
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
  deviceClass = [(_CDDevice *)self deviceClass];
  if (deviceClass > 7)
  {
    v4 = @"??";
  }

  else
  {
    v4 = off_1E78864C0[deviceClass];
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