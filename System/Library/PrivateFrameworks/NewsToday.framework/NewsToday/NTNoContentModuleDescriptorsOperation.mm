@interface NTNoContentModuleDescriptorsOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)a3;
- (void)validateOperation;
@end

@implementation NTNoContentModuleDescriptorsOperation

- (BOOL)validateOperation
{
  v2 = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];

  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNoContentModuleDescriptorsOperation validateOperation];
  }

  return v2 != 0;
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];
  (*(v5 + 2))(v5, MEMORY[0x277CBEBF8], 0, v4);
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"module descriptors operation requires completion"];
  v2 = 136315906;
  v3 = "[NTNoContentModuleDescriptorsOperation validateOperation]";
  v4 = 2080;
  v5 = "NTNoContentModuleDescriptorsOperation.m";
  v6 = 1024;
  v7 = 19;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end