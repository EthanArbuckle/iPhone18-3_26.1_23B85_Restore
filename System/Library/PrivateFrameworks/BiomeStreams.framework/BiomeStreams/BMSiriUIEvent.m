@interface BMSiriUIEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriUIEvent)initWithProto:(id)a3;
- (BMSiriUIEvent)initWithProtoData:(id)a3;
- (BMSiriUIEvent)initWithSessionID:(id)a3 UUID:(id)a4 viewMode:(id)a5 dismissalReason:(id)a6 starting:(BOOL)a7 absoluteTimeStamp:(double)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriUIEvent

- (BMSiriUIEvent)initWithSessionID:(id)a3 UUID:(id)a4 viewMode:(id)a5 dismissalReason:(id)a6 starting:(BOOL)a7 absoluteTimeStamp:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v28.receiver = self;
  v28.super_class = BMSiriUIEvent;
  v18 = [(BMEventBase *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    sessionID = v18->_sessionID;
    v18->_sessionID = v19;

    v21 = [v15 copy];
    UUID = v18->_UUID;
    v18->_UUID = v21;

    v23 = [v16 copy];
    viewMode = v18->_viewMode;
    v18->_viewMode = v23;

    v25 = [v17 copy];
    dismissalReason = v18->_dismissalReason;
    v18->_dismissalReason = v25;

    v18->_starting = a7;
    v18->_absoluteTimestamp = a8;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(BMSiriUIEvent *)self sessionID];
  v6 = [(BMSiriUIEvent *)self UUID];
  v7 = [(BMSiriUIEvent *)self viewMode];
  v8 = [(BMSiriUIEvent *)self dismissalReason];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUIEvent isStarting](self, "isStarting")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriUIEvent *)self absoluteTimestamp];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 initWithFormat:@"<%@ %p> sessionID: %@, UUID: %@, viewMode: %@, dismissalReason: %@, starting: %@, absoluteTimestamp: %@", v4, self, v5, v6, v7, v8, v9, v11];

  return v12;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMSiriUIEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriUIEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BMSiriUIEvent *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 sessionID];
  v7 = [v5 uuid];
  v8 = [v5 viewMode];
  v9 = [v5 dismissalReason];
  v10 = [v5 starting];
  [v5 absoluteTimestamp];
  v12 = v11;

  self = [(BMSiriUIEvent *)self initWithSessionID:v6 UUID:v7 viewMode:v8 dismissalReason:v9 starting:v10 absoluteTimeStamp:v12];
  v13 = self;
LABEL_8:

  return v13;
}

- (BMSiriUIEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriUIEvent alloc] initWithData:v4];

    self = [(BMSiriUIEvent *)self initWithProto:v5];
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
  v4 = [(BMSiriUIEvent *)self sessionID];
  [v3 setSessionID:v4];

  v5 = [(BMSiriUIEvent *)self UUID];
  [v3 setUuid:v5];

  v6 = [(BMSiriUIEvent *)self viewMode];
  [v3 setViewMode:v6];

  v7 = [(BMSiriUIEvent *)self dismissalReason];
  [v3 setDismissalReason:v7];

  [v3 setStarting:{-[BMSiriUIEvent isStarting](self, "isStarting")}];
  [(BMSiriUIEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionID hash];
  v4 = [(NSString *)self->_UUID hash]^ v3;
  v5 = [(NSString *)self->_viewMode hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_dismissalReason hash];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [(BMSiriUIEvent *)self sessionID];
  if (!v9)
  {
    v3 = [v8 sessionID];
    if (!v3)
    {
      v10 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v4 = [(BMSiriUIEvent *)self sessionID];
  v5 = [v8 sessionID];
  v10 = [v4 isEqual:v5];

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [(BMSiriUIEvent *)self UUID];
  if (!v12)
  {
    v4 = [v8 UUID];
    if (!v4)
    {
      v14 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v5 = [(BMSiriUIEvent *)self UUID];
  v13 = [v8 UUID];
  v14 = [v5 isEqual:v13];

  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_15:

  v15 = [(BMSiriUIEvent *)self viewMode];
  if (!v15)
  {
    v5 = [v8 viewMode];
    if (!v5)
    {
      v18 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  v16 = [(BMSiriUIEvent *)self viewMode];
  v17 = [v8 viewMode];
  v18 = [v16 isEqual:v17];

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  v19 = [(BMSiriUIEvent *)self dismissalReason];
  if (v19 || ([v8 dismissalReason], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [(BMSiriUIEvent *)self dismissalReason];
    [v8 dismissalReason];
    v21 = v7;
    v22 = v18;
    v23 = v14;
    v25 = v24 = v10;
    v26 = [v20 isEqual:v25];

    v10 = v24;
    v14 = v23;
    v18 = v22;
    v7 = v21;

    if (v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v33 = 0;
    v26 = 1;
  }

LABEL_27:
  v27 = [(BMSiriUIEvent *)self isStarting];
  v28 = [v8 isStarting];
  [(BMSiriUIEvent *)self absoluteTimestamp];
  v30 = v29;
  [v8 absoluteTimestamp];
  v11 = 0;
  if ((v10 & v14 & v18) == 1 && v26)
  {
    v11 = (v30 == v31) & ~(v27 ^ v28);
  }

LABEL_31:
  return v11;
}

@end