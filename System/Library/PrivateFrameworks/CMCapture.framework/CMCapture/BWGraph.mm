@interface BWGraph
+ (void)initialize;
- (BOOL)_resolveFormats:(id *)formats;
- (BOOL)addNode:(id)node error:(id *)error;
- (BOOL)commitConfigurationWithID:(int64_t)d error:(id *)error;
- (BOOL)commitLiveExtension:(id)extension withError:(id *)error;
- (BOOL)connectOutput:(id)output toInput:(id)input pipelineStage:(id)stage deferredAttach:(BOOL)attach;
- (BOOL)registerEmitSampleBufferSemaphoreFromNode:(id)node toNode:(id)toNode;
- (BOOL)removeNode:(id)node;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (BOOL)stopSources:(id *)sources;
- (BWGraph)initWithConfigurationQueuePriority:(unsigned int)priority;
- (BWGraphLiveExtension)createAndBeginLiveExtension;
- (NSObject)_newDispatchGroupForSinksToBecomeLiveWithConfigurationID:(uint64_t)d;
- (NSObject)_newDispatchGroupForSinksToTransitionToState:(uint64_t)state;
- (char)_attributeGraphStopTimeout;
- (char)_timedOutWaitingForOperationToCompleteWithDescription:(void *)description briefReason:(void *)reason offendingNodes:;
- (dispatch_time_t)_graphStateTransitionTimeout;
- (id)_breadthFirstEnumerator;
- (id)_depthFirstEnumeratorWithVertexOrdering:(int)ordering;
- (id)_reverseBreadthFirstEnumerator;
- (id)_reverseDepthFirstEnumeratorWithVertexOrdering:(int)ordering;
- (id)createAndBeginLiveExtension;
- (id)nodesUnsupportedForLiveReconfiguration;
- (id)osStatePropertyList;
- (int)safelyConnectOutput:(id)output toInput:(id)input pipelineStage:(id)stage deferredAttach:(BOOL)attach;
- (uint64_t)_bypassInputConnectionsForNodes:(uint64_t)result;
- (uint64_t)_discardMessagesForNodes:(uint64_t)nodes beforeLiveConfigurationID:;
- (uint64_t)_makeParentConfigurationChangesLive;
- (uint64_t)_prepareNode:(uint64_t)result;
- (uint64_t)_prepareNodesWithConfigurationChanges:(uint64_t)result;
- (uint64_t)_resolveVideoRetainedBufferCountsForOutput:(uint64_t)output forAttachedMediaKey:(void *)key outputsWithSharedPools:;
- (uint64_t)_resumeInputConnectionsForNodes:(uint64_t)nodes eventsOnly:;
- (uint64_t)_setMemoryPoolFlushAssertion;
- (void)_collectActiveNodesAfterGraphStopTimeout;
- (void)_collectActiveSinkNodesAfterGraphStopTimeout;
- (void)_getNodesToPrepareSeriallyBeforeGraphStart:(uint64_t)start concurrentlyBeforeGraphStart:duringGraphStart:afterGraphStart:;
- (void)_nodesInSubgraphOfSinkNode:(void *)node;
- (void)_populateOutputsWithSharedPools:outputsWithSharedPoolsForAttachedMedia:forNode:;
- (void)_resolveRetainedBufferCounts:;
- (void)_stopSourcesUsingDispatchGroup:(uint64_t)group;
- (void)_suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:;
- (void)_waitForSourceNodesToStart;
- (void)_waitForStartOrCommitToComplete;
- (void)beginConfiguration;
- (void)cancelDeferredNodePrepare;
- (void)cancelDeferredSourceNodeStart;
- (void)cancelLiveExtension:(id)extension;
- (void)dealloc;
- (void)enableBypassUntilPreparedForNode:(id)node deferredPreparePriority:(int)priority;
- (void)enableConcurrentPrepareForNode:(id)node;
- (void)enableDeferredPrepareForNodesNotInPathOfSinkNode:(id)node;
- (void)enableDeferredStartForSourceNode:(id)node mustStartAfterNonDeferred:(BOOL)deferred;
- (void)notifyWhenNonDeferredSourceNodesHaveStarted:(id)started;
- (void)prepareLiveExtensionToBecomeLive:(id)live;
- (void)setClientApplicationID:(id)d;
- (void)setMemoryAnalyticsReportingEnabled:(BOOL)enabled;
- (void)startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler:(id)handler completionHandler:(id)completionHandler;
- (void)startDeferredSourceNodesIfNeeded;
- (void)statePropertyListForNodes:(uint64_t)nodes verbose:;
- (void)waitForNonDeferredSourceNodesToStart;
- (void)waitForStartOrCommitToComplete;
@end

@implementation BWGraph

- (uint64_t)_setMemoryPoolFlushAssertion
{
  if (result)
  {
    v1 = result;
    *(result + 288) = [*(result + 232) newFlushAssertion:@"GraphStart"];
    result = [v1 deferredNodePrepareEnabled];
    if ((result & 1) == 0)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __39__BWGraph__setMemoryPoolFlushAssertion__block_invoke;
      v2[3] = &unk_1E798F870;
      v2[4] = v1;
      return [v1 notifyWhenNonDeferredSourceNodesHaveStarted:v2];
    }
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWGraph)initWithConfigurationQueuePriority:(unsigned int)priority
{
  v8.receiver = self;
  v8.super_class = BWGraph;
  v4 = [(BWGraph *)&v8 init];
  if (v4)
  {
    v4->_nodes = objc_opt_new();
    v4->_sourceNodes = objc_opt_new();
    v4->_sinkNodes = objc_opt_new();
    v4->_connections = objc_opt_new();
    v4->_outputsWithSharedPools = objc_opt_new();
    v4->_outputsWithSharedPoolsForAttachedMedia = objc_opt_new();
    v4->_supportsLiveReconfiguration = 1;
    v4->_classicRetainedBufferCount = 0;
    v5 = 10;
    if (FigCaptureCurrentProcessIsDeferredmediad())
    {
      if (qos_class_self() >= QOS_CLASS_DEFAULT)
      {
        v5 = 10;
      }

      else
      {
        v5 = 60;
      }
    }

    v4->_graphStateTransitionTimeoutSeconds = v5;
    v4->_configurationQueuePriority = priority;
    v4->_sourceStartQueue = FigDispatchQueueCreateWithPriority();
    v4->_liveReconfigNodeConnectionsResumeQueue = FigDispatchQueueCreateWithPriority();
    v4->_liveReconfigPrepareQueue = FigDispatchQueueCreateWithPriority();
    if (dword_1ED844610)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v4;
}

- (void)dealloc
{
  if (dword_1ED844610)
  {
    v29 = 0;
    v28 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  sourceNodes = self->_sourceNodes;
  v5 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v24 objects:v23 count:16, v15, v16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(sourceNodes);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([objc_msgSend(v9 "nodeSubType")])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          outputs = [v9 outputs];
          v11 = [outputs countByEnumeratingWithState:&v19 objects:v18 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(outputs);
                }

                if ([*(*(&v19 + 1) + 8 * j) liveFormat])
                {
                  [BWGraph dealloc];
                }
              }

              v12 = [outputs countByEnumeratingWithState:&v19 objects:v18 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v6);
  }

  v17.receiver = self;
  v17.super_class = BWGraph;
  [(BWGraph *)&v17 dealloc];
}

- (BOOL)addNode:(id)node error:(id *)error
{
  if (!node)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D920];
    v21 = @"Can't add a nil node";
    goto LABEL_34;
  }

  if (self->_running && !self->_activeLiveExtension)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D920];
    v21 = @"Can't currently add nodes while running";
    goto LABEL_34;
  }

  if (!self->_beingConfigured && !self->_activeLiveExtension)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D920];
    v21 = @"Can't add nodes outside of a begin/commit block";
LABEL_34:
    objc_exception_throw([v19 exceptionWithName:v20 reason:v21 userInfo:0]);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  outputs = [node outputs];
  v7 = [outputs countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v29;
  do
  {
    v10 = 0;
    do
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(outputs);
      }

      if ([*(*(&v28 + 1) + 8 * v10) consumer])
      {
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = @"Can't add a node with outputs which already have consumers";
        goto LABEL_34;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = [outputs countByEnumeratingWithState:&v28 objects:v27 count:16];
  }

  while (v8);
LABEL_14:
  activeLiveExtension = self->_activeLiveExtension;
  if (activeLiveExtension)
  {
    [(BWGraphLiveExtension *)activeLiveExtension addNode:node];
  }

  [node setGraph:self];
  if (([(NSMutableArray *)self->_nodes containsObject:node]& 1) == 0)
  {
    [(NSMutableArray *)self->_nodes addObject:node];
    if ([objc_msgSend(node "nodeType")])
    {
      v12 = 16;
      goto LABEL_21;
    }

    if ([objc_msgSend(node "nodeType")])
    {
      v12 = 24;
LABEL_21:
      [*(&self->super.isa + v12) addObject:node];
    }
  }

  if (self->_supportsLiveReconfiguration)
  {
    self->_supportsLiveReconfiguration &= [node supportsLiveReconfiguration];
  }

  if (self->_memoryPool)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    outputs2 = [node outputs];
    v14 = [outputs2 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(outputs2);
          }

          [*(*(&v23 + 1) + 8 * v17++) setMemoryPool:self->_memoryPool];
        }

        while (v15 != v17);
        v15 = [outputs2 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v15);
    }
  }

  return 1;
}

- (BOOL)removeNode:(id)node
{
  if (!node)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't remove a nil node" userInfo:0]);
  }

  [node setGraph:self];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  inputs = [node inputs];
  v6 = [inputs countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(inputs);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        [objc_msgSend(v10 "connection")];
        if (-[NSMutableArray containsObject:](self->_connections, "containsObject:", [v10 connection]))
        {
          -[NSMutableArray removeObject:](self->_connections, "removeObject:", [v10 connection]);
        }
      }

      v7 = [inputs countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  outputs = [node outputs];
  v12 = [outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(outputs);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        [objc_msgSend(v16 "connection")];
        if (-[NSMutableArray containsObject:](self->_connections, "containsObject:", [v16 connection]))
        {
          -[NSMutableArray removeObject:](self->_connections, "removeObject:", [v16 connection]);
        }
      }

      v13 = [outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v13);
  }

  if ([objc_msgSend(node "nodeType")])
  {
    v17 = 16;
LABEL_24:
    [*(&self->super.isa + v17) removeObject:node];
    goto LABEL_25;
  }

  if ([objc_msgSend(node "nodeType")])
  {
    v17 = 24;
    goto LABEL_24;
  }

LABEL_25:
  [(NSMutableArray *)self->_nodes removeObject:node];
  return 1;
}

- (int)safelyConnectOutput:(id)output toInput:(id)input pipelineStage:(id)stage deferredAttach:(BOOL)attach
{
  if (!output || !input)
  {
    [BWGraph safelyConnectOutput:toInput:pipelineStage:deferredAttach:];
    return -12780;
  }

  if (self->_running)
  {
    [BWGraph safelyConnectOutput:toInput:pipelineStage:deferredAttach:];
    return -12782;
  }

  if (!self->_beingConfigured)
  {
    [BWGraph safelyConnectOutput:toInput:pipelineStage:deferredAttach:];
    return -12782;
  }

  if (![BWGraph connectOutput:"connectOutput:toInput:pipelineStage:deferredAttach:" toInput:? pipelineStage:? deferredAttach:?])
  {
    [BWGraph safelyConnectOutput:toInput:pipelineStage:deferredAttach:];
    return -12782;
  }

  return 0;
}

- (BOOL)connectOutput:(id)output toInput:(id)input pipelineStage:(id)stage deferredAttach:(BOOL)attach
{
  attachCopy = attach;
  if (self->_running && !self->_activeLiveExtension)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v12 = @"Can't currently add connections while running";
    goto LABEL_18;
  }

  if (!self->_beingConfigured && !self->_activeLiveExtension)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v12 = @"Can't connect nodes outside of a begin/commit block";
LABEL_18:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:0]);
  }

  if (!output)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Output can't be nil";
    goto LABEL_18;
  }

  if (!input)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Input can't be nil";
    goto LABEL_18;
  }

  v8 = [[BWNodeConnection alloc] initWithOutput:output input:input pipelineStage:stage];
  [(NSMutableArray *)self->_connections addObject:v8];

  if (attachCopy)
  {

    return [(BWNodeConnection *)v8 deferredAttach];
  }

  else
  {

    return [(BWNodeConnection *)v8 attach];
  }
}

- (void)enableConcurrentPrepareForNode:(id)node
{
  if (([(NSMutableArray *)self->_nodesToPrepareConcurrently containsObject:?]& 1) == 0)
  {
    nodesToPrepareConcurrently = self->_nodesToPrepareConcurrently;
    if (!nodesToPrepareConcurrently)
    {
      nodesToPrepareConcurrently = objc_opt_new();
      self->_nodesToPrepareConcurrently = nodesToPrepareConcurrently;
    }

    [(NSMutableArray *)nodesToPrepareConcurrently addObject:node];
  }
}

- (void)enableDeferredPrepareForNodesNotInPathOfSinkNode:(id)node
{
  if (self->_deferredNodePrepareSupported)
  {
    deferredPreparePrioritySinks = self->_deferredPreparePrioritySinks;
    if (!deferredPreparePrioritySinks)
    {
      deferredPreparePrioritySinks = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_deferredPreparePrioritySinks = deferredPreparePrioritySinks;
    }

    if (([(NSMutableArray *)deferredPreparePrioritySinks containsObject:node]& 1) == 0)
    {
      v6 = self->_deferredPreparePrioritySinks;

      [(NSMutableArray *)v6 addObject:node];
    }
  }
}

