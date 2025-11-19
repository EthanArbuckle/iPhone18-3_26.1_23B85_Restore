@interface MTL4GPUDebugCompiler
- (id)newBinaryFunctionWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5;
- (id)newBinaryFunctionWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5;
- (id)newComputePipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5;
- (id)newComputePipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5;
- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 completionHandler:(id)a6;
- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 error:(id *)a6;
- (id)newDynamicLibrary:(id)a3 completionHandler:(id)a4;
- (id)newDynamicLibrary:(id)a3 error:(id *)a4;
- (id)newDynamicLibraryWithURL:(id)a3 completionHandler:(id)a4;
- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4;
- (id)newLibraryWithDescriptor:(id)a3 completionHandler:(id)a4;
- (id)newLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 completionHandler:(id)a5;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 completionHandler:(id)a6;
- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 error:(id *)a6;
- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id *)a3;
- (id)newUnwrappedMTL4ComputeDynamicLinkingDescriptor:(id *)a3;
- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)a3;
- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)a3 dynamicLinkingDescriptor:(id *)a4;
- (id)newUnwrappedMTL4RenderDynamicLinkingDescriptor:(id *)a3;
- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)a3;
- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)a3 dynamicLinkingDescriptor:(id *)a4;
- (id)wrapDynamicLibraries:(id)a3;
- (void)_modifyComputePipelineDescriptor:(id)a3;
- (void)_modifyComputePipelineDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4;
- (void)_modifyDynamicLinkingDescriptor:(id)a3;
- (void)_modifyRenderDynamicLinkingDescriptor:(id)a3;
- (void)_modifyRenderPipelineDescriptor:(id)a3;
- (void)_modifyRenderPipelineDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4;
@end

@implementation MTL4GPUDebugCompiler

- (id)wrapDynamicLibraries:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(a3);
          }

          [v5 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "baseObject")}];
        }

        v7 = [a3 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v24 + 1) + 8 * j);
        device = self->super.super._device;
        v32 = device;
        [(MTLToolsDevice *)device instrumentationHeapInit];
        v17 = v15;
        if (v17)
        {
          v18 = v17;
          dynamicLibraryObjectCache = device->dynamicLibraryObjectCache;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = ___ZZL18WrapDynamicLibraryIZ45__MTL4GPUDebugCompiler_wrapDynamicLibraries__E3__0EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
          v33[3] = &unk_2787B38F8;
          v33[4] = v18;
          v33[5] = &v32;
          v20 = [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:v18 onMiss:v33];
        }

        else
        {
          v20 = 0;
        }

        [v10 addObject:v20];
      }

      v12 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_modifyDynamicLinkingDescriptor:(id)a3
{
  if (a3)
  {
    v5 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [a3 preloadedLibraries]);
    [a3 setPreloadedLibraries:v5];

    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [a3 preloadedLibraries]);
    device = self->super.super._device;

    _prepareBinaryLinkedFunctions(a3, device);
  }
}

