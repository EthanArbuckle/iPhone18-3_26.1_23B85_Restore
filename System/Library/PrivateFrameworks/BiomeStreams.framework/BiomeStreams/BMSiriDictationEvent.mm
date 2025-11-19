@interface BMSiriDictationEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriDictationEvent)initWithAbsoluteTimestamp:(double)a3 recognizedText:(id)a4 correctedText:(id)a5;
- (BMSiriDictationEvent)initWithProto:(id)a3;
- (BMSiriDictationEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMSiriDictationEvent

- (BMSiriDictationEvent)initWithAbsoluteTimestamp:(double)a3 recognizedText:(id)a4 correctedText:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = BMSiriDictationEvent;
  v10 = [(BMSiriDictationEvent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_absoluteTimestamp = a3;
    v12 = [v8 copy];
    recognizedText = v11->_recognizedText;
    v11->_recognizedText = v12;

    v14 = [v9 copy];
    correctedText = v11->_correctedText;
    v11->_correctedText = v14;
  }

  return v11;
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
      [BMSiriDictationEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"absoluteTimeStamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v12[0] = v3;
  v11[1] = @"recognizedText";
  recognizedText = self->_recognizedText;
  v5 = recognizedText;
  if (!recognizedText)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v5;
  v11[2] = @"correctedText";
  correctedText = self->_correctedText;
  v7 = correctedText;
  if (!correctedText)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (correctedText)
  {
    if (recognizedText)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (recognizedText)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMSiriDictationEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDeviceMetadataEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  v2 = [(BMSiriDictationEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriDictationEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(BMSiriDictationEvent *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = v4;
  [v5 absoluteTimestamp];
  v7 = v6;
  v8 = [v5 recognizedText];
  v9 = [v5 correctedText];

  self = [(BMSiriDictationEvent *)self initWithAbsoluteTimestamp:v8 recognizedText:v9 correctedText:v7];
  v10 = self;
LABEL_8:

  return v10;
}

- (BMSiriDictationEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriDictationEvent alloc] initWithData:v4];

    self = [(BMSiriDictationEvent *)self initWithProto:v5];
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
  [v3 setRecognizedText:self->_recognizedText];
  [v3 setCorrectedText:self->_correctedText];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v6 absoluteTimestamp];
    if (absoluteTimestamp != v8)
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    recognizedText = self->_recognizedText;
    v10 = recognizedText;
    if (!recognizedText)
    {
      v11 = [v6 recognizedText];
      if (!v11)
      {
        v18 = 0;
        v12 = 0;
        goto LABEL_12;
      }

      v18 = v11;
      v10 = self->_recognizedText;
    }

    v3 = [v6 recognizedText];
    if (([v10 isEqualToString:v3] & 1) == 0)
    {

      v13 = 0;
      goto LABEL_18;
    }

    v12 = 1;
LABEL_12:
    correctedText = self->_correctedText;
    v15 = correctedText;
    if (!correctedText)
    {
      v10 = [v6 correctedText];
      if (!v10)
      {
        v13 = 1;
        goto LABEL_23;
      }

      v15 = self->_correctedText;
    }

    v16 = [v6 correctedText];
    v13 = [(NSString *)v15 isEqualToString:v16];

    if (correctedText)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_23:

    if ((v12 & 1) == 0)
    {
LABEL_18:
      if (!recognizedText)
      {
      }

      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_18;
  }

  v13 = 0;
LABEL_21:

  return v13;
}

@end