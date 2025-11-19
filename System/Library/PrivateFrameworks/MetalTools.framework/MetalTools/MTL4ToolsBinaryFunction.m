@interface MTL4ToolsBinaryFunction
- (MTL4BinaryFunctionReflection)reflection;
- (MTL4ToolsBinaryFunction)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLDebugInstrumentationData)debugInstrumentationData;
- (NSString)name;
- (unint64_t)functionType;
- (void)dealloc;
- (void)setRelocations:(id)a3;
@end

@implementation MTL4ToolsBinaryFunction

- (NSString)name
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 name];
}

- (MTL4BinaryFunctionReflection)reflection
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 reflection];
}

- (unint64_t)functionType
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 functionType];
}

- (MTLDebugInstrumentationData)debugInstrumentationData
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 debugInstrumentationData];
}

- (MTL4ToolsBinaryFunction)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsBinaryFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsBinaryFunction;
  [(MTLToolsObject *)&v3 dealloc];
}

@end