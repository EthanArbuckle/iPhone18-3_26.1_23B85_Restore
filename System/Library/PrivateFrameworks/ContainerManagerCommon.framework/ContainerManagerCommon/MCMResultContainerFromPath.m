@interface MCMResultContainerFromPath
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultContainerFromPath)initWithUUID:(id)a3 containerPathIdentifier:(id)a4 identifier:(id)a5 containerClass:(unint64_t)a6 POSIXUser:(id)a7 personaUniqueString:(id)a8 sandboxToken:(id)a9 existed:(BOOL)a10 url:(id)a11 info:(id)a12 transient:(BOOL)a13 userManagedAssetsRelPath:(id)a14 creator:(id)a15 relativePath:(id)a16;
- (NSString)relativePath;
- (void)setRelativePath:(id)a3;
@end

@implementation MCMResultContainerFromPath

- (void)setRelativePath:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_relativePath = &self->_relativePath;

  objc_storeStrong(p_relativePath, a3);
}

- (NSString)relativePath
{
  result = self->_relativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultContainerFromPath;
  v5 = [(MCMResultWithContainerBase *)&v10 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];
    if (v6)
    {
LABEL_5:

      goto LABEL_6;
    }

    v7 = [(MCMResultContainerFromPath *)self relativePath];

    if (v7)
    {
      v6 = [(MCMResultContainerFromPath *)self relativePath];
      xpc_dictionary_set_string(v4, "ReplyRelativePath", [v6 UTF8String]);
      goto LABEL_5;
    }
  }

LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultContainerFromPath)initWithUUID:(id)a3 containerPathIdentifier:(id)a4 identifier:(id)a5 containerClass:(unint64_t)a6 POSIXUser:(id)a7 personaUniqueString:(id)a8 sandboxToken:(id)a9 existed:(BOOL)a10 url:(id)a11 info:(id)a12 transient:(BOOL)a13 userManagedAssetsRelPath:(id)a14 creator:(id)a15 relativePath:(id)a16
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = a16;
  v30.receiver = self;
  v30.super_class = MCMResultContainerFromPath;
  v18 = [(MCMResultWithContainerBase *)&v30 initWithUUID:a3 containerPathIdentifier:a4 identifier:a5 containerClass:a6 POSIXUser:a7 personaUniqueString:a8 sandboxToken:a9 existed:a10 url:a11 info:a12 transient:a13 userManagedAssetsRelPath:a14 creator:a15];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_relativePath, a16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

@end