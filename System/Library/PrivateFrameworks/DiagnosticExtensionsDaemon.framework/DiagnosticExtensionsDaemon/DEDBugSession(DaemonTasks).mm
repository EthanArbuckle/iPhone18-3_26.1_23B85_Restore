@interface DEDBugSession(DaemonTasks)
- (void)hasStaleDirectory;
@end

@implementation DEDBugSession(DaemonTasks)

- (void)hasStaleDirectory
{
  v11 = *MEMORY[0x277D85DE8];
  identifier = [self identifier];
  v7 = 138543618;
  v8 = identifier;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Error getting [%{public}@] directory metadata with error: [%{public}@]", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end