- (void)_modifyComputePipelineDescriptor:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (![a3 options])
  {
    v4 = objc_opt_new();
    [a3 setOptions:v4];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
  *[v5 bytes] = 1;
  v7 = @"MTLBoundsCheck::ComputePipelineData";
  v8[0] = v5;
  [objc_msgSend(a3 "options")];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_modifyComputePipelineDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [a4 preloadedLibraries]);
    [a4 setPreloadedLibraries:v7];
    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [a4 preloadedLibraries]);
  }

  if (![a3 options])
  {
    v8 = objc_opt_new();
    [a3 setOptions:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
  v10 = [v9 bytes];
  *v10 = 1;
  if (a4)
  {
    *v10 = [a4 maxCallStackDepth];
    v12 = @"MTLBoundsCheck::ComputePipelineData";
    v13[0] = v9;
    [objc_msgSend(a3 "options")];

    _prepareBinaryLinkedFunctions(a4, self->super.super._device);
  }

  else
  {
    v12 = @"MTLBoundsCheck::ComputePipelineData";
    v13[0] = v9;
    [objc_msgSend(a3 "options")];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderPipelineDescriptor:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (![a3 options])
  {
    v4 = objc_opt_new();
    [a3 setOptions:v4];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = objc_alloc(MEMORY[0x277CBEB28]);
  if (isKindOfClass)
  {
    v7 = [v6 initWithLength:4];
    [v7 bytes];
    v15 = @"MTLBoundsCheck::ComputePipelineData";
    v16[0] = v7;
    v8 = MEMORY[0x277CBEAC0];
    v9 = v16;
    v10 = &v15;
  }

  else
  {
    v7 = [v6 initWithLength:20];
    v11 = [v7 bytes];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v11 + 4) = 0x100000001;
      *v11 = [a3 alphaToCoverageState] != 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *v11 = [a3 alphaToCoverageState] != 0;
        *(v11 + 8) = 0x100000001;
        *(v11 + 16) = 1;
      }
    }

    v13 = @"MTLBoundsCheck::RenderPipelineData";
    v14 = v7;
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v14;
    v10 = &v13;
  }

  [objc_msgSend(a3 "options")];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderPipelineDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (![a3 options])
  {
    v7 = objc_opt_new();
    [a3 setOptions:v7];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = objc_alloc(MEMORY[0x277CBEB28]);
  if ((isKindOfClass & 1) == 0)
  {
    v10 = [v9 initWithLength:20];
    v14 = [v10 bytes];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v14 + 4) = 0x100000001;
      if (!a4)
      {
        *v14 = [a3 alphaToCoverageState] != 0;
        goto LABEL_24;
      }

      *(v14 + 4) = [objc_msgSend(a4 "vertexLinkingDescriptor")];
      *(v14 + 8) = [objc_msgSend(a4 "fragmentLinkingDescriptor")];
      [objc_msgSend(a4 "vertexLinkingDescriptor")];
      -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "vertexLinkingDescriptor")]);
      [objc_msgSend(a4 "fragmentLinkingDescriptor")];
      -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "fragmentLinkingDescriptor")]);
      *v14 = [a3 alphaToCoverageState] != 0;
      _prepareBinaryLinkedFunctions([a4 vertexLinkingDescriptor], self->super.super._device);
      v15 = [a4 fragmentLinkingDescriptor];
      device = self->super.super._device;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_24;
      }

      *v14 = [a3 alphaToCoverageState] != 0;
      *(v14 + 8) = 0x100000001;
      *(v14 + 16) = 1;
      if (!a4)
      {
        goto LABEL_24;
      }

      *(v14 + 12) = [objc_msgSend(a4 "meshLinkingDescriptor")];
      *(v14 + 8) = [objc_msgSend(a4 "fragmentLinkingDescriptor")];
      *(v14 + 16) = [objc_msgSend(a4 "objectLinkingDescriptor")];
      if ([objc_msgSend(objc_msgSend(a4 "meshLinkingDescriptor")])
      {
        v17 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(a4 "meshLinkingDescriptor")]);
        [objc_msgSend(a4 "meshLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "meshLinkingDescriptor")]);
      }

      if ([objc_msgSend(objc_msgSend(a4 "fragmentLinkingDescriptor")])
      {
        v18 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(a4 "fragmentLinkingDescriptor")]);
        [objc_msgSend(a4 "fragmentLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "fragmentLinkingDescriptor")]);
      }

      if ([objc_msgSend(objc_msgSend(a4 "objectLinkingDescriptor")])
      {
        v19 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(a4 "objectLinkingDescriptor")]);
        [objc_msgSend(a4 "objectLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "objectLinkingDescriptor")]);
      }

      _prepareBinaryLinkedFunctions([a4 meshLinkingDescriptor], self->super.super._device);
      _prepareBinaryLinkedFunctions([a4 fragmentLinkingDescriptor], self->super.super._device);
      v15 = [a4 objectLinkingDescriptor];
      device = self->super.super._device;
    }

    _prepareBinaryLinkedFunctions(v15, device);
LABEL_24:
    v24 = @"MTLBoundsCheck::RenderPipelineData";
    v25 = v10;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v25;
    v22 = &v24;
    goto LABEL_25;
  }

  v10 = [v9 initWithLength:4];
  v11 = [v10 bytes];
  *v11 = 1;
  if (!a4)
  {
    v26 = @"MTLBoundsCheck::ComputePipelineData";
    v27[0] = v10;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v27;
    v22 = &v26;
LABEL_25:
    [objc_msgSend(a3 "options")];

    goto LABEL_26;
  }

  v12 = v11;
  if ([a4 tileLinkingDescriptor])
  {
    *v12 = [objc_msgSend(a4 "tileLinkingDescriptor")];
    v13 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(a4 "tileLinkingDescriptor")]);
    [objc_msgSend(a4 "tileLinkingDescriptor")];

    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(a4 "tileLinkingDescriptor")]);
  }

  v26 = @"MTLBoundsCheck::ComputePipelineData";
  v27[0] = v10;
  [objc_msgSend(a3 "options")];

  if ([a4 tileLinkingDescriptor])
  {
    _prepareBinaryLinkedFunctions([a4 tileLinkingDescriptor], self->super.super._device);
  }

LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderDynamicLinkingDescriptor:(id)a3
{
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [a3 tileLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [a3 vertexLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [a3 fragmentLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [a3 meshLinkingDescriptor]);
  v5 = [a3 objectLinkingDescriptor];

  [(MTL4GPUDebugCompiler *)self _modifyDynamicLinkingDescriptor:v5];
}

- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id *)a3
{
  v5 = [*a3 copy];
  *a3 = v5;
  if (![v5 pipelineOptions])
  {
    v6 = objc_opt_new();
    [*a3 setPipelineOptions:v6];
  }

  [objc_msgSend(*a3 "pipelineOptions")];
  device = self->super.super._device;
  v8 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4BinaryFunctionDescriptor:v8];
}

- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)a3
{
  v5 = [*a3 copy];
  *a3 = v5;
  [(MTL4GPUDebugCompiler *)self _modifyComputePipelineDescriptor:v5];
  v6 = [*a3 options];
  [v6 setShaderReflection:{objc_msgSend(v6, "shaderReflection") | 3}];
  device = self->super.super._device;
  v8 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v8];
}

- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)a3 dynamicLinkingDescriptor:(id *)a4
{
  v7 = [*a3 copy];
  *a3 = v7;
  [(MTL4GPUDebugCompiler *)self _modifyComputePipelineDescriptor:v7 dynamicLinkingDescriptor:*a4];
  v8 = [*a3 options];
  [v8 setShaderReflection:{objc_msgSend(v8, "shaderReflection") | 3}];
  device = self->super.super._device;
  v10 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v10];
}

- (id)newUnwrappedMTL4ComputeDynamicLinkingDescriptor:(id *)a3
{
  v5 = [*a3 copy];
  *a3 = v5;
  [(MTL4GPUDebugCompiler *)self _modifyComputeDynamicLinkingDescriptor:v5];
  device = self->super.super._device;
  v7 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:v7];
}

- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)a3
{
  v5 = [*a3 copy];
  *a3 = v5;
  [(MTL4GPUDebugCompiler *)self _modifyRenderPipelineDescriptor:v5];
  v6 = [*a3 options];
  [v6 setShaderReflection:{objc_msgSend(v6, "shaderReflection") | 3}];
  device = self->super.super._device;
  v8 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v8];
}

- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)a3 dynamicLinkingDescriptor:(id *)a4
{
  v7 = [*a3 copy];
  *a3 = v7;
  [(MTL4GPUDebugCompiler *)self _modifyRenderPipelineDescriptor:v7 dynamicLinkingDescriptor:*a4];
  v8 = [*a3 options];
  [v8 setShaderReflection:{objc_msgSend(v8, "shaderReflection") | 3}];
  device = self->super.super._device;
  v10 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v10];
}

- (id)newUnwrappedMTL4RenderDynamicLinkingDescriptor:(id *)a3
{
  v5 = [*a3 copy];
  *a3 = v5;
  [(MTL4GPUDebugCompiler *)self _modifyRenderDynamicLinkingDescriptor:v5];
  device = self->super.super._device;
  v7 = *a3;

  return [(MTLToolsDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:v7];
}

- (id)newLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  [a3 setOptions:{DebugCompileOptions(self->super.super._device, objc_msgSend(a3, "options"))}];
  device = self->super.super._device;
  [(MTLToolsDevice *)device instrumentationHeapInit];
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v9 = result;
    [result setShaderValidationEnabled:1];
    v10 = [[MTLGPUDebugLibrary alloc] initWithLibrary:v9 device:device];

    return v10;
  }

  return result;
}

- (id)newLibraryWithDescriptor:(id)a3 completionHandler:(id)a4
{
  [a3 setOptions:{DebugCompileOptions(self->super.super._device, objc_msgSend(a3, "options"))}];
  v7 = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v9[3] = &unk_2787B3768;
  v9[4] = self;
  v9[5] = a4;
  return [v7 newLibraryWithDescriptor:a3 completionHandler:v9];
}

void __67__MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugLibrary alloc] initWithLibrary:a2 device:*(*(a1 + 32) + 24)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newDynamicLibrary:(id)a3 error:(id *)a4
{
  device = self->super.super._device;
  v13 = device;
  [(MTLToolsDevice *)device instrumentationHeapInit];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  dynamicLibraryObjectCache = device->dynamicLibraryObjectCache;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZZL18WrapDynamicLibraryIZ48__MTL4GPUDebugCompiler_newDynamicLibrary_error__E3__2EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v14[3] = &unk_2787B38F8;
  v14[4] = v9;
  v14[5] = &v13;
  v11 = [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:v9 onMiss:v14];

  return v11;
}

