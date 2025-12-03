@interface BMUserFocusActivityEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMUserFocusActivityEvent)initWithMode:(id)mode clientID:(id)d isStart:(BOOL)start;
- (BMUserFocusActivityEvent)initWithProto:(id)proto;
- (BMUserFocusActivityEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMUserFocusActivityEvent

- (BMUserFocusActivityEvent)initWithMode:(id)mode clientID:(id)d isStart:(BOOL)start
{
  modeCopy = mode;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = BMUserFocusActivityEvent;
  v11 = [(BMEventBase *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientID, d);
    objc_storeStrong(&v12->_mode, mode);
    v12->_isStart = start;
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  clientID = self->_clientID;
  mode = self->_mode;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
  v7 = [v3 initWithFormat:@"User activity event, clientId: %@, currentMode: %@, isStart: %@", clientID, mode, v6];

  return v7;
}

- (id)jsonDict
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"clientID";
  clientID = [(BMUserFocusActivityEvent *)self clientID];
  null = clientID;
  if (!clientID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"mode";
  mode = [(BMUserFocusActivityEvent *)self mode];
  null2 = mode;
  if (!mode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"isStart";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (!mode)
  {
  }

  if (!clientID)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMUserFocusActivityEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPOICategoryEvent *)v6 json];
    }
  }

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (unint64_t)hash
{
  mode = [(BMUserFocusActivityEvent *)self mode];
  v4 = [mode hash];
  clientID = [(BMUserFocusActivityEvent *)self clientID];
  v6 = [clientID hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    isStart = [(BMUserFocusActivityEvent *)self isStart];
    v8 = isStart ^ [v6 isStart];
    clientID = [(BMUserFocusActivityEvent *)self clientID];
    if (clientID || ([v6 clientID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      clientID2 = [(BMUserFocusActivityEvent *)self clientID];
      clientID3 = [v6 clientID];
      v12 = [clientID2 isEqual:clientID3];

      if (clientID)
      {
LABEL_9:
        v14 = v8 ^ 1;

        mode = [(BMUserFocusActivityEvent *)self mode];
        if (mode || ([v6 mode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          mode2 = [(BMUserFocusActivityEvent *)self mode];
          mode3 = [v6 mode];
          v18 = [mode2 isEqual:mode3];

          if (mode)
          {
LABEL_15:

            v13 = v14 & v12 & v18;
            goto LABEL_16;
          }
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_9;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (id)encodeAsProto
{
  proto = [(BMUserFocusActivityEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMUserFocusActivityEvent)initWithProto:(id)proto
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
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BMUserFocusActivityEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  mode = [v5 mode];
  clientID = [v5 clientID];
  isStart = [v5 isStart];

  self = [(BMUserFocusActivityEvent *)self initWithMode:mode clientID:clientID isStart:isStart];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMUserFocusActivityEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBUserFocusActivityEvent alloc] initWithData:dataCopy];

    self = [(BMUserFocusActivityEvent *)self initWithProto:v5];
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
  mode = [(BMUserFocusActivityEvent *)self mode];
  [v3 setMode:mode];

  clientID = [(BMUserFocusActivityEvent *)self clientID];
  [v3 setClientID:clientID];

  [v3 setIsStart:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];

  return v3;
}

@end