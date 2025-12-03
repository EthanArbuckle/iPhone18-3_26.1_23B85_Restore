@interface IDSProtobuf
+ (id)keyRepresentationForType:(unsigned __int16)type isResponse:(BOOL)response;
- (BOOL)isResponse;
- (IDSMessageContext)context;
- (IDSProtobuf)init;
- (IDSProtobuf)initWithCoder:(id)coder;
- (IDSProtobuf)initWithDictionary:(id)dictionary;
- (IDSProtobuf)initWithProtobufData:(id)data type:(unsigned __int16)type isResponse:(BOOL)response;
- (NSData)data;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithUncompressedData;
- (unsigned)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setContext:(id)context;
- (void)setData:(id)data;
- (void)setIsResponse:(BOOL)response;
- (void)setType:(unsigned __int16)type;
@end

@implementation IDSProtobuf

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  v3.receiver = selfCopy;
  v3.super_class = IDSProtobuf;
  [(IDSProtobuf *)&v3 dealloc];
}

+ (id)keyRepresentationForType:(unsigned __int16)type isResponse:(BOOL)response
{
  if (response)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4 | type];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(IDSProtobuf *)self type];
  isResponse = [(IDSProtobuf *)self isResponse];
  data = [(IDSProtobuf *)self data];
  v7 = [v3 stringWithFormat:@"IDSProtobuf %p type %d isResponse %d data length %lu", self, type, isResponse, objc_msgSend(data, "length")];

  return v7;
}

- (IDSProtobuf)initWithProtobufData:(id)data type:(unsigned __int16)type isResponse:(BOOL)response
{
  responseCopy = response;
  typeCopy = type;
  dataCopy = data;
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

    v14 = dataCopy;
    if (v14)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufDataKey", v14);
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
    if (v15)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufTypeKey", v15);
    }

    v16 = [MEMORY[0x1E696AD98] numberWithBool:responseCopy];
    if (v16)
    {
      CFDictionarySetValue(v11[1], @"IDSProtoBufIsResponseKey", v16);
    }

    objc_sync_exit(v11);
  }

  return v10;
}

- (IDSProtobuf)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v12.receiver = self;
    v12.super_class = IDSProtobuf;
    v5 = [(IDSProtobuf *)&v12 init];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      objc_sync_enter(v7);
      v8 = [dictionaryCopy mutableCopy];
      protoBufParams = v7->_protoBufParams;
      v7->_protoBufParams = v8;

      objc_sync_exit(v7);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams mutableCopy];
  [v3 removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)dictionaryRepresentationWithUncompressedData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams mutableCopy];
  [v3 removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  [v3 setObject:selfCopy->_uncompressedData forKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_protoBufParams setObject:dataCopy forKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(selfCopy);
}

- (NSData)data
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams objectForKey:@"IDSProtoBufDataKey"];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setType:(unsigned __int16)type
{
  typeCopy = type;
  obj = self;
  objc_sync_enter(obj);
  protoBufParams = obj->_protoBufParams;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  [(NSMutableDictionary *)protoBufParams setObject:v5 forKey:@"IDSProtoBufTypeKey"];

  objc_sync_exit(obj);
}

- (unsigned)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams objectForKey:@"IDSProtoBufTypeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  objc_sync_exit(selfCopy);
  return unsignedIntegerValue;
}

- (void)setIsResponse:(BOOL)response
{
  responseCopy = response;
  obj = self;
  objc_sync_enter(obj);
  protoBufParams = obj->_protoBufParams;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:responseCopy];
  [(NSMutableDictionary *)protoBufParams setObject:v5 forKey:@"IDSProtoBufIsResponseKey"];

  objc_sync_exit(obj);
}

- (BOOL)isResponse
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams objectForKey:@"IDSProtoBufIsResponseKey"];
  bOOLValue = [v3 BOOLValue];

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (IDSMessageContext)context
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_protoBufParams objectForKey:@"IDSProtoBufMessageContextKey"];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  protoBufParams = selfCopy->_protoBufParams;
  if (contextCopy)
  {
    [(NSMutableDictionary *)protoBufParams setObject:contextCopy forKey:@"IDSProtoBufMessageContextKey"];
  }

  else
  {
    [(NSMutableDictionary *)protoBufParams removeObjectForKey:@"IDSProtoBufMessageContextKey"];
  }

  objc_sync_exit(selfCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_protoBufParams forKey:@"protobufparams"];
  objc_sync_exit(selfCopy);
}

- (IDSProtobuf)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSProtobuf;
  v5 = [(IDSProtobuf *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v8 = [coderCopy decodeObjectForKey:@"protobufparams"];
    protoBufParams = v7->_protoBufParams;
    v7->_protoBufParams = v8;

    objc_sync_exit(v7);
  }

  return v6;
}

@end