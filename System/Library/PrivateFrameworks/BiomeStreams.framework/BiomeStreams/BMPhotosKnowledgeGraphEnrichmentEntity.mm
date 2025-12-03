@interface BMPhotosKnowledgeGraphEnrichmentEntity
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithCoder:(id)coder;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)name score:(double)score language:(id)language category:(unsigned int)category;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProto:(id)proto;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProtoData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentEntity

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)name score:(double)score language:(id)language category:(unsigned int)category
{
  nameCopy = name;
  languageCopy = language;
  v13 = languageCopy;
  if (nameCopy)
  {
    if (languageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosKnowledgeGraphEnrichmentEntity initWithName:score:language:category:];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [BMPhotosKnowledgeGraphEnrichmentEntity initWithName:score:language:category:];
LABEL_3:
  v17.receiver = self;
  v17.super_class = BMPhotosKnowledgeGraphEnrichmentEntity;
  v14 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    v15->_score = score;
    objc_storeStrong(&v15->_language, language);
    v15->_category = category;
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
      +[BMPhotosKnowledgeGraphEnrichmentEntity eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = self->_name;
  v9[0] = @"name";
  v9[1] = @"score";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  language = self->_language;
  v10[1] = v3;
  v10[2] = language;
  v9[2] = @"language";
  v9[3] = @"category";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_category];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosKnowledgeGraphEnrichmentEntity json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithProtoData:v6];
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
  proto = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self proto];
  data = [proto data];

  return data;
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasName]&& [v5 hasScore]&& [v5 hasLanguage]&& ([v5 hasCategory]& 1) != 0)
      {
        name = [v5 name];
        [v5 score];
        v8 = v7;
        language = [v5 language];
        self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithName:name score:language language:[v5 category] category:v8];

        selfCopy = self;
LABEL_15:

        goto LABEL_16;
      }

      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentEntity initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentEntity initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentEntity alloc] initWithData:dataCopy];

    self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithProto:v5];
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
  name = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self name];
  [v3 setName:name];

  [(BMPhotosKnowledgeGraphEnrichmentEntity *)self score];
  [v3 setScore:?];
  language = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self language];
  [v3 setLanguage:language];

  [v3 setCategory:{-[BMPhotosKnowledgeGraphEnrichmentEntity category](self, "category")}];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_category];
  v5 = [v4 hash];

  return v5 ^ v3;
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
    if (-[NSString isEqualToString:](name, "isEqualToString:", name) && (score = self->_score, [v5 score], score == v9))
    {
      language = self->_language;
      language = [v5 language];
      if ([(NSString *)language isEqualToString:language])
      {
        category = self->_category;
        v13 = category == [v5 category];
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
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_name && self->_language)
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