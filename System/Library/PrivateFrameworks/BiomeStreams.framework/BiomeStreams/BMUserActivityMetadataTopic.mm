@interface BMUserActivityMetadataTopic
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMUserActivityMetadataTopic)initWithCoder:(id)coder;
- (BMUserActivityMetadataTopic)initWithProto:(id)proto;
- (BMUserActivityMetadataTopic)initWithProtoData:(id)data;
- (BMUserActivityMetadataTopic)initWithTopicIdentifier:(id)identifier title:(id)title;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMUserActivityMetadataTopic

- (BMUserActivityMetadataTopic)initWithTopicIdentifier:(id)identifier title:(id)title
{
  identifierCopy = identifier;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = BMUserActivityMetadataTopic;
  v8 = [(BMUserActivityMetadataTopic *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    topicIdentifier = v8->_topicIdentifier;
    v8->_topicIdentifier = v9;

    v11 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
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
      +[BMUserActivityMetadataTopic eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"topicIdentifier";
  v6[1] = @"title";
  title = self->_title;
  v7[0] = self->_topicIdentifier;
  v7[1] = title;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMUserActivityMetadataTopic *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMUserActivityMetadataTopic json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMUserActivityMetadataTopic *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"data"];
}

- (BMUserActivityMetadataTopic)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"data" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMUserActivityMetadataTopic *)self initWithProtoData:v6];
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
  proto = [(BMUserActivityMetadataTopic *)self proto];
  data = [proto data];

  return data;
}

- (BMUserActivityMetadataTopic)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasTopicIdentifier]&& ([v5 hasTitle]& 1) != 0)
      {
        topicIdentifier = [v5 topicIdentifier];
        title = [v5 title];
        self = [(BMUserActivityMetadataTopic *)self initWithTopicIdentifier:topicIdentifier title:title];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMUserActivityMetadataTopic initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserActivityMetadataTopic initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMUserActivityMetadataTopic)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBUserActivityMetadataTopic alloc] initWithData:dataCopy];

    self = [(BMUserActivityMetadataTopic *)self initWithProto:v5];
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
  topicIdentifier = [(BMUserActivityMetadataTopic *)self topicIdentifier];
  v5 = [topicIdentifier copy];
  [v3 setTopicIdentifier:v5];

  title = [(BMUserActivityMetadataTopic *)self title];
  v7 = [title copy];
  [v3 setTitle:v7];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v7 = equalCopy;
  v8 = v7;
  topicIdentifier = self->_topicIdentifier;
  if (topicIdentifier || ([v7 topicIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = self->_title;
    title = [v8 title];
    if (![(NSString *)title isEqualToString:title])
    {
      v12 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = self->_topicIdentifier;
  topicIdentifier = [v8 topicIdentifier];
  if ([(NSString *)v13 isEqualToString:topicIdentifier])
  {
    v15 = self->_title;
    title2 = [v8 title];
    v12 = [(NSString *)v15 isEqualToString:title2];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!topicIdentifier)
  {
  }

LABEL_17:
  return v12;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_topicIdentifier && self->_title)
  {
    v7 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end