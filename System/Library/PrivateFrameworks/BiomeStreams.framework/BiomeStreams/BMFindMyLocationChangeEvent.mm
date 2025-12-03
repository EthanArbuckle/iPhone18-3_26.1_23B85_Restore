@interface BMFindMyLocationChangeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)handle locationChangeType:(unint64_t)type;
- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)handle locationChangeType:(unint64_t)type motionActivityState:(int64_t)state latitude:(id)latitude longitude:(id)longitude name:(id)name;
- (BMFindMyLocationChangeEvent)initWithProto:(id)proto;
- (BMFindMyLocationChangeEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMFindMyLocationChangeEvent

- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)handle locationChangeType:(unint64_t)type
{
  v6 = MEMORY[0x1E696AD98];
  handleCopy = handle;
  v8 = [v6 numberWithDouble:0.0];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v10 = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:handleCopy locationChangeType:type motionActivityState:0 latitude:v8 longitude:v9 name:&stru_1EF2B2408];

  return v10;
}

- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)handle locationChangeType:(unint64_t)type motionActivityState:(int64_t)state latitude:(id)latitude longitude:(id)longitude name:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = BMFindMyLocationChangeEvent;
  v15 = [(BMEventBase *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsHandle, handle);
    v16->_locationChangeType = type;
    v16->_motionActivityState = state;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    longitude = v16->_longitude;
    v16->_longitude = v17;

    objc_storeStrong(&v16->_latitude, v17);
    if (nameCopy)
    {
      v19 = nameCopy;
    }

    else
    {
      v19 = &stru_1EF2B2408;
    }

    name = v16->_name;
    v16->_name = &v19->isa;
  }

  return v16;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  idsHandle = self->_idsHandle;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_locationChangeType];
  motionActivityState = self->_motionActivityState;
  [(NSNumber *)self->_latitude doubleValue];
  v8 = v7;
  [(NSNumber *)self->_longitude doubleValue];
  v10 = [v3 initWithFormat:@"FindMyLocationChangeEvent event with idsHandle: %@ locationChangeType: %@ activity: %ld lat: %f lng: %f name:%@", idsHandle, v5, motionActivityState, v8, v9, self->_name];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    selfCopy = BMFindMyLocationChangeEvent_v1;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMFindMyLocationChangeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMFindMyLocationChangeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      idsHandle = [v5 idsHandle];
      locationChangeType = [v5 locationChangeType];
      v8 = locationChangeType;
      if (locationChangeType >= 3)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMFindMyLocationChangeEvent initWithProto:v8];
        }

        v9 = 3;
      }

      else
      {
        v9 = locationChangeType;
      }

      v12 = activityTypeWithState([v5 activityState]);
      v13 = MEMORY[0x1E696AD98];
      [v5 latitude];
      v14 = [v13 numberWithDouble:?];
      v15 = MEMORY[0x1E696AD98];
      [v5 longitude];
      v16 = [v15 numberWithDouble:?];
      name = [v5 name];
      self = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:idsHandle locationChangeType:v9 motionActivityState:v12 latitude:v14 longitude:v16 name:name];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMFindMyLocationChangeEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMFindMyLocationChangeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBFindMyLocationChangeEvent alloc] initWithData:dataCopy];

    self = [(BMFindMyLocationChangeEvent *)self initWithProto:v5];
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
  idsHandle = [(BMFindMyLocationChangeEvent *)self idsHandle];
  [v3 setIdsHandle:idsHandle];

  locationChangeType = [(BMFindMyLocationChangeEvent *)self locationChangeType];
  if (locationChangeType)
  {
    v6 = locationChangeType;
    if (locationChangeType == 2)
    {
      v7 = 0;
      v8 = 2;
    }

    else if (locationChangeType == 1)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(BMFindMyLocationChangeEvent *)v6 proto];
      }

      v8 = 0xFFFFFFFFLL;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  motionActivityState = self->_motionActivityState;
  if (motionActivityState >= 6)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMFindMyLocationChangeEvent *)motionActivityState proto];
    }
  }

  else if ((v7 & 1) == 0)
  {
    [v3 setLocationChangeType:v8];
    [v3 setActivityState:motionActivityState];
    [(NSNumber *)self->_latitude doubleValue];
    [v3 setLatitude:?];
    [(NSNumber *)self->_longitude doubleValue];
    [v3 setLongitude:?];
    [v3 setName:self->_name];
    v11 = v3;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    idsHandle = self->_idsHandle;
    idsHandle = [v5 idsHandle];
    if (-[NSString isEqualToString:](idsHandle, "isEqualToString:", idsHandle) && (locationChangeType = self->_locationChangeType, locationChangeType == [v5 locationChangeType]) && (motionActivityState = self->_motionActivityState, motionActivityState == objc_msgSend(v5, "motionActivityState")))
    {
      latitude = self->_latitude;
      latitude = [v5 latitude];
      if (latitude == latitude)
      {
        longitude = self->_longitude;
        longitude = [v5 longitude];
        if (longitude == longitude)
        {
          name = self->_name;
          name = [v5 name];
          v12 = [(NSString *)name isEqualToString:name];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end