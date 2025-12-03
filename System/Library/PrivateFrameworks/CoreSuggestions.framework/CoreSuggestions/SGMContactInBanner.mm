@interface SGMContactInBanner
- (SGMContactInBanner)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app extracted:(SGMBannerExtractionType_)extracted selfId:(SGMTypeSafeBool_)id extractionModelVersion:(unint64_t)version contactDetail:(SGMContactDetailType_)detail;
@end

@implementation SGMContactInBanner

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app extracted:(SGMBannerExtractionType_)extracted selfId:(SGMTypeSafeBool_)id extractionModelVersion:(unint64_t)version contactDetail:(SGMContactDetailType_)detail
{
  v31[5] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [currentHandler handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", app.var0}];

    v14 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v14 = off_1E7EFBFB0[app.var0];
  }

  if (extracted.var0 >= 4)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerExtractionType_toString(SGMBannerExtractionType)"];
    [currentHandler2 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:111 description:{@"unrecognized tag %lu on SGMBannerExtractionType", extracted.var0}];

    v17 = @"ERR_UNMATCHED_TAG";
    if (id.var0)
    {
LABEL_6:
      if (id.var0 == 1)
      {
        v18 = @"1";
      }

      else
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [currentHandler3 handleFailureInFunction:v22 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", id.var0}];

        v18 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_11;
    }
  }

  else
  {
    v17 = off_1E7EFBEC8[extracted.var0];
    if (id.var0)
    {
      goto LABEL_6;
    }
  }

  v18 = @"0";
LABEL_11:
  if (detail.var0 >= 5)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [currentHandler4 handleFailureInFunction:v25 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", detail.var0}];

    v23 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v23 = off_1E7EFC2B8[detail.var0];
  }

  tracker = self->_tracker;
  v31[0] = v14;
  v31[1] = v17;
  v31[2] = v18;
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v31[3] = v27;
  v31[4] = v23;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v28 value:scalar];

  v29 = *MEMORY[0x1E69E9840];
}

- (SGMContactInBanner)init
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SGMContactInBanner;
  v2 = [(SGMContactInBanner *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"SelfId"];
    v6 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ContactDetail"];
    v8 = objc_alloc(MEMORY[0x1E69C5B58]);
    v15[0] = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
    v10 = [v8 initWithFeatureId:@"Found" event:@"ContactInBanner" registerProperties:v9 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

@end