@interface _CDContextualKeyPath
+ (_CDContextualKeyPath)keyPathWithKey:(id)a3;
+ (id)ephemeralKeyPathWithKey:(id)a3;
+ (id)remoteKeyPathForKeyPath:(id)a3 forDeviceID:(id)a4;
+ (id)remotekeyPathForKeyPath:(id)a3 forDevice:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMultiDeviceKeyPath;
- (_CDContextualKeyPath)initWithCoder:(id)a3;
- (_CDContextualKeyPath)initWithKey:(id)a3 forDeviceID:(id)a4 isUserCentric:(BOOL)a5 isEphemeral:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)encodeWithCoder:(id)a3;
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
  v6 = [v5 deviceID];
  LOBYTE(deviceID) = [(NSString *)deviceID isEqualToString:v6];

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

- (_CDContextualKeyPath)initWithKey:(id)a3 forDeviceID:(id)a4 isUserCentric:(BOOL)a5 isEphemeral:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _CDContextualKeyPath;
  v13 = [(_CDContextualKeyPath *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, a3);
    objc_storeStrong(&v14->_deviceID, a4);
    v14->_isUserCentric = a5;
    v14->_isEphemeral = a6;
  }

  return v14;
}

+ (_CDContextualKeyPath)keyPathWithKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[_CDDevice localDevice];
  v6 = [v5 deviceID];
  v7 = [v4 initWithKey:v3 forDeviceID:v6 isUserCentric:0 isEphemeral:0];

  return v7;
}

+ (id)ephemeralKeyPathWithKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = +[_CDDevice localDevice];
  v6 = [v5 deviceID];
  v7 = [v4 initWithKey:v3 forDeviceID:v6 isUserCentric:0 isEphemeral:1];

  return v7;
}

+ (id)remotekeyPathForKeyPath:(id)a3 forDevice:(unint64_t)a4
{
  v4 = [a3 copy];

  return v4;
}

+ (id)remoteKeyPathForKeyPath:(id)a3 forDeviceID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isUserCentric])
  {
    v7 = [v5 copy];
  }

  else
  {
    v8 = [_CDContextualKeyPath alloc];
    v9 = [v5 key];
    v7 = -[_CDContextualKeyPath initWithKey:forDeviceID:isUserCentric:isEphemeral:](v8, "initWithKey:forDeviceID:isUserCentric:isEphemeral:", v9, v6, [v5 isUserCentric], objc_msgSend(v5, "isEphemeral"));
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

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"key"];
  [v5 encodeObject:self->_deviceID forKey:@"deviceID"];
  [v5 encodeBool:self->_isUserCentric forKey:@"userCentric"];
  [v5 encodeBool:self->_isEphemeral forKey:@"ephemeral"];
  [v5 encodeBool:self->_sensitiveContents forKey:@"sensitiveContents"];
}

- (_CDContextualKeyPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
    if (v6 && [v4 containsValueForKey:@"userCentric"] && (v7 = objc_msgSend(v4, "decodeBoolForKey:", @"userCentric"), objc_msgSend(v4, "containsValueForKey:", @"ephemeral")))
    {
      v8 = [objc_alloc(objc_opt_class()) initWithKey:v5 forDeviceID:v6 isUserCentric:v7 isEphemeral:{objc_msgSend(v4, "decodeBoolForKey:", @"ephemeral"}];
      -[_CDContextualKeyPath setSensitiveContents:](v8, "setSensitiveContents:", [v4 decodeBoolForKey:@"sensitiveContents"]);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithKey:forDeviceID:isUserCentric:isEphemeral:", self->_key, self->_deviceID, self->_isUserCentric, self->_isEphemeral}];
  [v4 setSensitiveContents:self->_sensitiveContents];
  return v4;
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
      v5 = v4;
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

- (id)forwardingTargetForSelector:(SEL)a3
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