@interface BMSiriQueryResult
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriQueryResult)initWithCoder:(id)coder;
- (BMSiriQueryResult)initWithProto:(id)proto;
- (BMSiriQueryResult)initWithProtoData:(id)data;
- (BMSiriQueryResult)initWithQID:(id)d domain:(id)domain confidence:(double)confidence;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSiriQueryResult

- (BMSiriQueryResult)initWithQID:(id)d domain:(id)domain confidence:(double)confidence
{
  dCopy = d;
  domainCopy = domain;
  if (!domainCopy)
  {
    [BMSiriQueryResult initWithQID:domain:confidence:];
  }

  v14.receiver = self;
  v14.super_class = BMSiriQueryResult;
  v11 = [(BMSiriQueryResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_qid, d);
    objc_storeStrong(&v12->_domain, domain);
    v12->_confidence = confidence;
  }

  return v12;
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
  null = qid;
  if (!qid)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  domain = self->_domain;
  v11[0] = null;
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
  jsonDict = [(BMSiriQueryResult *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSiriQueryResult *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMSiriQueryResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriQueryResult *)self initWithProtoData:v6];
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
  proto = [(BMSiriQueryResult *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriQueryResult)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasDomain]&& ([v5 hasConfidence]& 1) != 0)
      {
        v6 = [v5 qid];
        domain = [v5 domain];
        [v5 confidence];
        self = [(BMSiriQueryResult *)self initWithQID:v6 domain:domain confidence:?];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMSiriQueryResult)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriQueryResult alloc] initWithData:dataCopy];

    self = [(BMSiriQueryResult *)self initWithProto:v5];
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
  v4 = [(BMSiriQueryResult *)self qid];
  [v3 setQid:v4];

  domain = [(BMSiriQueryResult *)self domain];
  [v3 setDomain:domain];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v7 = equalCopy;
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
  domain = [v8 domain];
  if ([(NSString *)domain isEqualToString:domain])
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

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  domain = self->_domain;
  if (error && !domain)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return domain != 0;
}

@end