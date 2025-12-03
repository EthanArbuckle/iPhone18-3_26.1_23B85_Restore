@interface MTL4ToolsCompiler
- (BOOL)shouldMaximizeConcurrentCompilation;
- (MTL4PipelineDataSetSerializer)pipelineDataSetSerializer;
- (MTL4ToolsCompiler)initWithBaseObject:(id)object parent:(id)parent;
- (MTLBinaryArchive)destinationBinaryArchive;
- (NSString)label;
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
- (void)cancel;
- (void)setLabel:(id)label;
- (void)setPipelineDataSetSerializer:(id)serializer;
@end

@implementation MTL4ToolsCompiler

- (MTLBinaryArchive)destinationBinaryArchive
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject destinationBinaryArchive];
}

- (BOOL)shouldMaximizeConcurrentCompilation
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject shouldMaximizeConcurrentCompilation];
}

- (MTL4PipelineDataSetSerializer)pipelineDataSetSerializer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject pipelineDataSetSerializer];
}

- (void)setPipelineDataSetSerializer:(id)serializer
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setPipelineDataSetSerializer:serializer];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (MTL4ToolsCompiler)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCompiler;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = MTL4ToolsCompiler;
  v8 = -[MTLDevice unwrapMTLCompileOptions:](-[MTLToolsObject device](&v13, sel_device), "unwrapMTLCompileOptions:", [descriptor options]);
  v9 = [descriptor copy];
  [v9 setOptions:v8];
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:v10 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = MTL4ToolsCompiler;
    v9 = *([(MTLToolsObject *)&v13 device]+ 7);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__MTL4ToolsCompiler_newDynamicLibrary_error___block_invoke;
    v12[3] = &unk_2787B3BA8;
    v12[4] = v8;
    v12[5] = self;
    v10 = [v9 getCachedObjectForKey:v8 onMiss:v12];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

uint64_t __45__MTL4ToolsCompiler_newDynamicLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = MTL4ToolsCompiler;
    v9 = *([(MTLToolsObject *)&v13 device]+ 7);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__MTL4ToolsCompiler_newDynamicLibraryWithURL_error___block_invoke;
    v12[3] = &unk_2787B3BA8;
    v12[4] = v8;
    v12[5] = self;
    v10 = [v9 getCachedObjectForKey:v8 onMiss:v12];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

uint64_t __52__MTL4ToolsCompiler_newDynamicLibraryWithURL_error___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v13)
  {
    v14 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v13 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v14;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  v11 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v18 device];
  v13 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v14 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v15)
  {
    v16 = [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:v15 parent:self];
  }

  else
  {
    v16 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v11);
  return v16;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v13)
  {
    v14 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v13 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v14;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  v11 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v18 device];
  v13 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  }

  v14 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v15)
  {
    v16 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v15 parent:self];
  }

  else
  {
    v16 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v11);
  return v16;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4ToolsCompiler;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v14 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = [[MTLToolsRenderPipelineState alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v16 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  v13 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v13)
  {
    v14 = [[MTL4ToolsBinaryFunction alloc] initWithBaseObject:v13 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v14;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v15.receiver = self;
    v15.super_class = MTL4ToolsCompiler;
    v11 = *([(MTLToolsObject *)&v15 device]+ 7);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__MTL4ToolsCompiler_newDynamicLibraryWithURL_options_error___block_invoke;
    v14[3] = &unk_2787B3BA8;
    v14[4] = v10;
    v14[5] = self;
    v12 = [v11 getCachedObjectForKey:v10 onMiss:v14];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

uint64_t __60__MTL4ToolsCompiler_newDynamicLibraryWithURL_options_error___block_invoke(uint64_t a1)
{
  v2 = [MTLToolsDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MTL4ToolsCompiler;
  v8 = -[MTLDevice unwrapMTLCompileOptions:](-[MTLToolsObject device](&v15, sel_device), "unwrapMTLCompileOptions:", [descriptor options]);
  v9 = [descriptor copy];
  [v9 setOptions:v8];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__MTL4ToolsCompiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v14[3] = &unk_2787B3768;
  v14[4] = self;
  v14[5] = handler;
  v11 = [baseObject newLibraryWithDescriptor:v9 completionHandler:v14];
  if (v11)
  {
    v12 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v12;
}

uint64_t __64__MTL4ToolsCompiler_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [library baseObject];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MTL4ToolsCompiler_newDynamicLibrary_completionHandler___block_invoke;
  v13[3] = &unk_2787B3790;
  v13[4] = self;
  v13[5] = handler;
  v10 = [baseObject newDynamicLibrary:baseObject2 completionHandler:v13];
  if (v10)
  {
    v11 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v10 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t __57__MTL4ToolsCompiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  baseObject = [(MTLToolsObject *)self baseObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__MTL4ToolsCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke;
  v12[3] = &unk_2787B3790;
  v12[4] = self;
  v12[5] = handler;
  v9 = [baseObject newDynamicLibraryWithURL:l completionHandler:v12];
  if (v9)
  {
    v10 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v9 parent:self];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v10;
}

uint64_t __64__MTL4ToolsCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v9 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v18 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__MTL4ToolsCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v17[3] = &unk_2787B4838;
  v17[4] = self;
  v17[5] = handler;
  v14 = [baseObject newComputePipelineStateWithDescriptor:v11 compilerTaskOptions:v12 completionHandler:v17];
  if (v14)
  {
    v15 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v15;
}

uint64_t __97__MTL4ToolsCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v11 = objc_autoreleasePoolPush();
  v20.receiver = self;
  v20.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v20 device];
  v13 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v14 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __122__MTL4ToolsCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v19[3] = &unk_2787B4838;
  v19[4] = self;
  v19[5] = handler;
  v16 = [baseObject newComputePipelineStateWithDescriptor:v13 dynamicLinkingDescriptor:linkingDescriptor compilerTaskOptions:v14 completionHandler:v19];
  if (v16)
  {
    v17 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v16 parent:self];
  }

  else
  {
    v17 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v11);
  return v17;
}

uint64_t __122__MTL4ToolsCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsComputePipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v9 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v18 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__MTL4ToolsCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v17[3] = &unk_2787B4860;
  v17[4] = self;
  v17[5] = handler;
  v14 = [baseObject newRenderPipelineStateWithDescriptor:v11 compilerTaskOptions:v12 completionHandler:v17];
  if (v14)
  {
    v15 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v15;
}

uint64_t __96__MTL4ToolsCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v11 = objc_autoreleasePoolPush();
  v20.receiver = self;
  v20.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v20 device];
  v13 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLDevice *)device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  }

  v14 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __121__MTL4ToolsCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v19[3] = &unk_2787B4860;
  v19[4] = self;
  v19[5] = handler;
  v16 = [baseObject newRenderPipelineStateWithDescriptor:v13 dynamicLinkingDescriptor:linkingDescriptor compilerTaskOptions:v14 completionHandler:v19];
  if (v16)
  {
    v17 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v16 parent:self];
  }

  else
  {
    v17 = 0;
  }

  if (linkingDescriptor)
  {
  }

  objc_autoreleasePoolPop(v11);
  return v17;
}

