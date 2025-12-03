@interface SGMContactConfirmed
- (SGMContactConfirmed)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app firstNameAdj:(SGMTypeSafeBool_)adj lastNameAdj:(SGMTypeSafeBool_)nameAdj middleNameAdj:(SGMTypeSafeBool_)middleNameAdj isUpdate:(SGMTypeSafeBool_)update extracted:(SGMBannerExtractionType_)extracted extractionModelVersion:(unint64_t)self0 selfId:(SGMTypeSafeBool_)self1 contactDetail:(SGMContactDetailType_)self2;
@end

@implementation SGMContactConfirmed

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app firstNameAdj:(SGMTypeSafeBool_)adj lastNameAdj:(SGMTypeSafeBool_)nameAdj middleNameAdj:(SGMTypeSafeBool_)middleNameAdj isUpdate:(SGMTypeSafeBool_)update extracted:(SGMBannerExtractionType_)extracted extractionModelVersion:(unint64_t)self0 selfId:(SGMTypeSafeBool_)self1 contactDetail:(SGMContactDetailType_)self2
{
  v55[9] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [currentHandler handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", app.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFBFB0[app.var0];
  }

  v53 = v19;
  if (adj.var0)
  {
    if (adj.var0 == 1)
    {
      v22 = @"1";
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler2 handleFailureInFunction:v24 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", adj.var0}];

      v22 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v22 = @"0";
  }

  v52 = v22;
  if (nameAdj.var0)
  {
    if (nameAdj.var0 == 1)
    {
      v25 = @"1";
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler3 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", nameAdj.var0}];

      v25 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v25 = @"0";
  }

  v51 = v25;
  scalarCopy = scalar;
  selfCopy = self;
  if (middleNameAdj.var0)
  {
    if (middleNameAdj.var0 == 1)
    {
      v29 = @"1";
    }

    else
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler4 handleFailureInFunction:v31 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", middleNameAdj.var0}];

      v29 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v29 = @"0";
  }

  v50 = v29;
  if (update.var0)
  {
    if (update.var0 == 1)
    {
      v32 = @"1";
    }

    else
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler5 handleFailureInFunction:v34 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", update.var0}];

      v32 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v32 = @"0";
  }

  if (extracted.var0 >= 4)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerExtractionType_toString(SGMBannerExtractionType)"];
    [currentHandler6 handleFailureInFunction:v37 file:@"SGMetricsDefines.h" lineNumber:111 description:{@"unrecognized tag %lu on SGMBannerExtractionType", extracted.var0}];

    v35 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v35 = off_1E7EFBEC8[extracted.var0];
  }

  if (id.var0)
  {
    if (id.var0 == 1)
    {
      v38 = @"1";
    }

    else
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      v41 = v40 = v32;
      [currentHandler7 handleFailureInFunction:v41 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", id.var0}];

      v32 = v40;
      v38 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v38 = @"0";
  }

  if (detail.var0 >= 5)
  {
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    v45 = v44 = v32;
    [currentHandler8 handleFailureInFunction:v45 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", detail.var0}];

    v32 = v44;
    v42 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v42 = off_1E7EFC2B8[detail.var0];
  }

  tracker = selfCopy->_tracker;
  v55[0] = v53;
  v55[1] = v52;
  v55[2] = v51;
  v55[3] = v50;
  v55[4] = v32;
  v55[5] = v35;
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v55[6] = v47;
  v55[7] = v38;
  v55[8] = v42;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:9];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v48 value:scalarCopy];

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