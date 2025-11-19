@interface BMUserActivityMetadataTopic
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMUserActivityMetadataTopic)initWithCoder:(id)a3;
- (BMUserActivityMetadataTopic)initWithProto:(id)a3;
- (BMUserActivityMetadataTopic)initWithProtoData:(id)a3;
- (BMUserActivityMetadataTopic)initWithTopicIdentifier:(id)a3 title:(id)a4;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMUserActivityMetadataTopic

- (BMUserActivityMetadataTopic)initWithTopicIdentifier:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BMUserActivityMetadataTopic;
  v8 = [(BMUserActivityMetadataTopic *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    topicIdentifier = v8->_topicIdentifier;
    v8->_topicIdentifier = v9;

    v11 = [v7 copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
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
  v3 = [(BMUserActivityMetadataTopic *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMUserActivityMetadataTopic *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (BMUserActivityMetadataTopic)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"data" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMUserActivityMetadataTopic *)self initWithProtoData:v6];
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
  v2 = [(BMUserActivityMetadataTopic *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMUserActivityMetadataTopic)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasTopicIdentifier]&& ([v5 hasTitle]& 1) != 0)
      {
        v6 = [v5 topicIdentifier];
        v7 = [v5 title];
        self = [(BMUserActivityMetadataTopic *)self initWithTopicIdentifier:v6 title:v7];

        v8 = self;
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

    v8 = 0;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (BMUserActivityMetadataTopic)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBUserActivityMetadataTopic alloc] initWithData:v4];

    self = [(BMUserActivityMetadataTopic *)self initWithProto:v5];
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
  v4 = [(BMUserActivityMetadataTopic *)self topicIdentifier];
  v5 = [v4 copy];
  [v3 setTopicIdentifier:v5];

  v6 = [(BMUserActivityMetadataTopic *)self title];
  v7 = [v6 copy];
  [v3 setTitle:v7];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = v7;
  topicIdentifier = self->_topicIdentifier;
  if (topicIdentifier || ([v7 topicIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = self->_title;
    v4 = [v8 title];
    if (![(NSString *)title isEqualToString:v4])
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
  v14 = [v8 topicIdentifier];
  if ([(NSString *)v13 isEqualToString:v14])
  {
    v15 = self->_title;
    v16 = [v8 title];
    v12 = [(NSString *)v15 isEqualToString:v16];
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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_topicIdentifier && self->_title)
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