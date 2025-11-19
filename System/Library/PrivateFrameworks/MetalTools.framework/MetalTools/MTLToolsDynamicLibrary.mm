@interface MTLToolsDynamicLibrary
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
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
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setDebugInstrumentationData:(id)a3;
- (void)setLabel:(id)a3;
- (void)setRelocations:(id)a3;
@end

@implementation MTLToolsDynamicLibrary

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

- (OS_dispatch_data)binaryData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 binaryData];
}

- (OS_dispatch_data)reflectionData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 reflectionData];
}

- (NSArray)exportedFunctions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 exportedFunctions];
}

- (NSArray)exportedVariables
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 exportedVariables];
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

- (NSString)installName
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 installName];
}

- (NSString)libraryPath
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 libraryPath];
}

- (const)libraryUUID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 libraryUUID];
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 serializeToURL:a3 error:a4];
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  return [v8 serializeToURL:a3 options:a4 error:a5];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 formattedDescription:a3];
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

- (BOOL)shaderValidationEnabled
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 shaderValidationEnabled];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 debugInstrumentationData];
}

- (void)setDebugInstrumentationData:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setDebugInstrumentationData:a3];
}

- (void)dealloc
{
  [(MTLToolsObjectCache *)self->super._device->dynamicLibraryObjectCache removeKey:self->super._baseObject];
  v3.receiver = self;
  v3.super_class = MTLToolsDynamicLibrary;
  [(MTLToolsObject *)&v3 dealloc];
}

@end