- (void)enableBypassUntilPreparedForNode:(id)node deferredPreparePriority:(int)priority
{
  v4 = *&priority;
  v7 = [objc_msgSend(node "inputs")];
  v8 = [objc_msgSend(node "outputs")];
  if (v7 != 1 || v8 != 1)
  {
    node = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Bypass only works for single input with single output nodes.", node];
    goto LABEL_13;
  }

  v9 = [objc_msgSend(node "input")];
  v10 = [objc_msgSend(node "output")];
  if (v9 != 1 || v10 != 1)
  {
    node = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Bypass only works for pass through nodes. ", node];
LABEL_13:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:node userInfo:0]);
  }

  nodesToBypassUntilPrepared = self->_nodesToBypassUntilPrepared;
  if (!nodesToBypassUntilPrepared)
  {
    nodesToBypassUntilPrepared = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_nodesToBypassUntilPrepared = nodesToBypassUntilPrepared;
  }

  if (([(NSMutableArray *)nodesToBypassUntilPrepared containsObject:node]& 1) == 0)
  {
    [(NSMutableArray *)self->_nodesToBypassUntilPrepared addObject:node];

    [node setDeferredPreparePriority:v4];
  }
}

- (void)startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler:(id)handler completionHandler:(id)completionHandler
{
  if ([(NSMutableArray *)self->_deferredPreparePrioritySinks count])
  {
    if ([(NSArray *)self->_nodesToPrepareAfterGraphStart count])
    {
      nodesToPrepareAfterGraphStart = self->_nodesToPrepareAfterGraphStart;
      self->_nodesToPrepareAfterGraphStart = 0;
      resumesConnectionsAsNodesArePrepared = self->_resumesConnectionsAsNodesArePrepared;
      v9 = FigDispatchQueueCreateWithPriority();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __104__BWGraph_startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler_completionHandler___block_invoke;
      block[3] = &unk_1E799BED8;
      block[4] = nodesToPrepareAfterGraphStart;
      block[5] = self;
      v11 = resumesConnectionsAsNodesArePrepared;
      block[6] = handler;
      block[7] = completionHandler;
      dispatch_async(v9, block);
    }
  }
}

void __104__BWGraph_startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v48 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v49;
    v31 = v2;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        if (*(*(a1 + 40) + 89) == 1)
        {
          v17 = [*(a1 + 32) indexOfObjectIdenticalTo:*(*(&v48 + 1) + 8 * i)];
          v18 = [*(a1 + 32) subarrayWithRange:{v17, (objc_msgSend(*(a1 + 32), "count") - v17)}];
          if (*(a1 + 64) == 1)
          {
            v19 = v18;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v20 = [v18 countByEnumeratingWithState:&v43 objects:v42 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v44;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v44 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v43 + 1) + 8 * j);
                  v38 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v41 = 0u;
                  v25 = [v24 inputs];
                  v26 = [v25 countByEnumeratingWithState:&v38 objects:v37 count:16];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = *v39;
                    do
                    {
                      for (k = 0; k != v27; ++k)
                      {
                        if (*v39 != v28)
                        {
                          objc_enumerationMutation(v25);
                        }

                        [objc_msgSend(*(*(&v38 + 1) + 8 * k) "connection")];
                      }

                      v27 = [v25 countByEnumeratingWithState:&v38 objects:v37 count:16];
                    }

                    while (v27);
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v43 objects:v42 count:16];
              }

              while (v21);
            }
          }

          v16 = 1;
          v2 = v31;
          v3 = MEMORY[0x1E695FF58];
          goto LABEL_41;
        }

        if (!((*(a1 + 48) == 0) | v7 & 1))
        {
          if ([*(*(&v48 + 1) + 8 * i) deferredPreparePriority] > 3)
          {
            v7 = 0;
          }

          else
          {
            (*(*(a1 + 48) + 16))();
            v7 = 1;
          }
        }

        [(BWGraph *)*(a1 + 40) _prepareNode:v10];
        if (*(a1 + 64) == 1)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = [v10 inputs];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (m = 0; m != v13; ++m)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [objc_msgSend(*(*(&v33 + 1) + 8 * m) "connection")];
              }

              v13 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:16];
            }

            while (v13);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v48 objects:v47 count:16];
      v16 = 0;
      v2 = v31;
      v3 = MEMORY[0x1E695FF58];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_41:
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    [(BWGraph *)*(a1 + 40) _resumeInputConnectionsForNodes:v16 eventsOnly:?];
  }

  *(*(a1 + 40) + 288) = 0;
  v30 = *(a1 + 56);
  if (v30)
  {
    (*(v30 + 16))();
  }

  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(*(a1 + 40) + 160));
}

- (void)cancelDeferredNodePrepare
{
  v4 = objc_autoreleasePoolPush();
  v5 = *self;
  *self = 0;
  [(BWGraph *)a2 _resumeInputConnectionsForNodes:v5 eventsOnly:1];

  dispatch_group_leave(*(a2 + 160));
  objc_autoreleasePoolPop(v4);
}

- (void)enableDeferredStartForSourceNode:(id)node mustStartAfterNonDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  if (dword_1ED844610)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_running)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't enable deferred start while running" userInfo:0]);
  }

  if (deferredCopy)
  {
    deferredStartSourceNodesThatMustStartAfterNonDeferred = self->_deferredStartSourceNodesThatMustStartAfterNonDeferred;
    if (!deferredStartSourceNodesThatMustStartAfterNonDeferred)
    {
      deferredStartSourceNodesThatMustStartAfterNonDeferred = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_deferredStartSourceNodesThatMustStartAfterNonDeferred = deferredStartSourceNodesThatMustStartAfterNonDeferred;
    }

    if (([(NSMutableArray *)deferredStartSourceNodesThatMustStartAfterNonDeferred containsObject:node, v11, v12]& 1) == 0)
    {
      [(NSMutableArray *)self->_deferredStartSourceNodesThatMustStartAfterNonDeferred addObject:node];
    }
  }

  deferredStartSourceNodes = self->_deferredStartSourceNodes;
  if (!deferredStartSourceNodes)
  {
    deferredStartSourceNodes = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_deferredStartSourceNodes = deferredStartSourceNodes;
  }

  if (([(NSMutableArray *)deferredStartSourceNodes containsObject:node, v11, v12]& 1) == 0)
  {
    v10 = self->_deferredStartSourceNodes;
    if (deferredCopy)
    {
      [(NSMutableArray *)v10 addObject:node];
    }

    else
    {
      [(NSMutableArray *)v10 insertObject:node atIndex:0];
    }
  }
}

- (void)startDeferredSourceNodesIfNeeded
{
  if (dword_1ED844610)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!self->_haveStartedOrCancelledDeferredSourceNodes)
  {
    if ([(NSMutableArray *)self->_deferredStartSourceNodes count])
    {
      self->_haveStartedOrCancelledDeferredSourceNodes = 1;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      obj = self->_deferredStartSourceNodes;
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v14;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v13 + 1) + 8 * i);
            v9 = FigDispatchQueueCreateWithPriority();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __43__BWGraph_startDeferredSourceNodesIfNeeded__block_invoke;
            block[3] = &unk_1E798F898;
            block[4] = self;
            block[5] = v8;
            dispatch_async(v9, block);
          }

          v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

void __43__BWGraph_startDeferredSourceNodesIfNeeded__block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v40[0] = 0;
  if ([*(*(a1 + 32) + 104) containsObject:*(a1 + 40)])
  {
    if (dword_1ED844610)
    {
      v39 = 0;
      v38 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    dispatch_group_wait(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (dword_1ED844610)
  {
    v39 = 0;
    v38 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 40) start:{v40, v22, v24}];
  dispatch_group_leave(*(*(a1 + 32) + 136));
  if (v40[0])
  {
    [*(a1 + 32) setErrorStatus:{objc_msgSend(v40[0], "code")}];
    v39 = 0;
    v38 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v39;
    if (os_log_type_enabled(v4, v38))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 248);
      v26 = *(v7 + 240);
      v9 = [v40[0] code];
      v10 = *(a1 + 40);
      v11 = [v10 nodeSubType];
      v12 = [*(a1 + 40) name];
      v28 = 136316930;
      v29 = "[BWGraph startDeferredSourceNodesIfNeeded]_block_invoke";
      v30 = 2048;
      v31 = v7;
      v32 = 1026;
      v33 = v8;
      v34 = 2114;
      v35 = v26;
      v36 = 1024;
      *v37 = v9;
      *&v37[4] = 2048;
      *&v37[6] = v10;
      *&v37[14] = 2112;
      *&v37[16] = v11;
      *&v37[24] = 2114;
      *&v37[26] = v12;
      LODWORD(v25) = 74;
      v23 = &v28;
      _os_log_send_and_compose_impl();
    }

LABEL_19:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_20;
  }

  if (dword_1ED844610)
  {
    v39 = 0;
    v38 = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v39;
    if (os_log_type_enabled(v13, v38))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(v16 + 248);
      v19 = *(v16 + 240);
      v20 = [v17 nodeSubType];
      v21 = [*(a1 + 40) name];
      v28 = 136316674;
      v29 = "[BWGraph startDeferredSourceNodesIfNeeded]_block_invoke";
      v30 = 2048;
      v31 = v16;
      v32 = 1026;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      v36 = 2048;
      *v37 = v17;
      *&v37[8] = 2112;
      *&v37[10] = v20;
      *&v37[18] = 2114;
      *&v37[20] = v21;
      LODWORD(v25) = 68;
      v23 = &v28;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_19;
  }

LABEL_20:
  [*(*(a1 + 32) + 216) graph:*(a1 + 32) didStartSourceNode:*(a1 + 40) error:{objc_msgSend(v40[0], "code", v23, v25)}];
  objc_autoreleasePoolPop(context);
  dispatch_group_leave(*(*(a1 + 32) + 160));
}

- (void)cancelDeferredSourceNodeStart
{
  if (dword_1ED844610)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_running)
  {
    if ([(NSMutableArray *)self->_deferredStartSourceNodes count])
    {
      if (!self->_haveStartedOrCancelledDeferredSourceNodes)
      {
        self->_haveStartedOrCancelledDeferredSourceNodes = 1;
        v9 = 0u;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        deferredStartSourceNodes = self->_deferredStartSourceNodes;
        v5 = [(NSMutableArray *)deferredStartSourceNodes countByEnumeratingWithState:&v9 objects:v8 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v10;
          while (1)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(deferredStartSourceNodes);
            }

            dispatch_group_leave(self->_startGroup);
            dispatch_group_leave(self->_sourceNodesStartGroup);
            if (!--v6)
            {
              v6 = [(NSMutableArray *)deferredStartSourceNodes countByEnumeratingWithState:&v9 objects:v8 count:16];
              if (!v6)
              {
                break;
              }
            }
          }
        }
      }
    }
  }
}

