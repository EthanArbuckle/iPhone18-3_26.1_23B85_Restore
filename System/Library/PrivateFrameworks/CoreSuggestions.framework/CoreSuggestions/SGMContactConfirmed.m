@interface SGMContactConfirmed
- (SGMContactConfirmed)init;
- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 firstNameAdj:(SGMTypeSafeBool_)a5 lastNameAdj:(SGMTypeSafeBool_)a6 middleNameAdj:(SGMTypeSafeBool_)a7 isUpdate:(SGMTypeSafeBool_)a8 extracted:(SGMBannerExtractionType_)a9 extractionModelVersion:(unint64_t)a10 selfId:(SGMTypeSafeBool_)a11 contactDetail:(SGMContactDetailType_)a12;
@end

@implementation SGMContactConfirmed

- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 firstNameAdj:(SGMTypeSafeBool_)a5 lastNameAdj:(SGMTypeSafeBool_)a6 middleNameAdj:(SGMTypeSafeBool_)a7 isUpdate:(SGMTypeSafeBool_)a8 extracted:(SGMBannerExtractionType_)a9 extractionModelVersion:(unint64_t)a10 selfId:(SGMTypeSafeBool_)a11 contactDetail:(SGMContactDetailType_)a12
{
  v55[9] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [v20 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", a4.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFBFB0[a4.var0];
  }

  v53 = v19;
  if (a5.var0)
  {
    if (a5.var0 == 1)
    {
      v22 = @"1";
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v23 handleFailureInFunction:v24 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a5.var0}];

      v22 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v22 = @"0";
  }

  v52 = v22;
  if (a6.var0)
  {
    if (a6.var0 == 1)
    {
      v25 = @"1";
    }

    else
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v26 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a6.var0}];

      v25 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v25 = @"0";
  }

  v51 = v25;
  v54 = a3;
  v28 = self;
  if (a7.var0)
  {
    if (a7.var0 == 1)
    {
      v29 = @"1";
    }

    else
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v30 handleFailureInFunction:v31 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a7.var0}];

      v29 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v29 = @"0";
  }

  v50 = v29;
  if (a8.var0)
  {
    if (a8.var0 == 1)
    {
      v32 = @"1";
    }

    else
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v33 handleFailureInFunction:v34 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a8.var0}];

      v32 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v32 = @"0";
  }

  if (a9.var0 >= 4)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerExtractionType_toString(SGMBannerExtractionType)"];
    [v36 handleFailureInFunction:v37 file:@"SGMetricsDefines.h" lineNumber:111 description:{@"unrecognized tag %lu on SGMBannerExtractionType", a9.var0}];

    v35 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v35 = off_1E7EFBEC8[a9.var0];
  }

  if (a11.var0)
  {
    if (a11.var0 == 1)
    {
      v38 = @"1";
    }

    else
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      v41 = v40 = v32;
      [v39 handleFailureInFunction:v41 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a11.var0}];

      v32 = v40;
      v38 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v38 = @"0";
  }

  if (a12.var0 >= 5)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    v45 = v44 = v32;
    [v43 handleFailureInFunction:v45 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", a12.var0}];

    v32 = v44;
    v42 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v42 = off_1E7EFC2B8[a12.var0];
  }

  tracker = v28->_tracker;
  v55[0] = v53;
  v55[1] = v52;
  v55[2] = v51;
  v55[3] = v50;
  v55[4] = v32;
  v55[5] = v35;
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a10];
  v55[6] = v47;
  v55[7] = v38;
  v55[8] = v42;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:9];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v48 value:v54];

  v49 = *MEMORY[0x1E69E9840];
}

- (SGMContactConfirmed)init
{
  v20[9] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = SGMContactConfirmed;
  v2 = [(SGMContactConfirmed *)&v19 init];
  if (v2)
  {
    v18 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v17 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"FirstNameAdj"];
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"LastNameAdj"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"MiddleNameAdj"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"IsUpdate"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v7 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"SelfId"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ContactDetail"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v20[0] = v18;
    v20[1] = v17;
    v20[2] = v3;
    v20[3] = v4;
    v20[4] = v5;
    v20[5] = v6;
    v11 = v6;
    v20[6] = v7;
    v20[7] = v8;
    v20[8] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:9];
    v13 = [v10 initWithFeatureId:@"Found" event:@"ContactConfirmed" registerProperties:v12 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

@end