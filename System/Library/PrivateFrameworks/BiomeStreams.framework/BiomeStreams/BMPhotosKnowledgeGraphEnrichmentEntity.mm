@interface BMPhotosKnowledgeGraphEnrichmentEntity
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithCoder:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)a3 score:(double)a4 language:(id)a5 category:(unsigned int)a6;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProto:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProtoData:(id)a3;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentEntity

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)a3 score:(double)a4 language:(id)a5 category:(unsigned int)a6
{
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
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
    objc_storeStrong(&v14->_name, a3);
    v15->_score = a4;
    objc_storeStrong(&v15->_language, a5);
    v15->_category = a6;
  }

  return v15;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v3 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithProtoData:v6];
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
  v2 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasName]&& [v5 hasScore]&& [v5 hasLanguage]&& ([v5 hasCategory]& 1) != 0)
      {
        v6 = [v5 name];
        [v5 score];
        v8 = v7;
        v9 = [v5 language];
        self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithName:v6 score:v9 language:[v5 category] category:v8];

        v10 = self;
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

    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (BMPhotosKnowledgeGraphEnrichmentEntity)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentEntity alloc] initWithData:v4];

    self = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self initWithProto:v5];
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
  v4 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self name];
  [v3 setName:v4];

  [(BMPhotosKnowledgeGraphEnrichmentEntity *)self score];
  [v3 setScore:?];
  v5 = [(BMPhotosKnowledgeGraphEnrichmentEntity *)self language];
  [v3 setLanguage:v5];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    name = self->_name;
    v7 = [v5 name];
    if (-[NSString isEqualToString:](name, "isEqualToString:", v7) && (score = self->_score, [v5 score], score == v9))
    {
      language = self->_language;
      v11 = [v5 language];
      if ([(NSString *)language isEqualToString:v11])
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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_name && self->_language)
  {
    v7 = 1;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end