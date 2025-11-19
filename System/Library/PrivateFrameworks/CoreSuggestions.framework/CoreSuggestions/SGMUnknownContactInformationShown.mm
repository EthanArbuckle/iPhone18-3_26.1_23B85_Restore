@interface SGMUnknownContactInformationShown
- (SGMUnknownContactInformationShown)init;
- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMContactDetailUsedApp_)a4 wasSuggestedContact:(SGMTypeSafeBool_)a5;
@end

@implementation SGMUnknownContactInformationShown

- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMContactDetailUsedApp_)a4 wasSuggestedContact:(SGMTypeSafeBool_)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 0xC)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [v10 handleFailureInFunction:v11 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", a4.var0}];

    v9 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v9 = off_1E7EFBE68[a4.var0];
  }

  v12 = v9;
  if (a5.var0)
  {
    if (a5.var0 == 1)
    {
      v13 = @"1";
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v14 handleFailureInFunction:v15 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a5.var0}];

      v13 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v13 = @"0";
  }

  tracker = self->_tracker;
  v19[0] = v12;
  v19[1] = v13;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v17 value:a3];

  v18 = *MEMORY[0x1E69E9840];
}

- (SGMUnknownContactInformationShown)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMUnknownContactInformationShown;
  v2 = [(SGMUnknownContactInformationShown *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"WasSuggestedContact"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"UnknownShown" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end