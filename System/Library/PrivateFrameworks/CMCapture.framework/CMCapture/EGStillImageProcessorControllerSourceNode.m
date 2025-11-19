@interface EGStillImageProcessorControllerSourceNode
+ (int)enqueueProcessorControllersToGraph:(id)a3 fromResourceCoordinator:(id)a4;
- (EGStillImageProcessorControllerSourceNode)initWithType:(unint64_t)a3;
- (int)enqueueProcessorControllerFromResourceCoordinator:(id)a3;
- (uint64_t)_emitProcessorController:(uint64_t)result forType:(uint64_t)a2;
- (void)dealloc;
@end

@implementation EGStillImageProcessorControllerSourceNode

- (EGStillImageProcessorControllerSourceNode)initWithType:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@PCSource", BWStillImageProcessorTypeToShortString(a3)];
  v10.receiver = self;
  v10.super_class = EGStillImageProcessorControllerSourceNode;
  v6 = [(EGNode *)&v10 initWithName:v5];
  v7 = v6;
  if (v6)
  {
    v6->_processorType = a3;
    v8 = [(EGOutput *)[EGStillImageOutput alloc] initWithName:@"ProcessorController"];
    v7->_processorControllerOutput = v8;
    [(EGNode *)v7 installOutput:v8];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageProcessorControllerSourceNode;
  [(EGNode *)&v3 dealloc];
}

uint64_t __95__EGStillImageProcessorControllerSourceNode_enqueueProcessorControllerFromResourceCoordinator___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [EGStillImageProcessorControllerSourceNode _emitProcessorController:a2 forType:?];
  if (result)
  {
    v4 = EGStillImageGraphManagerForGraphElement(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v5, "-[EGStillImageProcessorControllerSourceNode enqueueProcessorControllerFromResourceCoordinator:]_block_invoke"];
    v7 = *(a1 + 32);

    return [v4 didEncounterError:v5 description:v6 element:v7];
  }

  return result;
}

- (int)enqueueProcessorControllerFromResourceCoordinator:(id)a3
{
  v5 = [a3 postponedProcessorTypes];
  v6 = [v5 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", self->_processorType)}];
  processorType = self->_processorType;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__EGStillImageProcessorControllerSourceNode_enqueueProcessorControllerFromResourceCoordinator___block_invoke;
    v10[3] = &unk_1E799B5A8;
    v10[4] = self;
    v11 = 0;
    [a3 postponedProcessorForType:processorType safelyExecuteBlockWhenReady:v10];
    return 0;
  }

  else
  {
    v9 = [a3 controllerForType:processorType];
    if (v9)
    {

      return [EGStillImageProcessorControllerSourceNode _emitProcessorController:v9 forType:?];
    }

    else
    {
      return -12780;
    }
  }
}

- (uint64_t)_emitProcessorController:(uint64_t)result forType:(uint64_t)a2
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      v3 = [[EGStillImageGraphPayload alloc] initWithProcessorController:a2];
      [*(v2 + 80) emitPayload:v3];

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

+ (int)enqueueProcessorControllersToGraph:(id)a3 fromResourceCoordinator:(id)a4
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [objc_msgSend(a3 "egNodesByName")];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v13) = [v12 enqueueProcessorControllerFromResourceCoordinator:a4];
        if (v13)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [objc_msgSend(a3 "egSubgraphsByName")];
    v13 = [v14 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v21;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        LODWORD(v13) = [a1 enqueueProcessorControllersToGraph:*(*(&v20 + 1) + 8 * v17) fromResourceCoordinator:a4];
        if (v13)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v13 = [v14 countByEnumeratingWithState:&v20 objects:v19 count:16];
          v15 = v13;
          if (v13)
          {
            goto LABEL_12;
          }

          return v13;
        }
      }
    }
  }

  return v13;
}

@end