@interface BMSubscriptionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSubscriptionEvent)initWithCoder:(id)coder;
- (BMSubscriptionEvent)initWithProto:(id)proto;
- (BMSubscriptionEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithClient:(id)client identifier:(id)identifier useCase:(id)case starting:(BOOL)starting bootUUID:(id)d;
- (id)encodeAsProto;
- (id)jsonDictionary;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSubscriptionEvent

- (id)_initWithClient:(id)client identifier:(id)identifier useCase:(id)case starting:(BOOL)starting bootUUID:(id)d
{
  clientCopy = client;
  identifierCopy = identifier;
  caseCopy = case;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = BMSubscriptionEvent;
  v17 = [(BMSubscriptionEvent *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_dataVersion = 1;
    objc_storeStrong(&v17->_client, client);
    objc_storeStrong(&v18->_identifier, identifier);
    v19 = [(NSString *)v18->_client stringByAppendingString:@":"];
    v20 = [v19 stringByAppendingString:identifierCopy];
    uniqueIdentifier = v18->_uniqueIdentifier;
    v18->_uniqueIdentifier = v20;

    objc_storeStrong(&v18->_useCase, case);
    v18->_starting = starting;
    objc_storeStrong(&v18->_bootUUID, d);
  }

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  useCase = self->_useCase;
  if (self->_starting)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: client=%@, identifier=%@, useCase=%@, starting=%@>", v4, *&self->_client, self->_useCase, v6];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_client hash];
  v4 = [(NSString *)self->_identifier hash]^ v3;
  return v4 ^ [(NSString *)self->_useCase hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      client = self->_client;
      if ((client == v5->_client || [(NSString *)client isEqual:?]) && ((identifier = self->_identifier, identifier == v5->_identifier) || [(NSString *)identifier isEqual:?]))
      {
        useCase = self->_useCase;
        if (useCase == v5->_useCase)
        {
          v9 = 1;
        }

        else
        {
          v9 = [(NSString *)useCase isEqual:?];
        }
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
  }

  return v9;
}

- (id)jsonDictionary
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"client";
  client = self->_client;
  null = client;
  if (!client)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"identifier";
  identifier = self->_identifier;
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"useCase";
  useCase = self->_useCase;
  null3 = useCase;
  if (!useCase)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = MEMORY[0x1E695E110];
  if (self->_starting)
  {
    v9 = MEMORY[0x1E695E118];
  }

  v16[2] = null3;
  v16[3] = v9;
  v15[3] = @"starting";
  v15[4] = @"bootUUID";
  uUIDString = [(NSUUID *)self->_bootUUID UUIDString];
  null4 = uUIDString;
  if (!uUIDString)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!uUIDString)
  {
  }

  if (useCase)
  {
    if (identifier)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (client)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!identifier)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (client)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
    v8 = v7;
    if (v7)
    {
      *(v7 + 16) = 1;
    }
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMSubscriptionEvent eventWithData:version dataVersion:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMSubscriptionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSubscriptionEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    bootUUID = [(BMPBSubscriptionEvent *)v5 bootUUID];

    if (bootUUID)
    {
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      bootUUID2 = [(BMPBSubscriptionEvent *)v5 bootUUID];
      bootUUID = [v7 initWithUUIDString:bootUUID2];
    }

    client = [(BMPBSubscriptionEvent *)v5 client];
    identifier = [(BMPBSubscriptionEvent *)v5 identifier];
    useCase = [(BMPBSubscriptionEvent *)v5 useCase];
    self = [(BMSubscriptionEvent *)self _initWithClient:client identifier:identifier useCase:useCase starting:[(BMPBSubscriptionEvent *)v5 starting] bootUUID:bootUUID];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSubscriptionEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[BMPBSubscriptionEvent alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(BMSubscriptionEvent *)self initWithProto:v5];
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
  [(BMPBSubscriptionEvent *)v3 setStarting:?];
  [(BMPBSubscriptionEvent *)v3 setClient:?];
  [(BMPBSubscriptionEvent *)v3 setIdentifier:?];
  [(BMPBSubscriptionEvent *)v3 setUseCase:?];
  uUIDString = [(NSUUID *)self->_bootUUID UUIDString];
  [(BMPBSubscriptionEvent *)v3 setBootUUID:uUIDString];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSubscriptionEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
  [coderCopy encodeInt64:objc_msgSend(objc_opt_class() forKey:{"latestDataVersion"), @"dver"}];
}

- (BMSubscriptionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5 || (v6 = [coderCopy decodeInt64ForKey:@"dver"], HIDWORD(v6)))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_opt_class() eventWithData:v5 dataVersion:v6];
  }

  return v7;
}

+ (void)eventWithData:(int)a1 dataVersion:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Unable to decode BMSubscriptionEvent with dataVersion %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end