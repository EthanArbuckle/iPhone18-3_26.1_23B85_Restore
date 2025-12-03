@interface GCGenericDevicePhysicalInputModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
@end

@implementation GCGenericDevicePhysicalInputModelBuilder

- (GCGenericDevicePhysicalInputModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDevicePhysicalInputModelBuilder;
  return [(GCGenericDevicePhysicalInputModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  elements = [model elements];
  [(GCGenericDevicePhysicalInputModelBuilder *)self setElements:elements];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  elements = [(GCGenericDevicePhysicalInputModelBuilder *)self elements];
  if (!elements)
  {
    [(GCGenericDevicePhysicalInputModelBuilder *)a2 build];
  }

  v6 = [elements copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (unint64_t)hash
{
  modelClass = [objc_opt_class() modelClass];

  return [modelClass hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDevicePhysicalInputModelBuilder;
    v5 = [(GCGenericDevicePhysicalInputModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDevicePhysicalInputModel.m" lineNumber:123 description:@"'elements' can not be nil"];
}

@end