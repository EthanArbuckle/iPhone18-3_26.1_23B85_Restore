@interface NSError(LNDialog)
- (id)ln_dialog;
@end

@implementation NSError(LNDialog)

- (id)ln_dialog
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"LNContextDialogData"];
  v11 = 0;
  v6 = [v2 unarchivedObjectOfClass:v3 fromData:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = @"LNContextDialogData";
      v14 = 2114;
      v15 = v7;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

@end