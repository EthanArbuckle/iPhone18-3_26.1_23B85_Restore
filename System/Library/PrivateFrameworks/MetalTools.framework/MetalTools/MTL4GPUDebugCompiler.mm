@interface MTL4GPUDebugCompiler
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
- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id *)descriptor;
- (id)newUnwrappedMTL4ComputeDynamicLinkingDescriptor:(id *)descriptor;
- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)descriptor;
- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)descriptor dynamicLinkingDescriptor:(id *)linkingDescriptor;
- (id)newUnwrappedMTL4RenderDynamicLinkingDescriptor:(id *)descriptor;
- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)descriptor;
- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)descriptor dynamicLinkingDescriptor:(id *)linkingDescriptor;
- (id)wrapDynamicLibraries:(id)libraries;
- (void)_modifyComputePipelineDescriptor:(id)descriptor;
- (void)_modifyComputePipelineDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor;
- (void)_modifyDynamicLinkingDescriptor:(id)descriptor;
- (void)_modifyRenderDynamicLinkingDescriptor:(id)descriptor;
- (void)_modifyRenderPipelineDescriptor:(id)descriptor;
- (void)_modifyRenderPipelineDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor;
@end

@implementation MTL4GPUDebugCompiler

- (id)wrapDynamicLibraries:(id)libraries
{
  v36 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if (libraries)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(libraries, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [libraries countByEnumeratingWithState:&v28 objects:v35 count:16];
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
            objc_enumerationMutation(libraries);
          }

          [v5 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "baseObject")}];
        }

        v7 = [libraries countByEnumeratingWithState:&v28 objects:v35 count:16];
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

- (void)_modifyDynamicLinkingDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v5 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [descriptor preloadedLibraries]);
    [descriptor setPreloadedLibraries:v5];

    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [descriptor preloadedLibraries]);
    device = self->super.super._device;

    _prepareBinaryLinkedFunctions(descriptor, device);
  }
}

- (void)_modifyComputePipelineDescriptor:(id)descriptor
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (![descriptor options])
  {
    v4 = objc_opt_new();
    [descriptor setOptions:v4];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
  *[v5 bytes] = 1;
  v7 = @"MTLBoundsCheck::ComputePipelineData";
  v8[0] = v5;
  [objc_msgSend(descriptor "options")];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_modifyComputePipelineDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (linkingDescriptor)
  {
    v7 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [linkingDescriptor preloadedLibraries]);
    [linkingDescriptor setPreloadedLibraries:v7];
    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [linkingDescriptor preloadedLibraries]);
  }

  if (![descriptor options])
  {
    v8 = objc_opt_new();
    [descriptor setOptions:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4];
  bytes = [v9 bytes];
  *bytes = 1;
  if (linkingDescriptor)
  {
    *bytes = [linkingDescriptor maxCallStackDepth];
    v12 = @"MTLBoundsCheck::ComputePipelineData";
    v13[0] = v9;
    [objc_msgSend(descriptor "options")];

    _prepareBinaryLinkedFunctions(linkingDescriptor, self->super.super._device);
  }

  else
  {
    v12 = @"MTLBoundsCheck::ComputePipelineData";
    v13[0] = v9;
    [objc_msgSend(descriptor "options")];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderPipelineDescriptor:(id)descriptor
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (![descriptor options])
  {
    v4 = objc_opt_new();
    [descriptor setOptions:v4];
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
    bytes = [v7 bytes];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(bytes + 4) = 0x100000001;
      *bytes = [descriptor alphaToCoverageState] != 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *bytes = [descriptor alphaToCoverageState] != 0;
        *(bytes + 8) = 0x100000001;
        *(bytes + 16) = 1;
      }
    }

    v13 = @"MTLBoundsCheck::RenderPipelineData";
    v14 = v7;
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v14;
    v10 = &v13;
  }

  [objc_msgSend(descriptor "options")];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderPipelineDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (![descriptor options])
  {
    v7 = objc_opt_new();
    [descriptor setOptions:v7];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = objc_alloc(MEMORY[0x277CBEB28]);
  if ((isKindOfClass & 1) == 0)
  {
    v10 = [v9 initWithLength:20];
    bytes = [v10 bytes];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(bytes + 4) = 0x100000001;
      if (!linkingDescriptor)
      {
        *bytes = [descriptor alphaToCoverageState] != 0;
        goto LABEL_24;
      }

      *(bytes + 4) = [objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")];
      *(bytes + 8) = [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
      [objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")];
      -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "vertexLinkingDescriptor")]);
      [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
      -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")]);
      *bytes = [descriptor alphaToCoverageState] != 0;
      _prepareBinaryLinkedFunctions([linkingDescriptor vertexLinkingDescriptor], self->super.super._device);
      fragmentLinkingDescriptor = [linkingDescriptor fragmentLinkingDescriptor];
      device = self->super.super._device;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_24;
      }

      *bytes = [descriptor alphaToCoverageState] != 0;
      *(bytes + 8) = 0x100000001;
      *(bytes + 16) = 1;
      if (!linkingDescriptor)
      {
        goto LABEL_24;
      }

      *(bytes + 12) = [objc_msgSend(linkingDescriptor "meshLinkingDescriptor")];
      *(bytes + 8) = [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];
      *(bytes + 16) = [objc_msgSend(linkingDescriptor "objectLinkingDescriptor")];
      if ([objc_msgSend(objc_msgSend(linkingDescriptor "meshLinkingDescriptor")])
      {
        v17 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(linkingDescriptor "meshLinkingDescriptor")]);
        [objc_msgSend(linkingDescriptor "meshLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "meshLinkingDescriptor")]);
      }

      if ([objc_msgSend(objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")])
      {
        v18 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")]);
        [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "fragmentLinkingDescriptor")]);
      }

      if ([objc_msgSend(objc_msgSend(linkingDescriptor "objectLinkingDescriptor")])
      {
        v19 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(linkingDescriptor "objectLinkingDescriptor")]);
        [objc_msgSend(linkingDescriptor "objectLinkingDescriptor")];

        -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "objectLinkingDescriptor")]);
      }

      _prepareBinaryLinkedFunctions([linkingDescriptor meshLinkingDescriptor], self->super.super._device);
      _prepareBinaryLinkedFunctions([linkingDescriptor fragmentLinkingDescriptor], self->super.super._device);
      fragmentLinkingDescriptor = [linkingDescriptor objectLinkingDescriptor];
      device = self->super.super._device;
    }

    _prepareBinaryLinkedFunctions(fragmentLinkingDescriptor, device);
