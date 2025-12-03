@interface SGMEventBannerConfirmed
- (SGMEventBannerConfirmed)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted state:(SGMEventState_)state titleAdj:(SGMEventStringAdj_)adj dateAdj:(SGMEventDateAdj_)dateAdj duraAdj:(SGMEventDurationAdj_)self0;
@end

@implementation SGMEventBannerConfirmed

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted state:(SGMEventState_)state titleAdj:(SGMEventStringAdj_)adj dateAdj:(SGMEventDateAdj_)dateAdj duraAdj:(SGMEventDurationAdj_)self0
{
  v45[7] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [currentHandler handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", app.var0}];

    v15 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v15 = off_1E7EFBFB0[app.var0];
  }

  v42 = v15;
  if (category.var0 >= 0xC)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventCategory_toString(SGMEventCategory)"];
    [currentHandler2 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:224 description:{@"unrecognized tag %lu on SGMEventCategory", category.var0}];

    v18 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v18 = off_1E7EFBEE8[category.var0];
  }

  v21 = v18;
  if (extracted.var0)
  {
    if (extracted.var0 == 1)
    {
      v22 = @"Template";
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventExtractionType_toString(SGMEventExtractionType)"];
      [currentHandler3 handleFailureInFunction:v24 file:@"SGMetricsDefines.h" lineNumber:271 description:{@"unrecognized tag %lu on SGMEventExtractionType", extracted.var0}];

      v22 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v22 = @"iCal";
  }

  v41 = v22;
  if (state.var0 >= 3)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventState_toString(SGMEventState)"];
    [currentHandler4 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:258 description:{@"unrecognized tag %lu on SGMEventState", state.var0}];

    v25 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v25 = off_1E7EFBF48[state.var0];
  }

  if (adj.var0 >= 5)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventStringAdj_toString(SGMEventStringAdj)"];
    [currentHandler5 handleFailureInFunction:v30 file:@"SGMetricsDefines.h" lineNumber:290 description:{@"unrecognized tag %lu on SGMEventStringAdj", adj.var0}];

    v28 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v28 = off_1E7EFC090[adj.var0];
  }

  if (dateAdj.var0 >= 0xA)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventDateAdj_toString(SGMEventDateAdj)"];
    [currentHandler6 handleFailureInFunction:v33 file:@"SGMetricsDefines.h" lineNumber:319 description:{@"unrecognized tag %lu on SGMEventDateAdj", dateAdj.var0}];

    v31 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v31 = off_1E7EFBF60[dateAdj.var0];
  }

  v34 = v31;
  if (duraAdj.var0 >= 6)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventDurationAdj_toString(SGMEventDurationAdj)"];
    [currentHandler7 handleFailureInFunction:v37 file:@"SGMetricsDefines.h" lineNumber:340 description:{@"unrecognized tag %lu on SGMEventDurationAdj", duraAdj.var0}];

    v35 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v35 = off_1E7EFC0B8[duraAdj.var0];
  }

  tracker = self->_tracker;
  v45[0] = v42;
  v45[1] = v21;
  v45[2] = v41;
  v45[3] = v25;
  v45[4] = v28;
  v45[5] = v34;
  v45[6] = v35;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:7];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v39 value:scalar];

  v40 = *MEMORY[0x1E69E9840];
}

- (SGMEventBannerConfirmed)init
{
  v17[7] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SGMEventBannerConfirmed;
  v2 = [(SGMEventBannerConfirmed *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Category"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"State"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"TiA"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DaA"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"DuA"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v17[0] = v3;
    v17[1] = v4;
    v17[2] = v5;
    v17[3] = v6;
    v17[4] = v7;
    v17[5] = v8;
    v17[6] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:7];
    v12 = [v10 initWithFeatureId:@"Found" event:@"EventBannerConfirmed" registerProperties:v11 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

@end