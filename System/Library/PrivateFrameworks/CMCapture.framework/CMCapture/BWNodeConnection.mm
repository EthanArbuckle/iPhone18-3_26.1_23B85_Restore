@interface BWNodeConnection
- (BOOL)attach;
- (BOOL)deferredAttach;
- (BOOL)detach;
- (BOOL)resolveCommonBufferFormat;
- (BWNodeConnection)initWithOutput:(id)output input:(id)input pipelineStage:(id)stage;
- (NSString)description;
- (OS_dispatch_queue)messageDispatchQueue;
- (id)_messageDispatchQueueOfNodeOutput:(uint64_t)output;
- (uint64_t)_messageShouldBeConsumed:(uint64_t)result;
- (uint64_t)_resolveCommonVideoBufferFormatForAttachedMediaKey:(uint64_t)result;
- (void)attachNow;
- (void)connectBypassInput;
- (void)consumeMessage:(id)message fromOutput:(id)output;
- (void)dealloc;
- (void)discardMessagesBeforeLiveConfigurationID:(int64_t)d;
- (void)resumeForEventsOnly:(BOOL)only;
- (void)suspendWithMessageCachingAllowed:(BOOL)allowed overrideCachingEnabled:(BOOL)enabled bypassed:(BOOL)bypassed afterHandlingMessageWithType:(int)type;
@end

@implementation BWNodeConnection

- (BOOL)attach
{
  if ([(BWNodeOutput *)self->_output consumer])
  {
    v17 = MEMORY[0x1E696AEC0];
    output = self->_output;
    input = [output consumer];
    v15 = @"output %@ already has a consumer %@";
LABEL_22:
    v14 = v17;
LABEL_19:
    v16 = [v14 stringWithFormat:v15, output, input, pipelineStage, v21, v22];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  if ([(BWNodeInput *)self->_input connection])
  {
    v17 = MEMORY[0x1E696AEC0];
    output = self->_input;
    input = [output connection];
    v15 = @"input %@ already has a connection %@";
    goto LABEL_22;
  }

  [(BWNodeOutput *)self->_output setConsumer:self];
  [(BWNodeInput *)self->_input setConnection:self];
  if (self->_pipelineStage)
  {
    node = [(BWNodeInput *)self->_input node];
    if (node)
    {
      v4 = node;
      if (![(BWNode *)node supportsConcurrentLiveInputCallbacks])
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        inputs = [(BWNode *)v4 inputs];
        v6 = [(NSArray *)inputs countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v25;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(inputs);
              }

              v10 = *(*(&v24 + 1) + 8 * i);
              if (v10 != self->_input)
              {
                connection = [*(*(&v24 + 1) + 8 * i) connection];
                if (connection)
                {
                  v12 = *(connection + 32);
                  if (v12)
                  {
                    if (([*(connection + 32) isEqual:self->_pipelineStage] & 1) == 0)
                    {
                      v14 = MEMORY[0x1E696AEC0];
                      v21 = v10;
                      v22 = v12;
                      input = self->_input;
                      pipelineStage = self->_pipelineStage;
                      output = self;
                      v15 = @"Attempting to attach connection '%@' to input '%@' with pipeline stage '%@' but node doesn't support concurrent input callbacks (node input '%@' has pipeline stage '%@')";
                      goto LABEL_19;
                    }
                  }
                }
              }
            }

            v7 = [(NSArray *)inputs countByEnumeratingWithState:&v24 objects:v23 count:16];
          }

          while (v7);
        }
      }
    }
  }

  return 1;
}