LABEL_24:
    v24 = @"MTLBoundsCheck::RenderPipelineData";
    v25 = v10;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v25;
    v22 = &v24;
    goto LABEL_25;
  }

  v10 = [v9 initWithLength:4];
  bytes2 = [v10 bytes];
  *bytes2 = 1;
  if (!linkingDescriptor)
  {
    v26 = @"MTLBoundsCheck::ComputePipelineData";
    v27[0] = v10;
    v20 = MEMORY[0x277CBEAC0];
    v21 = v27;
    v22 = &v26;
LABEL_25:
    [objc_msgSend(descriptor "options")];

    goto LABEL_26;
  }

  v12 = bytes2;
  if ([linkingDescriptor tileLinkingDescriptor])
  {
    *v12 = [objc_msgSend(linkingDescriptor "tileLinkingDescriptor")];
    v13 = -[MTL4GPUDebugCompiler wrapDynamicLibraries:](self, "wrapDynamicLibraries:", [objc_msgSend(linkingDescriptor "tileLinkingDescriptor")]);
    [objc_msgSend(linkingDescriptor "tileLinkingDescriptor")];

    -[MTLToolsDevice prepareInsertLibraries:](self->super.super._device, "prepareInsertLibraries:", [objc_msgSend(linkingDescriptor "tileLinkingDescriptor")]);
  }

  v26 = @"MTLBoundsCheck::ComputePipelineData";
  v27[0] = v10;
  [objc_msgSend(descriptor "options")];

  if ([linkingDescriptor tileLinkingDescriptor])
  {
    _prepareBinaryLinkedFunctions([linkingDescriptor tileLinkingDescriptor], self->super.super._device);
  }

LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_modifyRenderDynamicLinkingDescriptor:(id)descriptor
{
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [descriptor tileLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [descriptor vertexLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [descriptor fragmentLinkingDescriptor]);
  -[MTL4GPUDebugCompiler _modifyDynamicLinkingDescriptor:](self, "_modifyDynamicLinkingDescriptor:", [descriptor meshLinkingDescriptor]);
  objectLinkingDescriptor = [descriptor objectLinkingDescriptor];

  [(MTL4GPUDebugCompiler *)self _modifyDynamicLinkingDescriptor:objectLinkingDescriptor];
}

- (id)newUnwrappedMTL4BinaryFunctionDescriptor:(id *)descriptor
{
  v5 = [*descriptor copy];
  *descriptor = v5;
  if (![v5 pipelineOptions])
  {
    v6 = objc_opt_new();
    [*descriptor setPipelineOptions:v6];
  }

  [objc_msgSend(*descriptor "pipelineOptions")];
  device = self->super.super._device;
  v8 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4BinaryFunctionDescriptor:v8];
}

- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)descriptor
{
  v5 = [*descriptor copy];
  *descriptor = v5;
  [(MTL4GPUDebugCompiler *)self _modifyComputePipelineDescriptor:v5];
  options = [*descriptor options];
  [options setShaderReflection:{objc_msgSend(options, "shaderReflection") | 3}];
  device = self->super.super._device;
  v8 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v8];
}

- (id)newUnwrappedMTL4ComputePipelineDescriptor:(id *)descriptor dynamicLinkingDescriptor:(id *)linkingDescriptor
{
  v7 = [*descriptor copy];
  *descriptor = v7;
  [(MTL4GPUDebugCompiler *)self _modifyComputePipelineDescriptor:v7 dynamicLinkingDescriptor:*linkingDescriptor];
  options = [*descriptor options];
  [options setShaderReflection:{objc_msgSend(options, "shaderReflection") | 3}];
  device = self->super.super._device;
  v10 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v10];
}

- (id)newUnwrappedMTL4ComputeDynamicLinkingDescriptor:(id *)descriptor
{
  v5 = [*descriptor copy];
  *descriptor = v5;
  [(MTL4GPUDebugCompiler *)self _modifyComputeDynamicLinkingDescriptor:v5];
  device = self->super.super._device;
  v7 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:v7];
}

- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)descriptor
{
  v5 = [*descriptor copy];
  *descriptor = v5;
  [(MTL4GPUDebugCompiler *)self _modifyRenderPipelineDescriptor:v5];
  options = [*descriptor options];
  [options setShaderReflection:{objc_msgSend(options, "shaderReflection") | 3}];
  device = self->super.super._device;
  v8 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v8];
}

- (id)newUnwrappedMTL4RenderPipelineDescriptor:(id *)descriptor dynamicLinkingDescriptor:(id *)linkingDescriptor
{
  v7 = [*descriptor copy];
  *descriptor = v7;
  [(MTL4GPUDebugCompiler *)self _modifyRenderPipelineDescriptor:v7 dynamicLinkingDescriptor:*linkingDescriptor];
  options = [*descriptor options];
  [options setShaderReflection:{objc_msgSend(options, "shaderReflection") | 3}];
  device = self->super.super._device;
  v10 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4PipelineDescriptor:v10];
}

