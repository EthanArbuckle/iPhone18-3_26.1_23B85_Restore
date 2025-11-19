@interface SGMBundleIdsUsingOldEntitlement
- (SGMBundleIdsUsingOldEntitlement)init;
- (void)trackEventWithScalar:(unint64_t)a3 bundleId:(id)a4;
@end

@implementation SGMBundleIdsUsingOldEntitlement

- (void)trackEventWithScalar:(unint64_t)a3 bundleId:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  v10 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = [v6 arrayWithObjects:&v10 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v8 value:a3, v10, v11];

  v9 = *MEMORY[0x1E69E9840];
}

- (SGMBundleIdsUsingOldEntitlement)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMBundleIdsUsingOldEntitlement;
  v2 = [(SGMBundleIdsUsingOldEntitlement *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"BundleId"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"BundleIdsUsingOldEntitlement" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end