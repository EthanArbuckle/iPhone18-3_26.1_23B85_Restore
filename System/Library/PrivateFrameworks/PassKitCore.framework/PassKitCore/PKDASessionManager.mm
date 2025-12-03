@interface PKDASessionManager
- (PKDASessionManager)initWithQueue:(id)queue sessionCreationBlock:(id)block;
- (void)createSession;
- (void)performBlockWithSession:(id)session;
- (void)session:(id)session didChangeState:(unint64_t)state;
@end

@implementation PKDASessionManager

- (PKDASessionManager)initWithQueue:(id)queue sessionCreationBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PKDASessionManager;
  v9 = [(PKDASessionManager *)&v17 init];
  if (v9)
  {
    v10 = dispatch_group_create();
    dispatchGroup = v9->_dispatchGroup;
    v9->_dispatchGroup = v10;

    objc_storeStrong(&v9->_queue, queue);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    workItems = v9->_workItems;
    v9->_workItems = v12;

    v14 = _Block_copy(blockCopy);
    sessionCreationBlock = v9->_sessionCreationBlock;
    v9->_sessionCreationBlock = v14;
  }

  return v9;
}

- (void)performBlockWithSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PKDASessionManager_performBlockWithSession___block_invoke;
  v7[3] = &unk_1E79C4A40;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

void __46__PKDASessionManager_performBlockWithSession___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 24);
  if ((v2 || ([*(a1 + 32) createSession], (v2 = *(*(a1 + 32) + 24)) != 0)) && objc_msgSend(v2, "state") != 2)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = _Block_copy(*(a1 + 40));
    [v3 addObject:v4];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)createSession
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (*(self->_sessionCreationBlock + 2))();
  session = self->_session;
  self->_session = v3;

  v5 = self->_session;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Starting session: %@", buf, 0xCu);
    }

    dispatchGroup = self->_dispatchGroup;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PKDASessionManager_createSession__block_invoke;
    block[3] = &unk_1E79C4E28;
    block[4] = self;
    dispatch_group_notify(dispatchGroup, queue, block);
  }
}

uint64_t __35__PKDASessionManager_createSession__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Ending session: %@", &v5, 0xCu);
  }

  return [*(*(a1 + 32) + 24) endSession];
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKDASessionManager_session_didChangeState___block_invoke;
  block[3] = &unk_1E79CBF50;
  selfCopy = self;
  stateCopy = state;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(queue, block);
}

uint64_t __45__PKDASessionManager_session_didChangeState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Session state changed: %@", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  result = [*(*(a1 + 40) + 24) state];
  if (v4 == result)
  {
    v6 = *(a1 + 48);
    if (v6 == 4)
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 24);
      *(v12 + 24) = 0;

      result = [*(*(a1 + 40) + 32) count];
      if (result)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Restarting credential management session", buf, 2u);
        }

        return [*(a1 + 40) createSession];
      }
    }

    else if (v6 == 2)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = *(*(a1 + 40) + 32);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v14 + 1) + 8 * i) + 16))();
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      return [*(*(a1 + 40) + 32) removeAllObjects];
    }
  }

  return result;
}

@end