uint64_t __121__MTL4ToolsCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler
{
  v9 = objc_autoreleasePoolPush();
  v17.receiver = self;
  v17.super_class = MTL4ToolsCompiler;
  v10 = [(MTLDevice *)[(MTLToolsObject *)&v17 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  baseObject = [pipeline baseObject];
  baseObject2 = [(MTLToolsObject *)self baseObject];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__MTL4ToolsCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke;
  v16[3] = &unk_2787B4860;
  v16[4] = self;
  v16[5] = handler;
  v13 = [baseObject2 newRenderPipelineStateBySpecializationWithDescriptor:v10 pipeline:baseObject completionHandler:v16];
  if (v13)
  {
    v14 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v13 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v14;
}

uint64_t __101__MTL4ToolsCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [[MTLToolsRenderPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v9 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v18 device];
  v11 = [(MTLDevice *)device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v12 = [(MTLDevice *)device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__MTL4ToolsCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v17[3] = &unk_2787B4888;
  v17[4] = self;
  v17[5] = handler;
  v14 = [baseObject newBinaryFunctionWithDescriptor:v11 compilerTaskOptions:v12 completionHandler:v17];
  if (v14)
  {
    v15 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v14 parent:self];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v15;
}

uint64_t __91__MTL4ToolsCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [[MTL4ToolsBinaryFunction alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)cancel
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject cancel];
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = MTL4ToolsCompiler;
  v8 = [(MTLDevice *)[(MTLToolsObject *)&v14 device] newUnwrappedMTL4PipelineDescriptor:descriptor];
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    v10 = 0;
    if (error)
    {
      goto LABEL_3;
    }

LABEL_5:

    objc_autoreleasePoolPop(v7);
    return v10;
  }

  v10 = [[MTL4ToolsMachineLearningPipelineState alloc] initWithBaseObject:v9 parent:self];
  if (!error)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = *error;

  objc_autoreleasePoolPop(v7);
  v12 = *error;
  return v10;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v16.receiver = self;
  v16.super_class = MTL4ToolsCompiler;
  device = [(MTLToolsObject *)&v16 device];
  v8 = objc_autoreleasePoolPush();
  v9 = [(MTLDevice *)device newUnwrappedMTL4PipelineDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__MTL4ToolsCompiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke;
  v15[3] = &unk_2787B48B0;
  v15[4] = self;
  v15[5] = handler;
  v11 = [baseObject newMachineLearningPipelineStateWithDescriptor:v9 completionHandler:v15];
  if (v11)
  {
    v12 = v11;
    v13 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v13;
}

void __85__MTL4ToolsCompiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTL4ToolsMachineLearningPipelineState alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  v9 = objc_autoreleasePoolPush();
  baseObject = [(MTLToolsObject *)self baseObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MTL4ToolsCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke;
  v14[3] = &unk_2787B3790;
  v14[4] = self;
  v14[5] = handler;
  v11 = [baseObject newDynamicLibraryWithURL:l options:options completionHandler:v14];
  if (v11)
  {
    v12 = [[MTL4ToolsCompilerTask alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

uint64_t __72__MTL4ToolsCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(MTLToolsObject *)[MTLToolsDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end