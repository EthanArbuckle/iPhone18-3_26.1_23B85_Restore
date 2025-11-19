@interface BMUserFocusActivityEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMUserFocusActivityEvent)initWithMode:(id)a3 clientID:(id)a4 isStart:(BOOL)a5;
- (BMUserFocusActivityEvent)initWithProto:(id)a3;
- (BMUserFocusActivityEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMUserFocusActivityEvent

- (BMUserFocusActivityEvent)initWithMode:(id)a3 clientID:(id)a4 isStart:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BMUserFocusActivityEvent;
  v11 = [(BMEventBase *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientID, a4);
    objc_storeStrong(&v12->_mode, a3);
    v12->_isStart = a5;
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
  v3 = [(BMUserFocusActivityEvent *)self clientID];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"mode";
  v5 = [(BMUserFocusActivityEvent *)self mode];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v6;
  v11[2] = @"isStart";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMUserFocusActivityEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:&v8];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(BMUserFocusActivityEvent *)self mode];
  v4 = [v3 hash];
  v5 = [(BMUserFocusActivityEvent *)self clientID];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(BMUserFocusActivityEvent *)self isStart];
    v8 = v7 ^ [v6 isStart];
    v9 = [(BMUserFocusActivityEvent *)self clientID];
    if (v9 || ([v6 clientID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(BMUserFocusActivityEvent *)self clientID];
      v11 = [v6 clientID];
      v12 = [v10 isEqual:v11];

      if (v9)
      {
LABEL_9:
        v14 = v8 ^ 1;

        v15 = [(BMUserFocusActivityEvent *)self mode];
        if (v15 || ([v6 mode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = [(BMUserFocusActivityEvent *)self mode];
          v17 = [v6 mode];
          v18 = [v16 isEqual:v17];

          if (v15)
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
  v2 = [(BMUserFocusActivityEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMUserFocusActivityEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v9 = 0;
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

  v5 = v4;
  v6 = [v5 mode];
  v7 = [v5 clientID];
  v8 = [v5 isStart];

  self = [(BMUserFocusActivityEvent *)self initWithMode:v6 clientID:v7 isStart:v8];
  v9 = self;
LABEL_8:

  return v9;
}

- (BMUserFocusActivityEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBUserFocusActivityEvent alloc] initWithData:v4];

    self = [(BMUserFocusActivityEvent *)self initWithProto:v5];
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
  v4 = [(BMUserFocusActivityEvent *)self mode];
  [v3 setMode:v4];

  v5 = [(BMUserFocusActivityEvent *)self clientID];
  [v3 setClientID:v5];

  [v3 setIsStart:{-[BMUserFocusActivityEvent isStart](self, "isStart")}];

  return v3;
}

@end