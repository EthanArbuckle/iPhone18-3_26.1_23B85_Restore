@interface GCGenericDeviceInputGamepadEventFieldModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceInputGamepadEventFieldModelBuilder)init;
- (id)build;
- (unint64_t)hash;
- (void)initializeWithModel:(id)a3;
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

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  -[GCGenericDeviceInputGamepadEventFieldModelBuilder setExtendedIndex:](self, "setExtendedIndex:", [v4 extendedIndex]);
  v5 = [v4 sourceExpression];

  [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self setSourceExpression:v5];
}

- (id)build
{
  v3 = objc_alloc([objc_opt_class() modelClass]);
  v3[1] = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self extendedIndex];
  v4 = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)self sourceExpression];
  v5 = [v4 copy];
  v6 = v3[2];
  v3[2] = v5;

  return v3;
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
    v8.super_class = GCGenericDeviceInputGamepadEventFieldModelBuilder;
    v5 = [(GCGenericDeviceInputGamepadEventFieldModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

@end