@interface MTLToolsFunction
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (MTLFunctionHandle)functionHandle;
- (MTLToolsFunction)initWithFunction:(id)a3 library:(id)a4;
- (MTLType)returnType;
- (NSArray)arguments;
- (NSArray)bindings;
- (NSArray)importedLibraries;
- (NSArray)importedSymbols;
- (NSArray)stageInputAttributes;
- (NSArray)vertexAttributes;
- (NSDictionary)functionConstantsDictionary;
- (NSString)filePath;
- (NSString)label;
- (NSString)name;
- (NSString)unpackedFilePath;
- (const)bitCodeHash;
- (id)bitcodeData;
- (id)functionConstants;
- (id)functionInputs;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 pipelineLibrary:(id)a4;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 binaryArchives:(id)a5;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5;
- (id)precompiledOutput;
- (id)reflectionWithOptions:(unint64_t)a3;
- (id)reflectionWithOptions:(unint64_t)a3 binaryArchives:(id)a4;
- (id)reflectionWithOptions:(unint64_t)a3 pipelineLibrary:(id)a4;
- (int64_t)lineNumber;
- (int64_t)patchControlPointCount;
- (unint64_t)functionType;
- (unint64_t)options;
- (unint64_t)patchType;
- (unint64_t)renderTargetArrayIndexType;
- (void)dealloc;
- (void)reflectionWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)setLabel:(id)a3;
- (void)setRelocations:(id)a3;
@end

@implementation MTLToolsFunction

- (MTLToolsFunction)initWithFunction:(id)a3 library:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLToolsFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (unint64_t)functionType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionType];
}

- (NSArray)vertexAttributes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 vertexAttributes];
}

- (MTLType)returnType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 returnType];
}

- (NSArray)arguments
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 arguments];
}

- (NSArray)bindings
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bindings];
}

- (NSArray)importedSymbols
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 importedSymbols];
}

- (NSArray)importedLibraries
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 importedLibraries];
}

- (NSArray)stageInputAttributes
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 stageInputAttributes];
}

- (NSString)name
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 name];
}

- (NSString)filePath
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 filePath];
}

- (int64_t)lineNumber
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 lineNumber];
}

- (NSString)unpackedFilePath
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 unpackedFilePath];
}

- (id)functionInputs
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionInputs];
}

- (id)functionConstants
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionConstants];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 debugInstrumentationData];
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

- (unint64_t)renderTargetArrayIndexType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 renderTargetArrayIndexType];
}

- (NSDictionary)functionConstantsDictionary
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionConstantsDictionary];
}

- (unint64_t)patchType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 patchType];
}

- (int64_t)patchControlPointCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 patchControlPointCount];
}

- (unint64_t)options
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 options];
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:result parent:self];

    return v7;
  }

  return result;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 pipelineLibrary:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:v8 parent:self];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:v10 parent:self];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 binaryArchives:(id)a5
{
  v9 = objc_autoreleasePoolPush();
  if (a5)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a5, "count")}];
    if ([a5 count])
    {
      v11 = 0;
      do
      {
        [v10 addObject:{objc_msgSend(objc_msgSend(a5, "objectAtIndexedSubscript:", v11++), "baseObject")}];
      }

      while (v11 < [a5 count]);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:v12 parent:self];
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v14;
}

- (void)setRelocations:(id)a3
{
  relocations = self->_relocations;
  if (relocations != a3)
  {

    self->_relocations = [a3 copy];
    v6 = [MTLToolsDevice newUnwrappedMTLRelocations:a3];
    [-[MTLToolsObject baseObject](self "baseObject")];
  }
}

- (id)bitcodeData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bitcodeData];
}

- (id)reflectionWithOptions:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 reflectionWithOptions:a3];
}

- (id)reflectionWithOptions:(unint64_t)a3 pipelineLibrary:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a4 baseObject];

  return [v6 reflectionWithOptions:a3 pipelineLibrary:v7];
}

- (id)reflectionWithOptions:(unint64_t)a3 binaryArchives:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  if (a4)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
    if ([a4 count])
    {
      v9 = 0;
      do
      {
        [v8 addObject:{objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v9++), "baseObject")}];
      }

      while (v9 < [a4 count]);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  v11 = v10;
  objc_autoreleasePoolPop(v7);

  return v10;
}

- (void)reflectionWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 reflectionWithOptions:a3 completionHandler:a4];
}

- (const)bitCodeHash
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 bitCodeHash];
}

- (MTLFunctionHandle)functionHandle
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = MTLFunctionHandleToToolsFunctionHandle(v4, self, self);
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)precompiledOutput
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 precompiledOutput];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->functionObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsFunction;
  [(MTLToolsObject *)&v3 dealloc];
}

@end