- (id)newUnwrappedMTL4RenderDynamicLinkingDescriptor:(id *)descriptor
{
  v5 = [*descriptor copy];
  *descriptor = v5;
  [(MTL4GPUDebugCompiler *)self _modifyRenderDynamicLinkingDescriptor:v5];
  device = self->super.super._device;
  v7 = *descriptor;

  return [(MTLToolsDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:v7];
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  [descriptor setOptions:{DebugCompileOptions(self->super.super._device, objc_msgSend(descriptor, "options"))}];
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

- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  [descriptor setOptions:{DebugCompileOptions(self->super.super._device, objc_msgSend(descriptor, "options"))}];
  baseObject = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MTL4GPUDebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v9[3] = &unk_2787B3768;
  v9[4] = self;
  v9[5] = handler;
  return [baseObject newLibraryWithDescriptor:descriptor completionHandler:v9];
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

- (id)newDynamicLibrary:(id)library error:(id *)error
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

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MTL4GPUDebugCompiler_newDynamicLibrary_completionHandler___block_invoke;
  v9[3] = &unk_2787B3790;
  v9[4] = self;
  v9[5] = handler;
  return [baseObject newDynamicLibrary:library completionHandler:v9];
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

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
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

- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__MTL4GPUDebugCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke;
  v9[3] = &unk_2787B3790;
  v9[4] = self;
  v9[5] = handler;
  return [baseObject newDynamicLibraryWithURL:l options:2 completionHandler:v9];
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

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4BinaryFunctionDescriptor:&descriptorCopy];
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

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4BinaryFunctionDescriptor:&descriptorCopy];
  baseObject = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__MTL4GPUDebugCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v11[3] = &unk_2787B37B8;
  v11[5] = v8;
  v11[6] = handler;
  v11[4] = self;
  return [baseObject newBinaryFunctionWithDescriptor:v8 compilerTaskOptions:options completionHandler:v11];
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&descriptorCopy];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v8);
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [MTLGPUDebugComputePipelineState alloc];
  v13 = [(MTLGPUDebugComputePipelineState *)v12 initWithComputePipelineState:v11 descriptor:descriptorCopy device:self->super.super._device];

  [(MTLGPUDebugComputePipelineState *)v13 setUID:v9];
  [(MTLToolsDevice *)self->super.super._device onComputePipelineCreated:v13];
  return v13;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  linkingDescriptorCopy = linkingDescriptor;
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&descriptorCopy dynamicLinkingDescriptor:&linkingDescriptorCopy];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputeDynamicLinkingDescriptor:&linkingDescriptorCopy];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v9);
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [MTLGPUDebugComputePipelineState alloc];
  v15 = [(MTLGPUDebugComputePipelineState *)v14 initWithComputePipelineState:v13 descriptor:descriptorCopy dynamicLinkingDescriptor:linkingDescriptorCopy device:self->super.super._device];

  [(MTLGPUDebugComputePipelineState *)v15 setUID:v11];
  [(MTLToolsDevice *)self->super.super._device onComputePipelineCreated:v15];
  return v15;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&descriptorCopy];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v8);
  baseObject = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B37E0;
  v12[4] = descriptorCopy;
  v12[5] = self;
  v12[6] = v9;
  v12[7] = v8;
  v12[8] = handler;
  return [baseObject newComputePipelineStateWithDescriptor:v8 compilerTaskOptions:options completionHandler:v12];
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

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  linkingDescriptorCopy = linkingDescriptor;
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputePipelineDescriptor:&descriptorCopy dynamicLinkingDescriptor:&linkingDescriptorCopy];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4ComputeDynamicLinkingDescriptor:&linkingDescriptorCopy];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v9);
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __125__MTL4GPUDebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v14[3] = &unk_2787B3808;
  v14[4] = descriptorCopy;
  v14[5] = linkingDescriptorCopy;
  v14[6] = self;
  v14[7] = v11;
  v14[8] = v9;
  v14[9] = handler;
  return [baseObject newComputePipelineStateWithDescriptor:v9 dynamicLinkingDescriptor:v10 compilerTaskOptions:options completionHandler:v14];
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

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&descriptorCopy];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v8);
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [MTLGPUDebugRenderPipelineState alloc];
  v13 = [(MTLGPUDebugRenderPipelineState *)v12 initWithRenderPipelineState:v11 descriptor:descriptorCopy device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v13 setUID:v9];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v13];
  return v13;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  linkingDescriptorCopy = linkingDescriptor;
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&descriptorCopy dynamicLinkingDescriptor:&linkingDescriptorCopy];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderDynamicLinkingDescriptor:&linkingDescriptorCopy];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v9);
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [MTLGPUDebugRenderPipelineState alloc];
  v15 = [(MTLGPUDebugRenderPipelineState *)v14 initWithRenderPipelineState:v13 descriptor:descriptorCopy dynamicLinkingDescriptor:linkingDescriptorCopy device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v15 setUID:v11];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v15];
  return v15;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v8 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&descriptorCopy];
  v9 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v8);
  baseObject = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B3830;
  v12[4] = descriptorCopy;
  v12[5] = self;
  v12[6] = v9;
  v12[7] = v8;
  v12[8] = handler;
  return [baseObject newRenderPipelineStateWithDescriptor:v8 compilerTaskOptions:options completionHandler:v12];
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

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  linkingDescriptorCopy = linkingDescriptor;
  descriptorCopy = descriptor;
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderPipelineDescriptor:&descriptorCopy dynamicLinkingDescriptor:&linkingDescriptorCopy];
  v10 = [(MTL4GPUDebugCompiler *)self newUnwrappedMTL4RenderDynamicLinkingDescriptor:&linkingDescriptorCopy];
  v11 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptorCopy, v9);
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__MTL4GPUDebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v14[3] = &unk_2787B3858;
  v14[4] = descriptorCopy;
  v14[5] = linkingDescriptorCopy;
  v14[6] = self;
  v14[7] = v11;
  v14[8] = v9;
  v14[9] = v10;
  v14[10] = handler;
  return [baseObject newRenderPipelineStateWithDescriptor:v9 dynamicLinkingDescriptor:v10 compilerTaskOptions:options completionHandler:v14];
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

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error
{
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v10 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptor, v9);
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [[MTLGPUDebugRenderPipelineState alloc] initWithRenderPipelineState:v11 originalObject:pipeline descriptor:descriptor device:self->super.super._device];

  [(MTLGPUDebugRenderPipelineState *)v13 setUID:v10];
  [(MTLToolsDevice *)self->super.super._device onRenderPipelineCreated:v13];
  return v13;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler
{
  [(MTLToolsDevice *)self->super.super._device instrumentationHeapInit];
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v10 = MTLGPUDebugSetValidationChecksOptions(self->super.super._device, descriptor, v9);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [pipeline baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__MTL4GPUDebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke;
  v14[3] = &unk_2787B3880;
  v14[4] = pipeline;
  v14[5] = descriptor;
  v14[6] = self;
  v14[7] = v10;
  v14[8] = v9;
  v14[9] = handler;
  return [baseObject newRenderPipelineStateBySpecializationWithDescriptor:v9 pipeline:baseObject2 completionHandler:v14];
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