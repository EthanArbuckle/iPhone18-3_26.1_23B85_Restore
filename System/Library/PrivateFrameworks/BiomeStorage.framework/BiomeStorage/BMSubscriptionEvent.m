@interface BMSubscriptionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSubscriptionEvent)initWithCoder:(id)a3;
- (BMSubscriptionEvent)initWithProto:(id)a3;
- (BMSubscriptionEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithClient:(id)a3 identifier:(id)a4 useCase:(id)a5 starting:(BOOL)a6 bootUUID:(id)a7;
- (id)encodeAsProto;
- (id)jsonDictionary;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSubscriptionEvent

- (id)_initWithClient:(id)a3 identifier:(id)a4 useCase:(id)a5 starting:(BOOL)a6 bootUUID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = BMSubscriptionEvent;
  v17 = [(BMSubscriptionEvent *)&v23 init];
  v18 = v17;
  if (v17)
  {
    v17->_dataVersion = 1;
    objc_storeStrong(&v17->_client, a3);
    objc_storeStrong(&v18->_identifier, a4);
    v19 = [(NSString *)v18->_client stringByAppendingString:@":"];
    v20 = [v19 stringByAppendingString:v14];
    uniqueIdentifier = v18->_uniqueIdentifier;
    v18->_uniqueIdentifier = v20;

    objc_storeStrong(&v18->_useCase, a5);
    v18->_starting = a6;
    objc_storeStrong(&v18->_bootUUID, a7);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v4 = client;
  if (!client)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v4;
  v15[1] = @"identifier";
  identifier = self->_identifier;
  v6 = identifier;
  if (!identifier)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v6;
  v15[2] = @"useCase";
  useCase = self->_useCase;
  v8 = useCase;
  if (!useCase)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v9 = MEMORY[0x1E695E110];
  if (self->_starting)
  {
    v9 = MEMORY[0x1E695E118];
  }

  v16[2] = v8;
  v16[3] = v9;
  v15[3] = @"starting";
  v15[4] = @"bootUUID";
  v10 = [(NSUUID *)self->_bootUUID UUIDString];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (!v10)
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
      [BMSubscriptionEvent eventWithData:a4 dataVersion:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMSubscriptionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSubscriptionEvent)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPBSubscriptionEvent *)v5 bootUUID];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = [(BMPBSubscriptionEvent *)v5 bootUUID];
      v6 = [v7 initWithUUIDString:v8];
    }

    v9 = [(BMPBSubscriptionEvent *)v5 client];
    v10 = [(BMPBSubscriptionEvent *)v5 identifier];
    v11 = [(BMPBSubscriptionEvent *)v5 useCase];
    self = [(BMSubscriptionEvent *)self _initWithClient:v9 identifier:v10 useCase:v11 starting:[(BMPBSubscriptionEvent *)v5 starting] bootUUID:v6];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BMSubscriptionEvent)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[BMPBSubscriptionEvent alloc] initWithData:v4];

  if (v5)
  {
    self = [(BMSubscriptionEvent *)self initWithProto:v5];
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
  [(BMPBSubscriptionEvent *)v3 setStarting:?];
  [(BMPBSubscriptionEvent *)v3 setClient:?];
  [(BMPBSubscriptionEvent *)v3 setIdentifier:?];
  [(BMPBSubscriptionEvent *)v3 setUseCase:?];
  v4 = [(NSUUID *)self->_bootUUID UUIDString];
  [(BMPBSubscriptionEvent *)v3 setBootUUID:v4];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSubscriptionEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
  [v4 encodeInt64:objc_msgSend(objc_opt_class() forKey:{"latestDataVersion"), @"dver"}];
}

- (BMSubscriptionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5 || (v6 = [v4 decodeInt64ForKey:@"dver"], HIDWORD(v6)))
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