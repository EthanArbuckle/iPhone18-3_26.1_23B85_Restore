@interface ICFolder(Management)
@end

@implementation ICFolder(Management)

+ (void)deleteFolder:()Management .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Deleting folder %@", &v4, 0xCu);
}

+ (void)countOfFoldersMatchingPredicate:()Management context:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error counting folder matching predicate %@: %@", &v3, 0x16u);
}

@end