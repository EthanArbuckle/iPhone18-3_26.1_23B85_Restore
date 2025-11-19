@interface BMMicroLocationNumDevicesPerTechnology
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMicroLocationNumDevicesPerTechnology)initWithProto:(id)a3;
- (BMMicroLocationNumDevicesPerTechnology)initWithProtoData:(id)a3;
- (BMMicroLocationNumDevicesPerTechnology)initWithTechnology:(id)a3 numDevices:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationNumDevicesPerTechnology

- (BMMicroLocationNumDevicesPerTechnology)initWithTechnology:(id)a3 numDevices:(unsigned int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BMMicroLocationNumDevicesPerTechnology;
  v7 = [(BMMicroLocationNumDevicesPerTechnology *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    technology = v7->_technology;
    v7->_technology = v8;

    v7->_numDevices = a4;
  }

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v2 = [(BMMicroLocationNumDevicesPerTechnology *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMMicroLocationNumDevicesPerTechnology)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasTechnologyString]&& ([v5 hasNumber]& 1) != 0)
      {
        v6 = [v5 technologyString];
        self = [(BMMicroLocationNumDevicesPerTechnology *)self initWithTechnology:v6 numDevices:[v5 number]];

        v7 = self;
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

    v7 = 0;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (BMMicroLocationNumDevicesPerTechnology)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNumDevicesPerTechnology alloc] initWithData:v4];

    self = [(BMMicroLocationNumDevicesPerTechnology *)self initWithProto:v5];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    technology = self->_technology;
    v9 = technology;
    if (!technology)
    {
      v3 = [v6 technology];
      if (!v3)
      {
        numDevices = self->_numDevices;
        v12 = numDevices == [v7 numDevices];
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v9 = self->_technology;
    }

    v10 = [v7 technology];
    if ([(NSString *)v9 isEqualToString:v10])
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