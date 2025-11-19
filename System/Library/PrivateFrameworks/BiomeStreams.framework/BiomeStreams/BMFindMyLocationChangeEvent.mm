@interface BMFindMyLocationChangeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)a3 locationChangeType:(unint64_t)a4;
- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)a3 locationChangeType:(unint64_t)a4 motionActivityState:(int64_t)a5 latitude:(id)a6 longitude:(id)a7 name:(id)a8;
- (BMFindMyLocationChangeEvent)initWithProto:(id)a3;
- (BMFindMyLocationChangeEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMFindMyLocationChangeEvent

- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)a3 locationChangeType:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:0.0];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v10 = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:v7 locationChangeType:a4 motionActivityState:0 latitude:v8 longitude:v9 name:&stru_1EF2B2408];

  return v10;
}

- (BMFindMyLocationChangeEvent)initWithIDSHandle:(id)a3 locationChangeType:(unint64_t)a4 motionActivityState:(int64_t)a5 latitude:(id)a6 longitude:(id)a7 name:(id)a8
{
  v13 = a3;
  v14 = a8;
  v22.receiver = self;
  v22.super_class = BMFindMyLocationChangeEvent;
  v15 = [(BMEventBase *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsHandle, a3);
    v16->_locationChangeType = a4;
    v16->_motionActivityState = a5;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    longitude = v16->_longitude;
    v16->_longitude = v17;

    objc_storeStrong(&v16->_latitude, v17);
    if (v14)
    {
      v19 = v14;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = BMFindMyLocationChangeEvent_v1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMFindMyLocationChangeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMFindMyLocationChangeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 idsHandle];
      v7 = [v5 locationChangeType];
      v8 = v7;
      if (v7 >= 3)
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
        v9 = v7;
      }

      v12 = activityTypeWithState([v5 activityState]);
      v13 = MEMORY[0x1E696AD98];
      [v5 latitude];
      v14 = [v13 numberWithDouble:?];
      v15 = MEMORY[0x1E696AD98];
      [v5 longitude];
      v16 = [v15 numberWithDouble:?];
      v17 = [v5 name];
      self = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:v6 locationChangeType:v9 motionActivityState:v12 latitude:v14 longitude:v16 name:v17];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMFindMyLocationChangeEvent initWithProto:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMFindMyLocationChangeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBFindMyLocationChangeEvent alloc] initWithData:v4];

    self = [(BMFindMyLocationChangeEvent *)self initWithProto:v5];
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
  v4 = [(BMFindMyLocationChangeEvent *)self idsHandle];
  [v3 setIdsHandle:v4];

  v5 = [(BMFindMyLocationChangeEvent *)self locationChangeType];
  if (v5)
  {
    v6 = v5;
    if (v5 == 2)
    {
      v7 = 0;
      v8 = 2;
    }

    else if (v5 == 1)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    idsHandle = self->_idsHandle;
    v7 = [v5 idsHandle];
    if (-[NSString isEqualToString:](idsHandle, "isEqualToString:", v7) && (locationChangeType = self->_locationChangeType, locationChangeType == [v5 locationChangeType]) && (motionActivityState = self->_motionActivityState, motionActivityState == objc_msgSend(v5, "motionActivityState")))
    {
      latitude = self->_latitude;
      v11 = [v5 latitude];
      if (latitude == v11)
      {
        longitude = self->_longitude;
        v15 = [v5 longitude];
        if (longitude == v15)
        {
          name = self->_name;
          v17 = [v5 name];
          v12 = [(NSString *)name isEqualToString:v17];
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