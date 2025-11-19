@interface BRiWorkWebShareMigrateOperation
- (BRiWorkWebShareMigrateOperation)initWithURL:(id)a3;
- (void)_copyShare;
- (void)_migrateShare;
- (void)_startSharingReadWrite:(BOOL)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRiWorkWebShareMigrateOperation

- (BRiWorkWebShareMigrateOperation)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRiWorkWebShareMigrateOperation;
  v5 = [(BROperation *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(BRiWorkWebShareMigrateOperation *)v5 setOperationQueue:v6];

    [(BRiWorkWebShareMigrateOperation *)v5 setUrl:v4];
  }

  return v5;
}

- (void)_migrateShare
{
  v10 = 0;
  url = self->_url;
  v9 = 0;
  BadgingSharingState = BRiWorkSharingGetBadgingSharingState(url, &v10 + 1, &v10, &v9);
  v5 = v9;
  v6 = v5;
  if (HIBYTE(v10) == 1 && BadgingSharingState && v5 == 0)
  {
    [(BRiWorkWebShareMigrateOperation *)self _startSharingReadWrite:(v10 & 1) == 0];
  }

  [(BROperation *)self completedWithResult:0 error:v6];
}

- (void)_startSharingReadWrite:(BOOL)a3
{
  v3 = a3;
  url = self->_url;
  v17 = 0;
  v6 = BRSharingCreateShareForItemAtURL(url, &v17);
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    [(BROperation *)self completedWithResult:0 error:v7];
  }

  if (v3)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  [v6 setPublicPermission:v10];
  v11 = [BRShareSaveOperation alloc];
  v12 = [(BRiWorkWebShareMigrateOperation *)self url];
  v13 = [(BRShareSaveOperation *)v11 initWithShare:v6 fileURL:v12];

  v14 = [(BROperation *)v13 callbackQueue];
  v15 = [(BROperation *)self callbackQueue];
  dispatch_set_target_queue(v14, v15);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__BRiWorkWebShareMigrateOperation__startSharingReadWrite___block_invoke;
  v16[3] = &unk_1E7A14BE0;
  v16[4] = self;
  [(BRShareSaveOperation *)v13 setShareSaveCompletionBlock:v16];
  [(BROperation *)v13 setNonDiscretionary:[(BROperation *)self nonDiscretionary]];
  [(NSOperationQueue *)self->_operationQueue addOperation:v13];
}

- (void)_copyShare
{
  v3 = [[BRShareCopyOperation alloc] initWithURL:self->_url];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__BRiWorkWebShareMigrateOperation__copyShare__block_invoke;
  v4[3] = &unk_1E7A14C08;
  v4[4] = self;
  [(BRShareCopyOperation *)v3 setRootShareCopyCompletionBlock:v4];
  [(BROperation *)v3 setNonDiscretionary:[(BROperation *)self nonDiscretionary]];
  [(NSOperationQueue *)self->_operationQueue addOperation:v3];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] migrating share for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRiWorkWebShareMigrateOperation *)self shareMigrationCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRiWorkWebShareMigrateOperation *)self setShareMigrationCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRiWorkWebShareMigrateOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end