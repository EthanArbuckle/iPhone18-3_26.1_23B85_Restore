@interface BMSiriQueryResult
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriQueryResult)initWithCoder:(id)a3;
- (BMSiriQueryResult)initWithProto:(id)a3;
- (BMSiriQueryResult)initWithProtoData:(id)a3;
- (BMSiriQueryResult)initWithQID:(id)a3 domain:(id)a4 confidence:(double)a5;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSiriQueryResult

- (BMSiriQueryResult)initWithQID:(id)a3 domain:(id)a4 confidence:(double)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    [BMSiriQueryResult initWithQID:domain:confidence:];
  }

  v14.receiver = self;
  v14.super_class = BMSiriQueryResult;
  v11 = [(BMSiriQueryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_qid, a3);
    objc_storeStrong(&v12->_domain, a4);
    v12->_confidence = a5;
  }

  return v12;
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
      +[BMSiriQueryResult eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"qid";
  qid = self->_qid;
  v4 = qid;
  if (!qid)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  domain = self->_domain;
  v11[0] = v4;
  v11[1] = domain;
  v10[1] = @"domain";
  v10[2] = @"confidence";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  if (!qid)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMSiriQueryResult *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMSiriQueryResult json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSiriQueryResult *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMSiriQueryResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriQueryResult *)self initWithProtoData:v6];
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
  v2 = [(BMSiriQueryResult *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriQueryResult)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasDomain]&& ([v5 hasConfidence]& 1) != 0)
      {
        v6 = [v5 qid];
        v7 = [v5 domain];
        [v5 confidence];
        self = [(BMSiriQueryResult *)self initWithQID:v6 domain:v7 confidence:?];

        v8 = self;
LABEL_13:

        goto LABEL_14;
      }

      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMSiriQueryResult initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSiriQueryResult initWithProto:];
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (BMSiriQueryResult)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriQueryResult alloc] initWithData:v4];

    self = [(BMSiriQueryResult *)self initWithProto:v5];
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
  v4 = [(BMSiriQueryResult *)self qid];
  [v3 setQid:v4];

  v5 = [(BMSiriQueryResult *)self domain];
  [v3 setDomain:v5];

  [(BMSiriQueryResult *)self confidence];
  [v3 setConfidence:?];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = v7;
  qid = self->_qid;
  v10 = qid;
  if (!qid)
  {
    v3 = [v7 qid];
    if (!v3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = self->_qid;
  }

  v4 = [v8 qid];
  if (![(NSString *)v10 isEqualToString:v4])
  {
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 1;
LABEL_10:
  domain = self->_domain;
  v14 = [v8 domain];
  if ([(NSString *)domain isEqualToString:v14])
  {
    confidence = self->_confidence;
    [v8 confidence];
    v12 = confidence == v16;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!qid)
  {
  }

LABEL_18:
  return v12;
}

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  domain = self->_domain;
  if (a4 && !domain)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return domain != 0;
}

@end