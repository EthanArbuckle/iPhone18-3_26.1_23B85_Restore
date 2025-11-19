@interface BMUserStatusChangeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMUserStatusChangeEvent)initWithIDSHandle:(id)a3 statusChangeType:(id)a4;
- (BMUserStatusChangeEvent)initWithIDSHandles:(id)a3 statusChangeType:(id)a4;
- (BMUserStatusChangeEvent)initWithProto:(id)a3;
- (BMUserStatusChangeEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMUserStatusChangeEvent

- (BMUserStatusChangeEvent)initWithIDSHandle:(id)a3 statusChangeType:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_idsHandle, a3);
  v7 = a3;
  v8 = a4;
  v13[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = [(BMUserStatusChangeEvent *)self initWithIDSHandles:v9 statusChangeType:v8];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BMUserStatusChangeEvent)initWithIDSHandles:(id)a3 statusChangeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BMUserStatusChangeEvent;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    idsHandles = v8->_idsHandles;
    v8->_idsHandles = v9;

    objc_storeStrong(&v8->_statusChangeType, a4);
  }

  return v8;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  idsHandles = self->_idsHandles;
  v5 = [v3 initWithFormat:@"UserStatusChangeEvent event with idsHandles: %@, statusChangeType: %@", idsHandles, self->_statusChangeType];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMUserStatusChangeEvent eventWithData:a4 dataVersion:v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = [[a1 alloc] initWithProtoData:v6];
  }

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMUserStatusChangeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMUserStatusChangeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMUserStatusChangeEvent *)self initWithProto:v9];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 idsHandles];
  v7 = [v5 statusChangeType];

  self = [(BMUserStatusChangeEvent *)self initWithIDSHandles:v6 statusChangeType:v7];
  v8 = self;
LABEL_8:

  return v8;
}

- (BMUserStatusChangeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBUserStatusChangeEvent alloc] initWithData:v4];

    self = [(BMUserStatusChangeEvent *)self initWithProto:v5];
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
  v4 = [(BMUserStatusChangeEvent *)self idsHandles];
  v5 = [v4 mutableCopy];
  [v3 setIdsHandles:v5];

  v6 = [(BMUserStatusChangeEvent *)self statusChangeType];
  [v3 setStatusChangeType:v6];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    idsHandles = self->_idsHandles;
    v7 = [v5 idsHandles];
    if ([(NSArray *)idsHandles isEqual:v7])
    {
      statusChangeType = self->_statusChangeType;
      v9 = [v5 statusChangeType];
      v10 = [(NSString *)statusChangeType isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end