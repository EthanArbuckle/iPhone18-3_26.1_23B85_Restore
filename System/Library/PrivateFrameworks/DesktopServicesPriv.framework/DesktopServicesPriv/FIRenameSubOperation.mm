@interface FIRenameSubOperation
- (BOOL)reconfigureOpForRename:(id)a3 error:(id *)a4;
- (id)configureOperationRecord:(id)a3 forNode:(id)a4 rawName:(id)a5 hideExtension:(const void *)a6;
@end

@implementation FIRenameSubOperation

- (BOOL)reconfigureOpForRename:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(FISubOperation *)self operation];
  if (v7)
  {
    if (v6)
    {
LABEL_8:
      v13 = self;
      objc_sync_enter(v13);
      v18[0] = v6;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v7 setSourceNodes:v14];

      [v7 setDestinationNode:0];
      v15 = [v7 sourceNodes];
      [v7 configureForNodes:v15];

      objc_sync_exit(v13);
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

  if (a4)
  {
    v11 = v9;
    v12 = 0;
    *a4 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)configureOperationRecord:(id)a3 forNode:(id)a4 rawName:(id)a5 hideExtension:(const void *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 nodePropertyList];
  v11 = MutableCopy<NSDictionary<NSString *,objc_object *>>(v10);

  [v11 setAsString:v9 forProperty:1886282093 error:0];
  if (*(a6 + 1) == 1)
  {
    [v11 setAsBool:*a6 forProperty:1751480436 error:0];
  }

  [v8 setNodePropertyList:v11];

  return v8;
}

@end