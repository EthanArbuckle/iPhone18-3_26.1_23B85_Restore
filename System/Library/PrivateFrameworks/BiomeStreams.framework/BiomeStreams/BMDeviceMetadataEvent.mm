@interface BMDeviceMetadataEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMDeviceMetadataEvent)initWithName:(id)name build:(id)build supplementalBuild:(id)supplementalBuild platform:(int64_t)platform rapidSecurityResponsePreReboot:(BOOL)reboot;
- (BMDeviceMetadataEvent)initWithProto:(id)proto;
- (BMDeviceMetadataEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMDeviceMetadataEvent

- (BMDeviceMetadataEvent)initWithName:(id)name build:(id)build supplementalBuild:(id)supplementalBuild platform:(int64_t)platform rapidSecurityResponsePreReboot:(BOOL)reboot
{
  nameCopy = name;
  buildCopy = build;
  supplementalBuildCopy = supplementalBuild;
  v23.receiver = self;
  v23.super_class = BMDeviceMetadataEvent;
  v15 = [(BMEventBase *)&v23 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [buildCopy copy];
    build = v15->_build;
    v15->_build = v18;

    v20 = [supplementalBuildCopy copy];
    supplementalBuild = v15->_supplementalBuild;
    v15->_supplementalBuild = v20;

    v15->_platform = platform;
    v15->_rapidSecurityResponsePreReboot = reboot;
  }

  return v15;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (!version)
  {
    goto LABEL_4;
  }

  if (version == 1)
  {
    self = BMDeviceMetadataEvent_v1;
LABEL_4:
    v7 = [[self alloc] initWithProtoData:dataCopy];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)jsonDict
{
  v12[5] = *MEMORY[0x1E69E9840];
  name = self->_name;
  if (!name)
  {
    name = &stru_1EF2B2408;
  }

  v11[0] = @"name";
  v11[1] = @"build";
  build = self->_build;
  v12[0] = name;
  v12[1] = build;
  supplementalBuild = self->_supplementalBuild;
  if (!supplementalBuild)
  {
    supplementalBuild = &stru_1EF2B2408;
  }

  v12[2] = supplementalBuild;
  v11[2] = @"supplementalBuild";
  v11[3] = @"platform";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  v12[3] = v6;
  v11[4] = @"rapidSecurityResponsePreReboot";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_rapidSecurityResponsePreReboot];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMDeviceMetadataEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDeviceMetadataEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  proto = [(BMDeviceMetadataEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMDeviceMetadataEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BMDeviceMetadataEvent initWithProto:];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  name = [v5 name];
  build = [v5 build];
  supplementalBuild = [v5 supplementalBuild];
  platform = [v5 platform];
  if (platform > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_184D274A0[platform];
  }

  rapidSecurityResponsePreReboot = [v5 rapidSecurityResponsePreReboot];

  self = [(BMDeviceMetadataEvent *)self initWithName:name build:build supplementalBuild:supplementalBuild platform:v10 rapidSecurityResponsePreReboot:rapidSecurityResponsePreReboot];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (BMDeviceMetadataEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBDeviceMetadataEvent alloc] initWithData:dataCopy];

    self = [(BMDeviceMetadataEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  name = [(BMDeviceMetadataEvent *)self name];
  [v3 setName:name];

  build = [(BMDeviceMetadataEvent *)self build];
  [v3 setBuild:build];

  supplementalBuild = [(BMDeviceMetadataEvent *)self supplementalBuild];
  [v3 setSupplementalBuild:supplementalBuild];

  platform = [(BMDeviceMetadataEvent *)self platform];
  if (platform > 8)
  {
    v8 = 7;
  }

  else
  {
    v8 = dword_184D274E8[platform];
  }

  [v3 setPlatform:v8];
  [v3 setRapidSecurityResponsePreReboot:{-[BMDeviceMetadataEvent rapidSecurityResponsePreReboot](self, "rapidSecurityResponsePreReboot")}];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_build hash];
  v4 = [(NSString *)self->_supplementalBuild hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_platform];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_rapidSecurityResponsePreReboot];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    build = self->_build;
    build = [v5 build];
    if ([(NSString *)build isEqualToString:build])
    {
      supplementalBuild = self->_supplementalBuild;
      supplementalBuild = [v5 supplementalBuild];
      if (-[NSString isEqualToString:](supplementalBuild, "isEqualToString:", supplementalBuild) && (platform = self->_platform, platform == [v5 platform]))
      {
        rapidSecurityResponsePreReboot = [(BMDeviceMetadataEvent *)self rapidSecurityResponsePreReboot];
        v12 = rapidSecurityResponsePreReboot ^ [v5 rapidSecurityResponsePreReboot] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end