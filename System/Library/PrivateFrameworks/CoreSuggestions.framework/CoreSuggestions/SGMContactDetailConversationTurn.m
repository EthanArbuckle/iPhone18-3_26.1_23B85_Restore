@interface SGMContactDetailConversationTurn
- (SGMContactDetailConversationTurn)init;
- (void)trackEventWithScalar:(unint64_t)a3 detailExtraction:(SGMDetailExtractionType_)a4 selfIdName:(SGMTypeSafeBool_)a5 extractionModelVersion:(unint64_t)a6 receivedConverstationTurn:(SGMTypeSafeBool_)a7 knownSuggestedContactDetail:(SGMTypeSafeBool_)a8 curatedContactDetail:(SGMTypeSafeBool_)a9 throughApp:(SGMContactDetailUsedApp_)a10 contactDetailUsed:(SGMContactDetailType_)a11;
@end

@implementation SGMContactDetailConversationTurn

- (void)trackEventWithScalar:(unint64_t)a3 detailExtraction:(SGMDetailExtractionType_)a4 selfIdName:(SGMTypeSafeBool_)a5 extractionModelVersion:(unint64_t)a6 receivedConverstationTurn:(SGMTypeSafeBool_)a7 knownSuggestedContactDetail:(SGMTypeSafeBool_)a8 curatedContactDetail:(SGMTypeSafeBool_)a9 throughApp:(SGMContactDetailUsedApp_)a10 contactDetailUsed:(SGMContactDetailType_)a11
{
  v47[8] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 0xA)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMDetailExtractionType_toString(SGMDetailExtractionType)"];
    [v19 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:140 description:{@"unrecognized tag %lu on SGMDetailExtractionType", a4.var0}];

    v18 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v18 = off_1E7EFBE18[a4.var0];
  }

  v21 = v18;
  v46 = a3;
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

  v45 = v22;
  if (a7.var0)
  {
    if (a7.var0 == 1)
    {
      v25 = @"1";
      if (!a8.var0)
      {
        goto LABEL_17;
      }

LABEL_14:
      if (a8.var0 == 1)
      {
        v26 = @"1";
      }

      else
      {
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [v29 handleFailureInFunction:v30 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a8.var0}];

        v26 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_19;
    }

    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
    [v27 handleFailureInFunction:v28 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a7.var0}];

    v25 = @"ERR_UNMATCHED_TAG";
    if (a8.var0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = @"0";
    if (a8.var0)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v26 = @"0";
LABEL_19:
  if (a9.var0)
  {
    if (a9.var0 == 1)
    {
      v31 = @"1";
    }

    else
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v32 handleFailureInFunction:v33 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a9.var0}];

      v31 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v31 = @"0";
  }

  if (a10.var0 >= 0xC)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [v35 handleFailureInFunction:v36 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", a10.var0}];

    v34 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v34 = off_1E7EFBE68[a10.var0];
  }

  v37 = v34;
  if (a11.var0 >= 5)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [v39 handleFailureInFunction:v40 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", a11.var0}];

    v38 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v38 = off_1E7EFC2B8[a11.var0];
  }

  tracker = self->_tracker;
  v47[0] = v21;
  v47[1] = v45;
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v47[2] = v42;
  v47[3] = v25;
  v47[4] = v26;
  v47[5] = v31;
  v47[6] = v37;
  v47[7] = v38;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v43 value:v46];

  v44 = *MEMORY[0x1E69E9840];
}

- (SGMContactDetailConversationTurn)init
{
  v18[8] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SGMContactDetailConversationTurn;
  v2 = [(SGMContactDetailConversationTurn *)&v17 init];
  if (v2)
  {
    v16 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DetailExtraction"];
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"SelfIdName"];
    v4 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ReceivedConverstationTurn"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"KnownSuggestedContactDetail"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"CuratedContactDetail"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ThroughApp"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ContactDetailUsed"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v18[0] = v16;
    v18[1] = v3;
    v18[2] = v4;
    v18[3] = v5;
    v18[4] = v6;
    v18[5] = v7;
    v18[6] = v8;
    v18[7] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:8];
    v12 = [v10 initWithFeatureId:@"Found" event:@"ContactDetailConversationTurn" registerProperties:v11 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

@end