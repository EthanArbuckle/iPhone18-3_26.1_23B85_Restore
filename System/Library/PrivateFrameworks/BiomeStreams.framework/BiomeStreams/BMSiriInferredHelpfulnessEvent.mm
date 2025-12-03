@interface BMSiriInferredHelpfulnessEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriInferredHelpfulnessEvent)initWithAbsoluteTimestamp:(double)timestamp inferredHelpfulnessScore:(double)score restatementScore:(double)restatementScore turnID:(id)d modelID:(id)iD;
- (BMSiriInferredHelpfulnessEvent)initWithCoder:(id)coder;
- (BMSiriInferredHelpfulnessEvent)initWithProto:(id)proto;
- (BMSiriInferredHelpfulnessEvent)initWithProtoData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSiriInferredHelpfulnessEvent:(id)event;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSiriInferredHelpfulnessEvent

- (BMSiriInferredHelpfulnessEvent)initWithAbsoluteTimestamp:(double)timestamp inferredHelpfulnessScore:(double)score restatementScore:(double)restatementScore turnID:(id)d modelID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = BMSiriInferredHelpfulnessEvent;
  v14 = [(BMSiriInferredHelpfulnessEvent *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_absoluteTimestamp = timestamp;
    v14->_inferredHelpfulnessScore = score;
    v14->_restatementScore = restatementScore;
    v16 = [dCopy copy];
    turnID = v15->_turnID;
    v15->_turnID = v16;

    v18 = [iDCopy copy];
    modelID = v15->_modelID;
    v15->_modelID = v18;
  }

  return v15;
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
      [BMSiriInferredHelpfulnessEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = @"absoluteTimeStamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v14[0] = v3;
  v13[1] = @"inferredHelpfulnessScore";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inferredHelpfulnessScore];
  v14[1] = v4;
  v13[2] = @"restatementScore";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_restatementScore];
  v14[2] = v5;
  v13[3] = @"turnID";
  turnID = self->_turnID;
  null = turnID;
  if (!turnID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null;
  v13[4] = @"modelID";
  modelID = self->_modelID;
  null2 = modelID;
  if (!modelID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[4] = null2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  if (modelID)
  {
    if (turnID)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (turnID)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMSiriInferredHelpfulnessEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMSiriInferredHelpfulnessEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSiriInferredHelpfulnessEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
}

- (BMSiriInferredHelpfulnessEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"data" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriInferredHelpfulnessEvent *)self initWithProtoData:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMSiriInferredHelpfulnessEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriInferredHelpfulnessEvent)initWithProto:(id)proto
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
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(BMSiriInferredHelpfulnessEvent *)self initWithProto:v15];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 absoluteTimestamp];
  v7 = v6;
  [v5 inferredHelpfulnessScore];
  v9 = v8;
  [v5 restatementScore];
  v11 = v10;
  turnID = [v5 turnID];
  modelID = [v5 modelID];

  self = [(BMSiriInferredHelpfulnessEvent *)self initWithAbsoluteTimestamp:turnID inferredHelpfulnessScore:modelID restatementScore:v7 turnID:v9 modelID:v11];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMSiriInferredHelpfulnessEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriInferredHelpfulnessEvent alloc] initWithData:dataCopy];

    self = [(BMSiriInferredHelpfulnessEvent *)self initWithProto:v5];
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
  [v3 setInferredHelpfulnessScore:self->_inferredHelpfulnessScore];
  [v3 setRestatementScore:self->_restatementScore];
  [v3 setTurnID:self->_turnID];
  [v3 setModelID:self->_modelID];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_turnID hash];
  v6 = v5 ^ [(NSString *)self->_modelID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BMSiriInferredHelpfulnessEvent *)self isEqualToSiriInferredHelpfulnessEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToSiriInferredHelpfulnessEvent:(id)event
{
  eventCopy = event;
  absoluteTimestamp = self->_absoluteTimestamp;
  [eventCopy absoluteTimestamp];
  if (absoluteTimestamp != v8 || (inferredHelpfulnessScore = self->_inferredHelpfulnessScore, [eventCopy inferredHelpfulnessScore], inferredHelpfulnessScore != v10) || (restatementScore = self->_restatementScore, objc_msgSend(eventCopy, "restatementScore"), restatementScore != v12))
  {
    v16 = 0;
    goto LABEL_10;
  }

  turnID = self->_turnID;
  modelID = turnID;
  if (!turnID)
  {
    turnID = [eventCopy turnID];
    if (!turnID)
    {
      v15 = 0;
      goto LABEL_13;
    }

    modelID = self->_turnID;
  }

  turnID2 = [eventCopy turnID];
  if (![modelID isEqualToString:turnID2])
  {
    v16 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v15 = 1;
LABEL_13:
  modelID = self->_modelID;
  v19 = modelID;
  if (!modelID)
  {
    modelID = [eventCopy modelID];
    if (!modelID)
    {
      v16 = 1;
      goto LABEL_22;
    }

    v19 = self->_modelID;
  }

  modelID2 = [eventCopy modelID];
  v16 = [(NSString *)v19 isEqualToString:modelID2];

  if (modelID)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_22:

  if (v15)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!turnID)
  {
  }

LABEL_10:

  return v16;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_inferredHelpfulnessScore == -1.0 || !self->_turnID)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end