- (BOOL)start:(id *)start
{
  v5 = [(NSMutableArray *)self->_sourceNodes count];
  if (self->_running)
  {
    [BWGraph start:];
  }

  else
  {
    if (v5)
    {
      if (self->_beingConfigured)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't start running while in the middle of a begin/commit block" userInfo:0]);
      }

      j = v5;
      if (FigDebugIsInternalBuild())
      {
        if (!dword_1ED844610)
        {
          goto LABEL_9;
        }
      }

      else if (!dword_1ED844610)
      {
        goto LABEL_9;
      }

      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
      v90 = 0;
      v89 = 0;
      v88 = 0;
      v87 = 0;
      [BWGraph _getNodesToPrepareSeriallyBeforeGraphStart:? concurrentlyBeforeGraphStart:? duringGraphStart:? afterGraphStart:?];

      self->_nodesToPrepareAfterGraphStart = v87;
      [BWGraph _suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:];
      [BWGraph _suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:];
      [(BWGraph *)self _bypassInputConnectionsForNodes:?];
      v8 = 0;
      if ([v89 count])
      {
        v8 = dispatch_group_create();
        v9 = FigDispatchQueueCreateWithPriority();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __17__BWGraph_start___block_invoke;
        block[3] = &unk_1E798F898;
        block[4] = v89;
        block[5] = self;
        dispatch_group_async(v8, v9, block);
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v10 = v90;
      v11 = [v90 countByEnumeratingWithState:&v82 objects:v81 count:{16, v45, v47}];
      if (v11)
      {
        v12 = v11;
        v13 = *v83;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v83 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(BWGraph *)self _prepareNode:?];
          }

          v12 = [v10 countByEnumeratingWithState:&v82 objects:v81 count:16];
        }

        while (v12);
      }

      if (v8)
      {
        dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      }

      gr_propagatePreparedPoolsToSharedPoolOutputs(self->_outputsWithSharedPools, self->_outputsWithSharedPoolsForAttachedMedia);
      v15 = [v88 count];
      if (!v15)
      {
        [(BWGraphStatusDelegate *)[(BWGraph *)self statusDelegate] graphDidPrepareNodes:self];
      }

      self->_startGroup = [(BWGraph *)self _newDispatchGroupForSinksToTransitionToState:?];
      [(BWGraph *)self setErrorStatus:0];
      if ([v87 count])
      {
        dispatch_group_enter(self->_startGroup);
      }

      self->_sourceNodesStartGroup = dispatch_group_create();
      self->_nonDeferredSourceNodesStartGroup = dispatch_group_create();
      if ([(NSMutableArray *)self->_deferredStartSourceNodes count])
      {
        if (j <= [(NSMutableArray *)self->_deferredStartSourceNodes count])
        {
          [BWGraph start:];
        }

        v50 = j - [(NSMutableArray *)self->_deferredStartSourceNodes count];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = self->_deferredStartSourceNodes;
        v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v77 objects:v76 count:16];
        if (!v16)
        {
          for (j = v50; j; --j)
          {
LABEL_43:
            dispatch_group_enter(self->_sourceNodesStartGroup);
            dispatch_group_enter(self->_nonDeferredSourceNodesStartGroup);
          }

LABEL_44:
          v30 = v15;
          if (!v15)
          {
            [(BWGraph *)self _setMemoryPoolFlushAssertion];
          }

          v31 = [MEMORY[0x1E695DFD8] setWithArray:{self->_deferredStartSourceNodes, v46, v48}];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          sourceNodes = self->_sourceNodes;
          v33 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v58 objects:v57 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v59;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v59 != v35)
                {
                  objc_enumerationMutation(sourceNodes);
                }

                v37 = *(*(&v58 + 1) + 8 * k);
                if (([v31 containsObject:v37] & 1) == 0)
                {
                  sourceStartQueue = self->_sourceStartQueue;
                  startGroup = self->_startGroup;
                  v56[0] = MEMORY[0x1E69E9820];
                  v56[1] = 3221225472;
                  v56[2] = __17__BWGraph_start___block_invoke_90;
                  v56[3] = &unk_1E798F898;
                  v56[4] = self;
                  v56[5] = v37;
                  dispatch_group_async(startGroup, sourceStartQueue, v56);
                }
              }

              v34 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v58 objects:v57 count:16];
            }

            while (v34);
          }

          if (v30)
          {
            [(BWGraph *)v55 start:v54, self];
          }

          v40 = 1;
          self->_running = 1;
          v42 = self->_sourceStartQueue;
          v41 = self->_startGroup;
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __17__BWGraph_start___block_invoke_98;
          v53[3] = &unk_1E798F870;
          v53[4] = self;
          dispatch_group_notify(v41, v42, v53);
          return v40;
        }

        v17 = v16;
        v49 = v15;
        v18 = *v78;
        v19 = &unk_1ED844000;
        do
        {
          v20 = 0;
          v51 = v17;
          do
          {
            if (*v78 != v18)
            {
              objc_enumerationMutation(obj);
            }

            if (v19[388])
            {
              v21 = *(*(&v77 + 1) + 8 * v20);
              v92 = 0;
              v91 = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v23 = v92;
              if (os_log_type_enabled(v22, v91))
              {
                v24 = v23;
              }

              else
              {
                v24 = v23 & 0xFFFFFFFE;
              }

              if (v24)
              {
                clientPID = self->_clientPID;
                v26 = v18;
                clientApplicationID = self->_clientApplicationID;
                nodeSubType = [v21 nodeSubType];
                name = [v21 name];
                v62 = 136316674;
                v63 = "[BWGraph start:]";
                v64 = 2048;
                selfCopy = self;
                v66 = 1026;
                v67 = clientPID;
                v68 = 2114;
                v69 = clientApplicationID;
                v18 = v26;
                v17 = v51;
                v19 = &unk_1ED844000;
                v70 = 2048;
                v71 = v21;
                v72 = 2112;
                v73 = nodeSubType;
                v74 = 2114;
                v75 = name;
                LODWORD(v48) = 68;
                v46 = &v62;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            dispatch_group_enter(self->_startGroup);
            dispatch_group_enter(self->_sourceNodesStartGroup);
            ++v20;
          }

          while (v17 != v20);
          v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v77 objects:v76 count:16];
        }

        while (v17);
        v15 = v49;
        j = v50;
      }

      if (j)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    [BWGraph start:];
  }

  v44 = BWSignalErrorAt();
  v40 = v44 == 0;
  if (start && v44)
  {
    v40 = 0;
    *start = v44;
  }

  return v40;
}

void __17__BWGraph_start___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(BWGraph *)*(a1 + 40) _prepareNode:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __17__BWGraph_start___block_invoke_90(uint64_t a1)
{
  v15[0] = 0;
  if (dword_1ED844610)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    v4 = [*(a1 + 40) nodeType];
    if (v4)
    {
      CFHash(v4);
    }

    v5 = [*(a1 + 40) nodeSubType];
    if (v5)
    {
      CFHash(v5);
    }

    kdebug_trace();
  }

  [*(a1 + 40) start:{v15, v9, v11}];
  dispatch_group_leave(*(*(a1 + 32) + 136));
  dispatch_group_leave(*(*(a1 + 32) + 144));
  if (v15[0])
  {
    [*(a1 + 32) setErrorStatus:{objc_msgSend(v15[0], "code")}];
    v14 = 0;
    v13 = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*v3 == 1)
    {
      [v15[0] code];
LABEL_18:
      kdebug_trace();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(*(a1 + 40) "captureStream")];
    }

    if (dword_1ED844610)
    {
      v14 = 0;
      v13 = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*v3 == 1)
    {
      goto LABEL_18;
    }
  }

  return [*(*(a1 + 32) + 216) graph:*(a1 + 32) didStartSourceNode:*(a1 + 40) error:{objc_msgSend(v15[0], "code", v10, v12)}];
}

uint64_t __17__BWGraph_start___block_invoke_98(uint64_t a1)
{
  v2 = [*(a1 + 32) statusDelegate];
  v3 = *(a1 + 32);
  v4 = [v3 errorStatus];

  return [v2 graph:v3 didFinishStartingWithError:v4];
}

- (BOOL)stop:(id *)stop
{
  if (dword_1ED844610)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_beingConfigured)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't stop running while in the middle of a begin/commit block" userInfo:0]);
  }

  [(BWGraph *)self _waitForStartOrCommitToComplete];

  self->_sourceNodesStartGroup = 0;
  self->_nonDeferredSourceNodesStartGroup = 0;
  sinkNodesIdleGroupForParallelGraphRebuild = self->_sinkNodesIdleGroupForParallelGraphRebuild;
  if (!sinkNodesIdleGroupForParallelGraphRebuild)
  {
    sinkNodesIdleGroupForParallelGraphRebuild = [(BWGraph *)self _newDispatchGroupForSinksToTransitionToState:?];
  }

  [(BWGraph *)self _stopSourcesUsingDispatchGroup:?];
  _graphStateTransitionTimeout = [(BWGraph *)self _graphStateTransitionTimeout];
  v7 = dispatch_group_wait(sinkNodesIdleGroupForParallelGraphRebuild, _graphStateTransitionTimeout);

  self->_sinkNodesIdleGroupForParallelGraphRebuild = 0;
  if (v7)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v28;
    if (os_log_type_enabled(v9, v27))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      clientPID = self->_clientPID;
      clientApplicationID = self->_clientApplicationID;
      graphStateTransitionTimeoutSeconds = self->_graphStateTransitionTimeoutSeconds;
      v17 = 136316162;
      v18 = "[BWGraph stop:]";
      v19 = 2048;
      selfCopy = self;
      v21 = 1026;
      v22 = clientPID;
      v23 = 2114;
      v24 = clientApplicationID;
      v25 = 1024;
      v26 = graphStateTransitionTimeoutSeconds;
      LODWORD(v16) = 44;
      v15 = &v17;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(BWGraph *)self _attributeGraphStopTimeout];
  }

  if (self->_memoryAnalyticsReportingEnabled)
  {
    -[BWMemoryAnalyticsPayload setPeakFootprintDifference:](self->_memoryAnalyticsPayload, "setPeakFootprintDifference:", [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter peakFootprintSinceReset]);
    [+[FigCaptureMemoryReporter sharedInstance](FigCaptureMemoryReporter resetPeakFootprint];
    if ([(BWMemoryAnalyticsPayload *)self->_memoryAnalyticsPayload videoRecordingCount]|| [(BWMemoryAnalyticsPayload *)self->_memoryAnalyticsPayload captureCount]|| [(BWMemoryAnalyticsPayload *)self->_memoryAnalyticsPayload clientIsCameraOrDerivative])
    {
      [+[BWCoreAnalyticsReporter sendEvent:v15], "sendEvent:", self->_memoryAnalyticsPayload];
    }

    self->_memoryAnalyticsPayload = 0;
  }

  *&self->_haveStartedOrCancelledDeferredSourceNodes = 0;
  self->_deferredNodePrepareCancelled = 0;
  return 1;
}

- (void)_waitForStartOrCommitToComplete
{
  if (self)
  {
    v1 = *(self + 160);
    v2 = *(self + 168);
    if (v1)
    {
      v3 = *(self + 160);
      if (v2)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Shouldn't have both a start group and commit group" userInfo:0]);
      }
    }

    else
    {
      v3 = *(self + 168);
      if (!v2)
      {
        return;
      }
    }

    v53 = (self + 168);
    v54 = (self + 160);
    selfCopy = self;
    if (dword_1ED844610)
    {
      v92 = 0;
      v91 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      self = selfCopy;
    }

    _graphStateTransitionTimeout = [(BWGraph *)self _graphStateTransitionTimeout];
    if (dispatch_group_wait(v3, _graphStateTransitionTimeout))
    {
      v52 = v1;
      if (v1)
      {
        v92 = 0;
        v91 = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        obj = *(selfCopy + 24);
        v60 = [obj countByEnumeratingWithState:&v81 objects:v80 count:16];
        if (v60)
        {
          v57 = *v82;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v82 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v81 + 1) + 8 * i);
              v92 = 0;
              v91 = OS_LOG_TYPE_DEFAULT;
              v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v11 = v92;
              if (os_log_type_enabled(v10, v91))
              {
                v12 = v11;
              }

              else
              {
                v12 = v11 & 0xFFFFFFFE;
              }

              if (v12)
              {
                v13 = *(selfCopy + 248);
                v14 = *(selfCopy + 240);
                nodeSubType = [v9 nodeSubType];
                name = [v9 name];
                currentStateDebugString = [v9 currentStateDebugString];
                v68 = 136316930;
                v69 = "[BWGraph _waitForStartOrCommitToComplete]";
                v70 = 2048;
                v71 = selfCopy;
                v72 = 1026;
                *v73 = v13;
                *&v73[4] = 2114;
                *&v73[6] = v14;
                *&v73[14] = 2048;
                *&v73[16] = v9;
                v74 = 2112;
                v75 = nodeSubType;
                v76 = 2114;
                v77 = name;
                v78 = 2114;
                v79 = currentStateDebugString;
                LODWORD(v51) = 78;
                v50 = &v68;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v60 = [obj countByEnumeratingWithState:&v81 objects:v80 count:16];
          }

          while (v60);
        }

        if (*(selfCopy + 256))
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", *(selfCopy + 256)];
        }

        else
        {
          v18 = &stru_1F216A3D0;
        }

        if ([0 count])
        {
          v19 = [0 valueForKey:@"class"];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" in %@", objc_msgSend(v19, "componentsJoinedByString:", @", ")];
        }

        else
        {
          v20 = &stru_1F216A3D0;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"GraphTimeout_%@", @"StrtTime"];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client application ID: %@\nClient process ID: %d", *(selfCopy + 240), *(selfCopy + 248)];
        v92 = 0;
        v91 = OS_LOG_TYPE_DEFAULT;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = v92;
        if (os_log_type_enabled(v22, v91))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          lowercaseString = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
          v68 = 136315906;
          v69 = "[BWGraph _waitForStartOrCommitToComplete]";
          v70 = 2114;
          v71 = v18;
          v72 = 2114;
          *v73 = lowercaseString;
          *&v73[8] = 2114;
          *&v73[10] = v20;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        lowercaseString2 = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
        v85 = 138543874;
        v86 = v18;
        v87 = 2114;
        v88 = lowercaseString2;
        v89 = 2114;
        v90 = v20;
        v27 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(1, v27, v21, &unk_1F22499F0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWGraph.m", 3240, @"LastShownDate:BWGraph.m:3240", @"LastShownBuild:BWGraph.m:3240", 1);
        free(v27);
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Timed out starting in the %@ graph (possible hang%@)", v18, -[__CFString lowercaseString](FigCaptureGetRadarFriendlyProcessNameString(), "lowercaseString"), v20];
        v29 = @"StrtTime";
      }

      else
      {
        v92 = 0;
        v91 = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        obja = *(selfCopy + 24);
        v61 = [obja countByEnumeratingWithState:&v64 objects:v63 count:16];
        if (v61)
        {
          v58 = *v65;
          do
          {
            for (j = 0; j != v61; ++j)
            {
              if (*v65 != v58)
              {
                objc_enumerationMutation(obja);
              }

              v31 = *(*(&v64 + 1) + 8 * j);
              v92 = 0;
              v91 = OS_LOG_TYPE_DEFAULT;
              v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v33 = v92;
              if (os_log_type_enabled(v32, v91))
              {
                v34 = v33;
              }

              else
              {
                v34 = v33 & 0xFFFFFFFE;
              }

              if (v34)
              {
                v35 = *(selfCopy + 248);
                v36 = *(selfCopy + 240);
                nodeSubType2 = [v31 nodeSubType];
                name2 = [v31 name];
                currentStateDebugString2 = [v31 currentStateDebugString];
                v68 = 136316930;
                v69 = "[BWGraph _waitForStartOrCommitToComplete]";
                v70 = 2048;
                v71 = selfCopy;
                v72 = 1026;
                *v73 = v35;
                *&v73[4] = 2114;
                *&v73[6] = v36;
                *&v73[14] = 2048;
                *&v73[16] = v31;
                v74 = 2112;
                v75 = nodeSubType2;
                v76 = 2114;
                v77 = name2;
                v78 = 2114;
                v79 = currentStateDebugString2;
                LODWORD(v51) = 78;
                v50 = &v68;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v61 = [obja countByEnumeratingWithState:&v64 objects:v63 count:16];
          }

          while (v61);
        }

        if (*(selfCopy + 256))
        {
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", *(selfCopy + 256)];
        }

        else
        {
          v40 = &stru_1F216A3D0;
        }

        if ([0 count])
        {
          v41 = [0 valueForKey:@"class"];
          v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@" in %@", objc_msgSend(v41, "componentsJoinedByString:", @", ")];
        }

        else
        {
          v42 = &stru_1F216A3D0;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"GraphTimeout_%@", @"StrtComt"];
        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client application ID: %@\nClient process ID: %d", *(selfCopy + 240), *(selfCopy + 248)];
        v92 = 0;
        v91 = OS_LOG_TYPE_DEFAULT;
        v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v44 = v92;
        if (os_log_type_enabled(v43, v91))
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 & 0xFFFFFFFE;
        }

        if (v45)
        {
          lowercaseString3 = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
          v68 = 136315906;
          v69 = "[BWGraph _waitForStartOrCommitToComplete]";
          v70 = 2114;
          v71 = v40;
          v72 = 2114;
          *v73 = lowercaseString3;
          *&v73[8] = 2114;
          *&v73[10] = v42;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        lowercaseString4 = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
        v85 = 138543874;
        v86 = v40;
        v87 = 2114;
        v88 = lowercaseString4;
        v89 = 2114;
        v90 = v42;
        v48 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(1, v48, v62, &unk_1F2249A08, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWGraph.m", 3252, @"LastShownDate:BWGraph.m:3252", @"LastShownBuild:BWGraph.m:3252", 1);
        free(v48);
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Timed out committing in the %@ graph (possible hang%@)", v40, -[__CFString lowercaseString](FigCaptureGetRadarFriendlyProcessNameString(), "lowercaseString"), v42];
        v29 = @"StrtComt";
      }

      [(BWGraph *)selfCopy _timedOutWaitingForOperationToCompleteWithDescription:v28 briefReason:v29 offendingNodes:0];
      v1 = v52;
    }

    if (v1)
    {
      v49 = v54;
    }

    else
    {
      v49 = v53;
    }

    *v49 = 0;
  }
}

