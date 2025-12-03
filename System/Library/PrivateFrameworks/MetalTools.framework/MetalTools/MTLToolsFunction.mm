@interface MTLToolsFunction
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (MTLFunctionHandle)functionHandle;
- (MTLToolsFunction)initWithFunction:(id)function library:(id)library;
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
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index pipelineLibrary:(id)library;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library;
- (id)precompiledOutput;
- (id)reflectionWithOptions:(unint64_t)options;
- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives;
- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library;
- (int64_t)lineNumber;
- (int64_t)patchControlPointCount;
- (unint64_t)functionType;
- (unint64_t)options;
- (unint64_t)patchType;
- (unint64_t)renderTargetArrayIndexType;
- (void)dealloc;
- (void)reflectionWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setLabel:(id)label;
- (void)setRelocations:(id)relocations;
@end

@implementation MTLToolsFunction

- (MTLToolsFunction)initWithFunction:(id)function library:(id)library
{
  v5.receiver = self;
  v5.super_class = MTLToolsFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:function parent:library];
}

- (unint64_t)functionType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionType];
}

- (NSArray)vertexAttributes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject vertexAttributes];
}

- (MTLType)returnType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject returnType];
}

- (NSArray)arguments
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject arguments];
}

- (NSArray)bindings
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bindings];
}

- (NSArray)importedSymbols
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject importedSymbols];
}

- (NSArray)importedLibraries
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject importedLibraries];
}

- (NSArray)stageInputAttributes
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject stageInputAttributes];
}

- (NSString)name
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject name];
}

- (NSString)filePath
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject filePath];
}

- (int64_t)lineNumber
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject lineNumber];
}

- (NSString)unpackedFilePath
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject unpackedFilePath];
}

- (id)functionInputs
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionInputs];
}

- (id)functionConstants
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionConstants];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugInstrumentationData];
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

- (unint64_t)renderTargetArrayIndexType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject renderTargetArrayIndexType];
}

- (NSDictionary)functionConstantsDictionary
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionConstantsDictionary];
}

- (unint64_t)patchType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject patchType];
}

- (int64_t)patchControlPointCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject patchControlPointCount];
}

- (unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject options];
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index pipelineLibrary:(id)library
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection binaryArchives:(id)archives
{
  v9 = objc_autoreleasePoolPush();
  if (archives)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(archives, "count")}];
    if ([archives count])
    {
      v11 = 0;
      do
      {
        [v10 addObject:{objc_msgSend(objc_msgSend(archives, "objectAtIndexedSubscript:", v11++), "baseObject")}];
      }

      while (v11 < [archives count]);
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

- (void)setRelocations:(id)relocations
{
  relocations = self->_relocations;
  if (relocations != relocations)
  {

    self->_relocations = [relocations copy];
    v6 = [MTLToolsDevice newUnwrappedMTLRelocations:relocations];
    [-[MTLToolsObject baseObject](self "baseObject")];
  }
}

- (id)bitcodeData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bitcodeData];
}

- (id)reflectionWithOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflectionWithOptions:options];
}

- (id)reflectionWithOptions:(unint64_t)options pipelineLibrary:(id)library
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [library baseObject];

  return [baseObject reflectionWithOptions:options pipelineLibrary:baseObject2];
}

- (id)reflectionWithOptions:(unint64_t)options binaryArchives:(id)archives
{
  v7 = objc_autoreleasePoolPush();
  if (archives)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(archives, "count")}];
    if ([archives count])
    {
      v9 = 0;
      do
      {
        [v8 addObject:{objc_msgSend(objc_msgSend(archives, "objectAtIndexedSubscript:", v9++), "baseObject")}];
      }

      while (v9 < [archives count]);
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

- (void)reflectionWithOptions:(unint64_t)options completionHandler:(id)handler
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject reflectionWithOptions:options completionHandler:handler];
}

- (const)bitCodeHash
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject bitCodeHash];
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
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject precompiledOutput];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->functionObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsFunction;
  [(MTLToolsObject *)&v3 dealloc];
}

@end