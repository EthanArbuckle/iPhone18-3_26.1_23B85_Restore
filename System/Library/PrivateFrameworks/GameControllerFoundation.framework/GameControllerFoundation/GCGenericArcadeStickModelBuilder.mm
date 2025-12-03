@interface GCGenericArcadeStickModelBuilder
- (id)build;
- (void)initializeWithModel:(id)model;
@end

@implementation GCGenericArcadeStickModelBuilder

- (void)initializeWithModel:(id)model
{
  v3.receiver = self;
  v3.super_class = GCGenericArcadeStickModelBuilder;
  [(GCGenericDeviceModelBuilder *)&v3 initializeWithModel:model];
}

- (id)build
{
  v4.receiver = self;
  v4.super_class = GCGenericArcadeStickModelBuilder;
  build = [(GCGenericDeviceModelBuilder *)&v4 build];

  return build;
}

@end