- (BOOL)resolveCommonBufferFormat
{
  mediaType = [(BWNodeOutput *)self->_output mediaType];
  if (mediaType <= 1885564003)
  {
    if (mediaType != 1667326820 && mediaType != 1835365473 && mediaType != 1836016234)
    {
      goto LABEL_48;
    }

LABEL_10:
    if (![(BWNodeOutput *)self->_output format])
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No format for node output %@, this is required for outputs", self->_output];
LABEL_51:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v27 userInfo:0]);
    }

    [(BWNodeInput *)self->_input setFormat:[(BWNodeOutput *)self->_output format]];
    goto LABEL_12;
  }

  if (mediaType != 1885564004 && mediaType != 1986618469)
  {
    if (mediaType != 1936684398)
    {
LABEL_48:
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid mediatype for node output %@", self->_output];
      goto LABEL_51;
    }

    goto LABEL_10;
  }

  v8 = [(BWNodeConnection *)self _resolveCommonVideoBufferFormatForAttachedMediaKey:?];
  specifiedAttachedMediaKeys = [(BWNodeOutput *)self->_output specifiedAttachedMediaKeys];
  if (v8)
  {
    v10 = specifiedAttachedMediaKeys;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [(NSArray *)specifiedAttachedMediaKeys countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
LABEL_22:
      v14 = 0;
      while (1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v6 = [(BWNodeConnection *)self _resolveCommonVideoBufferFormatForAttachedMediaKey:?];
        if (!v6)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v40 objects:v39 count:16];
          if (v12)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_28:
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      resolvedAttachedMediaKeys = [(BWNodeOutput *)self->_output resolvedAttachedMediaKeys];
      v16 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v35 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
LABEL_30:
        v19 = 0;
        while (1)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(resolvedAttachedMediaKeys);
          }

          v20 = *(*(&v35 + 1) + 8 * v19);
          if (![(NSArray *)v10 containsObject:v20])
          {
            v6 = [(BWNodeConnection *)self _resolveCommonVideoBufferFormatForAttachedMediaKey:v20];
            if (!v6)
            {
              break;
            }
          }

          if (v17 == ++v19)
          {
            v17 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v35 objects:v34 count:16];
            if (v17)
            {
              goto LABEL_30;
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        specifiedAttachedMediaKeys2 = [(BWNodeInput *)self->_input specifiedAttachedMediaKeys];
        v22 = [(NSArray *)specifiedAttachedMediaKeys2 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (!v22)
        {
LABEL_12:
          LOBYTE(v6) = 1;
          return v6;
        }

        v23 = v22;
        v24 = *v31;
LABEL_39:
        v25 = 0;
        while (1)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(specifiedAttachedMediaKeys2);
          }

          v26 = *(*(&v30 + 1) + 8 * v25);
          if (![(NSArray *)v10 containsObject:v26])
          {
            v6 = [(BWNodeConnection *)self _resolveCommonVideoBufferFormatForAttachedMediaKey:v26];
            if (!v6)
            {
              break;
            }
          }

          if (v23 == ++v25)
          {
            v23 = [(NSArray *)specifiedAttachedMediaKeys2 countByEnumeratingWithState:&v30 objects:v29 count:16];
            LOBYTE(v6) = 1;
            if (v23)
            {
              goto LABEL_39;
            }

            return v6;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)connectBypassInput
{
  if (!self->_bypassed)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = @"Can't connect a bypass on a connection that is not marked as bypassed";
    goto LABEL_8;
  }

  node = [(BWNodeInput *)self->_input node];
  if ([(BWNodeOutput *)[(BWNode *)node output] connection][65] == 1)
  {
    do
    {
      node = [(BWNodeInput *)[(BWNodeConnection *)[(BWNodeOutput *)[(BWNode *)node output] connection] input] node];
    }

    while (([(BWNodeOutput *)[(BWNode *)node output] connection][65] & 1) != 0);
  }

  self->_bypassInput = [[(BWNodeInput *)[(BWNodeConnection *)[(BWNodeOutput *)[(BWNode *)node output] connection] input] node] input];
  connection = [(BWNodeOutput *)[(BWNode *)node output] connection];
  self->_bypassConnection = connection;
  if (![(BWNodeConnection *)connection pipelineStage])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = @"Bypassed node's output does not have a pipeline stage";
LABEL_8:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }
}

- (void)attachNow
{
  if (self->_waitingForDeferredAttach)
  {
    block[7] = v2;
    block[8] = v3;
    self->_waitingForDeferredAttach = 0;
    if (self->_waitingForDeferredResume)
    {
      global_queue = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__BWNodeConnection_attachNow__block_invoke;
      block[3] = &unk_1E798F870;
      block[4] = self;
      dispatch_async(global_queue, block);
    }
  }
}

