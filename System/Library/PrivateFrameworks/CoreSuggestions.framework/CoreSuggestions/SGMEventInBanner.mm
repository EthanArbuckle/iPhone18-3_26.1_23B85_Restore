@interface SGMEventInBanner
- (SGMEventInBanner)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted state:(SGMEventState_)state;
@end

@implementation SGMEventInBanner

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted state:(SGMEventState_)state
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [currentHandler handleFailureInFunction:v15 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", app.var0}];

    v13 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v13 = off_1E7EFBFB0[app.var0];
  }

  if (category.var0 >= 0xC)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventCategory_toString(SGMEventCategory)"];
    [currentHandler2 handleFailureInFunction:v18 file:@"SGMetricsDefines.h" lineNumber:224 description:{@"unrecognized tag %lu on SGMEventCategory", category.var0}];

    v16 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v16 = off_1E7EFBEE8[category.var0];
  }

  v19 = v16;
  if (extracted.var0)
  {
    if (extracted.var0 == 1)
    {
      v20 = @"Template";
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventExtractionType_toString(SGMEventExtractionType)"];
      [currentHandler3 handleFailureInFunction:v22 file:@"SGMetricsDefines.h" lineNumber:271 description:{@"unrecognized tag %lu on SGMEventExtractionType", extracted.var0}];

      v20 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v20 = @"iCal";
  }

  if (state.var0 >= 3)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventState_toString(SGMEventState)"];
    [currentHandler4 handleFailureInFunction:v25 file:@"SGMetricsDefines.h" lineNumber:258 description:{@"unrecognized tag %lu on SGMEventState", state.var0}];

    v23 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v23 = off_1E7EFBF48[state.var0];
  }

  tracker = self->_tracker;
  v29[0] = v13;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v27 value:scalar];

  v28 = *MEMORY[0x1E69E9840];
}

- (SGMEventInBanner)init
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SGMEventInBanner;
  v2 = [(SGMEventInBanner *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Category"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"State"];
    v7 = objc_alloc(MEMORY[0x1E69C5B58]);
    v14[0] = v3;
    v14[1] = v4;
    v14[2] = v5;
    v14[3] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    v9 = [v7 initWithFeatureId:@"Found" event:@"EventInBanner" registerProperties:v8 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

@end