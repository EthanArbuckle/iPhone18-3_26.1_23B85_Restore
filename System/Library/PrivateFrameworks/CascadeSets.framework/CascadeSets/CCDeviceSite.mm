@interface CCDeviceSite
+ (id)deviceSiteForLocalDeviceUUID:(id)d resourceGeneration:(id)generation idsDeviceId:(id)id platform:(int64_t)platform;
+ (id)deviceSiteFromRecord:(id)record;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceSite:(id)site;
- (CCDeviceSite)init;
- (CCDeviceSite)initWithCoder:(id)coder;
- (CCDeviceSite)initWithDevice:(id)device resourceGeneration:(id)generation deltaGeneration:(id)deltaGeneration expirationDate:(id)date;
- (id)copyWithExpirationDate:(id)date;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCDeviceSite

+ (id)deviceSiteForLocalDeviceUUID:(id)d resourceGeneration:(id)generation idsDeviceId:(id)id platform:(int64_t)platform
{
  idCopy = id;
  generationCopy = generation;
  dCopy = d;
  v12 = [[CCDevice alloc] initWithDeviceUUID:dCopy idsDeviceId:idCopy platform:platform options:1];

  v13 = [objc_alloc(objc_opt_class()) initWithDevice:v12 resourceGeneration:generationCopy deltaGeneration:&unk_1F2EC93D8 expirationDate:0];

  return v13;
}

+ (id)deviceSiteFromRecord:(id)record
{
  recordCopy = record;
  recordOptions = [recordCopy recordOptions];
  v5 = [CCDevice alloc];
  deviceUUID = [recordCopy deviceUUID];
  idsDeviceId = [recordCopy idsDeviceId];
  v8 = -[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:](v5, "initWithDeviceUUID:idsDeviceId:platform:options:", deviceUUID, idsDeviceId, [recordCopy platform], recordOptions & 1);

  v9 = [CCDeviceSite alloc];
  resourceGeneration = [recordCopy resourceGeneration];
  deltaGeneration = [recordCopy deltaGeneration];
  expirationDate = [recordCopy expirationDate];

  v13 = [(CCDeviceSite *)v9 initWithDevice:v8 resourceGeneration:resourceGeneration deltaGeneration:deltaGeneration expirationDate:expirationDate];

  return v13;
}

- (CCDeviceSite)initWithDevice:(id)device resourceGeneration:(id)generation deltaGeneration:(id)deltaGeneration expirationDate:(id)date
{
  deviceCopy = device;
  generationCopy = generation;
  deltaGenerationCopy = deltaGeneration;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = CCDeviceSite;
  v15 = [(CCDeviceSite *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, device);
    objc_storeStrong(&v16->_resourceGeneration, generation);
    objc_storeStrong(&v16->_deltaGeneration, deltaGeneration);
    objc_storeStrong(&v16->_expirationDate, date);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDeviceSite *)self isEqualToDeviceSite:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeviceSite:(id)site
{
  siteCopy = site;
  device = self->_device;
  device = [siteCopy device];
  if ([(CCDevice *)device isEqual:device])
  {
    resourceGeneration = self->_resourceGeneration;
    resourceGeneration = [siteCopy resourceGeneration];
    if (![(NSNumber *)resourceGeneration isEqual:resourceGeneration])
    {
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    deltaGeneration = self->_deltaGeneration;
    deltaGeneration = [siteCopy deltaGeneration];
    if ([deltaGeneration isEqual:deltaGeneration])
    {
      expirationDate = self->_expirationDate;
      v12 = expirationDate;
      if (!expirationDate)
      {
        deltaGeneration = [siteCopy expirationDate];
        if (!deltaGeneration)
        {
          v14 = 1;
LABEL_13:

          goto LABEL_14;
        }

        v12 = self->_expirationDate;
      }

      expirationDate = [siteCopy expirationDate];
      v14 = [(NSDate *)v12 isEqual:expirationDate];

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

- (id)copyWithExpirationDate:(id)date
{
  dateCopy = date;
  v5 = [[CCDeviceSite alloc] initWithDevice:self->_device resourceGeneration:self->_resourceGeneration deltaGeneration:self->_deltaGeneration expirationDate:dateCopy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  device = self->_device;
  coderCopy = coder;
  [coderCopy encodeObject:device forKey:@"device"];
  [coderCopy encodeObject:self->_resourceGeneration forKey:@"resourceGeneration"];
  [coderCopy encodeObject:self->_deltaGeneration forKey:@"deltaGeneration"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (CCDeviceSite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceGeneration"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deltaGeneration"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];

  v9 = [(CCDeviceSite *)self initWithDevice:v5 resourceGeneration:v6 deltaGeneration:v7 expirationDate:v8];
  return v9;
}

- (id)initFromDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [CCDevice alloc];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"device"];
    v7 = [(CCDevice *)v5 initFromDictionary:v6];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resourceGeneration"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deltaGeneration"];
    if (!v9)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CCDeviceSite initFromDictionary:v10];
      }

      v9 = &unk_1F2EC93F0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timeToLiveSeconds"];
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
        selfCopy = self;
        _os_log_debug_impl(&dword_1B6DB2000, v15, OS_LOG_TYPE_DEBUG, "Resolved expiration date: %@ from TTL seconds: %@ during OPACK decoding for device site: %@", &v18, 0x20u);
      }
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  v21[3] = *MEMORY[0x1E69E9840];
  device = [(CCDeviceSite *)self device];
  dictionaryRepresentation = [device dictionaryRepresentation];

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v21[0] = dictionaryRepresentation;
  resourceGeneration = [(CCDeviceSite *)self resourceGeneration];
  v21[1] = resourceGeneration;
  deltaGeneration = [(CCDeviceSite *)self deltaGeneration];
  v21[2] = deltaGeneration;
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
      selfCopy = self;
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