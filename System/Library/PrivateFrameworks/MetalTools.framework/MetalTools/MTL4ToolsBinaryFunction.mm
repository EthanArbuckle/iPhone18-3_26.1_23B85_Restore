@interface MTL4ToolsBinaryFunction
- (MTL4BinaryFunctionReflection)reflection;
- (MTL4ToolsBinaryFunction)initWithBaseObject:(id)object parent:(id)parent;
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (NSString)name;
- (unint64_t)functionType;
- (void)dealloc;
- (void)setRelocations:(id)relocations;
@end

@implementation MTL4ToolsBinaryFunction

- (NSString)name
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject name];
}

- (MTL4BinaryFunctionReflection)reflection
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject reflection];
}

- (unint64_t)functionType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject functionType];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject debugInstrumentationData];
}

- (MTL4ToolsBinaryFunction)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsBinaryFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsBinaryFunction;
  [(MTLToolsObject *)&v3 dealloc];
}

@end