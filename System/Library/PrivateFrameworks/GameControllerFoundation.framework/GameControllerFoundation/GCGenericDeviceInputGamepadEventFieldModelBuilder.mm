@interface GCGenericDeviceInputGamepadEventFieldModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceInputGamepadEventFieldModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)initializeWithModel:(id)model;
@end

@implementation GCGenericDeviceInputGamepadEventFieldModelBuilder

- (GCGenericDeviceInputGamepadEventFieldModelBuilder)init
{
  v4.receiver = self;
  v4.super_class = GCGenericDeviceInputGamepadEventFieldModelBuilder;
  v2 = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)&v4 init];
  [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)v2 reset];
  return v2;
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  -[GCGenericDeviceInputGamepadEventFieldModelBuilder setExtendedIndex:](self, "setExtendedIndex:", [modelCopy extendedIndex]);
  sourceExpression = [modelCopy sourceExpression];

  [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self setSourceExpression:sourceExpression];
}

- (id)build
{
  v3 = objc_alloc([objc_opt_class() modelClass]);
  v3[1] = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self extendedIndex];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self sourceExpression];
  v5 = [sourceExpression copy];
  v6 = v3[2];
  v3[2] = v5;

  return v3;
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
    v8.super_class = GCGenericDeviceInputGamepadEventFieldModelBuilder;
    v5 = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

@end