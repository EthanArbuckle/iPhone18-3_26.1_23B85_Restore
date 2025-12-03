@interface FIRenameSubOperation
- (BOOL)reconfigureOpForRename:(id)rename error:(id *)error;
- (id)configureOperationRecord:(id)record forNode:(id)node rawName:(id)name hideExtension:(const void *)extension;
@end

@implementation FIRenameSubOperation

- (BOOL)reconfigureOpForRename:(id)rename error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  renameCopy = rename;
  operation = [(FISubOperation *)self operation];
  if (operation)
  {
    if (renameCopy)
    {
LABEL_8:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v18[0] = renameCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [operation setSourceNodes:v14];

      [operation setDestinationNode:0];
      sourceNodes = [operation sourceNodes];
      [operation configureForNodes:sourceNodes];

      objc_sync_exit(selfCopy);
      v10 = 0;
      v12 = 1;
      goto LABEL_9;
    }

    v8 = -43;
  }

  else
  {
    v8 = -8072;
  }

  v9 = ErrorWithOSStatus(v8, 0);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  if (error)
  {
    v11 = v9;
    v12 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)configureOperationRecord:(id)record forNode:(id)node rawName:(id)name hideExtension:(const void *)extension
{
  recordCopy = record;
  nameCopy = name;
  nodePropertyList = [recordCopy nodePropertyList];
  v11 = MutableCopy<NSDictionary<NSString *,objc_object *>>(nodePropertyList);

  [v11 setAsString:nameCopy forProperty:1886282093 error:0];
  if (*(extension + 1) == 1)
  {
    [v11 setAsBool:*extension forProperty:1751480436 error:0];
  }

  [recordCopy setNodePropertyList:v11];

  return recordCopy;
}

@end