- (BOOL)stopSources:(id *)sources
{
  if (self->_beingConfigured)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't stop running while in the middle of a begin/commit block" userInfo:0]);
  }

  [(BWGraph *)self _waitForStartOrCommitToComplete];

  self->_sourceNodesStartGroup = 0;
  self->_nonDeferredSourceNodesStartGroup = 0;
  self->_sinkNodesIdleGroupForParallelGraphRebuild = [(BWGraph *)self _newDispatchGroupForSinksToTransitionToState:?];
  v4 = dispatch_group_create();
  [(BWGraph *)self _stopSourcesUsingDispatchGroup:v4];
  _graphStateTransitionTimeout = [(BWGraph *)self _graphStateTransitionTimeout];
  v6 = dispatch_group_wait(v4, _graphStateTransitionTimeout);

  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(BWGraph *)self _attributeGraphStopTimeout];
  }

  self->_sourceNodes = 0;
  self->_haveStartedOrCancelledDeferredSourceNodes = 0;
  self->_deferredNodePrepareCancelled = 0;
  return 1;
}

- (void)notifyWhenNonDeferredSourceNodesHaveStarted:(id)started
{
  if (started)
  {
    if (self->_nonDeferredSourceNodesStartGroup)
    {
      dispatch_group_notify(self->_nonDeferredSourceNodesStartGroup, self->_sourceStartQueue, started);
    }

    else
    {
      (*(started + 2))(started);
    }
  }
}

- (void)waitForNonDeferredSourceNodesToStart
{
  nonDeferredSourceNodesStartGroup = self->_nonDeferredSourceNodesStartGroup;
  if (nonDeferredSourceNodesStartGroup)
  {
    dispatch_group_wait(nonDeferredSourceNodesStartGroup, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)beginConfiguration
{
  if (self->_beingConfigured)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D920];
    v4 = @"Can't begin a new configuration when the existing configuration hasn't been committed";
    goto LABEL_10;
  }

  self->_beingConfigured = 1;
  if (!self->_running)
  {
    return;
  }

  if (!self->_supportsLiveReconfiguration)
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D920];
    v4 = @"Graph doesn't support live reconfiguration, but beginConfiguration was called while running";
LABEL_10:
    objc_exception_throw([v2 exceptionWithName:v3 reason:v4 userInfo:0]);
  }

  [(BWGraph *)self _waitForStartOrCommitToComplete];
}

- (BOOL)commitConfigurationWithID:(int64_t)d error:(id *)error
{
  v29 = 0;
  if (!self->_beingConfigured)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D920];
    v23 = @"Graph is not being configured, no configuration to commit";
    goto LABEL_26;
  }

  if (self->_commitGroup)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"Shouldn't have a commit group";
LABEL_26:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:0]);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  nodes = self->_nodes;
  v8 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(nodes);
        }

        [*(*(&v25 + 1) + 8 * i) setRequestedConfigurationID:d];
      }

      v9 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v9);
  }

  [(BWGraph *)self _resolveFormats:&v29];
  if (v29)
  {
    [BWGraph commitConfigurationWithID:error:];
  }

  else
  {
    [BWGraph _resolveRetainedBufferCounts:];
    if (v29)
    {
      [BWGraph commitConfigurationWithID:error:];
    }

    else
    {
      [(BWGraph *)self statusDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(BWGraphStatusDelegate *)[(BWGraph *)self statusDelegate] graphDidResolveRetainedBufferCounts:self];
      }

      self->_inflightConfigurationID = d;
      if (self->_running)
      {
        [(BWGraph *)self _prepareNodesWithConfigurationChanges:?];
        if (v29)
        {
          [BWGraph commitConfigurationWithID:error:];
        }

        else
        {
          [(BWGraph *)self _makeParentConfigurationChangesLive:v14];
          self->_commitGroup = [(BWGraph *)self _newDispatchGroupForSinksToBecomeLiveWithConfigurationID:d];
        }
      }
    }
  }

  self->_beingConfigured = 0;
  v12 = v29;
  if (error && v29)
  {
    *error = v29;
  }

  return v12 == 0;
}

- (void)waitForStartOrCommitToComplete
{
  if (self->_running)
  {
    v20 = v2;
    v21 = v3;
    if (dword_1ED844610)
    {
      v19 = 0;
      v18 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(BWGraph *)self startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler:0 completionHandler:0, v11, v12];
    [(BWGraph *)self startDeferredSourceNodesIfNeeded];
    [(BWGraph *)self _waitForSourceNodesToStart];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sourceNodes = self->_sourceNodes;
    v7 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(sourceNodes);
          }

          [*(*(&v14 + 1) + 8 * i) makeOutputsLiveIfNeeded];
        }

        v8 = [(NSMutableArray *)sourceNodes countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v8);
    }

    [(BWGraph *)self _waitForStartOrCommitToComplete];
  }
}

- (id)createAndBeginLiveExtension
{
  if (self->_activeLiveExtension)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Can't begin a new extension when the existing extension hasn't been committed" userInfo:0]);
  }

  [(BWGraph *)self createAndBeginLiveExtension];
  return v3;
}

- (void)cancelLiveExtension:(id)extension
{
  if (!extension || (activeLiveExtension = self->_activeLiveExtension, activeLiveExtension != extension))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Extension is not currently active userInfo:{nothing to cancel", 0}]);
  }

  self->_activeLiveExtension = 0;
}

- (BOOL)commitLiveExtension:(id)extension withError:(id *)error
{
  v8 = 0;
  if (!extension || self->_activeLiveExtension != extension)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Extension is not currently active userInfo:{cannot commit", 0}]);
  }

  [(BWGraph *)self _resolveFormats:&v8];
  if (v8)
  {
    [BWGraph commitLiveExtension:withError:];
  }

  else
  {
    [(BWGraphLiveExtension *)self->_activeLiveExtension setCommitted:1];

    self->_activeLiveExtension = 0;
  }

  v6 = v8;
  if (error && v8)
  {
    *error = v8;
  }

  return v6 == 0;
}

- (void)prepareLiveExtensionToBecomeLive:(id)live
{
  if (([live committed] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Graph extension has not been committed yet userInfo:{call commitLiveExtensionWithError.", 0}]);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  nodes = [live nodes];
  v6 = [nodes countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(nodes);
        }

        [(BWGraph *)self _prepareNode:?];
      }

      while (v7 != v9);
      v7 = [nodes countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (id)nodesUnsupportedForLiveReconfiguration
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = self->_nodes;
  v5 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 supportsLiveReconfiguration] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)nodes countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setMemoryAnalyticsReportingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (self->_memoryAnalyticsReportingEnabled != enabled)
  {

    if (enabledCopy)
    {
      v5 = objc_alloc_init(BWMemoryAnalyticsPayload);
    }

    else
    {
      v5 = 0;
    }

    self->_memoryAnalyticsPayload = v5;
  }

  self->_memoryAnalyticsReportingEnabled = enabledCopy;
}

- (void)setClientApplicationID:(id)d
{
  v5 = [d copy];
  self->_clientApplicationID = v5;
  v6 = [(NSString *)v5 isEqualToString:0x1F21855B0]|| [(NSString *)self->_clientApplicationID isEqualToString:0x1F2185250];
  self->_runningForContinuityCapture = v6;
}

- (id)_depthFirstEnumeratorWithVertexOrdering:(int)ordering
{
  v3 = [[BWDepthFirstEnumerator alloc] initWithGraph:self vertexOrdering:*&ordering];

  return v3;
}

- (id)_reverseDepthFirstEnumeratorWithVertexOrdering:(int)ordering
{
  v3 = [[BWReverseDepthFirstEnumerator alloc] initWithGraph:self vertexOrdering:*&ordering];

  return v3;
}

- (id)_breadthFirstEnumerator
{
  v2 = [[BWBreadthFirstEnumerator alloc] initWithGraph:self];

  return v2;
}

- (id)_reverseBreadthFirstEnumerator
{
  v2 = [[BWReverseBreadthFirstEnumerator alloc] initWithGraph:self];

  return v2;
}

- (BOOL)_resolveFormats:(id *)formats
{
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v3 = 1;
  obj = [(BWGraph *)self _reverseDepthFirstEnumeratorWithVertexOrdering:1];
  v4 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    v34 = *v51;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v50 + 1) + 8 * i);
        if ([v40 nodeType] != @"Sink")
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          outputs = [v40 outputs];
          v8 = [outputs countByEnumeratingWithState:&v45 objects:v44 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v46;
            v35 = i;
            v36 = v5;
            v39 = *v46;
            while (2)
            {
              v11 = 0;
              v41 = v9;
              do
              {
                if (*v46 != v10)
                {
                  objc_enumerationMutation(outputs);
                }

                v12 = *(*(&v45 + 1) + 8 * v11);
                v13 = [objc_msgSend(v12 "connection")];
                if (v13)
                {
                  v14 = v13;
                  activeLiveExtension = self->_activeLiveExtension;
                  if (!activeLiveExtension || ([-[BWGraphLiveExtension nodes](activeLiveExtension "nodes")] & 1) != 0 || objc_msgSend(-[BWGraphLiveExtension nodes](self->_activeLiveExtension, "nodes"), "containsObject:", objc_msgSend(v14, "node")))
                  {
                    specifiedAttachedMediaKeys = [v12 specifiedAttachedMediaKeys];
                    specifiedAttachedMediaKeys2 = [v14 specifiedAttachedMediaKeys];
                    if ([specifiedAttachedMediaKeys count] || objc_msgSend(specifiedAttachedMediaKeys2, "count"))
                    {
                      _passthroughModeForUnspecifiedAttachedMedia = [v12 _passthroughModeForUnspecifiedAttachedMedia];
                      _passthroughModeForUnspecifiedAttachedMedia2 = [v14 _passthroughModeForUnspecifiedAttachedMedia];
                      v60 = 0u;
                      v61 = 0u;
                      v62 = 0u;
                      v63 = 0u;
                      v20 = [specifiedAttachedMediaKeys countByEnumeratingWithState:&v60 objects:v59 count:16];
                      if (v20)
                      {
                        v21 = v20;
                        v22 = *v61;
                        v23 = 1;
                        do
                        {
                          for (j = 0; j != v21; ++j)
                          {
                            if (*v61 != v22)
                            {
                              objc_enumerationMutation(specifiedAttachedMediaKeys);
                            }

                            v25 = [specifiedAttachedMediaKeys2 containsObject:*(*(&v60 + 1) + 8 * j)];
                            if (_passthroughModeForUnspecifiedAttachedMedia2)
                            {
                              v26 = 1;
                            }

                            else
                            {
                              v26 = v25;
                            }

                            v23 &= v26;
                          }

                          v21 = [specifiedAttachedMediaKeys countByEnumeratingWithState:&v60 objects:v59 count:16];
                        }

                        while (v21);
                      }

                      else
                      {
                        v23 = 1;
                      }

                      v57 = 0u;
                      v58 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v27 = [specifiedAttachedMediaKeys2 countByEnumeratingWithState:&v55 objects:v54 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v56;
                        v9 = v41;
                        do
                        {
                          for (k = 0; k != v28; ++k)
                          {
                            if (*v56 != v29)
                            {
                              objc_enumerationMutation(specifiedAttachedMediaKeys2);
                            }

                            v31 = [specifiedAttachedMediaKeys containsObject:*(*(&v55 + 1) + 8 * k)];
                            if (_passthroughModeForUnspecifiedAttachedMedia)
                            {
                              v32 = 1;
                            }

                            else
                            {
                              v32 = v31;
                            }

                            v23 &= v32;
                          }

                          v28 = [specifiedAttachedMediaKeys2 countByEnumeratingWithState:&v55 objects:v54 count:16];
                        }

                        while (v28);
                      }

                      else
                      {
                        v9 = v41;
                      }

                      v10 = v39;
                      if (!v23)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (![objc_msgSend(v12 "connection")])
                    {
LABEL_50:
                      v3 = 0;
                      if (formats)
                      {
                        *formats = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-666 userInfo:0];
                      }

                      return v3;
                    }
                  }
                }

                else
                {
                  [v40 nodeType];
                }

                ++v11;
              }

              while (v11 != v9);
              v9 = [outputs countByEnumeratingWithState:&v45 objects:v44 count:16];
              v6 = v34;
              i = v35;
              v5 = v36;
              if (v9)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
      v3 = 1;
    }

    while (v5);
  }

  return v3;
}

