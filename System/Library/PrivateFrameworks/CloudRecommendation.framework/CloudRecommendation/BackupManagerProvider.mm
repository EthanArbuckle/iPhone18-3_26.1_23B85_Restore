@interface BackupManagerProvider
- (BackupManagerProvider)initWithAccount:(id)account;
@end

@implementation BackupManagerProvider

- (BackupManagerProvider)initWithAccount:(id)account
{
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = BackupManagerProvider;
  v5 = [(BackupManagerProvider *)&v12 init];
  if (v5)
  {
    v11 = 0;
    v6 = [objc_alloc(MEMORY[0x277D28A40]) initWithAccount:accountCopy delegate:0 eventQueue:0 error:&v11];
    v7 = v11;
    backupManager = v5->_backupManager;
    v5->_backupManager = v6;

    if (v7)
    {
      v9 = _CELogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(BackupManagerProvider *)v7 initWithAccount:v9];
      }
    }
  }

  return v5;
}

- (void)initWithAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[BackupManagerProvider initWithAccount:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_2439E1000, a2, OS_LOG_TYPE_ERROR, "%s unable to init MBManager with error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end