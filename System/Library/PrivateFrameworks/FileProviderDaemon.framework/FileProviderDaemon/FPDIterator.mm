@interface FPDIterator
+ (id)iteratorForLocator:(id)locator manager:(id)manager;
+ (id)iteratorForLocator:(id)locator wantsDisk:(BOOL)disk provider:(id)provider;
- (BOOL)done;
- (id)nextItem;
- (id)nextWithError:(id *)error;
- (unint64_t)numFoldersPopped;
@end

@implementation FPDIterator

+ (id)iteratorForLocator:(id)locator manager:(id)manager
{
  locatorCopy = locator;
  managerCopy = manager;
  if ([locatorCopy isProviderItem] && (objc_msgSend(locatorCopy, "asFPItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "providerItemID"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    asFPItem = [locatorCopy asFPItem];
    itemID = [asFPItem itemID];
    providerID = [itemID providerID];
    fileURL = [managerCopy providerWithIdentifier:providerID reason:0];

    asAppExtensionBackedProvider = [fileURL asAppExtensionBackedProvider];
    v14 = [FPDItemIterator alloc];
    asFPItem2 = [locatorCopy asFPItem];
    v16 = [(FPDItemIterator *)v14 initWithItem:asFPItem2 provider:asAppExtensionBackedProvider];
  }

  else
  {
    if ([locatorCopy isProviderItem])
    {
      asFPItem3 = [locatorCopy asFPItem];
      fileURL = [asFPItem3 fileURL];
    }

    else
    {
      fileURL = [locatorCopy asURL];
    }

    v18 = [FPDDiskIterator alloc];
    if ([fileURL fp_isFolder])
    {
      fp_isPackage = 1;
    }

    else
    {
      fp_isPackage = [fileURL fp_isPackage];
    }

    v16 = [(FPDDiskIterator *)v18 initWithURL:fileURL isDirectory:fp_isPackage];
  }

  return v16;
}

+ (id)iteratorForLocator:(id)locator wantsDisk:(BOOL)disk provider:(id)provider
{
  diskCopy = disk;
  locatorCopy = locator;
  providerCopy = provider;
  if (![locatorCopy isProviderItem])
  {
    asURL = [locatorCopy asURL];
    if (!asURL)
    {
      +[FPDIterator iteratorForLocator:wantsDisk:provider:];
    }

    goto LABEL_10;
  }

  asFPItem = [locatorCopy asFPItem];
  providerItemID = [asFPItem providerItemID];

  if (!providerItemID)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDIterator iteratorForLocator:asFPItem wantsDisk:v11 provider:?];
    }

    diskCopy = 1;
  }

  fileURL = [asFPItem fileURL];
  asURL = fileURL;
  if (diskCopy && fileURL)
  {

LABEL_10:
    v14 = [FPDDiskIterator alloc];
    if ([asURL fp_isFolder])
    {
      fp_isPackage = 1;
    }

    else
    {
      fp_isPackage = [asURL fp_isPackage];
    }

    v16 = [(FPDDiskIterator *)v14 initWithURL:asURL isDirectory:fp_isPackage];
    goto LABEL_15;
  }

  asAppExtensionBackedProvider = [providerCopy asAppExtensionBackedProvider];
  v16 = [[FPDItemIterator alloc] initWithItem:asFPItem provider:asAppExtensionBackedProvider];

LABEL_15:

  return v16;
}

- (id)nextWithError:(id *)error
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