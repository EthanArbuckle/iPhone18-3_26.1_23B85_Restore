@interface MTLToolsLibrary
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)shaderValidationEnabled;
- (MTLDevice)device;
- (NSArray)externFunctionNames;
- (NSArray)functionNames;
- (NSData)bitcodeData;
- (NSString)installName;
- (NSString)label;
- (NSString)overrideTriple;
- (NSUUID)libraryIdentifier;
- (id)newExternFunctionWithName:(id)a3;
- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5;
- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)newFunctionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6;
- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)reflectionForFunctionWithName:(id)a3;
- (int64_t)type;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6;
- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)setLabel:(id)a3;
- (void)setOverrideTriple:(id)a3;
@end

@implementation MTLToolsLibrary

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->sourceLibraryObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsLibrary;
  [(MTLToolsObject *)&v3 dealloc];
}

- (BOOL)shaderValidationEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 shaderValidationEnabled];
}

- (NSString)overrideTriple
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 overrideTriple];
}

- (void)setOverrideTriple:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setOverrideTriple:a3];
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (MTLDevice)device
{
  parent = self->super._parent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = self->super._parent;
  if (isKindOfClass)
  {

    return [(MTLDevice *)result device];
  }

  return result;
}

- (NSUUID)libraryIdentifier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 libraryIdentifier];
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 serializeToURL:a3 error:a4];
}

- (id)reflectionForFunctionWithName:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 reflectionForFunctionWithName:a3];
}

- (id)newFunctionWithName:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newExternFunctionWithName:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [(MTLToolsObject *)[MTLToolsFunction alloc] initWithBaseObject:result parent:self];

    return v8;
  }

  return result;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 error:(id *)a6
{
  v16 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (a6)
  {
    v13 = v16;
  }

  if (v12)
  {
    v14 = [(MTLToolsDevice *)self->super._device getFunctionForBaseObject:v12 library:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (a6)
  {
    *a6 = v16;
  }

  return v14;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MTLToolsLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v10[3] = &unk_2787B3920;
  v10[4] = self;
  v10[5] = a5;
  [v9 newFunctionWithName:a3 constantValues:a4 completionHandler:v10];
}

void __72__MTLToolsLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  (*(*(a1 + 40) + 16))();
}

- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__MTLToolsLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3DB0;
  v8[5] = v6;
  v8[6] = a4;
  v8[4] = self;
  [v7 newFunctionWithDescriptor:v6 completionHandler:v8];
}

void __63__MTLToolsLibrary_newFunctionWithDescriptor_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = v7;
    v9 = [(MTLToolsDevice *)self->super._device getFunctionForBaseObject:v7 library:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:a3];
  v7 = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__MTLToolsLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3DB0;
  v8[5] = v6;
  v8[6] = a4;
  v8[4] = self;
  [v7 newIntersectionFunctionWithDescriptor:v6 completionHandler:v8];
}

void __75__MTLToolsLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:a3];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsDevice *)self->super._device getFunctionForBaseObject:v7 library:self];

  return v8;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 pipelineLibrary:(id)a5 completionHandler:(id)a6
{
  v11 = [(MTLToolsObject *)self baseObject];
  v12 = [a5 baseObject];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__MTLToolsLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke;
  v13[3] = &unk_2787B3920;
  v13[4] = self;
  v13[5] = a6;
  [v11 newFunctionWithName:a3 constantValues:a4 pipelineLibrary:v12 completionHandler:v13];
}

void __88__MTLToolsLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  (*(*(a1 + 40) + 16))();
}

- (id)newFunctionWithDescriptor:(id)a3 destinationArchive:(id)a4 error:(id *)a5
{
  v15 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:a3];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (a5)
  {
    v12 = v15;
  }

  if (v11)
  {
    v13 = [(MTLToolsDevice *)self->super._device getFunctionForBaseObject:v11 library:self];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    *a5 = v15;
  }

  return v13;
}

- (NSArray)functionNames
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionNames];
}

- (NSArray)externFunctionNames
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 externFunctionNames];
}

- (NSData)bitcodeData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bitcodeData];
}

- (int64_t)type
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 type];
}

- (NSString)installName
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 installName];
}

@end