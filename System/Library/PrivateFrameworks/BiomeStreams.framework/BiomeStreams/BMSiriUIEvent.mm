@interface BMSiriUIEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriUIEvent)initWithProto:(id)proto;
- (BMSiriUIEvent)initWithProtoData:(id)data;
- (BMSiriUIEvent)initWithSessionID:(id)d UUID:(id)iD viewMode:(id)mode dismissalReason:(id)reason starting:(BOOL)starting absoluteTimeStamp:(double)stamp;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriUIEvent

- (BMSiriUIEvent)initWithSessionID:(id)d UUID:(id)iD viewMode:(id)mode dismissalReason:(id)reason starting:(BOOL)starting absoluteTimeStamp:(double)stamp
{
  dCopy = d;
  iDCopy = iD;
  modeCopy = mode;
  reasonCopy = reason;
  v28.receiver = self;
  v28.super_class = BMSiriUIEvent;
  v18 = [(BMEventBase *)&v28 init];
  if (v18)
  {
    v19 = [dCopy copy];
    sessionID = v18->_sessionID;
    v18->_sessionID = v19;

    v21 = [iDCopy copy];
    UUID = v18->_UUID;
    v18->_UUID = v21;

    v23 = [modeCopy copy];
    viewMode = v18->_viewMode;
    v18->_viewMode = v23;

    v25 = [reasonCopy copy];
    dismissalReason = v18->_dismissalReason;
    v18->_dismissalReason = v25;

    v18->_starting = starting;
    v18->_absoluteTimestamp = stamp;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  sessionID = [(BMSiriUIEvent *)self sessionID];
  uUID = [(BMSiriUIEvent *)self UUID];
  viewMode = [(BMSiriUIEvent *)self viewMode];
  dismissalReason = [(BMSiriUIEvent *)self dismissalReason];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUIEvent isStarting](self, "isStarting")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriUIEvent *)self absoluteTimestamp];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 initWithFormat:@"<%@ %p> sessionID: %@, UUID: %@, viewMode: %@, dismissalReason: %@, starting: %@, absoluteTimestamp: %@", v4, self, sessionID, uUID, viewMode, dismissalReason, v9, v11];

  return v12;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMSiriUIEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriUIEvent)initWithProto:(id)proto
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
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BMSiriUIEvent *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  sessionID = [v5 sessionID];
  uuid = [v5 uuid];
  viewMode = [v5 viewMode];
  dismissalReason = [v5 dismissalReason];
  starting = [v5 starting];
  [v5 absoluteTimestamp];
  v12 = v11;

  self = [(BMSiriUIEvent *)self initWithSessionID:sessionID UUID:uuid viewMode:viewMode dismissalReason:dismissalReason starting:starting absoluteTimeStamp:v12];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMSiriUIEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriUIEvent alloc] initWithData:dataCopy];

    self = [(BMSiriUIEvent *)self initWithProto:v5];
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
  sessionID = [(BMSiriUIEvent *)self sessionID];
  [v3 setSessionID:sessionID];

  uUID = [(BMSiriUIEvent *)self UUID];
  [v3 setUuid:uUID];

  viewMode = [(BMSiriUIEvent *)self viewMode];
  [v3 setViewMode:viewMode];

  dismissalReason = [(BMSiriUIEvent *)self dismissalReason];
  [v3 setDismissalReason:dismissalReason];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_31;
  }

  v8 = equalCopy;
  sessionID = [(BMSiriUIEvent *)self sessionID];
  if (!sessionID)
  {
    sessionID2 = [v8 sessionID];
    if (!sessionID2)
    {
      v10 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  sessionID3 = [(BMSiriUIEvent *)self sessionID];
  sessionID4 = [v8 sessionID];
  v10 = [sessionID3 isEqual:sessionID4];

  if (!sessionID)
  {
    goto LABEL_8;
  }

LABEL_9:

  uUID = [(BMSiriUIEvent *)self UUID];
  if (!uUID)
  {
    sessionID3 = [v8 UUID];
    if (!sessionID3)
    {
      v14 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  sessionID4 = [(BMSiriUIEvent *)self UUID];
  uUID2 = [v8 UUID];
  v14 = [sessionID4 isEqual:uUID2];

  if (!uUID)
  {
    goto LABEL_14;
  }

LABEL_15:

  viewMode = [(BMSiriUIEvent *)self viewMode];
  if (!viewMode)
  {
    sessionID4 = [v8 viewMode];
    if (!sessionID4)
    {
      v18 = 1;
LABEL_20:

      goto LABEL_21;
    }
  }

  viewMode2 = [(BMSiriUIEvent *)self viewMode];
  viewMode3 = [v8 viewMode];
  v18 = [viewMode2 isEqual:viewMode3];

  if (!viewMode)
  {
    goto LABEL_20;
  }

LABEL_21:

  dismissalReason = [(BMSiriUIEvent *)self dismissalReason];
  if (dismissalReason || ([v8 dismissalReason], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dismissalReason2 = [(BMSiriUIEvent *)self dismissalReason];
    [v8 dismissalReason];
    v21 = equalCopy;
    v22 = v18;
    v23 = v14;
    v25 = v24 = v10;
    v26 = [dismissalReason2 isEqual:v25];

    v10 = v24;
    v14 = v23;
    v18 = v22;
    equalCopy = v21;

    if (dismissalReason)
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
  isStarting = [(BMSiriUIEvent *)self isStarting];
  isStarting2 = [v8 isStarting];
  [(BMSiriUIEvent *)self absoluteTimestamp];
  v30 = v29;
  [v8 absoluteTimestamp];
  v11 = 0;
  if ((v10 & v14 & v18) == 1 && v26)
  {
    v11 = (v30 == v31) & ~(isStarting ^ isStarting2);
  }

LABEL_31:
  return v11;
}

@end