- (BWNodeConnection)initWithOutput:(id)output input:(id)input pipelineStage:(id)stage
{
  if (output && input)
  {
    v11.receiver = self;
    v11.super_class = BWNodeConnection;
    v8 = [(BWNodeConnection *)&v11 init];
    v9 = v8;
    if (v8)
    {
      v8->_input = input;
      v8->_output = output;
      v8->_pipelineStage = stage;
      v9->_suspensionLock._os_unfair_lock_opaque = 0;
      v9->_messagesToPropagate = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeConnection;
  [(BWNodeConnection *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(BWNodeOutput *)self->_output node];
  v5 = objc_opt_class();
  if ([[(BWNodeOutput *)self->_output node] name])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", -[BWNode name](-[BWNodeOutput node](self->_output, "node"), "name")];
  }

  else
  {
    v6 = &stru_1F216A3D0;
  }

  [(BWNodeInput *)self->_input node];
  v7 = objc_opt_class();
  if ([[(BWNodeInput *)self->_input node] name])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", -[BWNode name](-[BWNodeInput node](self->_input, "node"), "name")];
  }

  else
  {
    v8 = &stru_1F216A3D0;
  }

  return [v3 stringWithFormat:@"<%@ %p> [%@%@] --> [%@%@]", v4, self, v5, v6, v7, v8];
}

- (BOOL)deferredAttach
{
  [(BWNodeOutput *)self->_output setConsumer:self];
  [(BWNodeInput *)self->_input setConnection:self];
  self->_waitingForDeferredAttach = 1;
  if (self->_pipelineStage)
  {
    node = [(BWNodeInput *)self->_input node];
    if (node)
    {
      v4 = node;
      if (![(BWNode *)node supportsConcurrentLiveInputCallbacks])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        inputs = [(BWNode *)v4 inputs];
        v6 = [(NSArray *)inputs countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(inputs);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              if (v10 != self->_input)
              {
                connection = [*(*(&v16 + 1) + 8 * i) connection];
                if (connection)
                {
                  v12 = *(connection + 32);
                  if (v12)
                  {
                    if (([*(connection + 32) isEqual:self->_pipelineStage] & 1) == 0)
                    {
                      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to attach connection '%@' to input '%@' with pipeline stage '%@' but node doesn't support concurrent input callbacks (node input '%@' has pipeline stage '%@')", self, self->_input, self->_pipelineStage, v10, v12];
                      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
                    }
                  }
                }
              }
            }

            v7 = [(NSArray *)inputs countByEnumeratingWithState:&v16 objects:v15 count:16];
          }

          while (v7);
        }
      }
    }
  }

  return 1;
}

- (BOOL)detach
{
  [(BWNodeOutput *)self->_output setConsumer:0];
  [(BWNodeInput *)self->_input setConnection:0];
  return 1;
}

- (uint64_t)_resolveCommonVideoBufferFormatForAttachedMediaKey:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v2 = a2;
  v3 = result;
  v4 = [*(result + 16) mediaPropertiesForAttachedMediaKey:a2];
  if (!v4)
  {
    if ([v2 isEqualToString:@"PrimaryFormat"])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output primary format has no requirements BWNodeOutput %p node: %@", *(v3 + 16), objc_msgSend(*(v3 + 16), "node"), v46, v47];
LABEL_51:
      v34 = v33;
      v35 = MEMORY[0x1E695DF30];
      v36 = *MEMORY[0x1E695D930];
      goto LABEL_52;
    }

    v4 = objc_alloc_init(BWNodeOutputMediaProperties);
    [*(v3 + 16) _setMediaProperties:v4 forAttachedMediaKey:v2];
  }

  v5 = [*(v3 + 8) mediaPropertiesForAttachedMediaKey:v2];
  if (v5)
  {
    goto LABEL_8;
  }

  if ([v2 isEqualToString:@"PrimaryFormat"])
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input primary format has no requirements BWNodeInput %p node: %@", *(v3 + 8), objc_msgSend(*(v3 + 8), "node"), v46, v47];
    goto LABEL_51;
  }

  v5 = objc_alloc_init(BWNodeInputMediaProperties);
  [*(v3 + 8) _setMediaProperties:v5 forAttachedMediaKey:v2];
