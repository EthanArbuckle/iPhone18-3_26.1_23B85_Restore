@interface BMSiriDictationEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriDictationEvent)initWithAbsoluteTimestamp:(double)timestamp recognizedText:(id)text correctedText:(id)correctedText;
- (BMSiriDictationEvent)initWithProto:(id)proto;
- (BMSiriDictationEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMSiriDictationEvent

- (BMSiriDictationEvent)initWithAbsoluteTimestamp:(double)timestamp recognizedText:(id)text correctedText:(id)correctedText
{
  textCopy = text;
  correctedTextCopy = correctedText;
  v17.receiver = self;
  v17.super_class = BMSiriDictationEvent;
  v10 = [(BMSiriDictationEvent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_absoluteTimestamp = timestamp;
    v12 = [textCopy copy];
    recognizedText = v11->_recognizedText;
    v11->_recognizedText = v12;

    v14 = [correctedTextCopy copy];
    correctedText = v11->_correctedText;
    v11->_correctedText = v14;
  }

  return v11;
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
      [BMSiriDictationEvent eventWithData:version dataVersion:v8];
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
  null = recognizedText;
  if (!recognizedText)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null;
  v11[2] = @"correctedText";
  correctedText = self->_correctedText;
  null2 = correctedText;
  if (!correctedText)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null2;
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
  jsonDict = [(BMSiriDictationEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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
  proto = [(BMSiriDictationEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriDictationEvent)initWithProto:(id)proto
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
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(BMSiriDictationEvent *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 absoluteTimestamp];
  v7 = v6;
  recognizedText = [v5 recognizedText];
  correctedText = [v5 correctedText];

  self = [(BMSiriDictationEvent *)self initWithAbsoluteTimestamp:recognizedText recognizedText:correctedText correctedText:v7];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMSiriDictationEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriDictationEvent alloc] initWithData:dataCopy];

    self = [(BMSiriDictationEvent *)self initWithProto:v5];
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
  [v3 setRecognizedText:self->_recognizedText];
  [v3 setCorrectedText:self->_correctedText];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v6 absoluteTimestamp];
    if (absoluteTimestamp != v8)
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    recognizedText = self->_recognizedText;
    correctedText = recognizedText;
    if (!recognizedText)
    {
      recognizedText = [v6 recognizedText];
      if (!recognizedText)
      {
        v18 = 0;
        v12 = 0;
        goto LABEL_12;
      }

      v18 = recognizedText;
      correctedText = self->_recognizedText;
    }

    recognizedText2 = [v6 recognizedText];
    if (([correctedText isEqualToString:recognizedText2] & 1) == 0)
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
      correctedText = [v6 correctedText];
      if (!correctedText)
      {
        v13 = 1;
        goto LABEL_23;
      }

      v15 = self->_correctedText;
    }

    correctedText2 = [v6 correctedText];
    v13 = [(NSString *)v15 isEqualToString:correctedText2];

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