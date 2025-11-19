@interface BMReadMessageEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMReadMessageEvent)initWithIDSHandle:(id)a3;
- (BMReadMessageEvent)initWithProto:(id)a3;
- (BMReadMessageEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)initMarkUnreadWithIDSHandle:(id)a3;
- (id)proto;
@end

@implementation BMReadMessageEvent

- (BMReadMessageEvent)initWithIDSHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMReadMessageEvent;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsHandle, a3);
    v7->_markedUnread = 0;
  }

  return v7;
}

- (id)initMarkUnreadWithIDSHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMReadMessageEvent;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsHandle, a3);
    v7->_markedUnread = 1;
  }

  return v7;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMReadMessageEvent eventWithData:a4 dataVersion:v7];
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
  v2 = [(BMReadMessageEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMReadMessageEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v10 = 0;
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

  v5 = v4;
  v6 = [v5 markedUnread];
  v7 = [v5 idsHandle];
  if (v6)
  {
    v8 = [(BMReadMessageEvent *)self initMarkUnreadWithIDSHandle:v7];
  }

  else
  {
    v8 = [(BMReadMessageEvent *)self initWithIDSHandle:v7];
  }

  self = v8;

  v10 = self;
LABEL_11:

  return v10;
}

- (BMReadMessageEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBReadMessageEvent alloc] initWithData:v4];

    self = [(BMReadMessageEvent *)self initWithProto:v5];
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
  v4 = [(BMReadMessageEvent *)self idsHandle];
  v5 = [v4 mutableCopy];
  [v3 setIdsHandle:v5];

  [v3 setMarkedUnread:{-[BMReadMessageEvent markedUnread](self, "markedUnread")}];

  return v3;
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
    if ([(NSString *)idsHandle isEqual:v7])
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