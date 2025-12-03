@interface SGMAutocompleteUserSelectedContact
- (SGMAutocompleteUserSelectedContact)init;
- (void)trackEventWithScalar:(unint64_t)scalar wasSuggestedContact:(SGMTypeSafeBool_)contact wasKnownContact:(SGMTypeSafeBool_)knownContact app:(SGMContactDetailUsedApp_)app;
@end

@implementation SGMAutocompleteUserSelectedContact

- (void)trackEventWithScalar:(unint64_t)scalar wasSuggestedContact:(SGMTypeSafeBool_)contact wasKnownContact:(SGMTypeSafeBool_)knownContact app:(SGMContactDetailUsedApp_)app
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (contact.var0)
  {
    if (contact.var0 == 1)
    {
      v11 = @"1";
      if (!knownContact.var0)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (knownContact.var0 == 1)
      {
        v12 = @"1";
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [currentHandler handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", knownContact.var0}];

        v12 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_11;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
    [currentHandler2 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", contact.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
    if (knownContact.var0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = @"0";
    if (knownContact.var0)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = @"0";
LABEL_11:
  if (app.var0 >= 0xC)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [currentHandler3 handleFailureInFunction:v19 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", app.var0}];

    v17 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v17 = off_1E7EFBE68[app.var0];
  }

  v20 = v17;
  tracker = self->_tracker;
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v22 value:scalar];

  v23 = *MEMORY[0x1E69E9840];
}

- (SGMAutocompleteUserSelectedContact)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SGMAutocompleteUserSelectedContact;
  v2 = [(SGMAutocompleteUserSelectedContact *)&v12 init];
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
    v8 = [v6 initWithFeatureId:@"Found" event:@"AutocompleteUserSelectedContact" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

@end