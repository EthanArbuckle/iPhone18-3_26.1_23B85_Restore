@interface MTL4DebugCompiler
- (BOOL)hasUnspecializedProperties:(id)properties;
- (MTL4DebugCompiler)initWithCompiler:(id)compiler device:(id)device;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newDynamicLibrary:(id)library completionHandler:(id)handler;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newSpecializedMTL4PipelineDescriptor:(id)descriptor descriptor:(id)a4;
- (void)validateDynamicLibrary:(id)library context:(_MTLMessageContext *)context;
@end

@implementation MTL4DebugCompiler

- (MTL4DebugCompiler)initWithCompiler:(id)compiler device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCompiler;
  return [(MTL4ToolsCompiler *)&v5 initWithBaseObject:compiler parent:device];
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor source])
  {
    _MTLMessageContextPush_();
  }

  [descriptor source];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor options])
  {
    [descriptor options];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v27)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [objc_msgSend(descriptor "options")];
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v22 = v11;
              _MTLMessageContextPush_();
            }

            ++v11;
            ++v13;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v10);
      }
    }
  }

  if ([descriptor name])
  {
    [descriptor name];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v15 = objc_autoreleasePoolPush();
  v16 = -[MTLToolsDevice unwrapMTLCompileOptions:](self->super.super._device, "unwrapMTLCompileOptions:", [descriptor options]);
  v17 = [descriptor copy];
  [v17 setOptions:v16];
  v18 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (v18)
  {
    v19 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:v18 parent:self];
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v15);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!library)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v12[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  [(MTL4DebugCompiler *)self validateDynamicLibrary:library context:v12];
  _MTLMessageContextEnd();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:v8 parent:self];

  return v10;
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  memset(&v12, 0, sizeof(v12));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v12);
  _MTLMessageContextEnd();
  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (!baseObject)
  {
    return 0;
  }

  v9 = baseObject;
  v10 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:baseObject parent:self];

  return v10;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_12:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v10);
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v12 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_14:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v12 = objc_autoreleasePoolPush();
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v13);
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options, v18, v19, v20, v21];
  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v15)
  {
    v16 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v15 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v12);
  return v16;
}

- (void)validateDynamicLibrary:(id)library context:(_MTLMessageContext *)context
{
  if (!context->var0)
  {
    if (![(MTLToolsDevice *)self->super.super._device supportsDynamicLibraries])
    {
      _MTLMessageContextPush_();
    }

    if ([library type] != 1)
    {
      _MTLLibraryTypeString();
      _MTLMessageContextPush_();
    }
  }
}

- (BOOL)hasUnspecializedProperties:(id)properties
{
  newRenderPipelineDescriptorForSpecialization = [properties newRenderPipelineDescriptorForSpecialization];
  if (newRenderPipelineDescriptorForSpecialization)
  {
    v4 = newRenderPipelineDescriptorForSpecialization;
    v5 = hasUnspecializedProperties(newRenderPipelineDescriptorForSpecialization);

    LOBYTE(newRenderPipelineDescriptorForSpecialization) = v5;
  }

  return newRenderPipelineDescriptorForSpecialization;
}

- (id)newSpecializedMTL4PipelineDescriptor:(id)descriptor descriptor:(id)a4
{
  newRenderPipelineDescriptorForSpecialization = [descriptor newRenderPipelineDescriptorForSpecialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    specializeMTL4PipelineDescriptor<MTL4RenderPipelineDescriptor>(newRenderPipelineDescriptorForSpecialization, a4);
  }

  return newRenderPipelineDescriptorForSpecialization;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor, 0, 0, 0, 0, 0, 0, 0];
  addReflectionOption(v10);
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v12 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
    if (pipeline)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (([pipeline conformsToProtocol:{&unk_284238D78, 0, 0, 0, 0, 0, 0, 0}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![(MTL4DebugCompiler *)self hasUnspecializedProperties:pipeline])
  {
    _MTLMessageContextPush_();
  }

  v10 = [(MTL4DebugCompiler *)self newSpecializedMTL4PipelineDescriptor:pipeline descriptor:descriptor];
  if (v10)
  {
    v11 = v10;
    validateUnspecializedProperties(self->super.super._device, v10);
  }

  if (!pipeline)
  {
LABEL_14:
    _MTLMessageContextPush_();
  }

LABEL_9:
  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v12);
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v13)
  {
    v14 = v13;
    v15 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v13 parent:self mtl4Descriptor:descriptor];
  }

  else
  {

    return 0;
  }

  return v15;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor functionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_12:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTL4ToolsBinaryFunction *)[MTL4DebugBinaryFunction alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {

    return 0;
  }

  return v14;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor machineLearningFunctionDescriptor])
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v8);
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = v9;
    v11 = [[MTL4DebugMachineLearningPipelineState alloc] initWithMLPipelineState:v9 parent:self descriptor:descriptor];
  }

  else
  {

    return 0;
  }

  return v11;
}

- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor source])
  {
    _MTLMessageContextPush_();
  }

  [descriptor source];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor options])
  {
    [descriptor options];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v27)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [objc_msgSend(descriptor "options")];
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v21 = v11;
              _MTLMessageContextPush_();
            }

            ++v11;
            ++v13;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v10);
      }
    }
  }

  if ([descriptor name])
  {
    [descriptor name];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_24:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v15 = objc_autoreleasePoolPush();
  v16 = -[MTLToolsDevice unwrapMTLCompileOptions:](self->super.super._device, "unwrapMTLCompileOptions:", [descriptor options]);
  v17 = [descriptor copy];
  [v17 setOptions:v16];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__MTL4DebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v22[3] = &unk_2787B4BE0;
  v22[5] = self;
  v22[6] = handler;
  v22[4] = v17;
  v18 = [-[MTLToolsObject baseObject](self "baseObject")];
  objc_autoreleasePoolPop(v15);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __64__MTL4DebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!library)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  [(MTL4DebugCompiler *)self validateDynamicLibrary:library context:v10];
  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __57__MTL4DebugCompiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler
{
  memset(&v10, 0, sizeof(v10));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v10);
  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __64__MTL4DebugCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v10);
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v13[3] = &unk_2787B4C08;
  v13[4] = v11;
  v13[5] = v10;
  v13[7] = descriptor;
  v13[8] = handler;
  v13[6] = self;
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

void __97__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:a2 parent:*(a1 + 48) mtl4Descriptor:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v10);
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v13[3] = &unk_2787B4C30;
  v13[7] = descriptor;
  v13[8] = handler;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = self;
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

void __96__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 48) mtl4Descriptor:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
    v3 = v5;
  }

  else
  {
    v4 = *(a1 + 64);
    (*(*(a1 + 64) + 16))();

    v3 = *(a1 + 40);
  }
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
    if (pipeline)
    {
      goto LABEL_9;
    }

LABEL_11:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if (([pipeline conformsToProtocol:&unk_284238D78] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![(MTL4DebugCompiler *)self hasUnspecializedProperties:pipeline])
  {
    _MTLMessageContextPush_();
  }

  v10 = [(MTL4DebugCompiler *)self newSpecializedMTL4PipelineDescriptor:pipeline descriptor:descriptor];
  if (v10)
  {
    v11 = v10;
    validateUnspecializedProperties(self->super.super._device, v10);
  }

  if (!pipeline)
  {
    goto LABEL_11;
  }

LABEL_9:
  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v12);
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __101__MTL4DebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 40) mtl4Descriptor:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor functionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __91__MTL4DebugCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTL4ToolsBinaryFunction *)[MTL4DebugBinaryFunction alloc] initWithBaseObject:a2 parent:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor machineLearningFunctionDescriptor])
  {
LABEL_6:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v8);
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __85__MTL4DebugCompiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTL4DebugMachineLearningPipelineState alloc] initWithMLPipelineState:a2 parent:*(a1 + 40) descriptor:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v12);
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __122__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v17[3] = &unk_2787B4CD0;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v14;
  v17[7] = self;
  v17[8] = descriptor;
  v17[9] = handler;
  return [baseObject newComputePipelineStateWithDescriptor:v12 dynamicLinkingDescriptor:v13 compilerTaskOptions:v14 completionHandler:v17];
}

void __122__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:a2 parent:*(a1 + 56) mtl4Descriptor:*(a1 + 64)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v12);
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __121__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v17[3] = &unk_2787B4CF8;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v14;
  v17[7] = self;
  v17[8] = descriptor;
  v17[9] = handler;
  return [baseObject newRenderPipelineStateWithDescriptor:v12 dynamicLinkingDescriptor:v13 compilerTaskOptions:v14 completionHandler:v17];
}

void __121__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 56) mtl4Descriptor:*(a1 + 64)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v12 = objc_autoreleasePoolPush();
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor, 0, 0, 0, 0, 0, 0, 0];
  addReflectionOption(v13);
  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  v15 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v16 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v16)
  {
    v17 = v16;
    v18 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v16 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v12);
  return v18;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  memset(&v13, 0, sizeof(v13));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v13);
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__MTL4DebugCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke;
  v12[3] = &unk_2787B3790;
  v12[4] = self;
  v12[5] = handler;
  return [baseObject newDynamicLibraryWithURL:l options:options completionHandler:v12];
}

void __72__MTL4DebugCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  memset(&v15, 0, sizeof(v15));
  device = self->super.super._device;
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v15);
  _MTLMessageContextEnd();
  v10 = objc_autoreleasePoolPush();
  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (baseObject)
  {
    v12 = baseObject;
    v13 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:baseObject parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

@end