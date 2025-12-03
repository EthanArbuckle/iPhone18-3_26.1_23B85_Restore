@interface BMParsecSearchTopic
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMParsecSearchTopic)initWithCoder:(id)coder;
- (BMParsecSearchTopic)initWithIdentifier:(id)identifier score:(float)score;
- (BMParsecSearchTopic)initWithProto:(id)proto;
- (BMParsecSearchTopic)initWithProtoData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMParsecSearchTopic

- (BMParsecSearchTopic)initWithIdentifier:(id)identifier score:(float)score
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [BMParsecSearchTopic initWithIdentifier:score:];
  }

  v11.receiver = self;
  v11.super_class = BMParsecSearchTopic;
  v8 = [(BMParsecSearchTopic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_score = score;
  }

  return v9;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMParsecSearchTopic eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v9[2] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v8[1] = @"score";
  v9[0] = identifier;
  v8[0] = @"identifier";
  *&v2 = self->_score;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMParsecSearchTopic *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMParsecSearchTopic json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMParsecSearchTopic *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMParsecSearchTopic)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMParsecSearchTopic *)self initWithProtoData:v6];
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
  proto = [(BMParsecSearchTopic *)self proto];
  data = [proto data];

  return data;
}

- (BMParsecSearchTopic)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasIdentifier]&& ([v5 hasScore]& 1) != 0)
      {
        identifier = [v5 identifier];
        [v5 score];
        self = [(BMParsecSearchTopic *)self initWithIdentifier:identifier score:?];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchTopic initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchTopic initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMParsecSearchTopic)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBParsecSearchTopic alloc] initWithData:dataCopy];

    self = [(BMParsecSearchTopic *)self initWithProto:v5];
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
  identifier = [(BMParsecSearchTopic *)self identifier];
  [v3 setIdentifier:identifier];

  [(BMParsecSearchTopic *)self score];
  [v3 setScore:?];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      score = self->_score;
      [v5 score];
      v10 = score == v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  identifier = self->_identifier;
  if (error && !identifier)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return identifier != 0;
}

@end