@interface BMPhotosKnowledgeGraphEnrichmentTopic
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithCoder:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithIdentifier:(id)a3 score:(double)a4;
- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithProto:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithProtoData:(id)a3;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentTopic

- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithIdentifier:(id)a3 score:(double)a4
{
  v7 = a3;
  if (!v7)
  {
    [BMPhotosKnowledgeGraphEnrichmentTopic initWithIdentifier:score:];
  }

  v11.receiver = self;
  v11.super_class = BMPhotosKnowledgeGraphEnrichmentTopic;
  v8 = [(BMPhotosKnowledgeGraphEnrichmentTopic *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_score = a4;
  }

  return v9;
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
      +[BMPhotosKnowledgeGraphEnrichmentTopic eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v8[2] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v7[1] = @"score";
  v8[0] = identifier;
  v7[0] = @"identifier";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosKnowledgeGraphEnrichmentTopic json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self initWithProtoData:v6];
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
  v2 = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasIdentifier]&& ([v5 hasScore]& 1) != 0)
      {
        v6 = [v5 identifier];
        [v5 score];
        self = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self initWithIdentifier:v6 score:?];

        v7 = self;
LABEL_13:

        goto LABEL_14;
      }

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentTopic initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentTopic initWithProto:];
      }
    }

    v7 = 0;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (BMPhotosKnowledgeGraphEnrichmentTopic)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentTopic alloc] initWithData:v4];

    self = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self initWithProto:v5];
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
  v4 = [(BMPhotosKnowledgeGraphEnrichmentTopic *)self identifier];
  [v3 setIdentifier:v4];

  [(BMPhotosKnowledgeGraphEnrichmentTopic *)self score];
  [v3 setScore:?];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:v7])
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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  identifier = self->_identifier;
  if (a4 && !identifier)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return identifier != 0;
}

@end