@interface MTLDebugLibrary
- (MTLDebugLibrary)initWithLibrary:(id)a3 parent:(id)a4 type:(unint64_t)a5 code:(id)a6 options:(id)a7;
- (id)copyConstantValues:(id)a3;
- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (id)newFunctionWithName:(id)a3;
- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5;
- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5;
- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)setImageFilterFunctions:(id)a3 imageFilterFunctionInfo:(id *)a4;
- (void)validateDescriptor:(id)a3 expectedClass:(Class)a4;
@end

@implementation MTLDebugLibrary

- (MTLDebugLibrary)initWithLibrary:(id)a3 parent:(id)a4 type:(unint64_t)a5 code:(id)a6 options:(id)a7
{
  v13.receiver = self;
  v13.super_class = MTLDebugLibrary;
  v10 = [(MTLToolsObject *)&v13 initWithBaseObject:a3 parent:a4];
  v11 = v10;
  if (v10)
  {
    v10->_debugType = a5;
    v10->_code = [a6 copy];
    v11->_compileOptions = [a7 copy];
  }

  return v11;
}

- (void)dealloc
{
  if (self->_imageFilterFunctionInfo)
  {
    if ([(NSArray *)self->_imageFilterFunctions count])
    {
      v3 = 0;
      v4 = 16;
      do
      {
        free(*(&self->_imageFilterFunctionInfo->var0 + v4));
        ++v3;
        v4 += 24;
      }

      while (v3 < [(NSArray *)self->_imageFilterFunctions count]);
    }

    free(self->_imageFilterFunctionInfo);
    self->_imageFilterFunctionInfo = 0;
  }

  self->_imageFilterFunctions = 0;
  v5.receiver = self;
  v5.super_class = MTLDebugLibrary;
  [(MTLToolsLibrary *)&v5 dealloc];
}

- (id)newFunctionWithName:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugLibrary newFunctionWithName:];
    }
  }

  else
  {
    [MTLDebugLibrary newFunctionWithName:];
  }

  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:result library:self];

    return v7;
  }

  return result;
}

- (id)newFunctionWithName:(id)a3 constantValues:(id)a4 error:(id *)a5
{
  validateNewFunctionWithConstantArguments(a3, a4);
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v9 library:self];

  v12 = [a4 copy];
  [v11 setConstantValues:v12];

  return v11;
}

- (void)newFunctionWithName:(id)a3 constantValues:(id)a4 completionHandler:(id)a5
{
  validateNewFunctionWithConstantArguments(a3, a4);
  v9 = [a4 copy];
  v10 = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MTLDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke;
  v11[3] = &unk_2787B4F28;
  v11[4] = self;
  v11[5] = v9;
  v11[6] = a5;
  [v10 newFunctionWithName:a3 constantValues:v9 completionHandler:v11];
}

void __72__MTLDebugLibrary_newFunctionWithName_constantValues_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  [v3 setConstantValues:a1[5]];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (void)validateDescriptor:(id)a3 expectedClass:(Class)a4
{
  if (a3)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MTLDebugLibrary validateDescriptor:a4 expectedClass:?];
    }

    if (([a3 options] & 1) != 0 && (-[MTLDevice supportsFunctionPointers](-[MTLToolsLibrary device](self, "device"), "supportsFunctionPointers") & 1) == 0)
    {
      [MTLDebugLibrary validateDescriptor:expectedClass:];
    }

    if (([a3 options] & 8) != 0 && (objc_msgSend(a3, "options") & 1) == 0)
    {
      [MTLDebugLibrary validateDescriptor:expectedClass:];
    }
  }

  else
  {
    [MTLDebugLibrary validateDescriptor:expectedClass:];
  }
}

- (id)copyConstantValues:(id)a3
{
  v3 = [a3 constantValues];
  if (v3)
  {

    return [v3 copy];
  }

  else
  {
    v5 = MEMORY[0x277CD6D70];

    return objc_alloc_init(v5);
  }
}

- (void)newFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  [(MTLDebugLibrary *)self validateDescriptor:a3 expectedClass:objc_opt_class()];
  v7 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:a3];
  v8 = [(MTLDebugLibrary *)self copyConstantValues:v7];
  validateNewFunctionWithConstantArguments([(MTLFunctionDescriptor *)v7 name], v8);
  validateLinkedFunctionsHaveUniqueNames(v7);
  v9 = [(MTLToolsObject *)self baseObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__MTLDebugLibrary_newFunctionWithDescriptor_completionHandler___block_invoke;
  v10[3] = &unk_2787B4F50;
  v10[4] = self;
  v10[5] = v8;
  v10[6] = v7;
  v10[7] = a4;
  [v9 newFunctionWithDescriptor:v7 completionHandler:v10];
}