LABEL_8:
  if ([*(v3 + 16) _passthroughModeForAttachedMediaKey:v2])
  {
    resolvedFormat = [(BWNodeOutputMediaProperties *)v4 resolvedFormat];
    if (resolvedFormat)
    {
      v7 = resolvedFormat;
      v8 = v5;
LABEL_11:
      [(BWNodeInputMediaProperties *)v8 setResolvedFormat:v7];
      return 1;
    }

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Passthrough outputs are supposed to have a non-nil format (since its the same as their upstream input's format).  BWNodeOutput %p node: %@ forAttachedMediaKey: %@", *(v3 + 16), objc_msgSend(*(v3 + 16), "node"), v2, v47];
    goto LABEL_51;
  }

  v9 = [objc_msgSend(*(v3 + 16) mediaConfigurationForAttachedMediaKey:{v2), "formatRequirements"}];
  if (!v9)
  {
    if ([v2 isEqualToString:@"PrimaryFormat"])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output requirements for the primary format.  BWNodeOutput %p node: %@", *(v3 + 16), objc_msgSend(*(v3 + 16), "node"), v46, v47];
      goto LABEL_51;
    }

    return 1;
  }

  v10 = v9;
  if ([*(v3 + 8) _passthroughModeForAttachedMediaKey:v2])
  {
    v11 = 0x1E695D000uLL;
    while (1)
    {
      v69 = 0;
      v70 = 0;
      v12 = *(v3 + 8);
      objc_opt_self();
      array = [*(v11 + 3952) array];
      nc_addRequirementsForInputToMutableArray(v12, v2, array, 0, &v70, &v69);
      v14 = [*(v11 + 3952) arrayWithObject:v10];
      [v14 addObjectsFromArray:array];
      formatClass = [v10 formatClass];
      v16 = [formatClass formatByResolvingRequirements:v14 printErrors:v70 == 0];
      if (v16)
      {
        goto LABEL_58;
      }

      v17 = v70;
      if (!v70)
      {
        v44 = *(v3 + 8);
        objc_opt_self();
        array2 = [*(v11 + 3952) array];
        nc_addRequirementsForInputToMutableArray(v44, v2, array2, 1, 0, 0);
        [array2 insertObject:v10 atIndex:0];
        [array2 insertObject:*(v3 + 16) atIndex:0];
        return 0;
      }

      v18 = v69;
      node = [v70 node];
      v62 = v17;
      [objc_msgSend(v17 mediaConfigurationForAttachedMediaKey:{v18), "setPassthroughMode:", 0}];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v56 = node;
      obj = [node outputs];
      v55 = [obj countByEnumeratingWithState:&v82 objects:v81 count:16];
      if (v55)
      {
        v54 = *v83;
        v51 = v4;
        v52 = v3;
        v49 = v5;
        v50 = v2;
        v48 = v10;
        do
        {
          v20 = 0;
          v21 = v62;
          do
          {
            if (*v83 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v57 = v20;
            v22 = *(*(&v82 + 1) + 8 * v20);
            v23 = [v22 attachedMediaKeyDrivenByInputAttachedMediaKey:v18 inputIndex:{objc_msgSend(v21, "index")}];
            if (v23)
            {
              [objc_msgSend(v22 mediaConfigurationForAttachedMediaKey:{v23), "setPassthroughMode:", 0}];
            }

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            inputs = [v56 inputs];
            v60 = [inputs countByEnumeratingWithState:&v77 objects:v76 count:16];
            if (v60)
            {
              v59 = *v78;
              do
              {
                v24 = 0;
                do
                {
                  if (*v78 != v59)
                  {
                    objc_enumerationMutation(inputs);
                  }

                  v61 = v24;
                  v25 = *(*(&v77 + 1) + 8 * v24);
                  if (v25 != v21)
                  {
                    v26 = [MEMORY[0x1E695DF70] arrayWithObject:@"PrimaryFormat"];
                    [v26 addObjectsFromArray:{objc_msgSend(v25, "specifiedAttachedMediaKeys")}];
                    v74 = 0u;
                    v75 = 0u;
                    v72 = 0u;
                    v73 = 0u;
                    v27 = [v26 countByEnumeratingWithState:&v72 objects:v71 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v73;
                      do
                      {
                        for (i = 0; i != v28; ++i)
                        {
                          if (*v73 != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v72 + 1) + 8 * i);
                          if ([v25 _passthroughModeForAttachedMediaKey:v18] && objc_msgSend(v23, "isEqualToString:", objc_msgSend(v22, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", v31, objc_msgSend(v25, "index"))))
                          {
                            v32 = [v21 mediaConfigurationForAttachedMediaKey:v18];
                            if (([v32 conversionToPassthroughModeNeverAllowed] & 1) == 0)
                            {
                              v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input %@[%@] is not marked as passthroughOptional while input %@[%@] is and both drive the same output", objc_msgSend(v62, "name"), v18, v25, v31];
                              goto LABEL_51;
                            }

                            [v32 setPassthroughMode:0];
                            v21 = v62;
                          }
                        }

                        v28 = [v26 countByEnumeratingWithState:&v72 objects:v71 count:16];
                      }

                      while (v28);
                    }
                  }

                  v24 = v61 + 1;
                }

                while (v61 + 1 != v60);
                v60 = [inputs countByEnumeratingWithState:&v77 objects:v76 count:16];
              }

              while (v60);
            }

            v20 = v57 + 1;
          }

          while (v57 + 1 != v55);
          v4 = v51;
          v3 = v52;
          v5 = v49;
          v2 = v50;
          v10 = v48;
          v11 = 0x1E695D000;
          v55 = [obj countByEnumeratingWithState:&v82 objects:v81 count:16];
        }

        while (v55);
      }
    }
  }

  v37 = [objc_msgSend(*(v3 + 8) mediaConfigurationForAttachedMediaKey:{v2), "formatRequirements"}];
  if (v37)
  {
    null = v37;
    formatClass2 = [v10 formatClass];
    v68[0] = v10;
    v68[1] = null;
    v16 = [formatClass2 formatByResolvingRequirements:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v68, 2)}];
    if (!v16)
    {
      v40 = *(v3 + 8);
      v63 = *(v3 + 16);
      v64 = v10;
      v65 = v40;
      goto LABEL_60;
    }

LABEL_58:
    v42 = v16;
    [(BWNodeOutputMediaProperties *)v4 setResolvedFormat:v16];
    v8 = v5;
    v7 = v42;
    goto LABEL_11;
  }

  if ([v2 isEqualToString:@"PrimaryFormat"])
  {
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D930];
    v34 = @"No primary input requirements";
LABEL_52:
    objc_exception_throw([v35 exceptionWithName:v36 reason:v34 userInfo:0]);
  }

  formatClass3 = [v10 formatClass];
  v67 = v10;
  v16 = [formatClass3 formatByResolvingRequirements:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v67, 1)}];
  if (v16)
  {
    goto LABEL_58;
  }

  v43 = *(v3 + 8);
  v63 = *(v3 + 16);
  v64 = v10;
  v65 = v43;
  null = [MEMORY[0x1E695DFB0] null];
