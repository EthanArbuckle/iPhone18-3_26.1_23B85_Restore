@interface MTL4ToolsMachineLearningPipelineState
- (MTL4MachineLearningPipelineReflection)reflection;
- (MTL4ToolsMachineLearningPipelineState)initWithBaseObject:(id)object parent:(id)parent;
- (MTLDevice)device;
- (NSString)label;
- (id)optimizedBytecode;
- (id)resourceBlobForByteCodeSignature:(id)signature resourceName:(id)name error:(id *)error;
- (id)runWithInputsArray:(id)array resultsArray:(id)resultsArray intermediateOperations:(id)operations;
- (unint64_t)allocatedSize;
- (unint64_t)intermediatesHeapSize;
@end

@implementation MTL4ToolsMachineLearningPipelineState

- (MTL4ToolsMachineLearningPipelineState)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsMachineLearningPipelineState;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (MTLDevice)device
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject device];
}

- (unint64_t)intermediatesHeapSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject intermediatesHeapSize];
}

- (MTL4MachineLearningPipelineReflection)reflection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflection];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (id)optimizedBytecode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject optimizedBytecode];
}

- (id)resourceBlobForByteCodeSignature:(id)signature resourceName:(id)name error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceBlobForByteCodeSignature:signature resourceName:name error:error];
}

- (id)runWithInputsArray:(id)array resultsArray:(id)resultsArray intermediateOperations:(id)operations
{
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(array, "count")}];
  if ([array count])
  {
    v10 = 0;
    do
    {
      [v9 addObject:{objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v10++), "baseObject")}];
    }

    while (v10 < [array count]);
  }

  if (resultsArray)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultsArray, "count")}];
    if ([resultsArray count])
    {
      v12 = 0;
      do
      {
        [v11 addObject:{objc_msgSend(objc_msgSend(resultsArray, "objectAtIndexedSubscript:", v12++), "baseObject")}];
      }

      while (v12 < [resultsArray count]);
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (!resultsArray)
  {
    resultsArray = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    if ([v13 count])
    {
      v14 = 0;
      do
      {
        v15 = -[MTLToolsResource initWithBaseObject:parent:]([MTLToolsTensor alloc], "initWithBaseObject:parent:", [v13 objectAtIndexedSubscript:v14], self->super._device);
        [resultsArray addObject:v15];

        ++v14;
      }

      while (v14 < [v13 count]);
    }
  }

  return resultsArray;
}

@end