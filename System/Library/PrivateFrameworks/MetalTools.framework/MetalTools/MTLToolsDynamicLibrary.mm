@interface MTLToolsDynamicLibrary
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)shaderValidationEnabled;
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (MTLDevice)device;
- (NSArray)exportedFunctions;
- (NSArray)exportedVariables;
- (NSArray)importedLibraries;
- (NSArray)importedSymbols;
- (NSString)installName;
- (NSString)label;
- (NSString)libraryPath;
- (OS_dispatch_data)binaryData;
- (OS_dispatch_data)reflectionData;
- (const)libraryUUID;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setDebugInstrumentationData:(id)data;
- (void)setLabel:(id)label;
- (void)setRelocations:(id)relocations;
@end

@implementation MTLToolsDynamicLibrary

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

- (OS_dispatch_data)binaryData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject binaryData];
}

- (OS_dispatch_data)reflectionData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflectionData];
}

- (NSArray)exportedFunctions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject exportedFunctions];
}

- (NSArray)exportedVariables
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject exportedVariables];
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

- (NSString)installName
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject installName];
}

- (NSString)libraryPath
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject libraryPath];
}

- (const)libraryUUID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject libraryUUID];
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeToURL:l error:error];
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject serializeToURL:l options:options error:error];
}

- (id)formattedDescription:(unint64_t)description
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject formattedDescription:description];
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

- (BOOL)shaderValidationEnabled
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject shaderValidationEnabled];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugInstrumentationData];
}

- (void)setDebugInstrumentationData:(id)data
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDebugInstrumentationData:data];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->dynamicLibraryObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsDynamicLibrary;
  [(MTLToolsObject *)&v3 dealloc];
}

@end