- (id)newDynamicLibrary:(id)a3 completionHandler:(id)a4
{
  v7 = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MTL4GPUDebugCompiler_newDynamicLibrary_completionHandler___block_invoke;
  v9[3] = &unk_2787B3790;
  v9[4] = self;
  v9[5] = a4;
  return [v7 newDynamicLibrary:a3 completionHandler:v9];
}

void __60__MTL4GPUDebugCompiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugDynamicLibrary alloc] initWithDynamicLibrary:a2 device:*(*(a1 + 32) + 24)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newDynamicLibraryWithURL:(id)a3 error:(id *)a4
{
  device = self->super.super._device;
  v13 = device;
  [(MTLToolsDevice *)device instrumentationHeapInit];
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  dynamicLibraryObjectCache = device->dynamicLibraryObjectCache;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZZL18WrapDynamicLibraryIZ55__MTL4GPUDebugCompiler_newDynamicLibraryWithURL_error__E3__3EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke;
  v14[3] = &unk_2787B38F8;
  v14[4] = v9;
  v14[5] = &v13;
  v11 = [(MTLToolsObjectCache *)dynamicLibraryObjectCache getCachedObjectForKey:v9 onMiss:v14];

  return v11;
}

- (id)newDynamicLibraryWithURL:(id)a3 completionHandler:(id)a4
{
  v7 = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MTL4GPUDebugCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke;
  v9[3] = &unk_2787B3790;
  v9[4] = self;
  v9[5] = a4;
  return [v7 newDynamicLibraryWithURL:a3 options:2 completionHandler:v9];
}

void __67__MTL4GPUDebugCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLGPUDebugDynamicLibrary alloc] initWithDynamicLibrary:a2 device:*(*(a1 + 32) + 24)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newBinaryFunctionWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5
{
  v13 = a3;
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4BinaryFunctionDescriptor:&v13];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = v9;
    v11 = [(MTL4ToolsBinaryFunction *)[MTL4GPUDebugBinaryFunction alloc] initWithBaseObject:v9 parent:self];
    [(MTL4GPUDebugBinaryFunction *)v11 initImageData:self->super.super._device];
  }

  else
  {

    return 0;
  }

  return v11;
}

- (id)newBinaryFunctionWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4BinaryFunctionDescriptor:&v12];
  v9 = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__MTL4GPUDebugCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v11[3] = &unk_2787B37B8;
  v11[5] = v8;
  v11[6] = a5;
  v11[4] = self;
  return [v9 newBinaryFunctionWithDescriptor:v8 compilerTaskOptions:a4 completionHandler:v11];
}

void __94__MTL4GPUDebugCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [(MTL4ToolsBinaryFunction *)[MTL4GPUDebugBinaryFunction alloc] initWithBaseObject:a2 parent:a1[4]];
    [(MTL4GPUDebugBinaryFunction *)v3 initImageData:*(a1[4] + 24)];
    (*(a1[6] + 16))();
  }

  v4 = a1[5];
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5
{
  v15 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&v15];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v15, v8);
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [MTLGPUDebugComputePipelineState alloc];
  v13 = [(MTLGPUDebugComputePipelineState *)v12 initWithComputePipelineState:v11 descriptor:v15 device:self->super.super._device];

  [(MTLGPUDebugComputePipelineState *)v13 setUID:v9];
  [(MTLToolsDevice *)self->super.super._device onComputePipelineCreated:v13];
  return v13;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 error:(id *)a6
{
  v17 = a4;
  v18 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&v18 dynamicLinkingDescriptor:&v17];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputeDynamicLinkingDescriptor:&v17];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v18, v9);
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [MTLGPUDebugComputePipelineState alloc];
  v15 = [(MTLGPUDebugComputePipelineState *)v14 initWithComputePipelineState:v13 descriptor:v18 dynamicLinkingDescriptor:v17 device:self->super.super._device];

  [(MTLGPUDebugComputePipelineState *)v15 setUID:v11];
  [(MTLToolsDevice *)self->super.super._device onComputePipelineCreated:v15];
  return v15;
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&v13];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v13, v8);
  v10 = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B37E0;
  v12[4] = v13;
  v12[5] = self;
  v12[6] = v9;
  v12[7] = v8;
  v12[8] = a5;
  return [v10 newComputePipelineStateWithDescriptor:v8 compilerTaskOptions:a4 completionHandler:v12];
}

void __100__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:a2 descriptor:*(a1 + 32) device:*(*(a1 + 40) + 24)];
    [(MTLGPUDebugComputePipelineState *)v3 setUID:*(a1 + 48)];
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 40) + 24) onComputePipelineCreated:v3];

  (*(*(a1 + 64) + 16))();
}

