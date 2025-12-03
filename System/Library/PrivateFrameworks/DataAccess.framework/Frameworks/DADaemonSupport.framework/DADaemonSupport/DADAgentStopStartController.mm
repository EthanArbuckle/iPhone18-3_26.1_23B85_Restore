@interface DADAgentStopStartController
- (DADAgentStopStartController)initWithDelegate:(id)delegate;
- (int)enqueueDisableMonitoringAgents:(id)agents;
- (void)_enqueueBlockIfNotEnqueuedAndPendingWork;
- (void)callBlocks:(id)blocks;
- (void)enqueueEnableMonitoringAgentsWithGeneration:(int)generation completion:(id)completion;
- (void)reset;
- (void)startOrStopAsNeeded;
@end

@implementation DADAgentStopStartController

- (DADAgentStopStartController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = DADAgentStopStartController;
  v5 = [(DADAgentStopStartController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_generation = 1;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (int)enqueueDisableMonitoringAgents:(id)agents
{
  agentsCopy = agents;
  os_unfair_lock_lock(&self->_lock);
  if (self->_agentsStopped)
  {
    ++self->_stopsLessStartsReceived;
    generation = self->_generation;
    os_unfair_lock_unlock(&self->_lock);
    if (agentsCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained scheduleAgentStartOrStopBlock:agentsCopy];
    }
  }

  else
  {
    self->_unexecutedStopReceived = 1;
    if (agentsCopy)
    {
      pendingStopCompletionBlocks = self->_pendingStopCompletionBlocks;
      if (!pendingStopCompletionBlocks)
      {
        v8 = objc_opt_new();
        v9 = self->_pendingStopCompletionBlocks;
        self->_pendingStopCompletionBlocks = v8;

        pendingStopCompletionBlocks = self->_pendingStopCompletionBlocks;
      }

      v10 = MEMORY[0x24C1D1770](agentsCopy);
      [(NSMutableArray *)pendingStopCompletionBlocks addObject:v10];
    }

    ++self->_stopsLessStartsReceived;
    generation = self->_generation;
    [(DADAgentStopStartController *)self _enqueueBlockIfNotEnqueuedAndPendingWork];
    os_unfair_lock_unlock(&self->_lock);
  }

  return generation;
}

- (void)enqueueEnableMonitoringAgentsWithGeneration:(int)generation completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (self->_generation != generation)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 5);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_13;
    }

    generation = self->_generation;
    v22[0] = 67109376;
    v22[1] = generation;
    v23 = 1024;
    generationCopy = generation;
    v15 = "Ignoring call to enable with non-current generation (current = %i, received = %i)";
    v16 = v12;
    v17 = v13;
    v18 = 14;
    goto LABEL_12;
  }

  stopsLessStartsReceived = self->_stopsLessStartsReceived;
  if (stopsLessStartsReceived)
  {
    self->_stopsLessStartsReceived = stopsLessStartsReceived - 1;
    if (completionCopy)
    {
      pendingStartCompletionBlocks = self->_pendingStartCompletionBlocks;
      if (!pendingStartCompletionBlocks)
      {
        v9 = objc_opt_new();
        v10 = self->_pendingStartCompletionBlocks;
        self->_pendingStartCompletionBlocks = v9;

        pendingStartCompletionBlocks = self->_pendingStartCompletionBlocks;
      }

      v11 = MEMORY[0x24C1D1770](completionCopy);
      [(NSMutableArray *)pendingStartCompletionBlocks addObject:v11];
    }

    [(DADAgentStopStartController *)self _enqueueBlockIfNotEnqueuedAndPendingWork];
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_15;
  }

  v12 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v12, v19))
  {
    LOWORD(v22[0]) = 0;
    v15 = "Received more requests to start agents than to stop them. Ignoring request to start.";
    v16 = v12;
    v17 = v19;
    v18 = 2;
LABEL_12:
    _os_log_impl(&dword_248524000, v16, v17, v15, v22, v18);
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  if (completionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scheduleAgentStartOrStopBlock:completionCopy];
  }

LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_generation;
  self->_unexecutedStopReceived = 0;
  self->_stopsLessStartsReceived = 0;
  pendingStopCompletionBlocks = self->_pendingStopCompletionBlocks;
  self->_pendingStopCompletionBlocks = 0;
  v6 = pendingStopCompletionBlocks;

  pendingStartCompletionBlocks = self->_pendingStartCompletionBlocks;
  self->_pendingStartCompletionBlocks = 0;
  v5 = pendingStartCompletionBlocks;

  os_unfair_lock_unlock(&self->_lock);
  [(DADAgentStopStartController *)self callBlocks:v6];
  [(DADAgentStopStartController *)self callBlocks:v5];
}

- (void)_enqueueBlockIfNotEnqueuedAndPendingWork
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_blockEnqueued)
  {
    if ([(DADAgentStopStartController *)self _blockNotEnqueuedAndPendingWork])
    {
      self->_blockEnqueued = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __71__DADAgentStopStartController__enqueueBlockIfNotEnqueuedAndPendingWork__block_invoke;
      v4[3] = &unk_278F1CDC0;
      v4[4] = self;
      [WeakRetained scheduleAgentStartOrStopBlock:v4];
    }
  }
}

uint64_t __71__DADAgentStopStartController__enqueueBlockIfNotEnqueuedAndPendingWork__block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  return [v2 startOrStopAsNeeded];
}

- (void)startOrStopAsNeeded
{
  v10 = 0;
  os_unfair_lock_lock(&self->_lock);
  if ([(DADAgentStopStartController *)self _blockShouldStart:&v10 shouldStop:&v10 + 1])
  {
    do
    {
      os_unfair_lock_unlock(&self->_lock);
      if (HIBYTE(v10) == 1)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        disableMonitoringAgents = [WeakRetained disableMonitoringAgents];

        os_unfair_lock_lock(&self->_lock);
        *&self->_agentsStopped = 1;
        self->_serverToken = disableMonitoringAgents;
        pendingStopCompletionBlocks = self->_pendingStopCompletionBlocks;
        self->_pendingStopCompletionBlocks = 0;
        v6 = pendingStopCompletionBlocks;

        os_unfair_lock_unlock(&self->_lock);
        [(DADAgentStopStartController *)self callBlocks:v6];
      }

      if (v10 == 1)
      {
        os_unfair_lock_lock(&self->_lock);
        [(DADAgentStopStartController *)self _blockShouldStart:&v10 shouldStop:0];
        if (v10 == 1)
        {
          self->_agentsStopped = 0;
          pendingStartCompletionBlocks = self->_pendingStartCompletionBlocks;
          self->_pendingStartCompletionBlocks = 0;
          v8 = pendingStartCompletionBlocks;

          os_unfair_lock_unlock(&self->_lock);
          v9 = objc_loadWeakRetained(&self->_delegate);
          [v9 enableMonitoringAgentsWithToken:self->_serverToken];

          [(DADAgentStopStartController *)self callBlocks:v8];
        }

        else
        {
          os_unfair_lock_unlock(&self->_lock);
        }
      }

      os_unfair_lock_lock(&self->_lock);
    }

    while ([(DADAgentStopStartController *)self _blockShouldStart:&v10 shouldStop:&v10 + 1]);
  }

  self->_blockEnqueued = 0;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)callBlocks:(id)blocks
{
  v14 = *MEMORY[0x277D85DE8];
  blocksCopy = blocks;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end