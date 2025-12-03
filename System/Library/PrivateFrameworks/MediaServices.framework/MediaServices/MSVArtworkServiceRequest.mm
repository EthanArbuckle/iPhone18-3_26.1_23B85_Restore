@interface MSVArtworkServiceRequest
+ (BOOL)canConnectToMediaArtworkService;
+ (BOOL)hasWriteAccessToPath:(id)path;
- (Class)operationClass;
- (MSVArtworkServiceRequest)init;
- (MSVArtworkServiceRequest)initWithCoder:(id)coder;
- (void)addSandboxExtensionIfNeededForURL:(id)l;
- (void)consumeSandboxExtensions;
- (void)encodeWithCoder:(id)coder;
- (void)releaseSandboxExtensions;
@end

@implementation MSVArtworkServiceRequest

- (Class)operationClass
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MSVArtworkServiceRequest.m" lineNumber:99 description:@"Subclass must implement!"];

  return 0;
}

- (void)releaseSandboxExtensions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_sandboxHandles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) longLongValue];
        sandbox_extension_release();
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)consumeSandboxExtensions
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_sandboxExtensions allValues];
  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v7) UTF8String];
        v8 = sandbox_extension_consume();
        sandboxHandles = self->_sandboxHandles;
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
        [(NSMutableArray *)sandboxHandles addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addSandboxExtensionIfNeededForURL:(id)l
{
  lCopy = l;
  v4 = [(NSMutableDictionary *)self->_sandboxExtensions objectForKeyedSubscript:?];
  if (v4)
  {
  }

  else
  {
    getpid();
    v5 = *MEMORY[0x1E69E9BD0];
    path = [lCopy path];
    uTF8String = [path UTF8String];
    v7 = sandbox_check();

    if (!v7)
    {
      v8 = *MEMORY[0x1E69E9BB0];
      path2 = [lCopy path];
      [path2 fileSystemRepresentation];
      v10 = *MEMORY[0x1E69E9BF0];
      v11 = sandbox_extension_issue_file();

      if (v11)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
        [(NSMutableDictionary *)self->_sandboxExtensions setObject:v12 forKeyedSubscript:lCopy];

        free(v11);
      }
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  sandboxExtensions = self->_sandboxExtensions;
  coderCopy = coder;
  [coderCopy encodeObject:sandboxExtensions forKey:@"MSVArtworkServiceRequestSandboxExtensions"];
  [coderCopy encodeObject:self->_sandboxHandles forKey:@"MSVArtworkServiceRequestSandboxHandles"];
}

- (MSVArtworkServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MSVArtworkServiceRequest *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"MSVArtworkServiceRequestSandboxExtensions"];
    sandboxExtensions = v5->_sandboxExtensions;
    v5->_sandboxExtensions = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"MSVArtworkServiceRequestSandboxHandles"];
    sandboxHandles = v5->_sandboxHandles;
    v5->_sandboxHandles = v15;
  }

  return v5;
}

- (MSVArtworkServiceRequest)init
{
  v8.receiver = self;
  v8.super_class = MSVArtworkServiceRequest;
  v2 = [(MSVArtworkServiceRequest *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sandboxExtensions = v2->_sandboxExtensions;
    v2->_sandboxExtensions = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    sandboxHandles = v2->_sandboxHandles;
    v2->_sandboxHandles = array;
  }

  return v2;
}

+ (BOOL)hasWriteAccessToPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  path = [path path];
  [path fileSystemRepresentation];

  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  return sandbox_check() == 0;
}

+ (BOOL)canConnectToMediaArtworkService
{
  getpid();
  [@"com.apple.mediaartworkd.xpc" UTF8String];
  return sandbox_check() == 0;
}

@end