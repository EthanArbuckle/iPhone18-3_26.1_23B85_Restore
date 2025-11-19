@interface MSUCheckpointAsyncBlockContext
- (BOOL)waitUntilTime:(unint64_t)a3;
- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)a3 block:(id)a4;
- (void)cancel;
- (void)runForCheckpoint:(void *)a3;
- (void)runSynchronousForCheckpoint:(void *)a3;
- (void)setAwaitDescription:(void *)a3;
- (void)setStepDescription:(void *)a3;
@end

@implementation MSUCheckpointAsyncBlockContext

- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)a3 block:(id)a4
{
  v13.receiver = self;
  v13.super_class = MSUCheckpointAsyncBlockContext;
  v6 = [(MSUCheckpointAsyncContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [(MSUCheckpointAsyncBlockContext *)v6 setWorkQueue:a3];
    }

    else
    {
      v8 = qos_class_self();
      v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
      v10 = dispatch_queue_create(0, v9);
      [(MSUCheckpointAsyncBlockContext *)v7 setWorkQueue:v10];
      dispatch_release(v10);
    }
  }

  [(MSUCheckpointAsyncBlockContext *)v7 setIsCanceled:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3254779904;
  v12[2] = __54__MSUCheckpointAsyncBlockContext_initWithQueue_block___block_invoke;
  v12[3] = &__block_descriptor_48_e8_32o40b_e5_v8__0l;
  v12[4] = v7;
  v12[5] = a4;
  [(MSUCheckpointAsyncBlockContext *)v7 setWorkBlock:dispatch_block_create(0, v12)];
  return v7;
}

void __54__MSUCheckpointAsyncBlockContext_initWithQueue_block___block_invoke(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", v3, v4, v5, v6, v7, v8, v9, *(step_desc + 8));
  v10 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v10, kCheckpointAsyncStepContextKey, [*(a1 + 32) checkpoint_closure_context], 0);
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      v47 = 0;
      v46 = 0;
      if (v11)
      {
        v13 = [*(a1 + 32) checkpoint_closure_context];
        v12 = checkpoint_closure_context_handle_simulator_actions(v13, 1, &v47, &v46, v14, v15, v16, v17) != 0;
      }

      v18 = *(a1 + 32);
      objc_sync_enter(v18);
      v12 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v18);
      if (v12)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        v19 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v47 = [*(a1 + 32) result];
        v46 = [*(a1 + 32) error];
      }

      v20 = [*(a1 + 32) checkpoint_closure_context];
      if (checkpoint_closure_context_handle_simulator_actions(v20, 0, &v47, &v46, v21, v22, v23, v24))
      {
        v25 = [*(a1 + 32) checkpoint_closure_context];
        v33 = checkpoint_closure_context_handle_simulator_match_name(v25, v26, v27, v28, v29, v30, v31, v32) != 0;
      }

      else
      {
        v33 = 0;
      }

      v34 = *(a1 + 32);
      objc_sync_enter(v34);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v47];
        [*(a1 + 32) setError:v46];
      }

      if (!v47)
      {
        goto LABEL_14;
      }

      v35 = [*(a1 + 32) isCanceled];
      if (((v35 | v33) & 1) == 0)
      {
        break;
      }

      LOBYTE(v33) = v35 ^ 1;
LABEL_14:
      objc_sync_exit(v34);
      v11 = 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v34);
    v11 = 1;
  }

  while (should_retry);
LABEL_17:
  v37 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v37, kCheckpointAsyncStepContextKey, 0, 0);
  v38 = *(step_desc + 8);
  [*(a1 + 32) result];
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", v39, v40, v41, v42, v43, v44, v45, v38);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

- (void)setStepDescription:(void *)a3
{
  if (a3)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v7 = *(a3 + 2);
    v6 = *(a3 + 3);
    v8 = *(a3 + 4);
    v5[5] = *(a3 + 5);
    v9 = *(a3 + 1);
    *v5 = *a3;
    v5[1] = v9;
    v5[3] = v6;
    v5[4] = v8;
    v5[2] = v7;
    *(v5 + 10) = self;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setStepDescription:v5];
  free(v5);
}

- (void)setAwaitDescription:(void *)a3
{
  if (a3)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v6 = *(a3 + 2);
    v7 = *(a3 + 3);
    v8 = *(a3 + 4);
    *(v5 + 76) = *(a3 + 76);
    v9 = *(a3 + 1);
    *v5 = *a3;
    v5[1] = v9;
    v5[3] = v7;
    v5[4] = v8;
    v5[2] = v6;
    *(v5 + 10) = self;
    *(v5 + 23) = -1;
    *(v5 + 88) = 1;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setAwaitDescription:v5];
  free(v5);
}

- (void)runSynchronousForCheckpoint:(void *)a3
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:a3];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchSync] Checkpoint %s dispatched synchronously because async is disabled.\n", v5, v6, v7, v8, v9, v10, v11, *(step_desc + 8));
  v12 = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  v13 = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_sync(v12, v13);
}

- (void)runForCheckpoint:(void *)a3
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:a3];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchAsync] Checkpoint %s dispatched asynchronously.\n", v5, v6, v7, v8, v9, v10, v11, *(step_desc + 8));
  v12 = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  v13 = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_async(v12, v13);
}

- (BOOL)waitUntilTime:(unint64_t)a3
{
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][WaitStart] Start to Wait checkpoint %s.\n", v6, v7, v8, v9, v10, v11, v12, *(step_desc + 8));
  v13 = dispatch_time(0, 1000000000);
  if (v13 >= a3)
  {
    v23 = 0;
  }

  else
  {
    v21 = v13;
    while (dispatch_block_wait([(MSUCheckpointAsyncBlockContext *)self workBlock], v21))
    {
      objc_sync_enter(self);
      v22 = [(MSUCheckpointAsyncBlockContext *)self isCanceled];
      objc_sync_exit(self);
      if (v22)
      {
        break;
      }

      v21 = dispatch_time(0, 1000000000);
      if (v21 >= a3)
      {
        v23 = 0;
        goto LABEL_9;
      }
    }

    v23 = 1;
  }

LABEL_9:
  ramrod_log_msg("[AsyncCP][WaitEnd] Wait checkpoint %s %s.\n", v14, v15, v16, v17, v18, v19, v20, *(step_desc + 8));
  return v23;
}

- (void)cancel
{
  objc_sync_enter(self);
  [(MSUCheckpointAsyncBlockContext *)self setIsCanceled:1];
  [(MSUCheckpointAsyncContext *)self setResult:0xFFFFFFFFLL];
  [(MSUCheckpointAsyncContext *)self setError:checkpoint_error_copy_canceled_error()];

  objc_sync_exit(self);
}

@end