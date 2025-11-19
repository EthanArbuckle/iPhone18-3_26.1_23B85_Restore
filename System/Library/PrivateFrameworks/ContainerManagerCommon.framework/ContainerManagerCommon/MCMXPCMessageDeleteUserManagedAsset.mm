@interface MCMXPCMessageDeleteUserManagedAsset
- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSString)sourceRelativePath;
@end

@implementation MCMXPCMessageDeleteUserManagedAsset

- (NSString)sourceRelativePath
{
  result = self->_sourceRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  xpc_dictionary_set_uint64(v8, "ContainerClass", 2uLL);
  v15.receiver = self;
  v15.super_class = MCMXPCMessageDeleteUserManagedAsset;
  v10 = [(MCMXPCMessageWithContainerBase *)&v15 initWithXPCObject:v8 context:v9 error:a5];

  if (v10)
  {
    v11 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:v8 key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    if (!v10->_sourceRelativePath)
    {
      if (a5)
      {
        *a5 = 11;
      }

      v10 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end