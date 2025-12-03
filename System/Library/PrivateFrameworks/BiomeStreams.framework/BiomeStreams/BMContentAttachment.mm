@interface BMContentAttachment
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMContentAttachment)initWithCoder:(id)coder;
- (BMContentAttachment)initWithProto:(id)proto;
- (BMContentAttachment)initWithProtoData:(id)data;
- (BMContentAttachment)initWithType:(id)type filename:(id)filename path:(id)path;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMContentAttachment

- (BMContentAttachment)initWithType:(id)type filename:(id)filename path:(id)path
{
  typeCopy = type;
  filenameCopy = filename;
  pathCopy = path;
  if (typeCopy)
  {
    if (filenameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMContentAttachment initWithType:a2 filename:self path:?];
    if (filenameCopy)
    {
      goto LABEL_3;
    }
  }

  [BMContentAttachment initWithType:a2 filename:self path:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = BMContentAttachment;
  v13 = [(BMContentAttachment *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_type, type);
    objc_storeStrong(&v14->_filename, filename);
    objc_storeStrong(&v14->_path, path);
  }

  return v14;
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
      [BMContentAttachment eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"type";
  v8[1] = @"filename";
  filename = self->_filename;
  v9[0] = self->_type;
  v9[1] = filename;
  v8[2] = @"path";
  path = self->_path;
  null = path;
  if (!path)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[2] = null;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  if (!path)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMContentAttachment *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMContentAttachment *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMContentAttachment *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMContentAttachment)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMContentAttachment *)self initWithProtoData:v6];
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
  proto = [(BMContentAttachment *)self proto];
  data = [proto data];

  return data;
}

- (BMContentAttachment)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasType]&& ([v5 hasFilename]& 1) != 0)
      {
        type = [v5 type];
        filename = [v5 filename];
        path = [v5 path];
        self = [(BMContentAttachment *)self initWithType:type filename:filename path:path];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BMContentAttachment initWithProto:v10];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMContentAttachment initWithProto:v5];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (BMContentAttachment)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBContentAttachment alloc] initWithData:dataCopy];

    self = [(BMContentAttachment *)self initWithProto:v5];
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
  type = [(BMContentAttachment *)self type];
  [v3 setType:type];

  filename = [(BMContentAttachment *)self filename];
  [v3 setFilename:filename];

  path = [(BMContentAttachment *)self path];
  [v3 setPath:path];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = self->_type;
    type = [v5 type];
    if (![(NSString *)type isEqualToString:type])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    filename = self->_filename;
    filename = [v5 filename];
    if ([filename isEqualToString:filename])
    {
      path = self->_path;
      v11 = path;
      if (!path)
      {
        filename = [v5 path];
        if (!filename)
        {
          v13 = 1;
LABEL_13:

          goto LABEL_14;
        }

        v11 = self->_path;
      }

      path = [v5 path];
      v13 = [(NSString *)v11 isEqualToString:path];

      if (!path)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_type && self->_filename)
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