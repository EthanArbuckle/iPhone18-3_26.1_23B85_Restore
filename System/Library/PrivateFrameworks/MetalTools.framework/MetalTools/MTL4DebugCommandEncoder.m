@interface MTL4DebugCommandEncoder
- (MTL4DebugCommandEncoder)initWithBaseObject:(id)a3 device:(id)a4 commandBuffer:(id)a5 encoderStageMask:(unint64_t)a6;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)endEncodingPreamble;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)validateFunctionArguments:(_MTLMessageContext *)a3 stage:(id)a4 functionName:(id)a5 argumentTable:(id)a6 boundThreadgroupMemoryArguments:(MTLDebugFunctionArgument *)a7 bindings:(id)a8 allowNullBufferBindings:(BOOL)a9;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
@end

@implementation MTL4DebugCommandEncoder

- (MTL4DebugCommandEncoder)initWithBaseObject:(id)a3 device:(id)a4 commandBuffer:(id)a5 encoderStageMask:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MTL4DebugCommandEncoder;
  result = [(MTL4DebugCommandEncoder *)&v11 init];
  if (result)
  {
    result->_baseObject = a3;
    result->_device = a4;
    result->_commandBuffer = a5;
    result->_encoderStageMask = a6;
    *&result->_encoderState &= 0xFCu;
  }

  return result;
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (a3 <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (a5 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self setCanEndEncoding:1, 0, 0, 0, 0, 0, 0, 0];
  [self->_baseObject barrierAfterQueueStages:a3 beforeStages:a4 visibilityOptions:a5];
}

- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (a3 <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 <= 0)
  {
    _MTLMessageContextPush_();
  }

  if (a5 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self setCanEndEncoding:1, 0, 0, 0, 0, 0, 0, 0];
  [self->_baseObject barrierAfterStages:a3 beforeQueueStages:a4 visibilityOptions:a5];
}

- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (a3 && (encoderStageMask = self->_encoderStageMask, (encoderStageMask & a3) == a3))
  {
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    encoderStageMask = self->_encoderStageMask;
    if (a4)
    {
LABEL_4:
      if ((encoderStageMask & a4) == a4)
      {
        goto LABEL_5;
      }
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  if (a5 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject barrierAfterEncoderStages:a3 beforeEncoderStages:a4 visibilityOptions:{a5, 0, 0, 0, 0, 0, 0, 0}];
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (a4 && (self->_encoderStageMask & a4) == a4)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_4;
    }
  }

  _MTLMessageContextPush_();
LABEL_4:
  if (([a3 conformsToProtocol:{&unk_284220438, 0, 0, 0, 0, 0, 0, 0}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject updateFence:objc_msgSend(a3 afterEncoderStages:{"baseObject"), a4}];
}

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  device = self->_device;
  _MTLMessageContextBegin_();
  if (a4 && (self->_encoderStageMask & a4) == a4)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_4;
    }
  }

  _MTLMessageContextPush_();
LABEL_4:
  if (([a3 conformsToProtocol:{&unk_284220438, 0, 0, 0, 0, 0, 0, 0}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_baseObject waitForFence:objc_msgSend(a3 beforeEncoderStages:{"baseObject"), a4}];
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

- (void)validateFunctionArguments:(_MTLMessageContext *)a3 stage:(id)a4 functionName:(id)a5 argumentTable:(id)a6 boundThreadgroupMemoryArguments:(MTLDebugFunctionArgument *)a7 bindings:(id)a8 allowNullBufferBindings:(BOOL)a9
{
  v49 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = [a8 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(a8);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        if (![v15 isUsed])
        {
          goto LABEL_51;
        }

        v16 = [v15 type];
        v17 = [v15 index];
        v18 = [v15 name];
        if (v16 > 2)
        {
          if ((v16 - 24) >= 4)
          {
            if (v16 == 3)
            {
              v30 = [a6 samplerBindingAtIndex:v17];
              if (v30)
              {
                if (*v30)
                {
                  goto LABEL_51;
                }

                v36 = v17;
                v37 = v18;
                v34 = a4;
                v35 = a5;
              }

              else
              {
                if (a6)
                {
                  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu sampler bindings", objc_msgSend(a6, "samplerBindingCount")];
                }

                else
                {
                  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", a4];
                }

                v37 = v18;
                v38 = v31;
                v35 = a5;
                v36 = v17;
                v34 = a4;
              }

              goto LABEL_50;
            }

            if (v16 != 37)
            {
              goto LABEL_51;
            }
          }

LABEL_27:
          v25 = [a6 bufferBindingAtIndex:v17];
          if (!v25)
          {
            if (a6)
            {
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu buffer bindings", objc_msgSend(a6, "bufferBindingCount")];
            }

            else
            {
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", a4];
            }

            v38 = v18;
            v39 = v27;
            v36 = MTLArgumentTypeToString(v16);
            v37 = v17;
            v34 = a4;
            v35 = a5;
            goto LABEL_50;
          }

          v26 = *v25;
          if (*v25 == 2)
          {
            if ((v16 - 24) >= 4 && v16 != 37)
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
              v37 = v17;
              v38 = v18;
              v35 = a5;
              v36 = MTLArgumentTypeToString(v16);
              v34 = a4;
LABEL_50:
              _MTLMessageContextPush_();
              goto LABEL_51;
            }

            if (v16)
            {
              goto LABEL_44;
            }

            if ((!a9 & *(v25 + 4)) == 1)
            {
              v37 = v17;
              v38 = v18;
              v35 = a5;
              v36 = MTLArgumentTypeToString(0);
              v34 = a4;
              goto LABEL_50;
            }
          }

          goto LABEL_51;
        }

        if (!v16)
        {
          goto LABEL_27;
        }

        if (v16 != 1)
        {
          if (v16 != 2)
          {
            goto LABEL_51;
          }

          v19 = [v15 arrayLength];
          if (!v19)
          {
            goto LABEL_51;
          }

          v20 = v19;
          v21 = 1;
          while (2)
          {
            v22 = [a6 textureBindingAtIndex:{v17, v34}];
            if (v22)
            {
              if (!*v22)
              {
                v36 = v17;
                v37 = v18;
                v34 = a4;
                v35 = a5;
                goto LABEL_24;
              }
            }

            else
            {
              if (a6)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Argument table only supports %lu texture bindings", objc_msgSend(a6, "textureBindingCount")];
              }

              else
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"No argument table set for %@ stage", a4];
              }

              v37 = v18;
              v38 = v23;
              v35 = a5;
              v36 = v17;
              v34 = a4;
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
        v28 = &a7[v17];
        if (v28->isValid || (v35 = v17, v36 = v18, v34 = a5, _MTLMessageContextPush_(), v28->isValid))
        {
          if (v28->type != 3)
          {
            v36 = v17;
            v37 = v18;
            v34 = a4;
            v35 = a5;
            _MTLMessageContextPush_();
          }

          threadgroupMemoryLength = v28->threadgroupMemoryLength;
          if (threadgroupMemoryLength < [v15 threadgroupMemoryDataSize])
          {
            v38 = v17;
            v39 = v18;
            v36 = v28->threadgroupMemoryLength;
            v37 = [v15 threadgroupMemoryDataSize];
            v34 = a4;
            v35 = a5;
            _MTLMessageContextPush_();
          }
        }

        v28->hasBeenUsed = 1;
LABEL_51:
        ++v14;
      }

      while (v14 != v12);
      v32 = [a8 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v12 = v32;
    }

    while (v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

@end