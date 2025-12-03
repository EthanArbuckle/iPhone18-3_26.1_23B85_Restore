@interface MADCoreMLRequest
+ (id)requestWithModelURL:(id)l error:(id *)error;
- (MADCoreMLRequest)initWithCoder:(id)coder;
- (MADCoreMLRequest)initWithModelURL:(id)l error:(id *)error;
- (id)_extensionData;
- (id)description;
- (void)_extensionData;
- (void)consumeSandboxExtension;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADCoreMLRequest

- (MADCoreMLRequest)initWithModelURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = MADCoreMLRequest;
  v7 = [(MADCoreMLRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_modelURL, l);
    _extensionData = [(MADCoreMLRequest *)v8 _extensionData];
    extensionData = v8->_extensionData;
    v8->_extensionData = _extensionData;
  }

  return v8;
}

+ (id)requestWithModelURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[self alloc] initWithModelURL:lCopy error:error];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADCoreMLRequest;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_modelURL forKey:@"ModelURL"];
  [coderCopy encodeObject:self->_extensionData forKey:@"ModelURLExtensionData"];
}

- (MADCoreMLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADCoreMLRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModelURL"];
    modelURL = v5->_modelURL;
    v5->_modelURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModelURLExtensionData"];
    extensionData = v5->_extensionData;
    v5->_extensionData = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSURL *)self->_modelURL description];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (id)_extensionData
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [(MADCoreMLRequest *)self _extensionData];
  }

  path = [(NSURL *)self->_modelURL path];
  [path UTF8String];
  v4 = sandbox_extension_issue_file();

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    free(v4);
    if ([v5 length])
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"UTF8String"), strlen(objc_msgSend(v5, "UTF8String")) + 1}];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADCoreMLRequest _extensionData];
      }

      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADCoreMLRequest _extensionData];
    }

    v6 = 0;
  }

  return v6;
}

- (void)consumeSandboxExtension
{
  if (self->_modelURL)
  {
    if (self->_extensionData)
    {

      JUMPOUT(0x1CCA8E8F0);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADCoreMLRequest consumeSandboxExtension];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADCoreMLRequest consumeSandboxExtension];
  }
}

- (void)_extensionData
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(self + 32);
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADCoreMLRequest] Getting sandbox extension - %@", &v2, 0xCu);
}

@end