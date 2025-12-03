@interface GCGenericDeviceDriverPropertiesModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertiesModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
@end

@implementation GCGenericDeviceDriverPropertiesModelBuilder

- (GCGenericDeviceDriverPropertiesModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceDriverPropertiesModelBuilder;
  return [(GCGenericDeviceDriverPropertiesModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  properties = [model properties];
  [(GCGenericDeviceDriverPropertiesModelBuilder *)self setProperties:properties];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  properties = [(GCGenericDeviceDriverPropertiesModelBuilder *)self properties];
  if (!properties)
  {
    [(GCGenericDeviceDriverPropertiesModelBuilder *)a2 build];
  }

  v6 = [properties copy];
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
    v8.super_class = GCGenericDeviceDriverPropertiesModelBuilder;
    v5 = [(GCGenericDeviceDriverPropertiesModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceDriverPropertiesModel.m" lineNumber:110 description:@"'properties' can not be nil"];
}

@end