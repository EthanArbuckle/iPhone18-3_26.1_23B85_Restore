@interface BMMicroLocationNumDevicesPerTechnology
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMicroLocationNumDevicesPerTechnology)initWithProto:(id)proto;
- (BMMicroLocationNumDevicesPerTechnology)initWithProtoData:(id)data;
- (BMMicroLocationNumDevicesPerTechnology)initWithTechnology:(id)technology numDevices:(unsigned int)devices;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationNumDevicesPerTechnology

- (BMMicroLocationNumDevicesPerTechnology)initWithTechnology:(id)technology numDevices:(unsigned int)devices
{
  technologyCopy = technology;
  v11.receiver = self;
  v11.super_class = BMMicroLocationNumDevicesPerTechnology;
  v7 = [(BMMicroLocationNumDevicesPerTechnology *)&v11 init];
  if (v7)
  {
    v8 = [technologyCopy copy];
    technology = v7->_technology;
    v7->_technology = v8;

    v7->_numDevices = devices;
  }

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMMicroLocationNumDevicesPerTechnology eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  proto = [(BMMicroLocationNumDevicesPerTechnology *)self proto];
  data = [proto data];

  return data;
}

- (BMMicroLocationNumDevicesPerTechnology)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasTechnologyString]&& ([v5 hasNumber]& 1) != 0)
      {
        technologyString = [v5 technologyString];
        self = [(BMMicroLocationNumDevicesPerTechnology *)self initWithTechnology:technologyString numDevices:[v5 number]];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMMicroLocationNumDevicesPerTechnology initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMicroLocationNumDevicesPerTechnology initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMMicroLocationNumDevicesPerTechnology)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNumDevicesPerTechnology alloc] initWithData:dataCopy];

    self = [(BMMicroLocationNumDevicesPerTechnology *)self initWithProto:v5];
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
  [v3 setTechnologyString:self->_technology];
  [v3 setNumber:self->_numDevices];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_technology hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numDevices];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v7 = v6;
    technology = self->_technology;
    v9 = technology;
    if (!technology)
    {
      technology = [v6 technology];
      if (!technology)
      {
        numDevices = self->_numDevices;
        v12 = numDevices == [v7 numDevices];
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v9 = self->_technology;
    }

    technology2 = [v7 technology];
    if ([(NSString *)v9 isEqualToString:technology2])
    {
      v11 = self->_numDevices;
      v12 = v11 == [v7 numDevices];
    }

    else
    {
      v12 = 0;
    }

    if (technology)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

@end