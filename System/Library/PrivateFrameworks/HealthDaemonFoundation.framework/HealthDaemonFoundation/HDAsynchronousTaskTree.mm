@interface HDAsynchronousTaskTree
- (HDAsynchronousTaskTree)initWithDescription:(id)a3 completion:(id)a4;
- (NSArray)allErrors;
- (void)_addTask:(void *)a3 queue:;
- (void)_completeCurrentTaskWithResult:(void *)a3 error:;
- (void)_lock_beginNextTask;
- (void)_lock_insertPendingSubtasks;
- (void)_lock_reportResult:(uint64_t)a1;
- (void)_runPendingCheckpointTasks:(void *)a3 completion:;
- (void)addCheckpointTaskOnQueue:(id)a3 task:(id)a4;
- (void)addTaskOnQueue:(id)a3 timeout:(double)a4 task:(id)a5;
- (void)begin;
@end

@implementation HDAsynchronousTaskTree

- (HDAsynchronousTaskTree)initWithDescription:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HDAsynchronousTaskTree;
  v8 = [(HDAsynchronousTaskTree *)&v22 init];
  if (v8)
  {
    v9 = [v6 copy];
    groupDescription = v8->_groupDescription;
    v8->_groupDescription = v9;

    v8->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lock_pendingTasks = v8->_lock_pendingTasks;
    v8->_lock_pendingTasks = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lock_pendingSubtasks = v8->_lock_pendingSubtasks;
    v8->_lock_pendingSubtasks = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lock_taskErrors = v8->_lock_taskErrors;
    v8->_lock_taskErrors = v15;

    *&v8->_lock_started = 0;
    v17 = [v7 copy];
    lock_completion = v8->_lock_completion;
    v8->_lock_completion = v17;

    v19 = HKCreateSerialUtilityDispatchQueue();
    default_task_queue = v8->_default_task_queue;
    v8->_default_task_queue = v19;
  }

  return v8;
}

- (NSArray)allErrors
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_taskErrors copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)begin
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDAsynchronousTaskTree.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"!_lock_started"}];
}

void __63__HDAsynchronousTaskTree__completeCurrentTaskWithResult_error___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [(HDAsynchronousTaskTree *)*(a1 + 32) _lock_reportResult:?];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

void __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_2(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2810000000;
  v21[3] = "";
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      goto LABEL_4;
    }

    v3 = *(a1 + 40);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_3;
    handler[3] = &unk_2796BDD00;
    v18 = v21;
    v4 = v3;
    v5 = *(a1 + 48);
    v16 = v4;
    v17 = v5;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(a1 + 40));

    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_4:
      v2 = *(v2 + 16);
    }
  }

  v6 = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_4;
  v9[3] = &unk_2796BDD28;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v19;
  v13 = v21;
  v9[4] = v8;
  v14 = v7;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6[2](v6, v8, v9);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_3(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_3_cold_1(a1);
  }
}

uint64_t __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 24) == 1)
  {
    v11 = v5;
    __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_4_cold_1(a1, a1 + 56, &v12);
    v6 = v11;
    v7 = v12;
  }

  *(v7 + 24) = 1;
  if ((atomic_exchange((*(*(a1 + 64) + 8) + 32), 1u) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v10 = v6;
    if (v8 && *(v8 + 8) == 1)
    {
      dispatch_source_cancel(*(a1 + 48));
    }

    [(HDAsynchronousTaskTree *)*(a1 + 32) _completeCurrentTaskWithResult:a2 error:v10];
  }

  return MEMORY[0x2821F9730]();
}

void __45__HDAsynchronousTaskTree__lock_reportResult___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v4 = a1[5];
  (*(a1[6] + 16))();
  os_unfair_lock_lock((a1[4] + 8));
  v5 = a1[4];
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = a1[4];
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = (a1[4] + 8);

  os_unfair_lock_unlock(v9);
}