LABEL_60:
  v66 = null;
  [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:4];
  return 0;
}

- (OS_dispatch_queue)messageDispatchQueue
{
  pipelineStage = self->_pipelineStage;
  if (pipelineStage)
  {

    return [(BWPipelineStage *)pipelineStage queue];
  }

  else
  {
    messageDispatchQueue = self->_messageDispatchQueue;
    if (self->_allowsSuspensionWithoutPipelineStage && messageDispatchQueue == 0)
    {
      messageDispatchQueue = [(BWNodeConnection *)self _messageDispatchQueueOfNodeOutput:?];
      self->_messageDispatchQueue = messageDispatchQueue;
    }

    v7 = messageDispatchQueue;

    return v7;
  }
}

- (void)suspendWithMessageCachingAllowed:(BOOL)allowed overrideCachingEnabled:(BOOL)enabled bypassed:(BOOL)bypassed afterHandlingMessageWithType:(int)type
{
  allowedCopy = allowed;
  if (self->_allowsSuspensionWithoutPipelineStage)
  {
    if (![(BWNodeConnection *)self messageDispatchQueue])
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Can't suspend a connection without a message queue";
      goto LABEL_14;
    }
  }

  else if (!self->_pipelineStage)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Can't suspend a connection without a pipeline stage";
