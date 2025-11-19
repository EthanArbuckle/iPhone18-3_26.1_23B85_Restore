@interface CKRecordID(FCAdditions)
- (id)fc_initSafeWithRecordName:()FCAdditions;
@end

@implementation CKRecordID(FCAdditions)

- (id)fc_initSafeWithRecordName:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] && objc_msgSend(v4, "length") < 0x100)
  {
    v5 = [a1 initWithRecordName:v4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid record name: %@", v4];
      *buf = 136315906;
      v10 = "[CKRecordID(FCAdditions) fc_initSafeWithRecordName:]";
      v11 = 2080;
      v12 = "CKRecordID+FCAdditions.m";
      v13 = 1024;
      v14 = 17;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end