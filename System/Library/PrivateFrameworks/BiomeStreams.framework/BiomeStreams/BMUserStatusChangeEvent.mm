@interface BMUserStatusChangeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMUserStatusChangeEvent)initWithIDSHandle:(id)handle statusChangeType:(id)type;
- (BMUserStatusChangeEvent)initWithIDSHandles:(id)handles statusChangeType:(id)type;
- (BMUserStatusChangeEvent)initWithProto:(id)proto;
- (BMUserStatusChangeEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMUserStatusChangeEvent

- (BMUserStatusChangeEvent)initWithIDSHandle:(id)handle statusChangeType:(id)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_idsHandle, handle);
  handleCopy = handle;
  typeCopy = type;
  v13[0] = handleCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = [(BMUserStatusChangeEvent *)self initWithIDSHandles:v9 statusChangeType:typeCopy];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BMUserStatusChangeEvent)initWithIDSHandles:(id)handles statusChangeType:(id)type
{
  handlesCopy = handles;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = BMUserStatusChangeEvent;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v9 = [handlesCopy copy];
    idsHandles = v8->_idsHandles;
    v8->_idsHandles = v9;

    objc_storeStrong(&v8->_statusChangeType, type);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMUserStatusChangeEvent eventWithData:version dataVersion:v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = [[self alloc] initWithProtoData:dataCopy];
  }

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMUserStatusChangeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMUserStatusChangeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  v5 = protoCopy;
  idsHandles = [v5 idsHandles];
  statusChangeType = [v5 statusChangeType];

  self = [(BMUserStatusChangeEvent *)self initWithIDSHandles:idsHandles statusChangeType:statusChangeType];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMUserStatusChangeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBUserStatusChangeEvent alloc] initWithData:dataCopy];

    self = [(BMUserStatusChangeEvent *)self initWithProto:v5];
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
  idsHandles = [(BMUserStatusChangeEvent *)self idsHandles];
  v5 = [idsHandles mutableCopy];
  [v3 setIdsHandles:v5];

  statusChangeType = [(BMUserStatusChangeEvent *)self statusChangeType];
  [v3 setStatusChangeType:statusChangeType];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    idsHandles = self->_idsHandles;
    idsHandles = [v5 idsHandles];
    if ([(NSArray *)idsHandles isEqual:idsHandles])
    {
      statusChangeType = self->_statusChangeType;
      statusChangeType = [v5 statusChangeType];
      v10 = [(NSString *)statusChangeType isEqualToString:statusChangeType];
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