@interface MTL4DebugCommandEncoder
- (MTL4DebugCommandEncoder)initWithBaseObject:(id)object device:(id)device commandBuffer:(id)buffer encoderStageMask:(unint64_t)mask;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options;
- (void)endEncodingPreamble;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)validateFunctionArguments:(_MTLMessageContext *)arguments stage:(id)stage functionName:(id)name argumentTable:(id)table boundThreadgroupMemoryArguments:(MTLDebugFunctionArgument *)memoryArguments bindings:(id)bindings allowNullBufferBindings:(BOOL)bufferBindings;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
@end

@implementation MTL4DebugCommandEncoder

- (MTL4DebugCommandEncoder)initWithBaseObject:(id)object device:(id)device commandBuffer:(id)buffer encoderStageMask:(unint64_t)mask
{
  v11.receiver = self;
  v11.super_class = MTL4DebugCommandEncoder;
  result = [(MTL4DebugCommandEncoder *)&v11 init];
  if (result)
  {
    result->_baseObject = object;
    result->_device = device;
    result->_commandBuffer = buffer;
    result->_encoderStageMask = mask;
    *&result->_encoderState &= 0xFCu;
  }

  return result;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (stages <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (beforeStages <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (options >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self setCanEndEncoding:1, 0, 0, 0, 0, 0, 0, 0];
  [self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages visibilityOptions:options];
}

- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (stages <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (queueStages <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (options >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self setCanEndEncoding:1, 0, 0, 0, 0, 0, 0, 0];
  [self->_baseObject barrierAfterStages:stages beforeQueueStages:queueStages visibilityOptions:options];
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (stages && (encoderStageMask = self->_encoderStageMask, (encoderStageMask & stages) == stages))
  {
    if (encoderStages)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    encoderStageMask = self->_encoderStageMask;
    if (encoderStages)
    {
LABEL_4:
      if ((encoderStageMask & encoderStages) == encoderStages)
      {
        goto LABEL_5;
      }
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  if (options >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject barrierAfterEncoderStages:stages beforeEncoderStages:encoderStages visibilityOptions:{options, 0, 0, 0, 0, 0, 0, 0}];
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (stages && (self->_encoderStageMask & stages) == stages)
  {
    if (fence)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (fence)
    {
      goto LABEL_4;
    }
  }

  _MTLMessageContextPush_();
LABEL_4:
  if (([fence conformsToProtocol:{&unk_284220438, 0, 0, 0, 0, 0, 0, 0}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject updateFence:objc_msgSend(fence afterEncoderStages:{"baseObject"), stages}];
}

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (stages && (self->_encoderStageMask & stages) == stages)
  {
    if (fence)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (fence)
    {
      goto LABEL_4;
    }
  }

  _MTLMessageContextPush_();
LABEL_4:
  if (([fence conformsToProtocol:{&unk_284220438, 0, 0, 0, 0, 0, 0, 0}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject waitForFence:objc_msgSend(fence beforeEncoderStages:{"baseObject"), stages}];
}

- (void)endEncodingPreamble
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if ((*&self->_encoderState & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandBuffer *)self->_commandBuffer onCurrentEncoderEnded:0];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTL4DebugCommandEncoder *)self endEncodingPreamble];
  baseObject = self->_baseObject;

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)validateFunctionArguments:(_MTLMessageContext *)arguments stage:(id)stage functionName:(id)name argumentTable:(id)table boundThreadgroupMemoryArguments:(MTLDebugFunctionArgument *)memoryArguments bindings:(id)bindings allowNullBufferBindings:(BOOL)bufferBindings
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = [bindings countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      v14 = 0;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(bindings);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        if (![v15 isUsed])
        {
          goto LABEL_51;
        }

        type = [v15 type];
        index = [v15 index];
        name = [v15 name];
        if (type > 2)
        {
          if ((type - 24) >= 4)
          {
            if (type == 3)
            {
              v30 = [table samplerBindingAtIndex:index];
              if (v30)
              {
                if (*v30)
                {
                  goto LABEL_51;
                }

                v36 = index;
                threadgroupMemoryDataSize = name;
                stageCopy9 = stage;
                nameCopy9 = name;
              }

              else
              {
                if (table)
                {
                  stage = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu sampler bindings", objc_msgSend(table, "samplerBindingCount")];
                }

                else
                {
                  stage = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", stage];
                }

                threadgroupMemoryDataSize = name;
                v38 = stage;
                nameCopy9 = name;
                v36 = index;
                stageCopy9 = stage;
              }

              goto LABEL_50;
            }

            if (type != 37)
            {
              goto LABEL_51;
            }
          }

LABEL_27:
          v25 = [table bufferBindingAtIndex:index];
          if (!v25)
          {
            if (table)
            {
              stage2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu buffer bindings", objc_msgSend(table, "bufferBindingCount")];
            }

            else
            {
              stage2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", stage];
            }

            v38 = name;
            v39 = stage2;
            v36 = MTLArgumentTypeToString(type);
            threadgroupMemoryDataSize = index;
            stageCopy9 = stage;
            nameCopy9 = name;
            goto LABEL_50;
          }

          v26 = *v25;
          if (*v25 == 2)
          {
            if ((type - 24) >= 4 && type != 37)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v26 != 1)
            {
              if (v26)
              {
                goto LABEL_51;
              }

LABEL_44:
              threadgroupMemoryDataSize = index;
              v38 = name;
              nameCopy9 = name;
              v36 = MTLArgumentTypeToString(type);
              stageCopy9 = stage;
LABEL_50:
              _MTLMessageContextPush_();
              goto LABEL_51;
            }

            if (type)
            {
              goto LABEL_44;
            }

            if ((!bufferBindings & *(v25 + 4)) == 1)
            {
              threadgroupMemoryDataSize = index;
              v38 = name;
              nameCopy9 = name;
              v36 = MTLArgumentTypeToString(0);
              stageCopy9 = stage;
              goto LABEL_50;
            }
          }

          goto LABEL_51;
        }

        if (!type)
        {
          goto LABEL_27;
        }

        if (type != 1)
        {
          if (type != 2)
          {
            goto LABEL_51;
          }

          arrayLength = [v15 arrayLength];
          if (!arrayLength)
          {
            goto LABEL_51;
          }

          v20 = arrayLength;
          v21 = 1;
          while (2)
          {
            v22 = [table textureBindingAtIndex:{index, stageCopy9}];
            if (v22)
            {
              if (!*v22)
              {
                v36 = index;
                threadgroupMemoryDataSize = name;
                stageCopy9 = stage;
                nameCopy9 = name;
                goto LABEL_24;
              }
            }

            else
            {
              if (table)
              {
                stage3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu texture bindings", objc_msgSend(table, "textureBindingCount")];
              }

              else
              {
                stage3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", stage];
              }

              threadgroupMemoryDataSize = name;
              v38 = stage3;
              nameCopy9 = name;
              v36 = index;
              stageCopy9 = stage;
LABEL_24:
              _MTLMessageContextPush_();
            }

            if (v20 <= v21++)
            {
              goto LABEL_51;
            }

            continue;
          }
        }

        [(MTLToolsDevice *)self->_device maxComputeLocalMemorySizes];
        v28 = &memoryArguments[index];
        if (v28->isValid || (nameCopy9 = index, v36 = name, stageCopy9 = name, _MTLMessageContextPush_(), v28->isValid))
        {
          if (v28->type != 3)
          {
            v36 = index;
            threadgroupMemoryDataSize = name;
            stageCopy9 = stage;
            nameCopy9 = name;
            _MTLMessageContextPush_();
          }

          threadgroupMemoryLength = v28->threadgroupMemoryLength;
          if (threadgroupMemoryLength < [v15 threadgroupMemoryDataSize])
          {
            v38 = index;
            v39 = name;
            v36 = v28->threadgroupMemoryLength;
            threadgroupMemoryDataSize = [v15 threadgroupMemoryDataSize];
            stageCopy9 = stage;
            nameCopy9 = name;
            _MTLMessageContextPush_();
          }
        }

        v28->hasBeenUsed = 1;
LABEL_51:
        ++v14;
      }

      while (v14 != v12);
      v32 = [bindings countByEnumeratingWithState:&v44 objects:v48 count:16];
      v12 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end