@interface SGMSerializedContactsCacheHit
- (SGMSerializedContactsCacheHit)init;
- (void)trackEventWithScalar:(unint64_t)scalar cacheHit:(SGMTypeSafeBool_)hit;
@end

@implementation SGMSerializedContactsCacheHit

- (void)trackEventWithScalar:(unint64_t)scalar cacheHit:(SGMTypeSafeBool_)hit
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (hit.var0)
  {
    if (hit.var0 == 1)
    {
      v7 = @"1";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", hit.var0}];

      v7 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v7 = @"0";
  }

  tracker = self->_tracker;
  v13[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v11 value:scalar];

  v12 = *MEMORY[0x1E69E9840];
}

- (SGMSerializedContactsCacheHit)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMSerializedContactsCacheHit;
  v2 = [(SGMSerializedContactsCacheHit *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"CacheHit"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SerializedContactsCacheHit" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end