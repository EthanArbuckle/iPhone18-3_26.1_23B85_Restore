@interface MCMXPCMessageStageSharedContent
- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSString)destinationRelativePath;
- (NSString)sourceRelativePath;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageStageSharedContent

- (NSString)destinationRelativePath
{
  result = self->_destinationRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)sourceRelativePath
{
  result = self->_sourceRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageStageSharedContent;
  disposition = [(MCMXPCMessageBase *)&v6 disposition];
  if (disposition == 1)
  {
    v3 = containermanager_copy_global_configuration();
    disposition = [v3 dispositionForContainerClass:13];
  }

  v4 = *MEMORY[0x1E69E9840];
  return disposition;
}

- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = MCMXPCMessageStageSharedContent;
  v9 = [(MCMXPCMessageWithIdentifierBase *)&v17 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    v13 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:objectCopy key:"DestPath"];
    destinationRelativePath = v10->_destinationRelativePath;
    v10->_destinationRelativePath = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

@end