LABEL_14:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  if (type)
  {
    atomic_store(type, &self->_messageTypeToWaitForBeforeSuspension);
    if (!allowedCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    atomic_store(1u, &self->_suspended);
    if (!allowedCopy)
    {
LABEL_11:
      waitingForDeferredAttach = self->_waitingForDeferredAttach;
      goto LABEL_12;
    }
  }

  waitingForDeferredAttach = 1;
  if (!self->_wantsMessageCachingWhileSuspended && !enabled)
  {
    goto LABEL_11;
  }

LABEL_12:
  self->_messageCachingEnabled = waitingForDeferredAttach;
  self->_bypassed = bypassed;
}

- (void)resumeForEventsOnly:(BOOL)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_suspensionLock);
  atomic_store(0, &self->_messageTypeToWaitForBeforeSuspension);
  explicit = atomic_load_explicit(&self->_suspended, memory_order_acquire);
  resuming = self->_resuming;
  os_unfair_lock_unlock(&self->_suspensionLock);
  if ((explicit & 1) != 0 && !resuming)
  {
    if (self->_bypassed && onlyCopy)
    {
      os_unfair_lock_lock(&self->_suspensionLock);
      self->_resumedForEventsOnly = 1;
      os_unfair_lock_unlock(&self->_suspensionLock);
    }

    if (self->_waitingForDeferredAttach)
    {
      self->_waitingForDeferredResume = 1;
      self->_waitingForDeferredResumeForEventsOnly = onlyCopy;
    }

    else if (!self->_bypassed || !onlyCopy)
    {
      os_unfair_lock_lock(&self->_suspensionLock);
      self->_resumedForEventsOnly = onlyCopy;
      self->_resuming = 1;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__BWNodeConnection_resumeForEventsOnly___block_invoke;
      v11[3] = &unk_1E799B8D8;
      v11[4] = self;
      v12 = onlyCopy;
      pipelineStage = self->_pipelineStage;
      if (pipelineStage)
      {
        [(BWPipelineStage *)pipelineStage sendMessagesToInput:self->_input messageProvider:v11];
      }

      else if (self->_allowsSuspensionWithoutPipelineStage)
      {
        messageDispatchQueue = self->_messageDispatchQueue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __40__BWNodeConnection_resumeForEventsOnly___block_invoke_3;
        v10[3] = &unk_1E79907D8;
        v10[4] = self;
        v10[5] = v11;
        dispatch_async(messageDispatchQueue, v10);
      }

      os_unfair_lock_unlock(&self->_suspensionLock);
    }
  }
}

id __40__BWNodeConnection_resumeForEventsOnly___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 52));
  v2 = *(*(a1 + 32) + 72);
  *(*(a1 + 32) + 72) = 0;
  if (*(a1 + 40) == 1)
  {
    v2 = [v2 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_105)}];
  }

  atomic_store(0, (*(a1 + 32) + 56));
  *(*(a1 + 32) + 65) = 0;
  *(*(a1 + 32) + 64) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 52));
  return v2;
}

void __40__BWNodeConnection_resumeForEventsOnly___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(*(*(a1 + 40) + 16))() mutableCopy];
  v4 = v3;
  while ([v3 count])
  {
    v5 = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    [*(*(a1 + 32) + 8) handleMessage:v5];

    v3 = v4;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)discardMessagesBeforeLiveConfigurationID:(int64_t)d
{
  atomic_store(d, &self->_allowedLiveConfigurationID);
  os_unfair_lock_lock(&self->_suspensionLock);
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if ([(NSMutableArray *)self->_messagesToPropagate count])
  {
    [(BWNodeConnection *)&self->_messagesToPropagate discardMessagesBeforeLiveConfigurationID:indexSet];
  }

  [(NSMutableArray *)self->_messagesToPropagate removeObjectsAtIndexes:indexSet];

  os_unfair_lock_unlock(&self->_suspensionLock);
}

- (void)consumeMessage:(id)message fromOutput:(id)output
{
  if (message)
  {
    [BWNodeConnection consumeMessage:message fromOutput:?];
  }
}

