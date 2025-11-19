@interface FPDIterator
+ (id)iteratorForLocator:(id)a3 manager:(id)a4;
+ (id)iteratorForLocator:(id)a3 wantsDisk:(BOOL)a4 provider:(id)a5;
- (BOOL)done;
- (id)nextItem;
- (id)nextWithError:(id *)a3;
- (unint64_t)numFoldersPopped;
@end

@implementation FPDIterator

+ (id)iteratorForLocator:(id)a3 manager:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isProviderItem] && (objc_msgSend(v5, "asFPItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "providerItemID"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v5 asFPItem];
    v10 = [v9 itemID];
    v11 = [v10 providerID];
    v12 = [v6 providerWithIdentifier:v11 reason:0];

    v13 = [v12 asAppExtensionBackedProvider];
    v14 = [FPDItemIterator alloc];
    v15 = [v5 asFPItem];
    v16 = [(FPDItemIterator *)v14 initWithItem:v15 provider:v13];
  }

  else
  {
    if ([v5 isProviderItem])
    {
      v17 = [v5 asFPItem];
      v12 = [v17 fileURL];
    }

    else
    {
      v12 = [v5 asURL];
    }

    v18 = [FPDDiskIterator alloc];
    if ([v12 fp_isFolder])
    {
      v19 = 1;
    }

    else
    {
      v19 = [v12 fp_isPackage];
    }

    v16 = [(FPDDiskIterator *)v18 initWithURL:v12 isDirectory:v19];
  }

  return v16;
}

+ (id)iteratorForLocator:(id)a3 wantsDisk:(BOOL)a4 provider:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if (![v7 isProviderItem])
  {
    v13 = [v7 asURL];
    if (!v13)
    {
      +[FPDIterator iteratorForLocator:wantsDisk:provider:];
    }

    goto LABEL_10;
  }

  v9 = [v7 asFPItem];
  v10 = [v9 providerItemID];

  if (!v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDIterator iteratorForLocator:v9 wantsDisk:v11 provider:?];
    }

    v6 = 1;
  }

  v12 = [v9 fileURL];
  v13 = v12;
  if (v6 && v12)
  {

LABEL_10:
    v14 = [FPDDiskIterator alloc];
    if ([v13 fp_isFolder])
    {
      v15 = 1;
    }

    else
    {
      v15 = [v13 fp_isPackage];
    }

    v16 = [(FPDDiskIterator *)v14 initWithURL:v13 isDirectory:v15];
    goto LABEL_15;
  }

  v17 = [v8 asAppExtensionBackedProvider];
  v16 = [[FPDItemIterator alloc] initWithItem:v9 provider:v17];

LABEL_15:

  return v16;
}

- (id)nextWithError:(id *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: missing override"];
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_fault_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v5, 0xCu);
  }

  __assert_rtn("-[FPDIterator nextWithError:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDIterator.m", 70, [v3 UTF8String]);
}

- (id)nextItem
{
  v4 = 0;
  v2 = [(FPDIterator *)self nextWithError:&v4];

  return v2;
}

- (BOOL)done
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: missing override"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDIterator done]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDIterator.m", 82, [v2 UTF8String]);
}

- (unint64_t)numFoldersPopped
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: missing override"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDIterator numFoldersPopped]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/action operation engine/FPDIterator.m", 88, [v2 UTF8String]);
}

+ (void)iteratorForLocator:(uint64_t)a1 wantsDisk:(NSObject *)a2 provider:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Item %@ is a disk identifier, forcing disk enumeration", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end