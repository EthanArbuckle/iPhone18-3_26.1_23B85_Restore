@interface MCMXPCMessageDeleteUserManagedAsset
- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 2uLL);
  v15.receiver = self;
  v15.super_class = MCMXPCMessageDeleteUserManagedAsset;
  v10 = [(MCMXPCMessageWithContainerBase *)&v15 initWithXPCObject:objectCopy context:contextCopy error:error];

  if (v10)
  {
    v11 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:objectCopy key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    if (!v10->_sourceRelativePath)
    {
      if (error)
      {
        *error = 11;
      }

      v10 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end