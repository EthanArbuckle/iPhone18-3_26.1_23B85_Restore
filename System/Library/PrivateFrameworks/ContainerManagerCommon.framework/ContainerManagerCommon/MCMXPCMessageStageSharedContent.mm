@interface MCMXPCMessageStageSharedContent
- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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
  v2 = [(MCMXPCMessageBase *)&v6 disposition];
  if (v2 == 1)
  {
    v3 = containermanager_copy_global_configuration();
    v2 = [v3 dispositionForContainerClass:13];
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (MCMXPCMessageStageSharedContent)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v17.receiver = self;
  v17.super_class = MCMXPCMessageStageSharedContent;
  v9 = [(MCMXPCMessageWithIdentifierBase *)&v17 initWithXPCObject:v8 context:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:v8 key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    v13 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:v8 key:"DestPath"];
    destinationRelativePath = v10->_destinationRelativePath;
    v10->_destinationRelativePath = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

@end