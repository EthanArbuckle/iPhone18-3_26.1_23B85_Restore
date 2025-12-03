@interface SGMSelfIdModelScore
- (SGMSelfIdModelScore)init;
- (void)trackEventWithScalar:(unint64_t)scalar model:(SGMSelfIdModelType_)model result:(SGMTypeSafeBool_)result supervision:(SGMSelfIdSupervisionType_)supervision extractionModelVersion:(unint64_t)version;
@end

@implementation SGMSelfIdModelScore

- (void)trackEventWithScalar:(unint64_t)scalar model:(SGMSelfIdModelType_)model result:(SGMTypeSafeBool_)result supervision:(SGMSelfIdSupervisionType_)supervision extractionModelVersion:(unint64_t)version
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (model.var0 >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSelfIdModelType_toString(SGMSelfIdModelType)"];
    [currentHandler handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:654 description:{@"unrecognized tag %lu on SGMSelfIdModelType", model.var0}];

    v13 = @"ERR_UNMATCHED_TAG";
    if (result.var0)
    {
LABEL_3:
      if (result.var0 == 1)
      {
        v14 = @"1";
      }

      else
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [currentHandler2 handleFailureInFunction:v18 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", result.var0}];

        v14 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = off_1E7EFC318[model.var0];
    if (result.var0)
    {
      goto LABEL_3;
    }
  }

  v14 = @"0";
LABEL_8:
  if (supervision.var0 >= 6)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSelfIdSupervisionType_toString(SGMSelfIdSupervisionType)"];
    [currentHandler3 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:675 description:{@"unrecognized tag %lu on SGMSelfIdSupervisionType", supervision.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFC338[supervision.var0];
  }

  tracker = self->_tracker;
  v26[0] = v13;
  v26[1] = v14;
  v26[2] = v19;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v26[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v24 value:scalar];

  v25 = *MEMORY[0x1E69E9840];
}

- (SGMSelfIdModelScore)init
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SGMSelfIdModelScore;
  v2 = [(SGMSelfIdModelScore *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Model"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Result"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Supervision"];
    v6 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v7 = objc_alloc(MEMORY[0x1E69C5B58]);
    v14[0] = v3;
    v14[1] = v4;
    v14[2] = v5;
    v14[3] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    v9 = [v7 initWithFeatureId:@"Found" event:@"SelfIdModelScore" registerProperties:v8 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

@end