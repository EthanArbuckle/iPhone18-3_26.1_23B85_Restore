@interface BMContentAttachment
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMContentAttachment)initWithCoder:(id)a3;
- (BMContentAttachment)initWithProto:(id)a3;
- (BMContentAttachment)initWithProtoData:(id)a3;
- (BMContentAttachment)initWithType:(id)a3 filename:(id)a4 path:(id)a5;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMContentAttachment

- (BMContentAttachment)initWithType:(id)a3 filename:(id)a4 path:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMContentAttachment initWithType:a2 filename:self path:?];
    if (v11)
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
    objc_storeStrong(&v13->_type, a3);
    objc_storeStrong(&v14->_filename, a4);
    objc_storeStrong(&v14->_path, a5);
  }

  return v14;
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
      [BMContentAttachment eventWithData:a4 dataVersion:v8];
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
  v4 = path;
  if (!path)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[2] = v4;
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
  v3 = [(BMContentAttachment *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMContentAttachment *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMContentAttachment)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMContentAttachment *)self initWithProtoData:v6];
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
  v2 = [(BMContentAttachment *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMContentAttachment)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasType]&& ([v5 hasFilename]& 1) != 0)
      {
        v6 = [v5 type];
        v7 = [v5 filename];
        v8 = [v5 path];
        self = [(BMContentAttachment *)self initWithType:v6 filename:v7 path:v8];

        v9 = self;
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

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (BMContentAttachment)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBContentAttachment alloc] initWithData:v4];

    self = [(BMContentAttachment *)self initWithProto:v5];
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
  v4 = [(BMContentAttachment *)self type];
  [v3 setType:v4];

  v5 = [(BMContentAttachment *)self filename];
  [v3 setFilename:v5];

  v6 = [(BMContentAttachment *)self path];
  [v3 setPath:v6];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    type = self->_type;
    v7 = [v5 type];
    if (![(NSString *)type isEqualToString:v7])
    {
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    filename = self->_filename;
    v9 = [v5 filename];
    if ([filename isEqualToString:v9])
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

      v12 = [v5 path];
      v13 = [(NSString *)v11 isEqualToString:v12];

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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_type && self->_filename)
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