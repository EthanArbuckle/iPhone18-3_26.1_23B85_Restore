@interface MTL4ToolsMachineLearningPipelineState
- (MTL4MachineLearningPipelineReflection)reflection;
- (MTL4ToolsMachineLearningPipelineState)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLDevice)device;
- (NSString)label;
- (id)optimizedBytecode;
- (id)resourceBlobForByteCodeSignature:(id)a3 resourceName:(id)a4 error:(id *)a5;
- (id)runWithInputsArray:(id)a3 resultsArray:(id)a4 intermediateOperations:(id)a5;
- (unint64_t)allocatedSize;
- (unint64_t)intermediatesHeapSize;
@end

@implementation MTL4ToolsMachineLearningPipelineState

- (MTL4ToolsMachineLearningPipelineState)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsMachineLearningPipelineState;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (MTLDevice)device
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 device];
}

- (unint64_t)intermediatesHeapSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 intermediatesHeapSize];
}

- (MTL4MachineLearningPipelineReflection)reflection
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 reflection];
}

- (unint64_t)allocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

- (id)optimizedBytecode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 optimizedBytecode];
}

- (id)resourceBlobForByteCodeSignature:(id)a3 resourceName:(id)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 resourceBlobForByteCodeSignature:a3 resourceName:a4 error:a5];
}

- (id)runWithInputsArray:(id)a3 resultsArray:(id)a4 intermediateOperations:(id)a5
{
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if ([a3 count])
  {
    v10 = 0;
    do
    {
      [v9 addObject:{objc_msgSend(objc_msgSend(a3, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [a3 count]);
  }

  if (a4)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a4, "count")}];
    if ([a4 count])
    {
      v12 = 0;
      do
      {
        [v11 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v12++), "baseObject")}];
      }

      while (v12 < [a4 count]);
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!a4)
  {
    a4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    if ([v13 count])
    {
      v14 = 0;
      do
      {
        v15 = -[MTLToolsResource initWithBaseObject:parent:]([MTLToolsTensor alloc], "initWithBaseObject:parent:", [v13 objectAtIndexedSubscript:v14], self->super._device);
        [a4 addObject:v15];

        ++v14;
      }

      while (v14 < [v13 count]);
    }
  }

  return a4;
}

@end