- (uint64_t)_resolveVideoRetainedBufferCountsForOutput:(uint64_t)output forAttachedMediaKey:(void *)key outputsWithSharedPools:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [a2 mediaPropertiesForAttachedMediaKey:?];
  if (!v8)
  {
    [BWGraph _resolveVideoRetainedBufferCountsForOutput:forAttachedMediaKey:outputsWithSharedPools:];
  }

  v9 = v8;
  v10 = [a2 _passthroughModeForAttachedMediaKey:output];
  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 == 2)
  {
    [key addObject:a2];
LABEL_6:
    v13 = 0;
    if (*(v7 + 224) == 1)
    {
      v11 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutput(a2, output, 0);
    }

    else
    {
      v11 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutputWithDelay(a2, output, 0, 0, 0, &v13);
    }

    v12 = v11;
    [v9 resolvedRetainedBufferCount];
    return [v9 setResolvedRetainedBufferCount:(v13 + v12)];
  }

  return [v9 setResolvedRetainedBufferCount:0];
}

uint64_t __116__BWGraph__getNodesToPrepareSeriallyBeforeGraphStart_concurrentlyBeforeGraphStart_duringGraphStart_afterGraphStart___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 deferredPreparePriority];
  if (v5 > [a3 deferredPreparePriority])
  {
    return -1;
  }

  v7 = [a2 deferredPreparePriority];
  return v7 < [a3 deferredPreparePriority];
}

uint64_t __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 supportsPrepareWhileRunning])
  {
    return 0;
  }

  else
  {
    return [*(a1 + 32) containsObject:a2] ^ 1;
  }
}

void __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_5(uint64_t a1)
{
  v2 = +[BWNodeConfigurationEndOfDataMessage newMessageWithConfigurationID:](BWNodeConfigurationEndOfDataMessage, "newMessageWithConfigurationID:", [*(a1 + 32) liveConfigurationID]);
  [*(a1 + 32) handleMessage:v2];
}

uint64_t __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6(void *a1)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        [v7 waitUntilEndOfConfigurationHandled];
        v8 = a1[5];
        v21 = v7;
        -[BWGraph _resumeInputConnectionsForNodes:eventsOnly:](v8, [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1], 0);
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = a1[6];
  result = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if ([v14 supportsPrepareWhileRunning])
        {
          __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6_cold_2(a1 + 5, v14);
        }

        else
        {
          __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6_cold_1(v14, a1 + 5, &v15);
        }

        ++v13;
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

- (char)_timedOutWaitingForOperationToCompleteWithDescription:(void *)description briefReason:(void *)reason offendingNodes:
{
  if (result)
  {
    v18[1] = v9;
    v18[2] = v8;
    v18[3] = v7;
    v18[4] = v6;
    v18[5] = v5;
    v18[6] = v4;
    v18[7] = v10;
    v18[8] = v11;
    WriteStackshotReport();
    qword_1EB58DC08 = [a2 UTF8String];
    v18[0] = 0;
    if (description)
    {
      strncpy(v18, [description UTF8String], 8uLL);
    }

    v16 = 0u;
    v17 = 0u;
    *__dst = 0u;
    result = [objc_msgSend(reason "firstObject")];
    if (result)
    {
      result = strncpy(__dst, [objc_msgSend(objc_msgSend(reason "firstObject")], 0x30uLL);
    }

    __break(0);
  }

  return result;
}

uint64_t __42__BWGraph__stopSourcesUsingDispatchGroup___block_invoke(uint64_t a1)
{
  v7 = 0;
  if (dword_1ED844610)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [*(a1 + 40) stop:{&v7, v5, v6}];
  if (v7 || dword_1ED844610)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (id)osStatePropertyList
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_nodes, 1), @"nodes"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_sourceNodes, 0), @"sourceNodes"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_sinkNodes, 0), @"sinkNodes"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_nodesToBypassUntilPrepared, 0), @"nodesToBypassUntilPrepared"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_nodesToPrepareConcurrently, 0), @"nodesToPrepareConcurrently"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_nodesToPrepareAfterGraphStart, 0), @"nodesToPrepareAfterGraphStart"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_deferredPreparePrioritySinks, 0), @"deferredPreparePrioritySinks"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_deferredStartSourceNodes, 0), @"deferredStartSourceNodes"}];
  [dictionary setObject:-[BWGraph statePropertyListForNodes:verbose:](self forKeyedSubscript:{self->_deferredStartSourceNodesThatMustStartAfterNonDeferred, 0), @"deferredStartSourceNodesThatMustStartAfterNonDeferred"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_deferredNodePrepareCancelled), @"deferredNodePrepareCancelled"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_haveStartedOrCancelledDeferredSourceNodes), @"haveStartedOrCancelledDeferredSourceNodes"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_resumesConnectionsAsNodesArePrepared), @"resumesConnectionsAsNodesArePrepared"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_running), @"running"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_beingConfigured), @"beingConfigured"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_activeLiveExtension != 0), @"beingExtended"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[BWGraphLiveExtension committed](self->_activeLiveExtension, "committed")), @"extensionCommitted"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_inflightConfigurationID), @"inflightConfigurationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_supportsLiveReconfiguration), @"supportsLiveReconfiguration"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_errorStatus), @"errorStatus"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_clientPID), @"clientPID"}];
  [dictionary setObject:self->_modeDescription forKeyedSubscript:@"modeDescription"];
  [dictionary setObject:self->_sourceDescription forKeyedSubscript:@"sourceDescription"];
  return dictionary;
}

- (uint64_t)_prepareNode:(uint64_t)result
{
  if (result)
  {
    v3 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      nodeType = [a2 nodeType];
      if (nodeType)
      {
        CFHash(nodeType);
      }

      nodeSubType = [a2 nodeSubType];
      if (nodeSubType)
      {
        CFHash(nodeSubType);
      }

      kdebug_trace();
    }

    result = [a2 prepareForCurrentConfigurationToBecomeLive];
    if (*v3 == 1)
    {

      return kdebug_trace();
    }
  }

  return result;
}

- (uint64_t)_resumeInputConnectionsForNodes:(uint64_t)nodes eventsOnly:
{
  if (result)
  {
    v4 = result;
    v5 = [MEMORY[0x1E695DFD8] setWithArray:a2];
    v6 = [v4 _reverseDepthFirstEnumeratorWithVertexOrdering:{0, OUTLINED_FUNCTION_16_40()}];
    result = [v6 countByEnumeratingWithState:v20 objects:v19 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v10 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(v21 + 8 * v9);
          v12 = [v5 containsObject:v11];
          if (v12)
          {
            inputs = [v11 inputs];
            OUTLINED_FUNCTION_43();
            v12 = [v15 countByEnumeratingWithState:? objects:? count:?];
            if (v12)
            {
              v16 = v12;
              v17 = MEMORY[0];
              do
              {
                v18 = 0;
                do
                {
                  if (MEMORY[0] != v17)
                  {
                    objc_enumerationMutation(inputs);
                  }

                  [objc_msgSend(*(8 * v18++) "connection")];
                }

                while (v16 != v18);
                OUTLINED_FUNCTION_43();
                v12 = [inputs countByEnumeratingWithState:? objects:? count:?];
                v16 = v12;
              }

              while (v12);
            }
          }

          ++v9;
        }

        while (v9 != v7);
        result = OUTLINED_FUNCTION_64(v12, v13, v20, v19);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_getNodesToPrepareSeriallyBeforeGraphStart:(uint64_t)start concurrentlyBeforeGraphStart:duringGraphStart:afterGraphStart:
{
  if (start)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if ([*(v9 + 80) count])
    {
      v82 = v8;
      v84 = v2;
      v86 = v4;
      v11 = [MEMORY[0x1E695DFA8] set];
      v12 = [MEMORY[0x1E695DFA8] set];
      v93 = [MEMORY[0x1E695DFA8] setWithArray:*(v10 + 16)];
      OUTLINED_FUNCTION_16_40();
      v13 = *(v10 + 80);
      v16 = OUTLINED_FUNCTION_1_18(v14, v15, v142, v141);
      if (v16)
      {
        v17 = v16;
        v18 = *v142[2];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            OUTLINED_FUNCTION_13_1();
            if (v20 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v21 = [v93 unionSet:{-[BWGraph _nodesInSubgraphOfSinkNode:](v10, *(v142[1] + 8 * i))}];
          }

          v17 = OUTLINED_FUNCTION_1_18(v21, v22, v142, v141);
        }

        while (v17);
      }

      v23 = [v93 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(v10 + 48), v6)}];
      memset(v140, 0, sizeof(v140));
      v24 = *(v10 + 32);
      v26 = OUTLINED_FUNCTION_1_18(v23, v25, v140, v139);
      if (v26)
      {
        v27 = v26;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            OUTLINED_FUNCTION_49_7();
            if (!v29)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v140[0] + 1) + 8 * j);
            pipelineStage = [v30 pipelineStage];
            if (!pipelineStage)
            {
              pipelineStage = [v11 addObject:{objc_msgSend(objc_msgSend(v30, "input"), "node")}];
            }
          }

          v27 = OUTLINED_FUNCTION_1_18(pipelineStage, v32, v140, v139);
        }

        while (v27);
      }

      [v93 unionSet:v11];
      v33 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(v10 + 56)];
      v34 = [v33 setObject:objc_msgSend(*(v10 + 40) forKeyedSubscript:{"copy"), @"PrimaryFormat"}];
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v42 = OUTLINED_FUNCTION_35_18(v34, v35, v36, v37, v38, v39, v40, v41, v80, v82, v84, v86, v10, v11, v90, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134);
      if (v42)
      {
        v43 = v42;
        v91 = *v136;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v136 != v91)
            {
              objc_enumerationMutation(v33);
            }

            v45 = *(*(&v135 + 1) + 8 * k);
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v46 = [v33 objectForKeyedSubscript:v45];
            v47 = [v46 countByEnumeratingWithState:&v131 objects:&v115 count:16];
            if (v47)
            {
              v55 = v47;
              v56 = *v132;
              do
              {
                v57 = 0;
                do
                {
                  if (*v132 != v56)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v58 = *(*(&v131 + 1) + 8 * v57);
                  [v12 addObject:{objc_msgSend(v58, "node")}];
                  v59 = [v12 addObject:{objc_msgSend(gr_findParentOutputOfOutputWithSharedPool(v58, v45, 0), "node")}];
                  ++v57;
                }

                while (v55 != v57);
                v47 = OUTLINED_FUNCTION_64(v59, v60, &v131, &v115);
                v55 = v47;
              }

              while (v47);
            }
          }

          v43 = OUTLINED_FUNCTION_35_18(v47, v48, v49, v50, v51, v52, v53, v54, v81, v83, v85, v87, v88, v89, v91, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134);
        }

        while (v43);
      }

      [v94 unionSet:v12];
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      array3 = [MEMORY[0x1E695DF70] array];
      array4 = [MEMORY[0x1E695DF70] array];
      if (*(v88 + 64))
      {
        v64 = *(v88 + 64);
      }

      else
      {
        v64 = MEMORY[0x1E695E0F0];
      }

      v65 = [MEMORY[0x1E695DFD8] setWithArray:v64];
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v66 = *(v88 + 8);
      v68 = OUTLINED_FUNCTION_52(v65, v67, &v111, &v95);
      if (v68)
      {
        v69 = v68;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            OUTLINED_FUNCTION_89();
            if (!v29)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v111 + 1) + 8 * m);
            v72 = [v94 containsObject:v71];
            v73 = array4;
            if (v72)
            {
              v74 = [v65 containsObject:v71];
              v73 = array2;
              if ((v74 & 1) == 0)
              {
                if (([v89 containsObject:v71] & 1) != 0 || (v75 = objc_msgSend(v12, "containsObject:", v71), v73 = array3, v75))
                {
                  v73 = array;
                }
              }
            }

            v76 = [v73 addObject:v71];
          }

          v69 = OUTLINED_FUNCTION_52(v76, v77, &v111, &v95);
        }

        while (v69);
      }

      if (*(v88 + 90) == 1)
      {
        [array4 sortUsingComparator:&__block_literal_global_118];
      }

      if (v83)
      {
        *v83 = array;
      }

      if (v81)
      {
        *v81 = array2;
      }

      if (v85)
      {
        *v85 = array4;
      }

      v4 = v87;
      if (!v87)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v78 = *(v10 + 8);
    if ([*(v10 + 64) count])
    {
      v78 = [MEMORY[0x1E695DF70] arrayWithArray:*(v10 + 8)];
      [v78 removeObjectsInArray:*(v10 + 64)];
      if (v6)
      {
        v79 = *(v10 + 64);
LABEL_63:
        *v6 = v79;
      }
    }

    else if (v6)
    {
      v79 = MEMORY[0x1E695E0F0];
      goto LABEL_63;
    }

    if (v8)
    {
      *v8 = v78;
    }

    if (v2)
    {
      *v2 = MEMORY[0x1E695E0F0];
    }

    if (!v4)
    {
      goto LABEL_71;
    }

    array3 = MEMORY[0x1E695E0F0];
LABEL_70:
    *v4 = array3;
LABEL_71:
    OUTLINED_FUNCTION_81();
  }
}

