@interface SGMSearchResultsUserSelectedContact
- (SGMSearchResultsUserSelectedContact)init;
- (void)trackEventWithScalar:(unint64_t)a3 wasSuggestedContact:(SGMTypeSafeBool_)a4 wasKnownContact:(SGMTypeSafeBool_)a5 app:(SGMContactDetailUsedApp_)a6;
@end

@implementation SGMSearchResultsUserSelectedContact

- (void)trackEventWithScalar:(unint64_t)a3 wasSuggestedContact:(SGMTypeSafeBool_)a4 wasKnownContact:(SGMTypeSafeBool_)a5 app:(SGMContactDetailUsedApp_)a6
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v11 = @"1";
      if (!a5.var0)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (a5.var0 == 1)
      {
        v12 = @"1";
      }

      else
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [v15 handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a5.var0}];

        v12 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_11;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
    [v13 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a4.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
    if (a5.var0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = @"0";
    if (a5.var0)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = @"0";
LABEL_11:
  if (a6.var0 >= 0xC)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [v18 handleFailureInFunction:v19 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", a6.var0}];

    v17 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v17 = off_1E7EFBE68[a6.var0];
  }

  v20 = v17;
  tracker = self->_tracker;
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v22 value:a3];

  v23 = *MEMORY[0x1E69E9840];
}

- (SGMSearchResultsUserSelectedContact)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SGMSearchResultsUserSelectedContact;
  v2 = [(SGMSearchResultsUserSelectedContact *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"WasSuggestedContact"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"WasKnownContact"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v6 = objc_alloc(MEMORY[0x1E69C5B58]);
    v13[0] = v3;
    v13[1] = v4;
    v13[2] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 initWithFeatureId:@"Found" event:@"SearchResultsUserSelectedContact" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

@end