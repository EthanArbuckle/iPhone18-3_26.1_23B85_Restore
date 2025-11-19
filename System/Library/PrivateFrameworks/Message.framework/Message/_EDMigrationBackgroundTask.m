@interface _EDMigrationBackgroundTask
- (NSString)ef_publicDescription;
- (_EDMigrationBackgroundTask)initWithSystemTask:(id)a3 migrator:(id)a4 cancelable:(id)a5;
@end

@implementation _EDMigrationBackgroundTask

- (_EDMigrationBackgroundTask)initWithSystemTask:(id)a3 migrator:(id)a4 cancelable:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = _EDMigrationBackgroundTask;
  v12 = [(_EDMigrationBackgroundTask *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemTask, a3);
    objc_storeStrong(&v13->_migrator, a4);
    v14 = objc_alloc_init(MEMORY[0x1E699B798]);
    [v14 addCancelable:v11];
    objc_initWeak(&location, v13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69___EDMigrationBackgroundTask_initWithSystemTask_migrator_cancelable___block_invoke;
    v18[3] = &unk_1E7AA52F0;
    objc_copyWeak(&v20, &location);
    v19 = v9;
    [v14 addCancelationBlock:v18];
    cancelationToken = v13->_cancelationToken;
    v13->_cancelationToken = v14;
    v16 = v14;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(EFManualCancelationToken *)self->_cancelationToken isCanceled])
  {
    v4 = @" (canceled)";
  }

  else
  {
    v4 = &stru_1F273A5E0;
  }

  v5 = [(_EDMigrationBackgroundTask *)self systemTask];
  v6 = [v3 initWithFormat:@"%p%@: %@", self, v4, v5];

  return v6;
}

@end