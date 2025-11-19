@interface MTLGPUDebugLibrary
- (MTLGPUDebugLibrary)initWithLibrary:(id)a3 device:(id)a4;
- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5;
- (id)newFunctionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 error:(id *)a6;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6;
- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6;
- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
@end

@implementation MTLGPUDebugLibrary

- (MTLGPUDebugLibrary)initWithLibrary:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugLibrary;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:a3];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  baseObject = self->super.super._baseObject;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__MTLGPUDebugLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3920;
  v8[4] = self;
  v8[5] = a4;
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

- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:a3];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v8];
  v9 = [(MTLToolsObject *)self->super.super._baseObject newFunctionWithDescriptor:v8 destinationArchive:a4 error:a5];
  v10 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v9 library:self];

  [v10 prepareForBinaryFunctionUsage];
  return v10;
}

- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:a3];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  baseObject = self->super.super._baseObject;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__MTLGPUDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3920;
  v8[4] = self;
  v8[5] = a4;
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

- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLFunctionDescriptor:a3];
  [(MTLToolsDevice *)self->super.super._device modifyFunctionDescriptor:v6];
  v7 = [(MTLToolsObject *)self->super.super._baseObject newIntersectionFunctionWithDescriptor:v6 error:a4];
  v8 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v7 library:self];

  [v8 prepareForBinaryFunctionUsage];
  return v8;
}

- (id)newFunctionWithName:(id)a3
{
  v5 = objc_opt_new();
  [v5 setName:a3];
  [v5 setApplyFunctionConstants:0];
  v6 = [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v5 error:0];

  return v6;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5
{
  v9 = objc_opt_new();
  [v9 setName:a3];
  [v9 setConstantValues:a4];
  v10 = [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v9 error:a5];

  return v10;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5
{
  v9 = objc_opt_new();
  [v9 setName:a3];
  [v9 setConstantValues:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v10[3] = &unk_2787B3948;
  v10[4] = v9;
  v10[5] = a5;
  [(MTLGPUDebugLibrary *)self newFunctionWithDescriptor:v9 completionHandler:v10];
}

void __75__MTLGPUDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 functionCache:(id)a5 error:(id *)a6
{
  v8 = objc_opt_new();
  [v8 setName:a3];
  [v8 setConstantValues:a4];

  abort();
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6
{
  v8 = objc_opt_new();
  [v8 setName:a3];
  [v8 setConstantValues:a4];

  abort();
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6
{
  v8 = objc_opt_new();
  [v8 setName:a3];
  [v8 setConstantValues:a4];

  abort();
}

@end