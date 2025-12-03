@interface BMReadMessageEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMReadMessageEvent)initWithIDSHandle:(id)handle;
- (BMReadMessageEvent)initWithProto:(id)proto;
- (BMReadMessageEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)initMarkUnreadWithIDSHandle:(id)handle;
- (id)proto;
@end

@implementation BMReadMessageEvent

- (BMReadMessageEvent)initWithIDSHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = BMReadMessageEvent;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsHandle, handle);
    v7->_markedUnread = 0;
  }

  return v7;
}

- (id)initMarkUnreadWithIDSHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = BMReadMessageEvent;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsHandle, handle);
    v7->_markedUnread = 1;
  }

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMReadMessageEvent eventWithData:version dataVersion:v7];
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
  proto = [(BMReadMessageEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMReadMessageEvent)initWithProto:(id)proto
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
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMReadMessageEvent *)self initWithProto:v9];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  markedUnread = [v5 markedUnread];
  idsHandle = [v5 idsHandle];
  if (markedUnread)
  {
    v8 = [(BMReadMessageEvent *)self initMarkUnreadWithIDSHandle:idsHandle];
  }

  else
  {
    v8 = [(BMReadMessageEvent *)self initWithIDSHandle:idsHandle];
  }

  self = v8;

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (BMReadMessageEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBReadMessageEvent alloc] initWithData:dataCopy];

    self = [(BMReadMessageEvent *)self initWithProto:v5];
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
  idsHandle = [(BMReadMessageEvent *)self idsHandle];
  v5 = [idsHandle mutableCopy];
  [v3 setIdsHandle:v5];

  [v3 setMarkedUnread:{-[BMReadMessageEvent markedUnread](self, "markedUnread")}];

  return v3;
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
    if ([(NSString *)idsHandle isEqual:idsHandle])
    {
      markedUnread = self->_markedUnread;
      v9 = markedUnread == [v5 markedUnread];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end