void __63__MTLDebugLibrary_newFunctionWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) getFunctionForBaseObject:a2 library:?];
  [v3 setConstantValues:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();

  v4 = *(a1 + 48);
}

- (id)newFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  [(MTLDebugLibrary *)self validateDescriptor:a3 expectedClass:objc_opt_class()];
  v7 = [(MTLDevice *)[(MTLToolsLibrary *)self device] unwrapMTLFunctionDescriptor:a3];
  v8 = [(MTLDebugLibrary *)self copyConstantValues:v7];
  validateNewFunctionWithConstantArguments([(MTLFunctionDescriptor *)v7 name], v8);
  validateLinkedFunctionsHaveUniqueNames(v7);
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v9)
  {
    v10 = v9;
    v11 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v9 library:self];

    [v11 setConstantValues:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)newIntersectionFunctionWithDescriptor:(id)a3 completionHandler:(id)a4
{
  [(MTLDebugLibrary *)self validateDescriptor:a3 expectedClass:objc_opt_class()];
  v7 = [(MTLDebugLibrary *)self copyConstantValues:a3];
  validateNewFunctionWithConstantArguments([a3 name], v7);
  v8 = [(MTLToolsObject *)self baseObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__MTLDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke;
  v9[3] = &unk_2787B4F28;
  v9[4] = self;
  v9[5] = v7;
  v9[6] = a4;
  [v8 newIntersectionFunctionWithDescriptor:a3 completionHandler:v9];
}

void __75__MTLDebugLibrary_newIntersectionFunctionWithDescriptor_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 24) getFunctionForBaseObject:a2 library:?];
  [v3 setConstantValues:a1[5]];
  (*(a1[6] + 16))();

  v4 = a1[5];
}

- (id)newIntersectionFunctionWithDescriptor:(id)a3 error:(id *)a4
{
  [(MTLDebugLibrary *)self validateDescriptor:a3 expectedClass:objc_opt_class()];
  v7 = [(MTLDebugLibrary *)self copyConstantValues:a3];
  validateNewFunctionWithConstantArguments([a3 name], v7);
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = v8;
    v10 = [(MTLToolsDevice *)self->super.super._device getFunctionForBaseObject:v8 library:self];

    [v10 setConstantValues:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setImageFilterFunctions:(id)a3 imageFilterFunctionInfo:(id *)a4
{
  if (self->_imageFilterFunctionInfo)
  {
    if ([(NSArray *)self->_imageFilterFunctions count])
    {
      v7 = 0;
      v8 = 16;
      do
      {
        free(*(&self->_imageFilterFunctionInfo->var0 + v8));
        ++v7;
        v8 += 24;
      }

      while (v7 < [(NSArray *)self->_imageFilterFunctions count]);
    }

    free(self->_imageFilterFunctionInfo);
  }

  imageFilterFunctions = self->_imageFilterFunctions;
  if (imageFilterFunctions != a3)
  {
    if (imageFilterFunctions)
    {
    }

    imageFilterFunctions = [a3 copy];
    self->_imageFilterFunctions = imageFilterFunctions;
  }

  self->_imageFilterFunctionInfo = malloc_type_malloc(24 * [(NSArray *)imageFilterFunctions count], 0x1060040D275764BuLL);
  if ([(NSArray *)self->_imageFilterFunctions count])
  {
    v10 = 0;
    v11 = 0;
    p_var2 = &a4->var2;
    do
    {
      v13 = &self->_imageFilterFunctionInfo[v10];
      v13->var0 = *(p_var2 - 16);
      v14 = *(p_var2 - 1);
      v13->var1 = v14;
      v15 = 3 * v14;
      v16 = 8 * v15;
      if (8 * v15)
      {
        v17 = malloc_type_malloc(8 * v15, 0x1000040504FFAC1uLL);
        memcpy(v17, *p_var2, v16);
      }

      else
      {
        v17 = 0;
      }

      v13->var2 = v17;
      ++v11;
      p_var2 += 3;
      ++v10;
    }

    while (v11 < [(NSArray *)self->_imageFilterFunctions count]);
  }
}

@end