- (void)_suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:
{
  OUTLINED_FUNCTION_84();
  obj = v4;
  if (v5)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v9 = v0;
    OUTLINED_FUNCTION_6_78();
    OUTLINED_FUNCTION_32_15();
    v22 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v22)
    {
      OUTLINED_FUNCTION_13_1();
      v21 = v10;
      do
      {
        v11 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v12 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v11;
          v13 = *(v24 + 8 * v11);
          inputs = [v13 inputs];
          OUTLINED_FUNCTION_47_0();
          v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
          if (v16)
          {
            v17 = v16;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                OUTLINED_FUNCTION_89();
                if (!v19)
                {
                  objc_enumerationMutation(inputs);
                }

                [objc_msgSend(*(8 * i) "connection")];
              }

              OUTLINED_FUNCTION_47_0();
              v17 = [inputs countByEnumeratingWithState:? objects:? count:?];
            }

            while (v17);
          }

          v11 = v23 + 1;
        }

        while (v23 + 1 != v22);
        OUTLINED_FUNCTION_32_15();
        v22 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v22);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_bypassInputConnectionsForNodes:(uint64_t)result
{
  if (result)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [a2 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v16;
      do
      {
        v5 = 0;
        do
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(a2);
          }

          v6 = [objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * v5++) "input")];
        }

        while (v3 != v5);
        result = OUTLINED_FUNCTION_57(v6, v7, v8, v9, v10, v11, v12, v13, v14[0]);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

- (NSObject)_newDispatchGroupForSinksToTransitionToState:(uint64_t)state
{
  if (!state)
  {
    return 0;
  }

  v4 = dispatch_group_create();
  v5 = [*(state + 24) count];
  if (v5)
  {
    v7 = v5;
    do
    {
      dispatch_group_enter(v4);
      --v7;
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(state + 24);
  v9 = OUTLINED_FUNCTION_64(v5, v6, &v19, v18);
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        if (a2)
        {
          if (a2 == 1)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __56__BWGraph__newDispatchGroupForSinksToTransitionToState___block_invoke;
            v17[3] = &unk_1E798F870;
            v17[4] = v4;
            v14 = [v14 notifyWhenActive:v17];
          }
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __56__BWGraph__newDispatchGroupForSinksToTransitionToState___block_invoke_2;
          v16[3] = &unk_1E798F870;
          v16[4] = v4;
          v14 = [v14 notifyWhenIdle:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = OUTLINED_FUNCTION_64(v14, v10, &v19, v18);
    }

    while (v11);
  }

  return v4;
}

- (void)_stopSourcesUsingDispatchGroup:(uint64_t)group
{
  if (group)
  {
    v4 = FigDispatchQueueCreateWithPriority();
    memset(v16, 0, 64);
    v5 = *(group + 16);
    v7 = OUTLINED_FUNCTION_52(v4, v6, v16, v15);
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v10)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16[0] + 1) + 8 * v9);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __42__BWGraph__stopSourcesUsingDispatchGroup___block_invoke;
          v14[3] = &unk_1E798F898;
          v14[4] = group;
          v14[5] = v11;
          dispatch_group_async(a2, v4, v14);
          ++v9;
        }

        while (v8 != v9);
        v8 = OUTLINED_FUNCTION_52(v12, v13, v16, v15);
      }

      while (v8);
    }
  }
}

- (dispatch_time_t)_graphStateTransitionTimeout
{
  if (result)
  {
    v1 = result;
    if (FigCaptureIsDebuggerOrSlowAllocationPathEnabled())
    {
      return -1;
    }

    else
    {
      v2 = 1000000000 * *(v1 + 280);

      return dispatch_time(0, v2);
    }
  }

  return result;
}

- (char)_attributeGraphStopTimeout
{
  if (result)
  {
    v1 = result;
    [BWGraph _collectActiveNodesAfterGraphStopTimeout];
    v3 = v2;
    [BWGraph _collectActiveSinkNodesAfterGraphStopTimeout];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];
    if (FigCaptureCurrentProcessIsDeferredmediad())
    {
      v6 = *(v1 + 70) == 60;
    }

    else
    {
      v6 = 0;
    }

    if (*(v1 + 32))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", *(v1 + 32)];
    }

    else
    {
      v7 = &stru_1F216A3D0;
    }

    if ([v5 count])
    {
      v8 = [v5 valueForKey:@"class"];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" in %@", objc_msgSend(v8, "componentsJoinedByString:", @", ")];
      if (v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = &stru_1F216A3D0;
      if (v6)
      {
LABEL_18:
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Timed out stopping in the %@ graph (possible hang%@)", v7, -[__CFString lowercaseString](FigCaptureGetRadarFriendlyProcessNameString(), "lowercaseString"), v9];
        return [(BWGraph *)v1 _timedOutWaitingForOperationToCompleteWithDescription:v13 briefReason:@"StopTime" offendingNodes:v5];
      }
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"GraphTimeout_%@", @"StopTime"];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client application ID: %@\nClient process ID: %d", *(v1 + 30), *(v1 + 62)];
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_18_33();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = v16 & 0xFFFFFFFE;
    }

    if (v11)
    {
      [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
    v12 = OUTLINED_FUNCTION_6_0();
    FigCapturePleaseFileRadar(1, v12, v14, &unk_1F2249A20, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWGraph.m", 3309, @"LastShownDate:BWGraph.m:3309", @"LastShownBuild:BWGraph.m:3309", 1);
    free(v12);
    goto LABEL_18;
  }

  return result;
}

- (void)_resolveRetainedBufferCounts:
{
  OUTLINED_FUNCTION_84();
  v1 = v0;
  if (v0)
  {
    [*(v0 + 40) removeAllObjects];
    [*(v1 + 56) removeAllObjects];
    v2 = OUTLINED_FUNCTION_6_78();
    obj = *(v1 + 32);
    v29 = [obj countByEnumeratingWithState:v36 objects:v35 count:{16, v2}];
    if (v29)
    {
      OUTLINED_FUNCTION_13_1();
      v28 = v3;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          OUTLINED_FUNCTION_13_1();
          if (v5 != v28)
          {
            objc_enumerationMutation(obj);
          }

          output = [*(v36[1] + 8 * i) output];
          if ([output mediaType] == 1986618469 || objc_msgSend(output, "mediaType") == 1885564004)
          {
            [(BWGraph *)v1 _resolveVideoRetainedBufferCountsForOutput:output forAttachedMediaKey:@"PrimaryFormat" outputsWithSharedPools:*(v1 + 40)];
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            specifiedAttachedMediaKeys = [output specifiedAttachedMediaKeys];
            v8 = [specifiedAttachedMediaKeys countByEnumeratingWithState:&v31 objects:v30 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v32;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v32 != v10)
                  {
                    objc_enumerationMutation(specifiedAttachedMediaKeys);
                  }

                  v12 = *(*(&v31 + 1) + 8 * j);
                  array = [*(v1 + 56) objectForKeyedSubscript:v12];
                  if (!array)
                  {
                    array = [MEMORY[0x1E695DF70] array];
                    [*(v1 + 56) setObject:array forKeyedSubscript:v12];
                  }

                  [(BWGraph *)v1 _resolveVideoRetainedBufferCountsForOutput:output forAttachedMediaKey:v12 outputsWithSharedPools:array];
                }

                v9 = [specifiedAttachedMediaKeys countByEnumeratingWithState:&v31 objects:v30 count:16];
              }

              while (v9);
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:v36 objects:v35 count:16];
      }

      while (v29);
    }

    gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs(*(v1 + 40), @"PrimaryFormat");
    v14 = *(v1 + 56);
    OUTLINED_FUNCTION_47_0();
    v19 = OUTLINED_FUNCTION_37(v15, v16, v17, v18);
    if (v19)
    {
      v20 = v19;
      v21 = MEMORY[0];
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v14);
          }

          gr_addRetainCountsOfOutputsWithSharedPoolsForAttachedMediaToParentNodeOutputs([*(v1 + 56) objectForKeyedSubscript:*(8 * k)], *(8 * k));
        }

        OUTLINED_FUNCTION_47_0();
        v20 = OUTLINED_FUNCTION_37(v23, v24, v25, v26);
      }

      while (v20);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_prepareNodesWithConfigurationChanges:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    memset(v98, 0, 64);
    v4 = *(result + 32);
    v5 = OUTLINED_FUNCTION_37(result, a2, v98, v97);
    if (v5)
    {
      v6 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          OUTLINED_FUNCTION_42();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v98[0] + 1) + 8 * i) setAllowsSuspensionWithoutPipelineStage:1];
        }

        v6 = OUTLINED_FUNCTION_37(v9, v10, v98, v97);
      }

      while (v6);
    }

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v13 = [MEMORY[0x1E695DFA8] set];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v3[2];
    v64 = v3;
    v60 = [obj countByEnumeratingWithState:&v93 objects:v92 count:16];
    if (v60)
    {
      v65 = a2;
      v59 = *v94;
      do
      {
        v14 = 0;
        while (2)
        {
          OUTLINED_FUNCTION_49_7();
          if (!v8)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [MEMORY[0x1E695DF70] arrayWithObject:{*(*(&v93 + 1) + 8 * v14), v59}];
          v16 = v15;
          while ([v15 count])
          {
            bw_pop = [v16 bw_pop];
            if (([v13 containsObject:bw_pop] & 1) == 0)
            {
              [v13 addObject:bw_pop];
              if ([bw_pop hasNonLiveConfigurationChanges] && !objc_msgSend(bw_pop, "supportsPrepareWhileRunning") || objc_msgSend(bw_pop, "requiresEndOfDataForConfigurationChanges"))
              {
                v67 = [objc_msgSend(bw_pop "inputs")];
                memset(v91, 0, sizeof(v91));
                inputs = [bw_pop inputs];
                v19 = [inputs countByEnumeratingWithState:v91 objects:v90 count:16];
                if (v19)
                {
                  v20 = v19;
LABEL_23:
                  v21 = 0;
                  while (1)
                  {
                    OUTLINED_FUNCTION_42();
                    if (!v8)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v22 = [objc_msgSend(*(*(&v91[0] + 1) + 8 * v21) "connection")];
                    if (!v22)
                    {
                      break;
                    }

                    if (v20 == ++v21)
                    {
                      v20 = OUTLINED_FUNCTION_52(v22, v23, v91, v90);
                      if (v20)
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_29;
                    }
                  }

LABEL_79:
                  v58 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-16830 userInfo:0];
                  result = v58 == 0;
                  if (v65)
                  {
                    if (v58)
                    {
                      result = 0;
                      *v65 = v58;
                    }
                  }

                  return result;
                }

LABEL_29:
                if (!v67)
                {
                  goto LABEL_79;
                }

                [array2 addObject:bw_pop];
                v3 = v64;
              }

              else
              {
                if ([bw_pop hasNonLiveConfigurationChanges] && objc_msgSend(bw_pop, "supportsPrepareWhileRunning"))
                {
                  [array addObject:bw_pop];
                }

                memset(v89, 0, sizeof(v89));
                outputs = [bw_pop outputs];
                v25 = [outputs countByEnumeratingWithState:v89 objects:v88 count:16];
                if (v25)
                {
                  v26 = v25;
                  do
                  {
                    for (j = 0; j != v26; ++j)
                    {
                      OUTLINED_FUNCTION_42();
                      if (!v8)
                      {
                        objc_enumerationMutation(outputs);
                      }

                      v28 = [objc_msgSend(objc_msgSend(*(*(&v89[0] + 1) + 8 * j) "connection")];
                      if (v28)
                      {
                        [v16 bw_push:v28];
                      }
                    }

                    v26 = [outputs countByEnumeratingWithState:v89 objects:v88 count:16];
                  }

                  while (v26);
                }
              }
            }

            v15 = v16;
          }

          if (++v14 != v60)
          {
            continue;
          }

          break;
        }

        v60 = [obj countByEnumeratingWithState:&v93 objects:v92 count:16];
      }

      while (v60);
    }

    v29 = [[BWDepthFirstEnumerator alloc] initWithSourceNodes:array2 vertexOrdering:0];
    v30 = [MEMORY[0x1E695DF70] arrayWithArray:{-[BWDepthFirstEnumerator allObjects](v29, "allObjects")}];
    [v30 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_150)}];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_2;
    v87[3] = &unk_1E799BF40;
    v87[4] = array2;
    obja = v30;
    v31 = [v30 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v87)}];
    memset(v86, 0, sizeof(v86));
    v32 = [v3 _depthFirstEnumeratorWithVertexOrdering:0];
    v33 = [v32 countByEnumeratingWithState:v86 objects:v85 count:16];
    if (v33)
    {
      v34 = v33;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          OUTLINED_FUNCTION_49_7();
          if (!v8)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v86[0] + 1) + 8 * k);
          if ([objc_msgSend(v36 "inputs")] >= 2 && (objc_msgSend(array2, "containsObject:", v36) & 1) == 0 && (objc_msgSend(v31, "containsObject:", v36) & 1) == 0)
          {
            v84 = v36;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
            OUTLINED_FUNCTION_17_34();
            [BWGraph _suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:];
            v37 = v64[24];
            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 3221225472;
            v83[2] = __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_3;
            v83[3] = &unk_1E798F898;
            v83[4] = v64;
            v83[5] = v36;
            [v36 notifyWhenEndOfConfigurationIsHandledUsingQueue:v37 block:v83];
          }
        }

        v34 = [v32 countByEnumeratingWithState:v86 objects:v85 count:16];
      }

      while (v34);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    memset(v82, 0, sizeof(v82));
    v41 = OUTLINED_FUNCTION_64(dictionary, v40, v82, v81);
    if (v41)
    {
      v42 = v41;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          OUTLINED_FUNCTION_42();
          if (!v8)
          {
            objc_enumerationMutation(array);
          }

          [(BWGraph *)v64 _prepareNode:?];
          [BWGraph _populateOutputsWithSharedPools:outputsWithSharedPoolsForAttachedMedia:forNode:];
        }

        v42 = OUTLINED_FUNCTION_64(v44, v45, v82, v81);
      }

      while (v42);
    }

    gr_propagatePreparedPoolsToSharedPoolOutputs(array3, dictionary);
    [(BWGraph *)v64 _discardMessagesForNodes:array2 beforeLiveConfigurationID:v64[16]];
    OUTLINED_FUNCTION_17_34();
    [BWGraph _suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:];
    OUTLINED_FUNCTION_17_34();
    [BWGraph _suspendInputConnectionsForNodes:messageCachingAllowed:overrideCachingEnabled:bypassedNodes:afterHandlingMessageWithType:];
    v61 = [array2 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_152)}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v68 = OUTLINED_FUNCTION_37(v61, v46, &v77, v76);
    if (v68)
    {
      v66 = *v78;
      do
      {
        for (n = 0; n != v68; ++n)
        {
          if (*v78 != v66)
          {
            objc_enumerationMutation(array2);
          }

          v48 = *(*(&v77 + 1) + 8 * n);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          inputs2 = [v48 inputs];
          v50 = [inputs2 countByEnumeratingWithState:&v72 objects:v71 count:16];
          if (v50)
          {
            v52 = v50;
            v53 = *v73;
            do
            {
              v54 = 0;
              do
              {
                if (*v73 != v53)
                {
                  objc_enumerationMutation(inputs2);
                }

                v55 = *(*(&v72 + 1) + 8 * v54);
                v56 = [objc_msgSend(v55 "connection")];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_5;
                block[3] = &unk_1E798F870;
                block[4] = v55;
                dispatch_async(v56, block);
                ++v54;
              }

              while (v52 != v54);
              v50 = [inputs2 countByEnumeratingWithState:&v72 objects:v71 count:16];
              v52 = v50;
            }

            while (v50);
          }
        }

        v68 = OUTLINED_FUNCTION_37(v50, v51, &v77, v76);
      }

      while (v68);
    }

    v57 = v64[25];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6;
    v69[3] = &unk_1E798FD58;
    v69[4] = v61;
    v69[5] = v64;
    v69[6] = obja;
    dispatch_async(v57, v69);
    return 1;
  }

  return result;
}

