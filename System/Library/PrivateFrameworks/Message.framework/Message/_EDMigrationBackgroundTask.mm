@interface _EDMigrationBackgroundTask
- (NSString)ef_publicDescription;
- (_EDMigrationBackgroundTask)initWithSystemTask:(id)task migrator:(id)migrator cancelable:(id)cancelable;
@end

@implementation _EDMigrationBackgroundTask

- (_EDMigrationBackgroundTask)initWithSystemTask:(id)task migrator:(id)migrator cancelable:(id)cancelable
{
  taskCopy = task;
  migratorCopy = migrator;
  cancelableCopy = cancelable;
  v22.receiver = self;
  v22.super_class = _EDMigrationBackgroundTask;
  v12 = [(_EDMigrationBackgroundTask *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemTask, task);
    objc_storeStrong(&v13->_migrator, migrator);
    v14 = objc_alloc_init(MEMORY[0x1E699B798]);
    [v14 addCancelable:cancelableCopy];
    objc_initWeak(&location, v13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69___EDMigrationBackgroundTask_initWithSystemTask_migrator_cancelable___block_invoke;
    v18[3] = &unk_1E7AA52F0;
    objc_copyWeak(&v20, &location);
    v19 = taskCopy;
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

  systemTask = [(_EDMigrationBackgroundTask *)self systemTask];
  v6 = [v3 initWithFormat:@"%p%@: %@", self, v4, systemTask];

  return v6;
}

@end