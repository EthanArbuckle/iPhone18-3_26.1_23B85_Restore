@interface MADEmbeddingResult
- (MADEmbeddingResult)initWithCoder:(id)coder;
- (MADEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type;
- (MADEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type shape:(id)shape;
- (id)description;
- (unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADEmbeddingResult

- (MADEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type shape:(id)shape
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  shapeCopy = shape;
  v31.receiver = self;
  v31.super_class = MADEmbeddingResult;
  v11 = [(MADEmbeddingResult *)&v31 init];
  if (!v11)
  {
    goto LABEL_19;
  }

  if (type == 1)
  {
    v12 = [dataCopy length] >> 1;
  }

  else
  {
    if (type != 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        type = v11->_type;
        *buf = 67109120;
        LODWORD(v33) = type;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "Embedding has unknown element type (%d); cannot derive count";
        v21 = 8;
LABEL_22:
        _os_log_impl(&dword_1C972C000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
      }

LABEL_23:
      v22 = 0;
      goto LABEL_24;
    }

    v12 = [dataCopy length] >> 2;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = shapeCopy;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
  versionCopy = version;
  if (v14)
  {
    v15 = *v28;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v16 *= [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 1;
  }

  if (v16 != v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v13;
      v34 = 2048;
      v35 = v12;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Embedding shape %@ inconsistent with embedding data size:%lu";
      v21 = 22;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v11->_version = versionCopy;
  objc_storeStrong(&v11->_data, data);
  v11->_type = type;
  objc_storeStrong(&v11->_shape, shape);
LABEL_19:
  v22 = v11;
LABEL_24:

  return v22;
}

- (MADEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (type == 2)
  {
    v10 = [dataCopy length] >> 2;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v10 = [dataCopy length] >> 1;
LABEL_5:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v10, &unk_1F4925DD0}];
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    self = [(MADEmbeddingResult *)self initWithVersion:version data:v9 type:type shape:v12];

    selfCopy = self;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    type = self->_type;
    *buf = 67109120;
    typeCopy = type;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Embedding has unknown element type (%d); cannot derive count", buf, 8u);
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (MADEmbeddingResult)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADEmbeddingResult;
  v5 = [(MADEmbeddingResult *)&v14 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"Version"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
    data = v5->_data;
    v5->_data = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v8 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Shape"];
    shape = v5->_shape;
    v5->_shape = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_version forKey:@"Version"];
  [coderCopy encodeObject:self->_data forKey:@"Data"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeObject:self->_shape forKey:@"Shape"];
}

- (unint64_t)count
{
  v7 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type == 2)
  {
    return [(NSData *)self->_data length]>> 2;
  }

  if (type == 1)
  {
    return [(NSData *)self->_data length]>> 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_type;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Embedding has unknown element type (%d); cannot derive count", v6, 8u);
  }

  return 0;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"version: %d, ", self->_version];
  [string appendFormat:@"type: %d, ", self->_type];
  [string appendFormat:@"shape: %@, ", self->_shape];
  [string appendFormat:@"data: %@>", self->_data];

  return string;
}

@end