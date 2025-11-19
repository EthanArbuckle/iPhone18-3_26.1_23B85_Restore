@interface SGMEventInBanner
- (SGMEventInBanner)init;
- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 category:(SGMEventCategory_)a5 extracted:(SGMEventExtractionType_)a6 state:(SGMEventState_)a7;
@end

@implementation SGMEventInBanner

- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 category:(SGMEventCategory_)a5 extracted:(SGMEventExtractionType_)a6 state:(SGMEventState_)a7
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [v14 handleFailureInFunction:v15 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", a4.var0}];

    v13 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v13 = off_1E7EFBFB0[a4.var0];
  }

  if (a5.var0 >= 0xC)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventCategory_toString(SGMEventCategory)"];
    [v17 handleFailureInFunction:v18 file:@"SGMetricsDefines.h" lineNumber:224 description:{@"unrecognized tag %lu on SGMEventCategory", a5.var0}];

    v16 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v16 = off_1E7EFBEE8[a5.var0];
  }

  v19 = v16;
  if (a6.var0)
  {
    if (a6.var0 == 1)
    {
      v20 = @"Template";
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventExtractionType_toString(SGMEventExtractionType)"];
      [v21 handleFailureInFunction:v22 file:@"SGMetricsDefines.h" lineNumber:271 description:{@"unrecognized tag %lu on SGMEventExtractionType", a6.var0}];

      v20 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v20 = @"iCal";
  }

  if (a7.var0 >= 3)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventState_toString(SGMEventState)"];
    [v24 handleFailureInFunction:v25 file:@"SGMetricsDefines.h" lineNumber:258 description:{@"unrecognized tag %lu on SGMEventState", a7.var0}];

    v23 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v23 = off_1E7EFBF48[a7.var0];
  }

  tracker = self->_tracker;
  v29[0] = v13;
  v29[1] = v19;
  v29[2] = v20;
  v29[3] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v27 value:a3];

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