- (id)_messageDispatchQueueOfNodeOutput:(uint64_t)output
{
  if (!output)
  {
    return 0;
  }

  v2 = a2;
  for (i = a2; ; v2 = i)
  {
    v4 = [objc_msgSend(i "node")];
    if (v4)
    {
      break;
    }

    v5 = [objc_msgSend(objc_msgSend(v2 "node")];
    connection = [v5 connection];
    if (!connection)
    {
      return 0;
    }

    v7 = connection;
    if ([connection pipelineStage])
    {
      pipelineStage = [v7 pipelineStage];

      return [pipelineStage queue];
    }

    i = [objc_msgSend(v5 "connection")];
  }

  v8 = v4;

  return v8;
}

- (uint64_t)_messageShouldBeConsumed:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    explicit = atomic_load_explicit((result + 80), memory_order_acquire);
    if (explicit)
    {
      v4 = a2[3];
      if (v4 != 4)
      {
        if (v4 != 3 || [a2 configurationID] < explicit)
        {
          return 0;
        }

        atomic_store(0, (v2 + 80));
      }
    }

    return 1;
  }

  return result;
}

- (unint64_t)discardMessagesBeforeLiveConfigurationID:(void *)a3 .cold.1(id *a1, uint64_t a2, void *a3)
{
  v6 = 0;
  do
  {
    if (!-[BWNodeConnection _messageShouldBeConsumed:](a2, [*a1 objectAtIndexedSubscript:v6]))
    {
      [a3 addIndex:v6];
    }

    ++v6;
    result = [*a1 count];
  }

  while (v6 < result);
  return result;
}

- (void)consumeMessage:(uint64_t)a1 fromOutput:(_DWORD *)a2 .cold.1(uint64_t a1, _DWORD *a2)
{
  if (![(BWNodeConnection *)a1 _messageShouldBeConsumed:a2])
  {
    if (![*(a1 + 16) sourceEmitSemaphore] || a2[2] != 2)
    {
      return;
    }

LABEL_27:
    v10 = [*(a1 + 16) sourceEmitSemaphore];

    nc_handleEmitSemaphoreTrackedDroppedMessage(a2, v10);
    return;
  }

  if ((atomic_load_explicit((a1 + 56), memory_order_acquire) & 1) == 0)
  {
LABEL_13:
    explicit = atomic_load_explicit((a1 + 60), memory_order_acquire);
    if (explicit == [a2 type])
    {
      os_unfair_lock_lock((a1 + 52));
      v6 = atomic_load_explicit((a1 + 60), memory_order_acquire);
      if (v6 == [a2 type])
      {
        atomic_store(0, (a1 + 60));
        atomic_store(1u, (a1 + 56));
      }

      os_unfair_lock_unlock((a1 + 52));
    }

    if (*(a1 + 68) != 1 || a2[2] == 1)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 8);
      if (v7)
      {

        [v7 sendMessage:a2 toInput:v8];
      }

      else
      {
        v9 = *(a1 + 8);

        [v9 handleMessage:{a2, v8}];
      }

      return;
    }

    if (![*(a1 + 16) sourceEmitSemaphore])
    {
      return;
    }

    goto LABEL_27;
  }

  os_unfair_lock_lock((a1 + 52));
  if ((atomic_load_explicit((a1 + 56), memory_order_acquire) & 1) == 0)
  {
    os_unfair_lock_unlock((a1 + 52));
    goto LABEL_13;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(a1 + 72) = v4;
  }

  if (*(a1 + 65) == 1)
  {
    if (a2[3] == 3)
    {
      [v4 addObject:a2];
    }

    else if (a2[2] == 1)
    {
      v11 = *(a1 + 68);
      os_unfair_lock_unlock((a1 + 52));
      if ((v11 & 1) == 0)
      {
        return;
      }

      goto LABEL_40;
    }

    os_unfair_lock_unlock((a1 + 52));
LABEL_40:
    v12 = *(a1 + 40);
    v13 = [v12 output];

    [v12 consumeMessage:a2 fromOutput:v13];
    return;
  }

  if (*(a1 + 67) == 1 || a2[3] == 3)
  {
    [v4 addObject:a2];
  }

  else if ([*(a1 + 16) sourceEmitSemaphore] && a2[2] == 2)
  {
    nc_handleEmitSemaphoreTrackedDroppedMessage(a2, [*(a1 + 16) sourceEmitSemaphore]);
  }

  os_unfair_lock_unlock((a1 + 52));
}

@end