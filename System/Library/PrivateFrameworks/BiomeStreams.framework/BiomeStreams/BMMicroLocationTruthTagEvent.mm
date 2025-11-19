@interface BMMicroLocationTruthTagEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMicroLocationTruthTagEvent)initWithAbsoluteTimestamp:(double)a3 clientBundleIdentifier:(id)a4 truthTagIdentifier:(id)a5 recordingRequestIdentifier:(id)a6;
- (BMMicroLocationTruthTagEvent)initWithProto:(id)a3;
- (BMMicroLocationTruthTagEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMicroLocationTruthTagEvent

- (BMMicroLocationTruthTagEvent)initWithAbsoluteTimestamp:(double)a3 clientBundleIdentifier:(id)a4 truthTagIdentifier:(id)a5 recordingRequestIdentifier:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = BMMicroLocationTruthTagEvent;
  v13 = [(BMMicroLocationTruthTagEvent *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_absoluteTimestamp = a3;
    v15 = [v10 copy];
    clientBundleIdentifier = v14->_clientBundleIdentifier;
    v14->_clientBundleIdentifier = v15;

    v17 = [v11 copy];
    truthTagIdentifier = v14->_truthTagIdentifier;
    v14->_truthTagIdentifier = v17;

    v19 = [v12 copy];
    recordingRequestIdentifier = v14->_recordingRequestIdentifier;
    v14->_recordingRequestIdentifier = v19;
  }

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMMicroLocationTruthTagEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMMicroLocationTruthTagEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMMicroLocationTruthTagEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v15 = 0;
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

  v5 = v4;
  [v5 absoluteTimestamp];
  v7 = v6;
  v8 = [v5 clientBundleId];
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = [v5 truthTagIdentifier];
  v11 = [v9 initWithUUIDString:v10];
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = [v5 recordingRequestIdentifier];

  v14 = [v12 initWithUUIDString:v13];
  self = [(BMMicroLocationTruthTagEvent *)self initWithAbsoluteTimestamp:v8 clientBundleIdentifier:v11 truthTagIdentifier:v14 recordingRequestIdentifier:v7];

  v15 = self;
LABEL_8:

  return v15;
}

- (BMMicroLocationTruthTagEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBMicroLocationTruthTagEvent alloc] initWithData:v4];

    self = [(BMMicroLocationTruthTagEvent *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setClientBundleId:self->_clientBundleIdentifier];
  v4 = [(NSUUID *)self->_truthTagIdentifier UUIDString];
  [v3 setTruthTagIdentifier:v4];

  v5 = [(NSUUID *)self->_recordingRequestIdentifier UUIDString];
  [v3 setRecordingRequestIdentifier:v5];

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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v7 absoluteTimestamp];
    v10 = v9;
    clientBundleIdentifier = self->_clientBundleIdentifier;
    v12 = clientBundleIdentifier;
    if (!clientBundleIdentifier)
    {
      v3 = [v7 clientBundleIdentifier];
      if (!v3)
      {
        v13 = 1;
LABEL_9:

LABEL_10:
        truthTagIdentifier = self->_truthTagIdentifier;
        v16 = truthTagIdentifier;
        if (!truthTagIdentifier)
        {
          v4 = [v7 truthTagIdentifier];
          if (!v4)
          {
            v18 = 1;
LABEL_16:

LABEL_17:
            v19 = vabdd_f64(absoluteTimestamp, v10);
            recordingRequestIdentifier = self->_recordingRequestIdentifier;
            v21 = recordingRequestIdentifier;
            if (!recordingRequestIdentifier)
            {
              v4 = [v7 recordingRequestIdentifier];
              if (!v4)
              {
                v23 = 1;
                goto LABEL_23;
              }

              v21 = self->_recordingRequestIdentifier;
            }

            v22 = [v7 recordingRequestIdentifier];
            v23 = [(NSUUID *)v21 isEqual:v22];

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

        v17 = [v7 truthTagIdentifier];
        v18 = [(NSUUID *)v16 isEqual:v17];

        if (truthTagIdentifier)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v12 = self->_clientBundleIdentifier;
    }

    v4 = [v7 clientBundleIdentifier];
    v13 = [(NSString *)v12 isEqualToString:v4];

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