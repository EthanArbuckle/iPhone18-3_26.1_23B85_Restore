@interface IDSProtobuf
+ (id)keyRepresentationForType:(unsigned __int16)a3 isResponse:(BOOL)a4;
- (BOOL)isResponse;
- (IDSMessageContext)context;
- (IDSProtobuf)init;
- (IDSProtobuf)initWithCoder:(id)a3;
- (IDSProtobuf)initWithDictionary:(id)a3;
- (IDSProtobuf)initWithProtobufData:(id)a3 type:(unsigned __int16)a4 isResponse:(BOOL)a5;
- (NSData)data;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithUncompressedData;
- (unsigned)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setContext:(id)a3;
- (void)setData:(id)a3;
- (void)setIsResponse:(BOOL)a3;
- (void)setType:(unsigned __int16)a3;
@end

@implementation IDSProtobuf

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  objc_sync_exit(v2);

  v3.receiver = v2;
  v3.super_class = IDSProtobuf;
  [(IDSProtobuf *)&v3 dealloc];
}

+ (id)keyRepresentationForType:(unsigned __int16)a3 isResponse:(BOOL)a4
{
  if (a4)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4 | a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSProtobuf *)self type];
  v5 = [(IDSProtobuf *)self isResponse];
  v6 = [(IDSProtobuf *)self data];
  v7 = [v3 stringWithFormat:@"IDSProtobuf %p type %d isResponse %d data length %lu", self, v4, v5, objc_msgSend(v6, "length")];

  return v7;
}

- (IDSProtobuf)initWithProtobufData:(id)a3 type:(unsigned __int16)a4 isResponse:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v18.receiver = self;
  v18.super_class = IDSProtobuf;
  v9 = [(IDSProtobuf *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_sync_enter(v11);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v13 = v11[1];
    v11[1] = v12;

    v14 = v8;
    if (v14)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufDataKey", v14);
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
    if (v15)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufTypeKey", v15);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    if (v16)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufIsResponseKey", v16);
    }

    objc_sync_exit(v11);
  }

  return v10;
}

- (IDSProtobuf)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = IDSProtobuf;
    v5 = [(IDSProtobuf *)&v12 init];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      objc_sync_enter(v7);
      v8 = [v4 mutableCopy];
      protoBufParams = v7->_protoBufParams;
      v7->_protoBufParams = v8;

      objc_sync_exit(v7);
    }

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IDSProtobuf)init
{
  v8.receiver = self;
  v8.super_class = IDSProtobuf;
  v2 = [(IDSProtobuf *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    objc_sync_enter(v4);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    protoBufParams = v4->_protoBufParams;
    v4->_protoBufParams = v5;

    objc_sync_exit(v4);
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams mutableCopy];
  [v3 removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  objc_sync_exit(v2);

  return v3;
}

- (id)dictionaryRepresentationWithUncompressedData
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams mutableCopy];
  [v3 removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  [v3 setObject:v2->_uncompressedData forKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(v2);

  return v3;
}

- (void)setData:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_protoBufParams setObject:v5 forKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(v4);
}

- (NSData)data
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams objectForKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(v2);

  return v3;
}

- (void)setType:(unsigned __int16)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  protoBufParams = obj->_protoBufParams;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  [(NSMutableDictionary *)protoBufParams setObject:v5 forKey:@"IDSProtoBufTypeKey"];

  objc_sync_exit(obj);
}

- (unsigned)type
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams objectForKey:@"IDSProtoBufTypeKey"];
  v4 = [v3 unsignedIntegerValue];

  objc_sync_exit(v2);
  return v4;
}

- (void)setIsResponse:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  protoBufParams = obj->_protoBufParams;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSMutableDictionary *)protoBufParams setObject:v5 forKey:@"IDSProtoBufIsResponseKey"];

  objc_sync_exit(obj);
}

- (BOOL)isResponse
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams objectForKey:@"IDSProtoBufIsResponseKey"];
  v4 = [v3 BOOLValue];

  objc_sync_exit(v2);
  return v4;
}

- (IDSMessageContext)context
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_protoBufParams objectForKey:@"IDSProtoBufMessageContextKey"];
  objc_sync_exit(v2);

  return v3;
}

- (void)setContext:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  protoBufParams = v4->_protoBufParams;
  if (v6)
  {
    [(NSMutableDictionary *)protoBufParams setObject:v6 forKey:@"IDSProtoBufMessageContextKey"];
  }

  else
  {
    [(NSMutableDictionary *)protoBufParams removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  }

  objc_sync_exit(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_protoBufParams forKey:@"protobufparams"];
  objc_sync_exit(v4);
}

- (IDSProtobuf)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSProtobuf;
  v5 = [(IDSProtobuf *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v8 = [v4 decodeObjectForKey:@"protobufparams"];
    protoBufParams = v7->_protoBufParams;
    v7->_protoBufParams = v8;

    objc_sync_exit(v7);
  }

  return v6;
}

@end