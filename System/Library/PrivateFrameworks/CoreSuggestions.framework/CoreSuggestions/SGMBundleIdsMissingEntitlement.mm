@interface SGMBundleIdsMissingEntitlement
- (SGMBundleIdsMissingEntitlement)init;
- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id entitlement:(id)entitlement;
@end

@implementation SGMBundleIdsMissingEntitlement

- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id entitlement:(id)entitlement
{
  v13[2] = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  v13[0] = id;
  v13[1] = entitlement;
  v8 = MEMORY[0x1E695DEC8];
  entitlementCopy = entitlement;
  idCopy = id;
  v11 = [v8 arrayWithObjects:v13 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v11 value:scalar];

  v12 = *MEMORY[0x1E69E9840];
}

- (SGMBundleIdsMissingEntitlement)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMBundleIdsMissingEntitlement;
  v2 = [(SGMBundleIdsMissingEntitlement *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"BundleId"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Entitlement"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"BundleIdsMissingEntitlement" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end