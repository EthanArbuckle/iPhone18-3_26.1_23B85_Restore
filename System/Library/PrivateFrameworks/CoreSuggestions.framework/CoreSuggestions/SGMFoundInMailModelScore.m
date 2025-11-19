@interface SGMFoundInMailModelScore
- (SGMFoundInMailModelScore)init;
- (void)trackEventWithScalar:(unint64_t)a3 model:(SGMFoundInMailModelType_)a4 contactDetail:(SGMContactDetailType_)a5 result:(SGMTypeSafeBool_)a6 correct:(SGMTypeSafeBool_)a7 mode:(SGFoundInMailModelMode_)a8 supervision:(SGMFoundInMailSupervisionType_)a9;
@end

@implementation SGMFoundInMailModelScore

- (void)trackEventWithScalar:(unint64_t)a3 model:(SGMFoundInMailModelType_)a4 contactDetail:(SGMContactDetailType_)a5 result:(SGMTypeSafeBool_)a6 correct:(SGMTypeSafeBool_)a7 mode:(SGFoundInMailModelMode_)a8 supervision:(SGMFoundInMailSupervisionType_)a9
{
  v40[6] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInMailModelType_toString(SGMFoundInMailModelType)"];
    [v16 handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:605 description:{@"unrecognized tag %lu on SGMFoundInMailModelType", a4.var0}];

    v15 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v15 = off_1E7EFC298[a4.var0];
  }

  v39 = v15;
  if (a5.var0 >= 5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [v19 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", a5.var0}];

    v18 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v18 = off_1E7EFC2B8[a5.var0];
  }

  v38 = v18;
  if (a6.var0)
  {
    if (a6.var0 == 1)
    {
      v21 = @"1";
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v22 handleFailureInFunction:v23 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a6.var0}];

      v21 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v21 = @"0";
  }

  if (a7.var0)
  {
    v24 = a3;
    if (a7.var0 == 1)
    {
      v25 = @"1";
    }

    else
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v26 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a7.var0}];

      v25 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v24 = a3;
    v25 = @"0";
  }

  if (a8.var0 >= 3)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGFoundInMailModelMode_toString(SGFoundInMailModelMode)"];
    [v29 handleFailureInFunction:v30 file:@"SGMetricsDefines.h" lineNumber:637 description:{@"unrecognized tag %lu on SGFoundInMailModelMode", a8.var0}];

    v28 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v28 = off_1E7EFC2E0[a8.var0];
  }

  if (a9.var0 >= 4)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInMailSupervisionType_toString(SGMFoundInMailSupervisionType)"];
    [v32 handleFailureInFunction:v33 file:@"SGMetricsDefines.h" lineNumber:622 description:{@"unrecognized tag %lu on SGMFoundInMailSupervisionType", a9.var0}];

    v31 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v31 = off_1E7EFC2F8[a9.var0];
  }

  tracker = self->_tracker;
  v40[0] = v39;
  v40[1] = v38;
  v40[2] = v21;
  v40[3] = v25;
  v40[4] = v28;
  v40[5] = v31;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:6];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v35 value:v24];

  v36 = *MEMORY[0x1E69E9840];
}

- (SGMFoundInMailModelScore)init
{
  v16[6] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SGMFoundInMailModelScore;
  v2 = [(SGMFoundInMailModelScore *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Model"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ContactDetail"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Result"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Correct"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Mode"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Supervision"];
    v9 = objc_alloc(MEMORY[0x1E69C5B58]);
    v16[0] = v3;
    v16[1] = v4;
    v16[2] = v5;
    v16[3] = v6;
    v16[4] = v7;
    v16[5] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    v11 = [v9 initWithFeatureId:@"Found" event:@"FoundInMailModelScore" registerProperties:v10 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

@end