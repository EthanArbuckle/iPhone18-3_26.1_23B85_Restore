@interface SGMBundleIdsTrackedAsOther
- (SGMBundleIdsTrackedAsOther)init;
- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id;
@end

@implementation SGMBundleIdsTrackedAsOther

- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id
{
  v11 = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  idCopy = id;
  v6 = MEMORY[0x1E695DEC8];
  idCopy2 = id;
  v8 = [v6 arrayWithObjects:&idCopy count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v8 value:scalar, idCopy, v11];

  v9 = *MEMORY[0x1E69E9840];
}

- (SGMBundleIdsTrackedAsOther)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMBundleIdsTrackedAsOther;
  v2 = [(SGMBundleIdsTrackedAsOther *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"BundleId"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"BundleIdsTrackedAsOther" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end