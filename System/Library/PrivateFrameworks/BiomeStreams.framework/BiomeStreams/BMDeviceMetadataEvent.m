@interface BMDeviceMetadataEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMDeviceMetadataEvent)initWithName:(id)a3 build:(id)a4 supplementalBuild:(id)a5 platform:(int64_t)a6 rapidSecurityResponsePreReboot:(BOOL)a7;
- (BMDeviceMetadataEvent)initWithProto:(id)a3;
- (BMDeviceMetadataEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMDeviceMetadataEvent

- (BMDeviceMetadataEvent)initWithName:(id)a3 build:(id)a4 supplementalBuild:(id)a5 platform:(int64_t)a6 rapidSecurityResponsePreReboot:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = BMDeviceMetadataEvent;
  v15 = [(BMEventBase *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    name = v15->_name;
    v15->_name = v16;

    v18 = [v13 copy];
    build = v15->_build;
    v15->_build = v18;

    v20 = [v14 copy];
    supplementalBuild = v15->_supplementalBuild;
    v15->_supplementalBuild = v20;

    v15->_platform = a6;
    v15->_rapidSecurityResponsePreReboot = a7;
  }

  return v15;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (!a4)
  {
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    a1 = BMDeviceMetadataEvent_v1;
LABEL_4:
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v3 = [(BMDeviceMetadataEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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
  v2 = [(BMDeviceMetadataEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMDeviceMetadataEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v12 = 0;
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

  v5 = v4;
  v6 = [v5 name];
  v7 = [v5 build];
  v8 = [v5 supplementalBuild];
  v9 = [v5 platform];
  if (v9 > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_184D274A0[v9];
  }

  v13 = [v5 rapidSecurityResponsePreReboot];

  self = [(BMDeviceMetadataEvent *)self initWithName:v6 build:v7 supplementalBuild:v8 platform:v10 rapidSecurityResponsePreReboot:v13];
  v12 = self;
LABEL_11:

  return v12;
}

- (BMDeviceMetadataEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBDeviceMetadataEvent alloc] initWithData:v4];

    self = [(BMDeviceMetadataEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMDeviceMetadataEvent *)self name];
  [v3 setName:v4];

  v5 = [(BMDeviceMetadataEvent *)self build];
  [v3 setBuild:v5];

  v6 = [(BMDeviceMetadataEvent *)self supplementalBuild];
  [v3 setSupplementalBuild:v6];

  v7 = [(BMDeviceMetadataEvent *)self platform];
  if (v7 > 8)
  {
    v8 = 7;
  }

  else
  {
    v8 = dword_184D274E8[v7];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    build = self->_build;
    v7 = [v5 build];
    if ([(NSString *)build isEqualToString:v7])
    {
      supplementalBuild = self->_supplementalBuild;
      v9 = [v5 supplementalBuild];
      if (-[NSString isEqualToString:](supplementalBuild, "isEqualToString:", v9) && (platform = self->_platform, platform == [v5 platform]))
      {
        v11 = [(BMDeviceMetadataEvent *)self rapidSecurityResponsePreReboot];
        v12 = v11 ^ [v5 rapidSecurityResponsePreReboot] ^ 1;
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