@interface MADCoreMLRequest
+ (id)requestWithModelURL:(id)a3 error:(id *)a4;
- (MADCoreMLRequest)initWithCoder:(id)a3;
- (MADCoreMLRequest)initWithModelURL:(id)a3 error:(id *)a4;
- (id)_extensionData;
- (id)description;
- (void)_extensionData;
- (void)consumeSandboxExtension;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADCoreMLRequest

- (MADCoreMLRequest)initWithModelURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MADCoreMLRequest;
  v7 = [(MADCoreMLRequest *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_modelURL, a3);
    v9 = [(MADCoreMLRequest *)v8 _extensionData];
    extensionData = v8->_extensionData;
    v8->_extensionData = v9;
  }

  return v8;
}

+ (id)requestWithModelURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithModelURL:v6 error:a4];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADCoreMLRequest;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_modelURL forKey:@"ModelURL"];
  [v4 encodeObject:self->_extensionData forKey:@"ModelURLExtensionData"];
}

- (MADCoreMLRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADCoreMLRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModelURL"];
    modelURL = v5->_modelURL;
    v5->_modelURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModelURLExtensionData"];
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

  v3 = [(NSURL *)self->_modelURL path];
  [v3 UTF8String];
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
  v1 = *(a1 + 32);
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADCoreMLRequest] Getting sandbox extension - %@", &v2, 0xCu);
}

@end