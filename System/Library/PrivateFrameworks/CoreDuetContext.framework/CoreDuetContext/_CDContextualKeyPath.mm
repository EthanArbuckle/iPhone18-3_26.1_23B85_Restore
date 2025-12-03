@interface _CDContextualKeyPath
+ (_CDContextualKeyPath)keyPathWithKey:(id)key;
+ (id)ephemeralKeyPathWithKey:(id)key;
+ (id)remoteKeyPathForKeyPath:(id)path forDeviceID:(id)d;
+ (id)remotekeyPathForKeyPath:(id)path forDevice:(unint64_t)device;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMultiDeviceKeyPath;
- (_CDContextualKeyPath)initWithCoder:(id)coder;
- (_CDContextualKeyPath)initWithKey:(id)key forDeviceID:(id)d isUserCentric:(BOOL)centric isEphemeral:(BOOL)ephemeral;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDContextualKeyPath

- (id)description
{
  if (self->_isUserCentric)
  {
    v3 = @"/user";
  }

  else
  {
    v3 = @"/device";
  }

  deviceID = self->_deviceID;
  v5 = +[_CDDevice localDevice];
  deviceID = [v5 deviceID];
  LOBYTE(deviceID) = [(NSString *)deviceID isEqualToString:deviceID];

  if (deviceID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, self->_key, v10];
  }

  else
  {
    v7 = self->_deviceID;
    if (!v7)
    {
      v7 = @"ANY";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ (device %@)", v3, self->_key, v7];
  }
  v8 = ;

  return v8;
}

- (_CDContextualKeyPath)initWithKey:(id)key forDeviceID:(id)d isUserCentric:(BOOL)centric isEphemeral:(BOOL)ephemeral
{
  keyCopy = key;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = _CDContextualKeyPath;
  v13 = [(_CDContextualKeyPath *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, key);
    objc_storeStrong(&v14->_deviceID, d);
    v14->_isUserCentric = centric;
    v14->_isEphemeral = ephemeral;
  }

  return v14;
}

+ (_CDContextualKeyPath)keyPathWithKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[_CDDevice localDevice];
  deviceID = [v5 deviceID];
  v7 = [v4 initWithKey:keyCopy forDeviceID:deviceID isUserCentric:0 isEphemeral:0];

  return v7;
}

+ (id)ephemeralKeyPathWithKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[_CDDevice localDevice];
  deviceID = [v5 deviceID];
  v7 = [v4 initWithKey:keyCopy forDeviceID:deviceID isUserCentric:0 isEphemeral:1];

  return v7;
}

+ (id)remotekeyPathForKeyPath:(id)path forDevice:(unint64_t)device
{
  v4 = [path copy];

  return v4;
}

+ (id)remoteKeyPathForKeyPath:(id)path forDeviceID:(id)d
{
  pathCopy = path;
  dCopy = d;
  if ([pathCopy isUserCentric])
  {
    v7 = [pathCopy copy];
  }

  else
  {
    v8 = [_CDContextualKeyPath alloc];
    v9 = [pathCopy key];
    v7 = -[_CDContextualKeyPath initWithKey:forDeviceID:isUserCentric:isEphemeral:](v8, "initWithKey:forDeviceID:isUserCentric:isEphemeral:", v9, dCopy, [pathCopy isUserCentric], objc_msgSend(pathCopy, "isEphemeral"));
  }

  return v7;
}

- (BOOL)isMultiDeviceKeyPath
{
  if (isMultiDeviceKeyPath_initialized != -1)
  {
    [_CDContextualKeyPath isMultiDeviceKeyPath];
  }

  v3 = isMultiDeviceKeyPath_whitelist;

  return [v3 containsObject:self];
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_deviceID forKey:@"deviceID"];
  [coderCopy encodeBool:self->_isUserCentric forKey:@"userCentric"];
  [coderCopy encodeBool:self->_isEphemeral forKey:@"ephemeral"];
  [coderCopy encodeBool:self->_sensitiveContents forKey:@"sensitiveContents"];
}

- (_CDContextualKeyPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    if (v6 && [coderCopy containsValueForKey:@"userCentric"] && (v7 = objc_msgSend(coderCopy, "decodeBoolForKey:", @"userCentric"), objc_msgSend(coderCopy, "containsValueForKey:", @"ephemeral")))
    {
      v8 = [objc_alloc(objc_opt_class()) initWithKey:v5 forDeviceID:v6 isUserCentric:v7 isEphemeral:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"ephemeral"}];
      -[_CDContextualKeyPath setSensitiveContents:](v8, "setSensitiveContents:", [coderCopy decodeBoolForKey:@"sensitiveContents"]);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithKey:forDeviceID:isUserCentric:isEphemeral:", self->_key, self->_deviceID, self->_isUserCentric, self->_isEphemeral}];
  [v4 setSensitiveContents:self->_sensitiveContents];
  return v4;
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
      v5 = equalCopy;
      v6 = v5;
      if (self->_isUserCentric)
      {
        if ([(_CDContextualKeyPath *)v5 isUserCentric])
        {
          goto LABEL_10;
        }

        if (self->_isUserCentric)
        {
LABEL_7:
          v7 = 0;
LABEL_11:

          goto LABEL_12;
        }
      }

      if ([(_CDContextualKeyPath *)v6 isUserCentric])
      {
        goto LABEL_7;
      }

LABEL_10:
      key = self->_key;
      v9 = [(_CDContextualKeyPath *)v6 key];
      v7 = [(NSString *)key isEqual:v9];

      goto LABEL_11;
    }

    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  key = self->_key;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_key;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end