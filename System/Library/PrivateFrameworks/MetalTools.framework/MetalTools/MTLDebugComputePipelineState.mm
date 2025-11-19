@interface MTLDebugComputePipelineState
- (BOOL)isAncestorOf:(id)a3;
- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 parent:(id)a4 mtl4Descriptor:(id)a5;
- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 descriptor:(id)a6;
- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 mtl4Descriptor:(id)a6;
- (id)formattedDescription:(unint64_t)a3;
- (id)functionHandleToDebugFunctionHandle:(id)a3;
- (id)functionHandleToDebugFunctionHandle:(id)a3 binaryFunction:(id)a4;
- (id)functionHandleToDebugFunctionHandle:(id)a3 parentFunction:(id)a4;
- (id)functionHandleWithBinaryFunction:(id)a3;
- (id)functionHandleWithFunction:(id)a3;
- (id)functionHandleWithName:(id)a3;
- (id)getParameter:(id)a3;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5;
- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (int64_t)shaderValidation;
- (int64_t)shaderValidationState;
- (void)dealloc;
- (void)initCommon;
- (void)validateHandleForSetFunction:(id)a3;
@end

@implementation MTLDebugComputePipelineState

- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 parent:(id)a4 mtl4Descriptor:(id)a5
{
  v9.receiver = self;
  v9.super_class = MTLDebugComputePipelineState;
  v7 = [(MTLToolsObject *)&v9 initWithBaseObject:a3 parent:a4];
  if (v7)
  {
    v7->_mtl4Descriptor = [a5 copy];
    v7->_validationReflection = [a3 reflection];
    [(MTLDebugComputePipelineState *)v7 initCommon];
  }

  return v7;
}

- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 mtl4Descriptor:(id)a6
{
  v10.receiver = self;
  v10.super_class = MTLDebugComputePipelineState;
  v8 = [(MTLToolsObject *)&v10 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    v8->_mtl4Descriptor = [a6 copy];
    v8->_validationReflection = a4;
    [(MTLDebugComputePipelineState *)v8 initCommon];
  }

  return v8;
}

- (MTLDebugComputePipelineState)initWithComputePipelineState:(id)a3 reflection:(id)a4 parent:(id)a5 descriptor:(id)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugComputePipelineState;
  v8 = [(MTLToolsObject *)&v11 initWithBaseObject:a3 parent:a5];
  if (v8)
  {
    v9 = [a6 copy];
    v8->_descriptor = v9;
    [(MTLComputePipelineDescriptor *)v9 setBinaryArchives:0];
    [(MTLComputePipelineDescriptor *)v8->_descriptor setPreloadedLibraries:MEMORY[0x277CBEBF8]];
    v8->_function = [a6 computeFunction];
    v8->_validationReflection = a4;
    [(MTLDebugComputePipelineState *)v8 initCommon];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugComputePipelineState;
  [(MTLToolsComputePipelineState *)&v3 dealloc];
}

- (void)initCommon
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MTLComputePipelineReflection *)self->_validationReflection builtInArguments];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 builtInDataType];
        v10 = 1;
        if (v9 > 40)
        {
          if (v9 == 41)
          {
            v11 = 1;
          }

          else
          {
            if (v9 != 42)
            {
              v11 = 1;
              v12 = 1;
              if (v9 != 43)
              {
                goto LABEL_21;
              }

              v10 = 0xFFFFLL;
            }

            v11 = 0xFFFFLL;
          }

          v12 = 0xFFFFLL;
        }

        else
        {
          if (v9 == 33)
          {
            v11 = 1;
          }

          else
          {
            if (v9 != 34)
            {
              v11 = 1;
              v12 = 1;
              if (v9 != 35)
              {
                goto LABEL_21;
              }

              v10 = 0xFFFFFFFFLL;
            }

            v11 = 0xFFFFFFFFLL;
          }

          v12 = 0xFFFFFFFFLL;
        }

LABEL_21:
        v13 = [v8 builtInType];
        if (v13 <= 7)
        {
          switch(v13)
          {
            case 5:
              v14 = 48;
              break;
            case 6:
              v14 = 72;
              break;
            case 7:
              v14 = 96;
              break;
            default:
              continue;
          }
        }

        else if (v13 > 9)
        {
          if (v13 == 10)
          {
            v14 = 168;
          }

          else
          {
            if (v13 != 11)
            {
              continue;
            }

            v14 = 192;
          }
        }

        else
        {
          if (v13 == 8)
          {
            self->_maxThreadIndexInThreadgroup[0] = v12;
            continue;
          }

          v14 = 144;
        }

        v15 = (self + v14);
        *v15 = v12;
        v15[1] = v11;
        v15[2] = v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLDebugComputePipelineState;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v4, sel_description), -[MTLComputePipelineDescriptor formattedDescription:](self->_descriptor, "formattedDescription:", a3 + 4)];
}

