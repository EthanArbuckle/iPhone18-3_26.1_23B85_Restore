@interface BMMicroLocationTruthTagEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMicroLocationTruthTagEvent)initWithAbsoluteTimestamp:(double)timestamp clientBundleIdentifier:(id)identifier truthTagIdentifier:(id)tagIdentifier recordingRequestIdentifier:(id)requestIdentifier;
- (BMMicroLocationTruthTagEvent)initWithProto:(id)proto;
- (BMMicroLocationTruthTagEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationTruthTagEvent

- (BMMicroLocationTruthTagEvent)initWithAbsoluteTimestamp:(double)timestamp clientBundleIdentifier:(id)identifier truthTagIdentifier:(id)tagIdentifier recordingRequestIdentifier:(id)requestIdentifier
{
  identifierCopy = identifier;
  tagIdentifierCopy = tagIdentifier;
  requestIdentifierCopy = requestIdentifier;
  v22.receiver = self;
  v22.super_class = BMMicroLocationTruthTagEvent;
  v13 = [(BMMicroLocationTruthTagEvent *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_absoluteTimestamp = timestamp;
    v15 = [identifierCopy copy];
    clientBundleIdentifier = v14->_clientBundleIdentifier;
    v14->_clientBundleIdentifier = v15;

    v17 = [tagIdentifierCopy copy];
    truthTagIdentifier = v14->_truthTagIdentifier;
    v14->_truthTagIdentifier = v17;

    v19 = [requestIdentifierCopy copy];
    recordingRequestIdentifier = v14->_recordingRequestIdentifier;
    v14->_recordingRequestIdentifier = v19;
  }

  return v14;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMicroLocationTruthTagEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  proto = [(BMMicroLocationTruthTagEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMMicroLocationTruthTagEvent)initWithProto:(id)proto
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
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BMMicroLocationTruthTagEvent *)self initWithProto:v16];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 absoluteTimestamp];
  v7 = v6;
  clientBundleId = [v5 clientBundleId];
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  truthTagIdentifier = [v5 truthTagIdentifier];
  v11 = [v9 initWithUUIDString:truthTagIdentifier];
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  recordingRequestIdentifier = [v5 recordingRequestIdentifier];

  v14 = [v12 initWithUUIDString:recordingRequestIdentifier];
  self = [(BMMicroLocationTruthTagEvent *)self initWithAbsoluteTimestamp:clientBundleId clientBundleIdentifier:v11 truthTagIdentifier:v14 recordingRequestIdentifier:v7];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMMicroLocationTruthTagEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBMicroLocationTruthTagEvent alloc] initWithData:dataCopy];

    self = [(BMMicroLocationTruthTagEvent *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setClientBundleId:self->_clientBundleIdentifier];
  uUIDString = [(NSUUID *)self->_truthTagIdentifier UUIDString];
  [v3 setTruthTagIdentifier:uUIDString];

  uUIDString2 = [(NSUUID *)self->_recordingRequestIdentifier UUIDString];
  [v3 setRecordingRequestIdentifier:uUIDString2];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_clientBundleIdentifier hash];
  v6 = v5 ^ [(NSUUID *)self->_truthTagIdentifier hash];
  v7 = v6 ^ [(NSUUID *)self->_recordingRequestIdentifier hash];

  return v7 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v7 absoluteTimestamp];
    v10 = v9;
    clientBundleIdentifier = self->_clientBundleIdentifier;
    v12 = clientBundleIdentifier;
    if (!clientBundleIdentifier)
    {
      clientBundleIdentifier = [v7 clientBundleIdentifier];
      if (!clientBundleIdentifier)
      {
        v13 = 1;
LABEL_9:

LABEL_10:
        truthTagIdentifier = self->_truthTagIdentifier;
        v16 = truthTagIdentifier;
        if (!truthTagIdentifier)
        {
          truthTagIdentifier = [v7 truthTagIdentifier];
          if (!truthTagIdentifier)
          {
            v18 = 1;
LABEL_16:

LABEL_17:
            v19 = vabdd_f64(absoluteTimestamp, v10);
            recordingRequestIdentifier = self->_recordingRequestIdentifier;
            v21 = recordingRequestIdentifier;
            if (!recordingRequestIdentifier)
            {
              truthTagIdentifier = [v7 recordingRequestIdentifier];
              if (!truthTagIdentifier)
              {
                v23 = 1;
                goto LABEL_23;
              }

              v21 = self->_recordingRequestIdentifier;
            }

            recordingRequestIdentifier = [v7 recordingRequestIdentifier];
            v23 = [(NSUUID *)v21 isEqual:recordingRequestIdentifier];

            if (recordingRequestIdentifier)
            {
LABEL_24:
              v14 = (v19 < 2.22044605e-16) & v13 & v18 & v23;

              goto LABEL_25;
            }

LABEL_23:

            goto LABEL_24;
          }

          v16 = self->_truthTagIdentifier;
        }

        truthTagIdentifier2 = [v7 truthTagIdentifier];
        v18 = [(NSUUID *)v16 isEqual:truthTagIdentifier2];

        if (truthTagIdentifier)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v12 = self->_clientBundleIdentifier;
    }

    truthTagIdentifier = [v7 clientBundleIdentifier];
    v13 = [(NSString *)v12 isEqualToString:truthTagIdentifier];

    if (clientBundleIdentifier)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_25:

  return v14;
}

@end