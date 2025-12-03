@interface MRUCoordinatedUpdateController
- (MRUCoordinatedUpdateController)init;
- (MRUCoordinatedUpdateControllerDelegate)delegate;
- (void)addUpdate:(id)update completion:(id)completion;
- (void)processQueue;
- (void)resetTimer;
- (void)setCadence:(double)cadence;
- (void)setupTimer;
@end

@implementation MRUCoordinatedUpdateController

- (MRUCoordinatedUpdateController)init
{
  v6.receiver = self;
  v6.super_class = MRUCoordinatedUpdateController;
  v2 = [(MRUCoordinatedUpdateController *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    queue = v2->_queue;
    v2->_queue = array;
  }

  return v2;
}

- (void)setCadence:(double)cadence
{
  if (self->_cadence != cadence)
  {
    self->_cadence = cadence;
    [(MRUCoordinatedUpdateController *)self setupTimer];
  }
}

- (void)addUpdate:(id)update completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  updateCopy = update;
  v8 = [[MRUCoordinatedUpdate alloc] initWithUpdate:updateCopy completion:completionCopy];

  [(NSMutableArray *)self->_queue addObject:v8];
  v9 = MCLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [(NSMutableArray *)self->_queue count];
    context = self->_context;
    v13 = 138543874;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    v17 = 2114;
    v18 = context;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ adding update with items in queue: #%lu for context: %{public}@", &v13, 0x20u);
  }

  [(MRUCoordinatedUpdateController *)self setupTimer];
}

- (void)processQueue
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_queue copy];
  [(NSMutableArray *)self->_queue removeAllObjects];
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = [v3 count];
    context = self->_context;
    *buf = 138543874;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    v18 = 2114;
    v19 = context;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ number of items processed: #%lu for context: %{public}@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MRUCoordinatedUpdateController_processQueue__block_invoke;
  v12[3] = &unk_1E7663898;
  v13 = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MRUCoordinatedUpdateController_processQueue__block_invoke_2;
  v10[3] = &unk_1E7663898;
  v11 = v13;
  v9 = v13;
  [WeakRetained coordinatedUpdateController:self processCoordinatedUpdates:v12 completion:v10];
}

- (void)setupTimer
{
  if (!self->_timer)
  {
    if ([(NSMutableArray *)self->_queue count])
    {
      objc_initWeak(&location, self);
      v3 = objc_alloc(MEMORY[0x1E6970A50]);
      cadence = self->_cadence;
      v5 = MEMORY[0x1E69E96A0];
      v6 = MEMORY[0x1E69E96A0];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MRUCoordinatedUpdateController_setupTimer__block_invoke;
      v9[3] = &unk_1E7663AE8;
      objc_copyWeak(&v10, &location);
      v7 = [v3 initWithInterval:v5 queue:v9 block:cadence];
      timer = self->_timer;
      self->_timer = v7;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __44__MRUCoordinatedUpdateController_setupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetTimer];
}

- (void)resetTimer
{
  [(MRUCoordinatedUpdateController *)self processQueue];
  [(MPWeakTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  [(MRUCoordinatedUpdateController *)self setupTimer];
}

- (MRUCoordinatedUpdateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end