- (id)getParameter:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 getParameter:a3];
}

- (id)functionHandleToDebugFunctionHandle:(id)a3 parentFunction:(id)a4
{
  v7 = *([a4 device] + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle_parentFunction___block_invoke;
  v9[3] = &unk_2787B4A20;
  v9[4] = a3;
  v9[5] = self;
  v9[6] = a4;
  return [v7 getCachedObjectForKey:a3 onMiss:v9];
}

uint64_t __83__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle_parentFunction___block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 function:v5 stage:1];
}

- (id)functionHandleWithFunction:(id)a3
{
  if (a3)
  {
    if (([a3 conformsToProtocol:&unk_2842379F0] & 1) == 0)
    {
      [MTLDebugComputePipelineState functionHandleWithFunction:];
    }
  }

  else
  {
    [MTLDebugComputePipelineState functionHandleWithFunction:];
  }

  v5 = [-[MTLToolsObject baseObject](self "baseObject")];

  return [(MTLDebugComputePipelineState *)self functionHandleToDebugFunctionHandle:v5 parentFunction:a3];
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_mtl4Descriptor)
  {
    if (([(MTL4ComputePipelineDescriptor *)[(MTLDebugComputePipelineState *)self mtl4Descriptor] supportBinaryLinking]& 1) == 0)
    {
      [MTLDebugComputePipelineState newComputePipelineStateWithAdditionalBinaryFunctions:error:];
    }
  }

  else if (![(MTLComputePipelineDescriptor *)[(MTLDebugComputePipelineState *)self descriptor] supportAddingBinaryFunctions])
  {
    [MTLDebugComputePipelineState newComputePipelineStateWithAdditionalBinaryFunctions:error:];
  }

  v7 = [(MTLToolsComputePipelineState *)self device];
  if (a3 && (v8 = v7, [a3 count]))
  {
    if (([-[MTLDevice baseObject](v8 "baseObject")] & 1) == 0)
    {
      [MTLDebugComputePipelineState newComputePipelineStateWithAdditionalBinaryFunctions:error:];
    }

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = [*(*(&v22 + 1) + 8 * i) baseObject];
          [v9 addObject:v14];
          if (![v14 precompiledOutput])
          {
            [MTLDebugComputePipelineState newComputePipelineStateWithAdditionalBinaryFunctions:v14 error:?];
          }
        }

        v11 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = 0;
  if (!a4)
  {
    a4 = &v21;
  }

  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v21)
  {
    if (v15)
    {
      goto LABEL_25;
    }

LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

  [MTLDebugComputePipelineState newComputePipelineStateWithAdditionalBinaryFunctions:error:];
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (self->_mtl4Descriptor)
  {
    v16 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v15 reflection:self->_validationReflection parent:self mtl4Descriptor:self->_mtl4Descriptor];
  }

  else
  {
    v17 = [(MTLComputePipelineDescriptor *)self->_descriptor copy];
    v18 = objc_alloc_init(MEMORY[0x277CD6EB8]);
    [v18 setBinaryFunctions:a3];
    [v17 setLinkedFunctions:v18];

    v16 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v15 reflection:self->_validationReflection parent:self descriptor:v17];
  }

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  if ([-[MTLDevice baseObject](-[MTLToolsComputePipelineState device](self "device")])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:
    [MTLDebugComputePipelineState newVisibleFunctionTableWithDescriptor:];
    goto LABEL_5;
  }

  [MTLDebugComputePipelineState newVisibleFunctionTableWithDescriptor:];
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugComputePipelineState newVisibleFunctionTableWithDescriptor:];
  }

LABEL_5:
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugVisibleFunctionTable alloc] initWithVisibleFunctionTable:result parent:self descriptor:a3 pipelineState:self stage:1];

    return v7;
  }

  return result;
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugComputePipelineState newIntersectionFunctionTableWithDescriptor:];
    }
  }

  else
  {
    [MTLDebugComputePipelineState newIntersectionFunctionTableWithDescriptor:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLDebugIntersectionFunctionTable alloc] initWithIntersectionFunctionTable:result parent:self descriptor:a3 pipelineState:self stage:1];

    return v7;
  }

  return result;
}

