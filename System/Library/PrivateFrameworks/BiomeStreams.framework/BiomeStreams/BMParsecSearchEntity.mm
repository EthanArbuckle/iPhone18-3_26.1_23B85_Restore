@interface BMParsecSearchEntity
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMParsecSearchEntity)initWithCoder:(id)coder;
- (BMParsecSearchEntity)initWithName:(id)name category:(unsigned int)category probabilityScore:(float)score topics:(id)topics;
- (BMParsecSearchEntity)initWithProto:(id)proto;
- (BMParsecSearchEntity)initWithProtoData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMParsecSearchEntity

- (BMParsecSearchEntity)initWithName:(id)name category:(unsigned int)category probabilityScore:(float)score topics:(id)topics
{
  nameCopy = name;
  topicsCopy = topics;
  v13 = topicsCopy;
  if (nameCopy)
  {
    if (topicsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMParsecSearchEntity initWithName:category:probabilityScore:topics:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [BMParsecSearchEntity initWithName:category:probabilityScore:topics:];
LABEL_3:
  v17.receiver = self;
  v17.super_class = BMParsecSearchEntity;
  v14 = [(BMParsecSearchEntity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    v15->_category = category;
    v15->_probabilityScore = score;
    objc_storeStrong(&v15->_topics, topics);
  }

  return v15;
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
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = self->_name;
  v10[0] = @"name";
  v10[1] = @"category";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_category];
  v11[1] = v3;
  v10[2] = @"probabilityScore";
  *&v4 = self->_probabilityScore;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v11[2] = v5;
  v10[3] = @"topics";
  v6 = [(NSArray *)self->_topics _pas_mappedArrayWithTransform:&__block_literal_global_4];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMParsecSearchEntity *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMParsecSearchEntity json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMParsecSearchEntity *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMParsecSearchEntity)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMParsecSearchEntity *)self initWithProtoData:v6];
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
  proto = [(BMParsecSearchEntity *)self proto];
  data = [proto data];

  return data;
}

- (BMParsecSearchEntity)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasName]&& [v5 hasCategory]&& [v5 hasProbabilityScore]&& [v5 topicsCount])
      {
        name = [v5 name];
        category = [v5 category];
        [v5 probabilityScore];
        v9 = v8;
        topics = [v5 topics];
        v11 = [topics _pas_mappedArrayWithTransform:&__block_literal_global_145];
        LODWORD(v12) = v9;
        self = [(BMParsecSearchEntity *)self initWithName:name category:category probabilityScore:v11 topics:v12];

        selfCopy = self;
LABEL_15:

        goto LABEL_16;
      }

      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchEntity initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchEntity initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

BMParsecSearchTopic *__38__BMParsecSearchEntity_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMParsecSearchTopic alloc] initWithProto:v2];

  return v3;
}

- (BMParsecSearchEntity)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBParsecSearchEntity alloc] initWithData:dataCopy];

    self = [(BMParsecSearchEntity *)self initWithProto:v5];
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
  name = [(BMParsecSearchEntity *)self name];
  [v3 setName:name];

  [v3 setCategory:{-[BMParsecSearchEntity category](self, "category")}];
  [(BMParsecSearchEntity *)self probabilityScore];
  [v3 setProbabilityScore:?];
  topics = [(BMParsecSearchEntity *)self topics];
  v6 = [topics _pas_mappedArrayWithTransform:&__block_literal_global_147];
  v7 = [v6 mutableCopy];
  [v3 setTopics:v7];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    name = [v5 name];
    if (-[NSString isEqualToString:](name, "isEqualToString:", name) && (category = self->_category, category == [v5 category]) && (probabilityScore = self->_probabilityScore, objc_msgSend(v5, "probabilityScore"), probabilityScore == v10))
    {
      topics = self->_topics;
      topics = [v5 topics];
      v13 = [(NSArray *)topics isEqual:topics];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_topics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v15 + 1) + 8 * i) isCompleteWithContext:contextCopy error:{error, v15}])
        {

          goto LABEL_12;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (self->_name)
  {
    v12 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end