- (uint64_t)_makeParentConfigurationChangesLive
{
  if (result)
  {
    v8 = *(result + 16);
    result = OUTLINED_FUNCTION_57(result, a2, a3, a4, a5, a6, a7, a8, v20);
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0];
      do
      {
        v11 = 0;
        do
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v8);
          }

          makeCurrentConfigurationLive = [*(8 * v11++) makeCurrentConfigurationLive];
        }

        while (v9 != v11);
        result = OUTLINED_FUNCTION_57(makeCurrentConfigurationLive, v13, v14, v15, v16, v17, v18, v19, v21);
        v9 = result;
      }

      while (result);
    }
  }

  return result;
}

- (NSObject)_newDispatchGroupForSinksToBecomeLiveWithConfigurationID:(uint64_t)d
{
  if (!d)
  {
    return 0;
  }

  v4 = dispatch_group_create();
  v5 = [*(d + 24) count];
  if (v5)
  {
    v6 = v5;
    do
    {
      dispatch_group_enter(v4);
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_6_78();
  v7 = *(d + 24);
  v10 = OUTLINED_FUNCTION_64(v8, v9, v21, v20);
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        OUTLINED_FUNCTION_13_1();
        if (v14 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(v22 + 8 * v13);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __68__BWGraph__newDispatchGroupForSinksToBecomeLiveWithConfigurationID___block_invoke;
        v19[3] = &unk_1E799BF68;
        v19[4] = v4;
        v19[5] = a2;
        v16 = [v15 notifyWhenConfigurationID:a2 becomesLive:v19];
        ++v13;
      }

      while (v11 != v13);
      v11 = OUTLINED_FUNCTION_64(v16, v17, v21, v20);
    }

    while (v11);
  }

  return v4;
}

- (void)_waitForSourceNodesToStart
{
  if (self)
  {
    v3 = *(self + 136);
    if (v3)
    {
      if (dword_1ED844610)
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_18_33();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (OUTLINED_FUNCTION_108(os_log_and_send_and_compose_flags_and_os_log_type))
        {
          v5 = v1;
        }

        else
        {
          v5 = v1 & 0xFFFFFFFE;
        }

        if (v5)
        {
          v6 = *(self + 248);
          v7 = *(self + 240);
          v22 = 136315906;
          v23 = "[BWGraph _waitForSourceNodesToStart]";
          v24 = 2048;
          selfCopy = self;
          v26 = 1026;
          *v27 = v6;
          *&v27[4] = 2114;
          *&v27[6] = v7;
          LODWORD(v21) = 38;
          v20 = &v22;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v3 = *(self + 136);
      }

      _graphStateTransitionTimeout = [(BWGraph *)self _graphStateTransitionTimeout];
      if (dispatch_group_wait(v3, _graphStateTransitionTimeout))
      {
        if (*(self + 256))
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", *(self + 256)];
        }

        else
        {
          v9 = &stru_1F216A3D0;
        }

        if ([0 count])
        {
          v10 = [0 valueForKey:@"class"];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" in %@", objc_msgSend(v10, "componentsJoinedByString:", @", ")];
        }

        else
        {
          v11 = &stru_1F216A3D0;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"GraphTimeout_%@", @"SrcStart"];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client application ID: %@\nClient process ID: %d", *(self + 240), *(self + 248)];
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_18_33();
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = v35;
        if (os_log_type_enabled(v13, v34))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          lowercaseString = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
          v22 = 136315906;
          v23 = "[BWGraph _waitForSourceNodesToStart]";
          v24 = 2114;
          selfCopy = v9;
          v26 = 2114;
          *v27 = lowercaseString;
          *&v27[8] = 2114;
          *&v27[10] = v11;
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        lowercaseString2 = [(__CFString *)FigCaptureGetRadarFriendlyProcessNameString() lowercaseString];
        v28 = 138543874;
        v29 = v9;
        v30 = 2114;
        v31 = lowercaseString2;
        v32 = 2114;
        v33 = v11;
        v18 = OUTLINED_FUNCTION_6_0();
        FigCapturePleaseFileRadar(1, v18, v12, &unk_1F22499D8, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWGraph.m", 3190, @"LastShownDate:BWGraph.m:3190", @"LastShownBuild:BWGraph.m:3190", 1);
        free(v18);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Timed out starting source nodes in the %@ graph (possible hang%@)", v9, -[__CFString lowercaseString](FigCaptureGetRadarFriendlyProcessNameString(), "lowercaseString"), v11];
        [(BWGraph *)self _timedOutWaitingForOperationToCompleteWithDescription:v19 briefReason:@"SrcStart" offendingNodes:0];
      }

      *(self + 136) = 0;
    }
  }
}

- (BOOL)registerEmitSampleBufferSemaphoreFromNode:(id)node toNode:(id)toNode
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v6 addObject:node];
  if (![node output] || (objc_msgSend(v7, "addObject:", &unk_1F2246930), !objc_msgSend(v6, "count")))
  {
LABEL_12:
    v15 = 0;
    goto LABEL_17;
  }

  while (1)
  {
    v8 = [objc_msgSend(v7 "lastObject")];
    if ([objc_msgSend(objc_msgSend(v6 "lastObject")] <= v8)
    {
      [v6 removeLastObject];
      [v7 removeLastObject];
      if (![v7 count])
      {
        goto LABEL_12;
      }

      v10 = [v7 count] - 1;
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(v7, "lastObject"), "intValue") + 1}];
      v12 = v7;
      v13 = v10;
      goto LABEL_10;
    }

    v9 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v6 "lastObject")];
    if (v9 == toNode)
    {
      break;
    }

    if (!v9)
    {
      v14 = [v7 count] - 1;
      v11 = [MEMORY[0x1E696AD98] numberWithInt:(v8 + 1)];
      v12 = v7;
      v13 = v14;
LABEL_10:
      [v12 replaceObjectAtIndex:v13 withObject:v11];
      goto LABEL_11;
    }

    [v6 addObject:v9];
    [v7 addObject:&unk_1F2246930];
LABEL_11:
    if (![v6 count])
    {
      goto LABEL_12;
    }
  }

  if ([v6 count])
  {
    v16 = 0;
    do
    {
      [objc_msgSend(objc_msgSend(objc_msgSend(v6 objectAtIndex:{v16), "outputs"), "objectAtIndex:", objc_msgSend(objc_msgSend(v7, "objectAtIndex:", v16), "intValue")), "setSourceEmitSemaphore:", objc_msgSend(node, "emitSampleBufferSemaphore")}];
      ++v16;
    }

    while ([v6 count] > v16);
  }

  v15 = 1;
LABEL_17:

  return v15;
}

- (void)_populateOutputsWithSharedPools:outputsWithSharedPoolsForAttachedMedia:forNode:
{
  OUTLINED_FUNCTION_84();
  v19 = v2;
  if (v0)
  {
    v3 = v1;
    v4 = v0;
    v5 = OUTLINED_FUNCTION_6_78();
    [v6 outputs];
    OUTLINED_FUNCTION_32_15();
    obj = v7;
    v22 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v22)
    {
      OUTLINED_FUNCTION_13_1();
      v21 = v8;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          OUTLINED_FUNCTION_13_1();
          if (v10 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(v23 + 8 * i);
          if ([*(v4 + 40) containsObject:{v11, v19}])
          {
            [v19 addObject:v11];
          }

          specifiedAttachedMediaKeys = [v11 specifiedAttachedMediaKeys];
          OUTLINED_FUNCTION_47_0();
          v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
          if (v14)
          {
            v15 = v14;
            v16 = MEMORY[0];
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (MEMORY[0] != v16)
                {
                  objc_enumerationMutation(specifiedAttachedMediaKeys);
                }

                v18 = *(8 * j);
                if ([objc_msgSend(*(v4 + 56) objectForKeyedSubscript:{v18), "containsObject:", v11}])
                {
                  if (![v3 objectForKeyedSubscript:v18])
                  {
                    [v3 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"array"), v18}];
                  }

                  [objc_msgSend(v3 objectForKeyedSubscript:{v18), "addObject:", v11}];
                }
              }

              OUTLINED_FUNCTION_47_0();
              v15 = [specifiedAttachedMediaKeys countByEnumeratingWithState:? objects:? count:?];
            }

            while (v15);
          }
        }

        OUTLINED_FUNCTION_32_15();
        v22 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v22);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_nodesInSubgraphOfSinkNode:(void *)node
{
  if (!node)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [node _reverseDepthFirstEnumeratorWithVertexOrdering:0];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(8 * i);
        if ([objc_msgSend(v12 "nodeType")])
        {
          v9 = v12 == a2;
        }

        if (v9)
        {
          [v4 addObject:v12];
        }
      }

      OUTLINED_FUNCTION_43();
      v8 = OUTLINED_FUNCTION_64(v13, v14, v15, v16);
    }

    while (v8);
  }

  return v4;
}

