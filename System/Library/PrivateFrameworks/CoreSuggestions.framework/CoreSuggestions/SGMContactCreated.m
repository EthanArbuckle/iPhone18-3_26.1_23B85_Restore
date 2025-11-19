@interface SGMContactCreated
- (SGMContactCreated)init;
- (void)trackEventWithScalar:(unint64_t)a3 wasSuggestedContact:(SGMTypeSafeBool_)a4 app:(SGMContactDetailUsedApp_)a5;
@end

@implementation SGMContactCreated

- (void)trackEventWithScalar:(unint64_t)a3 wasSuggestedContact:(SGMTypeSafeBool_)a4 app:(SGMContactDetailUsedApp_)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v9 = @"1";
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v10 handleFailureInFunction:v11 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a4.var0}];

      v9 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v9 = @"0";
  }

  if (a5.var0 >= 0xC)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [v13 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", a5.var0}];

    v12 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v12 = off_1E7EFBE68[a5.var0];
  }

  v15 = v12;
  tracker = self->_tracker;
  v19[0] = v9;
  v19[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v17 value:a3];

  v18 = *MEMORY[0x1E69E9840];
}

- (SGMContactCreated)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMContactCreated;
  v2 = [(SGMContactCreated *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"WasSuggestedContact"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"ContactCreated" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end