uint64_t __64__HDAsynchronousTaskTree__runPendingCheckpointTasks_completion___block_invoke(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 41));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addTaskOnQueue:(id)a3 timeout:(double)a4 task:(id)a5
{
  v18 = a3;
  v8 = a5;
  if (v18)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1_2();
    [v13 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v15 handleFailureInMethod:@"handler != nil" object:? file:? lineNumber:? description:?];

LABEL_3:
  v9 = atomic_load(&self->_rejectAddTask);
  if (v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1_2();
    [v17 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  v10 = objc_alloc_init(HDAsynchronousTask);
  [(HDAsynchronousTask *)v10 setQueue:v18];
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, v8, 16);
    v10->_timeout = a4;
    v10->_hasTimeout = a4 > 0.0;
  }

  [(HDAsynchronousTaskTree *)self _addTask:v10 queue:v18];
}

- (void)_addTask:(void *)a3 queue:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v6 = atomic_load((a1 + 40));
    if ((v6 & 1) == 0 && (*(a1 + 43) & 1) == 0)
    {
      v7 = 16;
      if (*(a1 + 42))
      {
        v7 = 24;
      }

      [*(a1 + v7) addObject:v8];
    }

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (void)addCheckpointTaskOnQueue:(id)a3 task:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1_2();
    [v11 handleFailureInMethod:@"checkpointHandler != nil" object:? file:? lineNumber:? description:?];
  }

  v7 = atomic_load(&self->_rejectAddTask);
  if (v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    OUTLINED_FUNCTION_1_2();
    [v13 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  v8 = objc_alloc_init(HDAsynchronousTask);
  [(HDAsynchronousTask *)v8 setQueue:v14];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v9, v6, 40);
  }

  [(HDAsynchronousTaskTree *)self _addTask:v8 queue:v14];
}

- (void)_lock_beginNextTask
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_assert_owner((a1 + 8));
  if (*(a1 + 43))
  {
    return;
  }

  if ([*(a1 + 16) count])
  {
    v2 = atomic_load((a1 + 40));
    if ((v2 & 1) == 0)
    {
      v3 = [*(a1 + 16) objectAtIndexedSubscript:0];
      [*(a1 + 16) removeObjectAtIndex:0];
      if (v3 && *(v3 + 40))
      {
        atomic_store(1u, (a1 + 41));
        v4 = *(v3 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke;
        block[3] = &unk_2796BDA28;
        v19 = v3;
        v20 = a1;
        v5 = v3;
        dispatch_async(v4, block);
        v6 = v19;
      }

      else
      {
        if (v3)
        {
          if (*(v3 + 8) == 1)
          {
            v9 = dispatch_get_global_queue(0, 0);
            v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);

            v11 = dispatch_time(0, (*(v3 + 32) * 1000000000.0));
            dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
          }

          else
          {
            v10 = 0;
          }

          v12 = *(v3 + 24);
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        OUTLINED_FUNCTION_0_4();
        v13[1] = 3221225472;
        v13[2] = __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_2;
        v13[3] = &unk_2796BDD50;
        v14 = v3;
        v15 = v10;
        v16 = a1;
        v17 = sel__lock_beginNextTask;
        v6 = v3;
        v5 = v10;
        dispatch_async(v12, v13);
      }

      return;
    }

    *(a1 + 43) = 1;
    v8 = a1;
    v7 = 3;
  }

  else
  {
    *(a1 + 43) = 1;
    v7 = [*(a1 + 32) count] != 0;
    v8 = a1;
  }

  [(HDAsynchronousTaskTree *)v8 _lock_reportResult:v7];
}

- (void)_completeCurrentTaskWithResult:(void *)a3 error:
{
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 8));
    if (!(!v7 & v6))
    {
      switch(a2)
      {
        case 0:
          os_unfair_lock_lock((a1 + 8));
          [(HDAsynchronousTaskTree *)a1 _lock_insertPendingSubtasks];
          [(HDAsynchronousTaskTree *)a1 _lock_beginNextTask];
          os_unfair_lock_unlock((a1 + 8));
          break;
        case 1:
        case 3:
          if (!v5)
          {
            v5 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Asynchronous task failed without reporting an error."];
          }

          os_unfair_lock_lock((a1 + 8));
          [*(a1 + 32) addObject:v5];
          v8 = [*(a1 + 24) copy];
          [*(a1 + 24) removeAllObjects];
          os_unfair_lock_unlock((a1 + 8));
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __63__HDAsynchronousTaskTree__completeCurrentTaskWithResult_error___block_invoke;
          v12[3] = &unk_2796BD9B0;
          v12[4] = a1;
          v9 = v12;
          goto LABEL_13;
        case 2:
          os_unfair_lock_lock((a1 + 8));
          *(a1 + 43) = 1;
          if (!v5)
          {
            v5 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Asynchronous task had a critical failure without reporting an error."];
          }

          [*(a1 + 32) addObject:v5];
          v8 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 24)];
          v10 = [*(a1 + 16) copy];
          [v8 addObjectsFromArray:v10];

          [*(a1 + 24) removeAllObjects];
          os_unfair_lock_unlock((a1 + 8));
          OUTLINED_FUNCTION_0_4();
          v11[1] = 3221225472;
          v11[2] = __63__HDAsynchronousTaskTree__completeCurrentTaskWithResult_error___block_invoke_2;
          v11[3] = &unk_2796BD9B0;
          v11[4] = a1;
          v9 = v11;
