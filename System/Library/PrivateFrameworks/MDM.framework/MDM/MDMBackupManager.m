@interface MDMBackupManager
- (MDMBackupManager)initWithPersonaIdentifier:(id)a3;
- (void)isCloudBackupInProgressWithCompletion:(id)a3;
@end

@implementation MDMBackupManager

- (MDMBackupManager)initWithPersonaIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MDMBackupManager;
  v6 = [(MDMBackupManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaIdentifier, a3);
    v8 = dispatch_queue_create("com.apple.mdm.MDMBackupManager", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x277D28A40]) initWithDelegate:v7 eventQueue:v7->_queue personaIdentifier:v5];
    manager = v7->_manager;
    v7->_manager = v10;
  }

  return v7;
}

- (void)isCloudBackupInProgressWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MDMBackupManager *)self manager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__MDMBackupManager_isCloudBackupInProgressWithCompletion___block_invoke;
  v7[3] = &unk_27982BA30;
  v8 = v4;
  v6 = v4;
  [v5 fetchiCloudRestoreIsCompleteWithCompletion:v7];
}

uint64_t __58__MDMBackupManager_isCloudBackupInProgressWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end