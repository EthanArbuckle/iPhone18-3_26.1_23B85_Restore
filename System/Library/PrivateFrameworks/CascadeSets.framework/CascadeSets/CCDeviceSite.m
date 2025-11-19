@interface CCDeviceSite
+ (id)deviceSiteForLocalDeviceUUID:(id)a3 resourceGeneration:(id)a4 idsDeviceId:(id)a5 platform:(int64_t)a6;
+ (id)deviceSiteFromRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceSite:(id)a3;
- (CCDeviceSite)init;
- (CCDeviceSite)initWithCoder:(id)a3;
- (CCDeviceSite)initWithDevice:(id)a3 resourceGeneration:(id)a4 deltaGeneration:(id)a5 expirationDate:(id)a6;
- (id)copyWithExpirationDate:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCDeviceSite

+ (id)deviceSiteForLocalDeviceUUID:(id)a3 resourceGeneration:(id)a4 idsDeviceId:(id)a5 platform:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[CCDevice alloc] initWithDeviceUUID:v11 idsDeviceId:v9 platform:a6 options:1];

  v13 = [objc_alloc(objc_opt_class()) initWithDevice:v12 resourceGeneration:v10 deltaGeneration:&unk_1F2EC93D8 expirationDate:0];

  return v13;
}

+ (id)deviceSiteFromRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 recordOptions];
  v5 = [CCDevice alloc];
  v6 = [v3 deviceUUID];
  v7 = [v3 idsDeviceId];
  v8 = -[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:](v5, "initWithDeviceUUID:idsDeviceId:platform:options:", v6, v7, [v3 platform], v4 & 1);

  v9 = [CCDeviceSite alloc];
  v10 = [v3 resourceGeneration];
  v11 = [v3 deltaGeneration];
  v12 = [v3 expirationDate];

  v13 = [(CCDeviceSite *)v9 initWithDevice:v8 resourceGeneration:v10 deltaGeneration:v11 expirationDate:v12];

  return v13;
}

- (CCDeviceSite)initWithDevice:(id)a3 resourceGeneration:(id)a4 deltaGeneration:(id)a5 expirationDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CCDeviceSite;
  v15 = [(CCDeviceSite *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, a3);
    objc_storeStrong(&v16->_resourceGeneration, a4);
    objc_storeStrong(&v16->_deltaGeneration, a5);
    objc_storeStrong(&v16->_expirationDate, a6);
  }

  return v16;
}

- (CCDeviceSite)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = CCDeviceSite;
  v3 = [(CCDeviceSite *)&v11 description];
  v4 = v3;
  device = self->_device;
  resourceGeneration = self->_resourceGeneration;
  deltaGeneration = self->_deltaGeneration;
  if (self->_expirationDate)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" expirationDate: %@", self->_expirationDate];
    v9 = [v4 stringByAppendingFormat:@" device: %@ resourceGeneration: %@ deltaGeneration: %@%@", device, resourceGeneration, deltaGeneration, v8];
  }

  else
  {
    v9 = [v3 stringByAppendingFormat:@" device: %@ resourceGeneration: %@ deltaGeneration: %@%@", device, resourceGeneration, self->_deltaGeneration, &stru_1F2EBB700];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDeviceSite *)self isEqualToDeviceSite:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeviceSite:(id)a3
{
  v4 = a3;
  device = self->_device;
  v6 = [v4 device];
  if ([(CCDevice *)device isEqual:v6])
  {
    resourceGeneration = self->_resourceGeneration;
    v8 = [v4 resourceGeneration];
    if (![(NSNumber *)resourceGeneration isEqual:v8])
    {
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    deltaGeneration = self->_deltaGeneration;
    v10 = [v4 deltaGeneration];
    if ([deltaGeneration isEqual:v10])
    {
      expirationDate = self->_expirationDate;
      v12 = expirationDate;
      if (!expirationDate)
      {
        deltaGeneration = [v4 expirationDate];
        if (!deltaGeneration)
        {
          v14 = 1;
LABEL_13:

          goto LABEL_14;
        }

        v12 = self->_expirationDate;
      }

      v13 = [v4 expirationDate];
      v14 = [(NSDate *)v12 isEqual:v13];

      if (!expirationDate)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(CCDevice *)self->_device hash];
  v4 = [(NSNumber *)self->_resourceGeneration hash]^ v3;
  v5 = [(NSNumber *)self->_deltaGeneration hash];
  return v4 ^ v5 ^ [(NSDate *)self->_expirationDate hash];
}

- (id)copyWithExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [[CCDeviceSite alloc] initWithDevice:self->_device resourceGeneration:self->_resourceGeneration deltaGeneration:self->_deltaGeneration expirationDate:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  device = self->_device;
  v5 = a3;
  [v5 encodeObject:device forKey:@"device"];
  [v5 encodeObject:self->_resourceGeneration forKey:@"resourceGeneration"];
  [v5 encodeObject:self->_deltaGeneration forKey:@"deltaGeneration"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (CCDeviceSite)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceGeneration"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deltaGeneration"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  v9 = [(CCDeviceSite *)self initWithDevice:v5 resourceGeneration:v6 deltaGeneration:v7 expirationDate:v8];
  return v9;
}

- (id)initFromDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [CCDevice alloc];
    v6 = [v4 objectForKeyedSubscript:@"device"];
    v7 = [(CCDevice *)v5 initFromDictionary:v6];

    v8 = [v4 objectForKeyedSubscript:@"resourceGeneration"];
    v9 = [v4 objectForKeyedSubscript:@"deltaGeneration"];
    if (!v9)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CCDeviceSite initFromDictionary:v10];
      }

      v9 = &unk_1F2EC93F0;
    }

    v11 = [v4 objectForKeyedSubscript:@"timeToLiveSeconds"];
    v12 = v11;
    if (v11)
    {
      v13 = CCDateAsSecondsFromNow(v11);
    }

    else
    {
      v13 = 0;
    }

    self = [(CCDeviceSite *)self initWithDevice:v7 resourceGeneration:v8 deltaGeneration:v9 expirationDate:v13];
    if (v13)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412802;
        v19 = v13;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = self;
        _os_log_debug_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEBUG, "Resolved expiration date: %@ from TTL seconds: %@ during OPACK decoding for device site: %@", &v18, 0x20u);
      }
    }

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)dictionaryRepresentation
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [(CCDeviceSite *)self device];
  v4 = [v3 dictionaryRepresentation];

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v21[0] = v4;
  v6 = [(CCDeviceSite *)self resourceGeneration];
  v21[1] = v6;
  v7 = [(CCDeviceSite *)self deltaGeneration];
  v21[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v9 = [v5 initWithObjects:v8 forKeys:&unk_1F2EC96C0];

  v10 = CCSecondsFromNowUntilDate(self->_expirationDate);
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"timeToLiveSeconds"];
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      expirationDate = self->_expirationDate;
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = expirationDate;
      v19 = 2112;
      v20 = self;
      _os_log_debug_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEBUG, "Resolved TTL seconds: %@ from expiration date: %@ during OPACK encoding for device site: %@", &v15, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)initFromDictionary:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = &unk_1F2EC93F0;
  _os_log_debug_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_DEBUG, "Supplanting %@ for nil deltaGeneration", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end