@interface BMFileAttributes
- (BMFileAttributes)initWithCoder:(id)coder;
- (BMFileAttributes)initWithPath:(id)path mode:(unint64_t)mode protectionClass:(unint64_t)class;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMFileAttributes

- (BMFileAttributes)initWithPath:(id)path mode:(unint64_t)mode protectionClass:(unint64_t)class
{
  pathCopy = path;
  if (![pathCopy length])
  {
    [BMFileAttributes initWithPath:mode:protectionClass:];
  }

  v15.receiver = self;
  v15.super_class = BMFileAttributes;
  v9 = [(BMFileAttributes *)&v15 init];
  if (v9)
  {
    v10 = [pathCopy copy];
    path = v9->_path;
    v9->_path = v10;

    lastPathComponent = [(NSString *)v9->_path lastPathComponent];
    filename = v9->_filename;
    v9->_filename = lastPathComponent;

    v9->_mode = mode;
    v9->_protectionClass = class;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)v6->_path isEqual:self->_path]&& v6->_mode == self->_mode;
  }

  return v7;
}

- (BMFileAttributes)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  path = self->_path;
  self->_path = v5;

  lastPathComponent = [(NSString *)self->_path lastPathComponent];
  filename = self->_filename;
  self->_filename = lastPathComponent;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
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
    [coderCopy failWithError:v20];

    selfCopy = 0;
    goto LABEL_9;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];

  self->_mode = unsignedIntegerValue;
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
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

  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  self->_protectionClass = unsignedIntegerValue2;
  selfCopy = self;
LABEL_9:

  v21 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mode];
  [coderCopy encodeObject:v6 forKey:@"mode"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_protectionClass];
  [coderCopy encodeObject:v7 forKey:@"prot"];
}

- (void)initWithPath:mode:protectionClass:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"path.length" object:? file:? lineNumber:? description:?];
}

@end