- (BOOL)isAncestorOf:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v5 = a3;
  while (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v6 = [v3 parent];

    v3 = v6;
    if (v6 == self)
    {
      v7 = 1;
      v3 = v6;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)validateHandleForSetFunction:(id)a3
{
  v5 = [a3 parent];
  if (([v5 isAncestorOf:self] & 1) == 0 && !-[MTLDebugComputePipelineState isAncestorOf:](self, "isAncestorOf:", v5))
  {
    [MTLDebugComputePipelineState validateHandleForSetFunction:a3];
  }
}

- (int64_t)shaderValidation
{
  v2 = [(MTLToolsObject *)self baseObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 2;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v2 = [v2 baseObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 2;
    }
  }

  return [v2 shaderValidation];
}

- (int64_t)shaderValidationState
{
  v2 = [(MTLToolsObject *)self baseObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 2;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v2 = [v2 baseObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 2;
    }
  }

  return [v2 shaderValidationState];
}

- (id)functionHandleToDebugFunctionHandle:(id)a3
{
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle___block_invoke;
  v5[3] = &unk_2787B49F8;
  v5[4] = a3;
  v5[5] = self;
  return [(MTLToolsObjectCache *)functionHandleObjectCache getCachedObjectForKey:a3 onMiss:v5];
}

uint64_t __68__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle___block_invoke(uint64_t a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 stage:1];
}

- (id)functionHandleToDebugFunctionHandle:(id)a3 binaryFunction:(id)a4
{
  functionHandleObjectCache = self->super.super._device->functionHandleObjectCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle_binaryFunction___block_invoke;
  v6[3] = &unk_2787B4A20;
  v6[4] = a3;
  v6[5] = self;
  v6[6] = a4;
  return [(MTLToolsObjectCache *)functionHandleObjectCache getCachedObjectForKey:a3 onMiss:v6];
}

uint64_t __83__MTLDebugComputePipelineState_functionHandleToDebugFunctionHandle_binaryFunction___block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 binaryFunction:v5 stage:1];
}

- (id)functionHandleWithBinaryFunction:(id)a3
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [(MTLDebugComputePipelineState *)self functionHandleToDebugFunctionHandle:v7 binaryFunction:a3];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v8;
}

- (id)functionHandleWithName:(id)a3
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6 = objc_autoreleasePoolPush();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [(MTLDebugComputePipelineState *)self functionHandleToDebugFunctionHandle:v7];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v8;
}

- (id)newComputePipelineStateWithBinaryFunctions:(id)a3 error:(id *)a4
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 count])
  {
    v8 = 0;
    do
    {
      [a3 objectAtIndexedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v8;
        _MTLMessageContextPush_();
      }

      ++v8;
    }

    while (v8 < [a3 count]);
  }

  _MTLMessageContextEnd();
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  if ([a3 count])
  {
    v11 = 0;
    do
    {
      [v10 addObject:{objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", v11++), "baseObject")}];
    }

    while (v11 < [a3 count]);
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    mtl4Descriptor = self->_mtl4Descriptor;
    v15 = [MTLDebugComputePipelineState alloc];
    validationReflection = self->_validationReflection;
    if (mtl4Descriptor)
    {
      v17 = [(MTLDebugComputePipelineState *)v15 initWithComputePipelineState:v13 reflection:validationReflection parent:self mtl4Descriptor:self->_mtl4Descriptor];
    }

    else
    {
      v17 = [(MTLDebugComputePipelineState *)v15 initWithComputePipelineState:v13 reflection:validationReflection parent:self descriptor:self->_descriptor];
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v18;
}

- (id)newComputePipelineStateWithAdditionalBinaryFunctions:(id)a3 resourceIndices:(unint64_t *)a4 error:(id *)a5
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (self->_mtl4Descriptor)
  {
    if (([(MTL4ComputePipelineDescriptor *)[(MTLDebugComputePipelineState *)self mtl4Descriptor] supportBinaryLinking]& 1) == 0)
    {
LABEL_21:
      _MTLMessageContextPush_();
      if (a3)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if (![(MTLComputePipelineDescriptor *)[(MTLDebugComputePipelineState *)self descriptor] supportAddingBinaryFunctions])
  {
    goto LABEL_21;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_22:
  _MTLMessageContextPush_();
LABEL_6:
  if ([a3 count])
  {
    v10 = 0;
    do
    {
      [a3 objectAtIndexedSubscript:v10];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v10;
        _MTLMessageContextPush_();
      }

      ++v10;
    }

    while (v10 < [a3 count]);
  }

  _MTLMessageContextEnd();
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  if ([a3 count])
  {
    v13 = 0;
    do
    {
      [v12 addObject:{objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", v13++), "baseObject")}];
    }

    while (v13 < [a3 count]);
  }

  v14 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v14)
  {
    v15 = v14;
    mtl4Descriptor = self->_mtl4Descriptor;
    v17 = [MTLDebugComputePipelineState alloc];
    validationReflection = self->_validationReflection;
    if (mtl4Descriptor)
    {
      v19 = [(MTLDebugComputePipelineState *)v17 initWithComputePipelineState:v15 reflection:validationReflection parent:self mtl4Descriptor:self->_mtl4Descriptor];
    }

    else
    {
      v19 = [(MTLDebugComputePipelineState *)v17 initWithComputePipelineState:v15 reflection:validationReflection parent:self descriptor:self->_descriptor];
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v20;
}

@end