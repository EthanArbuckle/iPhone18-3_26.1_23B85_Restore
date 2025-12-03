@interface MTLToolsLibrary
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)shaderValidationEnabled;
- (MTLDevice)device;
- (NSArray)externFunctionNames;
- (NSArray)functionNames;
- (NSData)bitcodeData;
- (NSString)installName;
- (NSString)label;
- (NSString)overrideTriple;
- (NSUUID)libraryIdentifier;
- (id)newExternFunctionWithName:(id)name;
- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error;
- (id)newFunctionWithDescriptor:(id)descriptor error:(id *)error;
- (id)newFunctionWithName:(id)name;
- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error;
- (id)newIntersectionFunctionWithDescriptor:(id)descriptor error:(id *)error;
- (id)reflectionForFunctionWithName:(id)name;
- (int64_t)type;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values completionHandler:(id)handler;
- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler;
- (void)newIntersectionFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)setLabel:(id)label;
- (void)setOverrideTriple:(id)triple;
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject shaderValidationEnabled];
}

- (NSString)overrideTriple
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject overrideTriple];
}

- (void)setOverrideTriple:(id)triple
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setOverrideTriple:triple];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject libraryIdentifier];
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeToURL:l error:error];
}

- (id)reflectionForFunctionWithName:(id)name
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflectionForFunctionWithName:name];
}

- (id)newFunctionWithName:(id)name
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

- (id)newExternFunctionWithName:(id)name
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

- (id)newFunctionWithName:(id)name constantValues:(id)values error:(id *)error
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

- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error
{
  v16 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (error)
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
  if (error)
  {
    *error = v16;
  }

  return v14;
}

- (void)newFunctionWithName:(id)name constantValues:(id)values completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MTLToolsLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v10[3] = &unk_2787B3920;
  v10[4] = self;
  v10[5] = handler;
  [baseObject newFunctionWithName:name constantValues:values completionHandler:v10];
}

void __72__MTLToolsLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  (*(*(a1 + 40) + 16))();
}

- (void)newFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__MTLToolsLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3DB0;
  v8[5] = v6;
  v8[6] = handler;
  v8[4] = self;
  [baseObject newFunctionWithDescriptor:v6 completionHandler:v8];
}

void __63__MTLToolsLibrary_newFunctionWithDescriptor_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (id)newFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:descriptor];
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

- (void)newIntersectionFunctionWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:descriptor];
  baseObject = [(MTLToolsObject *)self baseObject];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__MTLToolsLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v8[3] = &unk_2787B3DB0;
  v8[5] = v6;
  v8[6] = handler;
  v8[4] = self;
  [baseObject newIntersectionFunctionWithDescriptor:v6 completionHandler:v8];
}

void __75__MTLToolsLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (id)newIntersectionFunctionWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:descriptor];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!v7)
  {
    return 0;
  }

  v8 = [(MTLToolsDevice *)self->super._device getFunctionForBaseObject:v7 library:self];

  return v8;
}

- (void)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [library baseObject];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__MTLToolsLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke;
  v13[3] = &unk_2787B3920;
  v13[4] = self;
  v13[5] = handler;
  [baseObject newFunctionWithName:name constantValues:values pipelineLibrary:baseObject2 completionHandler:v13];
}

void __88__MTLToolsLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  (*(*(a1 + 40) + 16))();
}

- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error
{
  v15 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [(MTLToolsDevice *)self->super._device unwrapMTLFunctionDescriptor:descriptor];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (error)
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
  if (error)
  {
    *error = v15;
  }

  return v13;
}

- (NSArray)functionNames
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionNames];
}

- (NSArray)externFunctionNames
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject externFunctionNames];
}

- (NSData)bitcodeData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bitcodeData];
}

- (int64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject type];
}

- (NSString)installName
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject installName];
}

@end