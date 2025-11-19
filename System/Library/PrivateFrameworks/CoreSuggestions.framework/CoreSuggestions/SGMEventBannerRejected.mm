@interface SGMEventBannerRejected
- (SGMEventBannerRejected)init;
- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 category:(SGMEventCategory_)a5 extracted:(SGMEventExtractionType_)a6;
@end

@implementation SGMEventBannerRejected

- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMBannerDisplayApp_)a4 category:(SGMEventCategory_)a5 extracted:(SGMEventExtractionType_)a6
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [v12 handleFailureInFunction:v13 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", a4.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v11 = off_1E7EFBFB0[a4.var0];
  }

  if (a5.var0 >= 0xC)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventCategory_toString(SGMEventCategory)"];
    [v15 handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:224 description:{@"unrecognized tag %lu on SGMEventCategory", a5.var0}];

    v14 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v14 = off_1E7EFBEE8[a5.var0];
  }

  v17 = v14;
  if (a6.var0)
  {
    if (a6.var0 == 1)
    {
      v18 = @"Template";
    }

    else
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventExtractionType_toString(SGMEventExtractionType)"];
      [v19 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:271 description:{@"unrecognized tag %lu on SGMEventExtractionType", a6.var0}];

      v18 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v18 = @"iCal";
  }

  tracker = self->_tracker;
  v24[0] = v11;
  v24[1] = v17;
  v24[2] = v18;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v22 value:a3];

  v23 = *MEMORY[0x1E69E9840];
}

- (SGMEventBannerRejected)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SGMEventBannerRejected;
  v2 = [(SGMEventBannerRejected *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Category"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v6 = objc_alloc(MEMORY[0x1E69C5B58]);
    v13[0] = v3;
    v13[1] = v4;
    v13[2] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 initWithFeatureId:@"Found" event:@"EventBannerRejected" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

@end