- (id)newComputePipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v16 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&v16 dynamicLinkingDescriptor:&v15];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputeDynamicLinkingDescriptor:&v15];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v16, v9);
  v12 = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __125__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v14[3] = &unk_2787B3808;
  v14[4] = v16;
  v14[5] = v15;
  v14[6] = self;
  v14[7] = v11;
  v14[8] = v9;
  v14[9] = a6;
  return [v12 newComputePipelineStateWithDescriptor:v9 dynamicLinkingDescriptor:v10 compilerTaskOptions:a5 completionHandler:v14];
}

void __125__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[MTLGPUDebugComputePipelineState alloc] initWithComputePipelineState:a2 descriptor:*(a1 + 32) dynamicLinkingDescriptor:*(a1 + 40) device:*(*(a1 + 48) + 24)];
    [(MTLGPUDebugComputePipelineState *)v3 setUID:*(a1 + 56)];
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 48) + 24) onComputePipelineCreated:v3];

  (*(*(a1 + 72) + 16))();
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 error:(id *)a5
{
  v15 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&v15];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v15, v8);
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [MTLGPUDebugRenderPipelineState alloc];
  v13 = [(MTLGPUDebugRenderPipelineState *)v12 initWithRenderPipelineState:v11 descriptor:v15 device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v13 setUID:v9];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v13];
  return v13;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 error:(id *)a6
{
  v17 = a4;
  v18 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&v18 dynamicLinkingDescriptor:&v17];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderDynamicLinkingDescriptor:&v17];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v18, v9);
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [MTLGPUDebugRenderPipelineState alloc];
  v15 = [(MTLGPUDebugRenderPipelineState *)v14 initWithRenderPipelineState:v13 descriptor:v18 dynamicLinkingDescriptor:v17 device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v15 setUID:v11];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v15];
  return v15;
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 compilerTaskOptions:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&v13];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v13, v8);
  v10 = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B3830;
  v12[4] = v13;
  v12[5] = self;
  v12[6] = v9;
  v12[7] = v8;
  v12[8] = a5;
  return [v10 newRenderPipelineStateWithDescriptor:v8 compilerTaskOptions:a4 completionHandler:v12];
}

void __99__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 descriptor:*(a1 + 32) device:*(*(a1 + 40) + 24)];
    [(MTLGPUDebugRenderPipelineState *)v3 setUID:*(a1 + 48)];
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 40) + 24) onRenderPipelineCreated:v3];

  (*(*(a1 + 64) + 16))();
}

- (id)newRenderPipelineStateWithDescriptor:(id)a3 dynamicLinkingDescriptor:(id)a4 compilerTaskOptions:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v16 = a3;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&v16 dynamicLinkingDescriptor:&v15];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderDynamicLinkingDescriptor:&v15];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, v16, v9);
  v12 = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v14[3] = &unk_2787B3858;
  v14[4] = v16;
  v14[5] = v15;
  v14[6] = self;
  v14[7] = v11;
  v14[8] = v9;
  v14[9] = v10;
  v14[10] = a6;
  return [v12 newRenderPipelineStateWithDescriptor:v9 dynamicLinkingDescriptor:v10 compilerTaskOptions:a5 completionHandler:v14];
}

void __124__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 descriptor:*(a1 + 32) dynamicLinkingDescriptor:*(a1 + 40) device:*(*(a1 + 48) + 24)];
    [(MTLGPUDebugRenderPipelineState *)v3 setUID:*(a1 + 56)];
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 48) + 24) onRenderPipelineCreated:v3];

  (*(*(a1 + 80) + 16))();
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 error:(id *)a5
{
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:a3];
  v10 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, a3, v9);
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:v11 originalObject:a4 descriptor:a3 device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v13 setUID:v10];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v13];
  return v13;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)a3 pipeline:(id)a4 completionHandler:(id)a5
{
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:a3];
  v10 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, a3, v9);
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a4 baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke;
  v14[3] = &unk_2787B3880;
  v14[4] = a4;
  v14[5] = a3;
  v14[6] = self;
  v14[7] = v10;
  v14[8] = v9;
  v14[9] = a5;
  return [v11 newRenderPipelineStateBySpecializationWithDescriptor:v9 pipeline:v12 completionHandler:v14];
}

void __104__MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 originalObject:*(a1 + 32) descriptor:*(a1 + 40) device:*(*(a1 + 48) + 24)];
    [(MTLGPUDebugRenderPipelineState *)v3 setUID:*(a1 + 56)];
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 48) + 24) onRenderPipelineCreated:v3];

  (*(*(a1 + 72) + 16))();
}

@end