- (uint64_t)_discardMessagesForNodes:(uint64_t)nodes beforeLiveConfigurationID:
{
  if (result)
  {
    memset(v20, 0, sizeof(v20));
    result = [a2 countByEnumeratingWithState:v20 objects:v19 count:16];
    if (result)
    {
      v5 = result;
      do
      {
        v6 = 0;
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v7)
          {
            objc_enumerationMutation(a2);
          }

          inputs = [*(*(&v20[0] + 1) + 8 * v6) inputs];
          OUTLINED_FUNCTION_43();
          v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
          if (v10)
          {
            v12 = v10;
            v13 = MEMORY[0];
            do
            {
              v14 = 0;
              do
              {
                if (MEMORY[0] != v13)
                {
                  objc_enumerationMutation(inputs);
                }

                [objc_msgSend(*(8 * v14++) "connection")];
              }

              while (v12 != v14);
              OUTLINED_FUNCTION_43();
              v10 = OUTLINED_FUNCTION_52(v15, v16, v17, v18);
              v12 = v10;
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v5);
        result = OUTLINED_FUNCTION_37(v10, v11, v20, v19);
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  return -[BWGraph _resumeInputConnectionsForNodes:eventsOnly:](v1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1], 0);
}

- (void)_collectActiveNodesAfterGraphStopTimeout
{
  OUTLINED_FUNCTION_84();
  if (v0)
  {
    v1 = v0;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    obj = [v1 _depthFirstEnumeratorWithVertexOrdering:{0, OUTLINED_FUNCTION_16_40()}];
    v91 = [obj countByEnumeratingWithState:v140 objects:v139 count:16];
    if (v91)
    {
      OUTLINED_FUNCTION_13_1();
      v90 = v2;
      *&v3 = 136317698;
      v93 = v3;
      *&v3 = 136317186;
      v96 = v3;
      *&v3 = 136317442;
      v97 = v3;
      v103 = v1;
      do
      {
        v4 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v5 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v92 = v4;
          name2 = *(v140[1] + 8 * v4);
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          inputs = [name2 inputs];
          v8 = [inputs countByEnumeratingWithState:&v135 objects:v134 count:16];
          v112 = name2;
          if (v8)
          {
            v9 = v8;
            v100 = inputs;
            v101 = *v136;
            do
            {
              v10 = 0;
              v104 = v9;
              do
              {
                OUTLINED_FUNCTION_42();
                if (!v11)
                {
                  objc_enumerationMutation(inputs);
                }

                v12 = *(*(&v135 + 1) + 8 * v10);
                if ([v12 liveFormat])
                {
                  v13 = [objc_msgSend(v12 "connection")];
                  liveFormat = [v13 liveFormat];
                  if (v13)
                  {
                    if (!liveFormat)
                    {
                      v15 = OUTLINED_FUNCTION_3_98();
                      os_log_type_enabled(v15, type);
                      OUTLINED_FUNCTION_13_41();
                      if (v9)
                      {
                        v108 = *(v103 + 62);
                        name2 = v112;
                        nodeType = [v112 nodeType];
                        nodeSubType = [v112 nodeSubType];
                        name = [v112 name];
                        v18 = gr_logStringForInput(v12);
                        gr_logStringForOutput(v13, [objc_msgSend(objc_msgSend(v13 "node")]);
                        v113 = v97;
                        OUTLINED_FUNCTION_5_82();
                        v114 = v103;
                        inputs = v100;
                        OUTLINED_FUNCTION_28_16();
                        v115 = v108;
                        OUTLINED_FUNCTION_27_19();
                        OUTLINED_FUNCTION_23_25();
                        v116 = nodeType;
                        v117 = v19;
                        v118 = nodeSubType;
                        v119 = v20;
                        v120 = name;
                        v121 = v20;
                        v122 = v18;
                        v123 = v20;
                        v124 = v21;
                        OUTLINED_FUNCTION_2_113();
                        _os_log_send_and_compose_impl();
                        OUTLINED_FUNCTION_33_18();
                      }

                      else
                      {
                        name2 = v112;
                      }

                      OUTLINED_FUNCTION_1_4();
                      OUTLINED_FUNCTION_16_1();
                      v9 = v104;
                      if (([array2 containsObject:{objc_msgSend(objc_msgSend(objc_msgSend(name2, "input"), "connection"), "pipelineStage")}] & 1) == 0)
                      {
                        [array2 addObject:{objc_msgSend(objc_msgSend(objc_msgSend(name2, "input"), "connection"), "pipelineStage")}];
                      }
                    }
                  }
                }

                ++v10;
              }

              while (v9 != v10);
              v9 = [inputs countByEnumeratingWithState:&v135 objects:v134 count:16];
            }

            while (v9);
          }

          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          outputs = [name2 outputs];
          v107 = [outputs countByEnumeratingWithState:&v128 objects:v127 count:16];
          if (v107)
          {
            v22 = 0;
            v23 = 0;
            v105 = *v129;
            do
            {
              for (i = 0; i != v107; ++i)
              {
                if (*v129 != v105)
                {
                  objc_enumerationMutation(outputs);
                }

                v25 = *(*(&v128 + 1) + 8 * i);
                liveFormat2 = [v25 liveFormat];
                v22 |= liveFormat2 != 0;
                indexOfInputWhichDrivesThisOutput = [v25 indexOfInputWhichDrivesThisOutput];
                v28 = [objc_msgSend(v25 "node")];
                if ((indexOfInputWhichDrivesThisOutput & 0x80000000) == 0)
                {
                  v29 = v28;
                  if ([v28 count] > indexOfInputWhichDrivesThisOutput)
                  {
                    v30 = [v29 objectAtIndexedSubscript:indexOfInputWhichDrivesThisOutput];
                    liveFormat3 = [v30 liveFormat];
                    if (liveFormat2 && !liveFormat3)
                    {
                      v32 = OUTLINED_FUNCTION_3_98();
                      os_log_type_enabled(v32, type);
                      OUTLINED_FUNCTION_13_41();
                      if (liveFormat2)
                      {
                        LODWORD(v100) = *(v103 + 62);
                        v101 = *(v103 + 30);
                        nodeType2 = [name2 nodeType];
                        [name2 nodeSubType];
                        name2 = [name2 name];
                        v33 = gr_logStringForInput(v30);
                        v34 = gr_logStringForOutput(v25, v23);
                        objc_opt_class();
                        v113 = v93;
                        OUTLINED_FUNCTION_5_82();
                        v114 = v103;
                        OUTLINED_FUNCTION_28_16();
                        v115 = v100;
                        OUTLINED_FUNCTION_27_19();
                        OUTLINED_FUNCTION_12_48();
                        v116 = nodeType2;
                        OUTLINED_FUNCTION_8_57();
                        v122 = v33;
                        v123 = v35;
                        v124 = v34;
                        v125 = v36;
                        v126 = v37;
                        OUTLINED_FUNCTION_2_113();
                        _os_log_send_and_compose_impl();
                        OUTLINED_FUNCTION_33_18();
                      }

                      OUTLINED_FUNCTION_1_4();
                      v62 = OUTLINED_FUNCTION_16_1();
                      v70 = [OUTLINED_FUNCTION_29_20(v62 v63];
                      if ((v70 & 1) == 0)
                      {
                        [OUTLINED_FUNCTION_29_20(v70 v71];
                      }
                    }

LABEL_46:
                    if ((v22 & 1) == 0)
                    {
                      goto LABEL_51;
                    }

                    goto LABEL_47;
                  }
                }

                if (!liveFormat2)
                {
                  goto LABEL_46;
                }

                v109 = v22;
                objc_opt_class();
                v38 = &stru_1F216A3D0;
                if (objc_opt_isKindOfClass())
                {
                  v39 = MEMORY[0x1E696AEC0];
                  v87 = objc_opt_class();
                  v38 = [v39 stringWithFormat:@" Possible bug in -[%@ stop:]."];
                }

                v40 = OUTLINED_FUNCTION_3_98();
                v41 = v133;
                if (os_log_type_enabled(v40, type))
                {
                  v42 = v41;
                }

                else
                {
                  v42 = v41 & 0xFFFFFFFE;
                }

                if (v42)
                {
                  LODWORD(liveFormat2) = *(v103 + 62);
                  v100 = *(v103 + 30);
                  v101 = v38;
                  nodeType3 = [name2 nodeType];
                  [name2 nodeSubType];
                  name2 = [name2 name];
                  gr_logStringForOutput(v25, v23);
                  v113 = v97;
                  OUTLINED_FUNCTION_5_82();
                  v114 = v103;
                  OUTLINED_FUNCTION_28_16();
                  v115 = liveFormat2;
                  OUTLINED_FUNCTION_27_19();
                  OUTLINED_FUNCTION_12_48();
                  v116 = nodeType3;
                  OUTLINED_FUNCTION_8_57();
                  v122 = v44;
                  v123 = v45;
                  v124 = v101;
                  LODWORD(v88) = 98;
                  v87 = &v113;
                  OUTLINED_FUNCTION_13();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_33_18();
                }

                v22 = v109;
                OUTLINED_FUNCTION_1_4();
                OUTLINED_FUNCTION_16_1();
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  v54 = [OUTLINED_FUNCTION_29_20(isKindOfClass v47];
                  if ((v54 & 1) == 0)
                  {
                    [OUTLINED_FUNCTION_29_20(v54 v55];
                  }
                }

LABEL_47:
                if ([array2 containsObject:{objc_msgSend(objc_msgSend(objc_msgSend(name2, "input", v87), "connection"), "pipelineStage")}])
                {
                  v78 = OUTLINED_FUNCTION_3_98();
                  os_log_type_enabled(v78, type);
                  OUTLINED_FUNCTION_13_41();
                  if (liveFormat2)
                  {
                    v79 = *(v103 + 62);
                    v111 = v23;
                    v80 = v22;
                    nodeType4 = [v112 nodeType];
                    nodeSubType2 = [v112 nodeSubType];
                    name3 = [v112 name];
                    [objc_msgSend(objc_msgSend(objc_msgSend(v112 "input")];
                    v113 = v96;
                    OUTLINED_FUNCTION_5_82();
                    v114 = v103;
                    OUTLINED_FUNCTION_28_16();
                    v115 = v79;
                    name2 = v112;
                    OUTLINED_FUNCTION_27_19();
                    OUTLINED_FUNCTION_23_25();
                    v116 = nodeType4;
                    v22 = v80;
                    v23 = v111;
                    v117 = v84;
                    v118 = nodeSubType2;
                    v119 = v85;
                    v120 = name3;
                    v121 = v85;
                    v122 = v86;
                    OUTLINED_FUNCTION_2_113();
                    _os_log_send_and_compose_impl();
                    OUTLINED_FUNCTION_33_18();
                  }

                  OUTLINED_FUNCTION_1_4();
                  OUTLINED_FUNCTION_16_1();
                }

LABEL_51:
                ++v23;
              }

              v107 = [outputs countByEnumeratingWithState:&v128 objects:v127 count:16];
            }

            while (v107);
          }

          v4 = v92 + 1;
        }

        while (v92 + 1 != v91);
        v91 = [obj countByEnumeratingWithState:v140 objects:v139 count:16];
      }

      while (v91);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_collectActiveSinkNodesAfterGraphStopTimeout
{
  OUTLINED_FUNCTION_84();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_62();
    v3 = OUTLINED_FUNCTION_37_15();
    if (OUTLINED_FUNCTION_108(v3))
    {
      v4 = v0;
    }

    else
    {
      v4 = v0 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(v2 + 248);
      v6 = *(v2 + 240);
      v36 = 136315906;
      v37 = "[BWGraph _collectActiveSinkNodesAfterGraphStopTimeout]";
      v38 = 2048;
      v39 = v2;
      v40 = 1026;
      v41 = v5;
      v42 = 2114;
      v43 = v6;
      LODWORD(v23) = 38;
      v22 = &v36;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    array = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = *(v2 + 24);
    v27 = [obj countByEnumeratingWithState:&v59 objects:v58 count:16];
    if (v27)
    {
      v28 = v2;
      v26 = *v60;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v59 + 1) + 8 * i);
          memset(v57, 0, sizeof(v57));
          inputs = [v8 inputs];
          v9 = [inputs countByEnumeratingWithState:v57 objects:v56 count:16];
          if (!v9)
          {
            goto LABEL_37;
          }

          v10 = v9;
          v11 = 1;
          do
          {
            v12 = 0;
            v29 = v10;
            do
            {
              OUTLINED_FUNCTION_49_7();
              if (!v13)
              {
                objc_enumerationMutation(inputs);
              }

              v14 = *(*(&v57[0] + 1) + 8 * v12);
              v15 = [v14 liveFormat] == 0;
              if ([v8 isActive])
              {
                OUTLINED_FUNCTION_62();
                v16 = OUTLINED_FUNCTION_37_15();
                v17 = v64;
                if (os_log_type_enabled(v16, v63))
                {
                  v18 = v17;
                }

                else
                {
                  v18 = v17 & 0xFFFFFFFE;
                }

                if (v18)
                {
                  v34 = *(v28 + 248);
                  v35 = *(v28 + 240);
                  nodeSubType = [v8 nodeSubType];
                  name = [v8 name];
                  currentStateDebugString = [v8 currentStateDebugString];
                  v19 = gr_logStringForInput(v14);
                  liveFormat = [v14 liveFormat];
                  v36 = 136317442;
                  v21 = "live";
                  if (!liveFormat)
                  {
                    v21 = "EOD";
                  }

                  v37 = "[BWGraph _collectActiveSinkNodesAfterGraphStopTimeout]";
                  v38 = 2048;
                  v39 = v28;
                  v40 = 1026;
                  v41 = v34;
                  v42 = 2114;
                  v43 = v35;
                  v44 = 2048;
                  v45 = v8;
                  v46 = 2112;
                  v47 = nodeSubType;
                  v48 = 2114;
                  v49 = name;
                  v50 = 2114;
                  v51 = currentStateDebugString;
                  v52 = 2114;
                  v53 = v19;
                  v54 = 2080;
                  v55 = v21;
                  LODWORD(v23) = 98;
                  v22 = &v36;
                  OUTLINED_FUNCTION_13();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_1_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v10 = v29;
              }

              v11 &= v15;
              ++v12;
            }

            while (v10 != v12);
            v10 = [inputs countByEnumeratingWithState:v57 objects:v56 count:16];
          }

          while (v10);
          if (v11)
          {
LABEL_37:
            if ([v8 isActive])
            {
              [array addObject:v8];
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v59 objects:v58 count:16];
      }

      while (v27);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)statePropertyListForNodes:(uint64_t)nodes verbose:
{
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = OUTLINED_FUNCTION_37(array, v6, &v17, v16);
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 osStatePropertyListWithVerbose:nodes];
        if (!v12)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error getting node state for node '%@'", v11];
        }

        v13 = [array addObject:v12];
      }

      v8 = OUTLINED_FUNCTION_37(v13, v14, &v17, v16);
    }

    while (v8);
  }

  return array;
}

- (uint64_t)start:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v7 = *a2;
  v8 = OUTLINED_FUNCTION_34_21();
  if (v8)
  {
    v9 = v8;
    v10 = **(a1 + 16);
    do
    {
      v11 = 0;
      do
      {
        if (**(a1 + 16) != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BWGraph *)a4 _prepareNode:?];
      }

      while (v9 != v11);
      v9 = OUTLINED_FUNCTION_34_21();
    }

    while (v9);
  }

  [objc_msgSend(a4 "statusDelegate")];
  [(BWGraph *)a4 _resumeInputConnectionsForNodes:0 eventsOnly:?];
  return [(BWGraph *)a4 _setMemoryPoolFlushAssertion];
}

- (BWGraphLiveExtension)createAndBeginLiveExtension
{
  v6 = [BWGraphLiveExtension alloc];
  if (v6)
  {
    v7 = *(self + 128);
    v9.receiver = v6;
    v9.super_class = BWGraphLiveExtension;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    if (v6)
    {
      v6->_configurationID = v7;
    }
  }

  *a2 = v6;
  result = v6;
  *a3 = result;
  return result;
}

uint64_t __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6_cold_1(void *a1, uint64_t *a2, void *a3)
{
  [a1 waitUntilEndOfConfigurationHandled];
  [(BWGraph *)*a2 _prepareNode:a1];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [BWGraph _populateOutputsWithSharedPools:outputsWithSharedPoolsForAttachedMedia:forNode:];
  gr_propagatePreparedPoolsToSharedPoolOutputs(v6, v7);
  v8 = *a2;
  *a3 = a1;
  return -[BWGraph _resumeInputConnectionsForNodes:eventsOnly:](v8, [MEMORY[0x1E695DEC8] arrayWithObjects:a3 count:1], 0);
}

uint64_t __49__BWGraph__prepareNodesWithConfigurationChanges___block_invoke_6_cold_2(uint64_t *a1, void *a2)
{
  [(BWGraph *)*a1 _prepareNode:a2];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [BWGraph _populateOutputsWithSharedPools:outputsWithSharedPoolsForAttachedMedia:forNode:];
  return gr_propagatePreparedPoolsToSharedPoolOutputs(v2, v3);
}

@end