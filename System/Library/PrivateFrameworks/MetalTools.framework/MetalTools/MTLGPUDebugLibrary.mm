@interface MTLGPUDebugLibrary
- (MTLGPUDebugLibrary)initWithLibrary:(id)library device:(id)device;
- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error;
- (id)newFunctionWithName:(id)name;
- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error;
- (id)newIntersectionFunctionWithDescriptor:(id)descriptor error:(id *)error;
- (void)newFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler;
- (void)newIntersectionFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler;
@end

@implementation MTLGPUDebugLibrary

- (MTLGPUDebugLibrary)initWithLibrary:(id)library device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugLibrary;
  return [(MTLToolsObject *)&v5 initWithBaseObject:library parent:device];
}

- (void)newFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:descriptor];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  baseObject = self->super.super._baseObject;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3920;
  v8[4] = self;
  v8[5] = handler;
  [(MTLToolsObject *)baseObject newFunctionWithDescriptor:v6 completionHandler:v8];
}

void __66__MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v3 prepareForBinaryFunctionUsage];
  (*(*(a1 + 40) + 16))();
}

- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error
{
  v8 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:descriptor];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v8];
  v9 = [(MTLToolsObject *)self->super.super._baseObject newFunctionWithDescriptor:v8 destinationArchive:archive error:error];
  v10 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v9 library:self];

  [v10 prepareForBinaryFunctionUsage];
  return v10;
}

- (void)newIntersectionFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:descriptor];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  baseObject = self->super.super._baseObject;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3920;
  v8[4] = self;
  v8[5] = handler;
  [(MTLToolsObject *)baseObject newIntersectionFunctionWithDescriptor:v6 completionHandler:v8];
}

void __78__MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v3 prepareForBinaryFunctionUsage];
  (*(*(a1 + 40) + 16))();
}

- (id)newIntersectionFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:descriptor];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  v7 = [(MTLToolsObject *)self->super.super._baseObject newIntersectionFunctionWithDescriptor:v6 error:error];
  v8 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v7 library:self];

  [v8 prepareForBinaryFunctionUsage];
  return v8;
}

- (id)newFunctionWithName:(id)name
{
  v5 = objc_opt_new();
  [v5 setName:name];
  [v5 setApplyFunctionConstants:0];
  v6 = [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v5 error:0];

  return v6;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error
{
  v9 = objc_opt_new();
  [v9 setName:name];
  [v9 setConstantValues:values];
  v10 = [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v9 error:error];

  return v10;
}

- (void)newFunctionWithName:(id)name constantValues:(id)values completionHandler:(id)handler
{
  v9 = objc_opt_new();
  [v9 setName:name];
  [v9 setConstantValues:values];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v10[3] = &unk_2787B3948;
  v10[4] = v9;
  v10[5] = handler;
  [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v9 completionHandler:v10];
}

void __75__MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache error:(id *)error
{
  v8 = objc_opt_new();
  [v8 setName:name];
  [v8 setConstantValues:values];

  abort();
}

- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error
{
  v8 = objc_opt_new();
  [v8 setName:name];
  [v8 setConstantValues:values];

  abort();
}

- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler
{
  v8 = objc_opt_new();
  [v8 setName:name];
  [v8 setConstantValues:values];

  abort();
}

@end