LABEL_13:
          [(HDAsynchronousTaskTree *)a1 _runPendingCheckpointTasks:v8 completion:v9];

          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

- (void)_lock_insertPendingSubtasks
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_assert_owner(a1 + 2);
    v3 = *&v1[4]._os_unfair_lock_opaque;
    v2 = *&v1[6]._os_unfair_lock_opaque;
    v1 += 4;
    [v2 addObjectsFromArray:v3];
    [*&v1->_os_unfair_lock_opaque removeAllObjects];
    v4 = *&v1->_os_unfair_lock_opaque;
    objc_storeStrong(v1, *&v1[2]._os_unfair_lock_opaque);
    v5 = *&v1[2]._os_unfair_lock_opaque;
    *&v1[2]._os_unfair_lock_opaque = v4;
  }
}

void __63__HDAsynchronousTaskTree__completeCurrentTaskWithResult_error___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [(HDAsynchronousTaskTree *)*(a1 + 32) _lock_beginNextTask];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)_runPendingCheckpointTasks:(void *)a3 completion:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_alloc_init(HDSynchronousTaskGroup);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__HDAsynchronousTaskTree__runPendingCheckpointTasks_completion___block_invoke;
    v24[3] = &unk_2796BDDA0;
    v24[4] = a1;
    v25 = v6;
    [(HDSynchronousTaskGroup *)v7 setDidFinish:v24];
    [(HDSynchronousTaskGroup *)v7 beginTask];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          if (v13 && *(v13 + 40))
          {
            atomic_store(1u, (a1 + 41));
            [(HDSynchronousTaskGroup *)v7 beginTask];
            v14 = *(v13 + 24);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __64__HDAsynchronousTaskTree__runPendingCheckpointTasks_completion___block_invoke_2;
            block[3] = &unk_2796BDAC0;
            block[4] = v13;
            block[5] = a1;
            v19 = v7;
            dispatch_async(v14, block);
          }

          ++v12;
        }

        while (v10 != v12);
        v15 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
        v10 = v15;
      }

      while (v15);
    }

    [(HDSynchronousTaskGroup *)v7 finishTask];
    v5 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_lock_reportResult:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v4 = _Block_copy(*(a1 + 48));
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    if (a2)
    {
      [*(a1 + 32) firstObject];
      objc_claimAutoreleasedReturnValue();
    }

    OUTLINED_FUNCTION_0_4();
    v9 = v6;
    v7 = v6;
    v8 = v4;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

void __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  (*(v3 + 16))(v3, *(a1 + 40));
  os_unfair_lock_lock((*(a1 + 40) + 8));
  atomic_store(0, (*(a1 + 40) + 41));
  [(HDAsynchronousTaskTree *)*(a1 + 40) _lock_beginNextTask];
  v4 = (*(a1 + 40) + 8);

  os_unfair_lock_unlock(v4);
}

uint64_t __64__HDAsynchronousTaskTree__runPendingCheckpointTasks_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  (*(v3 + 16))(v3, a1[5]);
  v4 = a1[6];

  return [v4 finishTask];
}

void __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_3_cold_1(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Asynchronous task failed due to timeout"];
  [(HDAsynchronousTaskTree *)*(a1 + 40) _completeCurrentTaskWithResult:v2 error:?];
}

void __45__HDAsynchronousTaskTree__lock_beginNextTask__block_invoke_4_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"HDAsynchronousTaskTree.m" lineNumber:269 description:@"Asynchronous task has already completed."];

  *a3 = *(*a2 + 8);
}

@end