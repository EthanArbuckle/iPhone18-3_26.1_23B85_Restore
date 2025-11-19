@interface BMSiriInferredHelpfulnessEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriInferredHelpfulnessEvent)initWithAbsoluteTimestamp:(double)a3 inferredHelpfulnessScore:(double)a4 restatementScore:(double)a5 turnID:(id)a6 modelID:(id)a7;
- (BMSiriInferredHelpfulnessEvent)initWithCoder:(id)a3;
- (BMSiriInferredHelpfulnessEvent)initWithProto:(id)a3;
- (BMSiriInferredHelpfulnessEvent)initWithProtoData:(id)a3;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSiriInferredHelpfulnessEvent:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSiriInferredHelpfulnessEvent

- (BMSiriInferredHelpfulnessEvent)initWithAbsoluteTimestamp:(double)a3 inferredHelpfulnessScore:(double)a4 restatementScore:(double)a5 turnID:(id)a6 modelID:(id)a7
{
  v12 = a6;
  v13 = a7;
  v21.receiver = self;
  v21.super_class = BMSiriInferredHelpfulnessEvent;
  v14 = [(BMSiriInferredHelpfulnessEvent *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_absoluteTimestamp = a3;
    v14->_inferredHelpfulnessScore = a4;
    v14->_restatementScore = a5;
    v16 = [v12 copy];
    turnID = v15->_turnID;
    v15->_turnID = v16;

    v18 = [v13 copy];
    modelID = v15->_modelID;
    v15->_modelID = v18;
  }

  return v15;
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
      [BMSiriInferredHelpfulnessEvent eventWithData:a4 dataVersion:v8];
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
  v7 = turnID;
  if (!turnID)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v7;
  v13[4] = @"modelID";
  modelID = self->_modelID;
  v9 = modelID;
  if (!modelID)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[4] = v9;
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
  v3 = [(BMSiriInferredHelpfulnessEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSiriInferredHelpfulnessEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (BMSiriInferredHelpfulnessEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"data" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriInferredHelpfulnessEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMSiriInferredHelpfulnessEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriInferredHelpfulnessEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v14 = 0;
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

  v5 = v4;
  [v5 absoluteTimestamp];
  v7 = v6;
  [v5 inferredHelpfulnessScore];
  v9 = v8;
  [v5 restatementScore];
  v11 = v10;
  v12 = [v5 turnID];
  v13 = [v5 modelID];

  self = [(BMSiriInferredHelpfulnessEvent *)self initWithAbsoluteTimestamp:v12 inferredHelpfulnessScore:v13 restatementScore:v7 turnID:v9 modelID:v11];
  v14 = self;
LABEL_8:

  return v14;
}

- (BMSiriInferredHelpfulnessEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriInferredHelpfulnessEvent alloc] initWithData:v4];

    self = [(BMSiriInferredHelpfulnessEvent *)self initWithProto:v5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BMSiriInferredHelpfulnessEvent *)self isEqualToSiriInferredHelpfulnessEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToSiriInferredHelpfulnessEvent:(id)a3
{
  v6 = a3;
  absoluteTimestamp = self->_absoluteTimestamp;
  [v6 absoluteTimestamp];
  if (absoluteTimestamp != v8 || (inferredHelpfulnessScore = self->_inferredHelpfulnessScore, [v6 inferredHelpfulnessScore], inferredHelpfulnessScore != v10) || (restatementScore = self->_restatementScore, objc_msgSend(v6, "restatementScore"), restatementScore != v12))
  {
    v16 = 0;
    goto LABEL_10;
  }

  turnID = self->_turnID;
  v14 = turnID;
  if (!turnID)
  {
    v3 = [v6 turnID];
    if (!v3)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v14 = self->_turnID;
  }

  v4 = [v6 turnID];
  if (![v14 isEqualToString:v4])
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
    v14 = [v6 modelID];
    if (!v14)
    {
      v16 = 1;
      goto LABEL_22;
    }

    v19 = self->_modelID;
  }

  v20 = [v6 modelID];
  v16 = [(NSString *)v19 isEqualToString:v20];

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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_inferredHelpfulnessScore == -1.0 || !self->_turnID)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
      *a4 = v7 = 0;
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