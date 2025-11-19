@interface BMFileAttributes
- (BMFileAttributes)initWithCoder:(id)a3;
- (BMFileAttributes)initWithPath:(id)a3 mode:(unint64_t)a4 protectionClass:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMFileAttributes

- (BMFileAttributes)initWithPath:(id)a3 mode:(unint64_t)a4 protectionClass:(unint64_t)a5
{
  v8 = a3;
  if (![v8 length])
  {
    [BMFileAttributes initWithPath:mode:protectionClass:];
  }

  v15.receiver = self;
  v15.super_class = BMFileAttributes;
  v9 = [(BMFileAttributes *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    path = v9->_path;
    v9->_path = v10;

    v12 = [(NSString *)v9->_path lastPathComponent];
    filename = v9->_filename;
    v9->_filename = v12;

    v9->_mode = a4;
    v9->_protectionClass = a5;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)v6->_path isEqual:self->_path]&& v6->_mode == self->_mode;
  }

  return v7;
}

- (BMFileAttributes)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  path = self->_path;
  self->_path = v5;

  v7 = [(NSString *)self->_path lastPathComponent];
  filename = self->_filename;
  self->_filename = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v10 = v9;
  if (!v9 || [v9 unsignedIntegerValue] >= 4)
  {
    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Invalid access mode";
    v16 = MEMORY[0x1E695DF20];
    v17 = v26;
    v18 = &v25;
LABEL_8:
    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v20 = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v19];
    [v4 failWithError:v20];

    v14 = 0;
    goto LABEL_9;
  }

  v11 = [v10 unsignedIntegerValue];

  self->_mode = v11;
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v10 = v12;
  if (!v12 || [v12 unsignedIntegerValue] >= 7)
  {
    v15 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Invalid protection class";
    v16 = MEMORY[0x1E695DF20];
    v17 = &v24;
    v18 = &v23;
    goto LABEL_8;
  }

  v13 = [v10 unsignedIntegerValue];

  self->_protectionClass = v13;
  v14 = self;
LABEL_9:

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"path"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mode];
  [v5 encodeObject:v6 forKey:@"mode"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_protectionClass];
  [v5 encodeObject:v7 forKey:@"prot"];
}

- (void)initWithPath:mode:protectionClass:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path.length" object:? file:? lineNumber:? description:?];
}

@end