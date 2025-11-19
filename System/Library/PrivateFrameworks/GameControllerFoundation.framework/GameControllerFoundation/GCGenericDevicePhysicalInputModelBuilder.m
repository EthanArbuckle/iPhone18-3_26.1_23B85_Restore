@interface GCGenericDevicePhysicalInputModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDevicePhysicalInputModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
@end

@implementation GCGenericDevicePhysicalInputModelBuilder

- (GCGenericDevicePhysicalInputModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDevicePhysicalInputModelBuilder;
  return [(GCGenericDevicePhysicalInputModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)a3
{
  v4 = [a3 elements];
  [(GCGenericDevicePhysicalInputModelBuilder *)self setElements:v4];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  v5 = [(GCGenericDevicePhysicalInputModelBuilder *)self elements];
  if (!v5)
  {
    [(GCGenericDevicePhysicalInputModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (unint64_t)hash
{
  v2 = [objc_opt_class() modelClass];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDevicePhysicalInputModelBuilder;
    v5 = [(GCGenericDevicePhysicalInputModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDevicePhysicalInputModel.m" lineNumber:123 description:@"'elements' can not be nil"];
}

@end