@interface SGMSelfIdModelScore
- (SGMSelfIdModelScore)init;
- (void)trackEventWithScalar:(unint64_t)a3 model:(SGMSelfIdModelType_)a4 result:(SGMTypeSafeBool_)a5 supervision:(SGMSelfIdSupervisionType_)a6 extractionModelVersion:(unint64_t)a7;
@end

@implementation SGMSelfIdModelScore

- (void)trackEventWithScalar:(unint64_t)a3 model:(SGMSelfIdModelType_)a4 result:(SGMTypeSafeBool_)a5 supervision:(SGMSelfIdSupervisionType_)a6 extractionModelVersion:(unint64_t)a7
{
  v26[4] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSelfIdModelType_toString(SGMSelfIdModelType)"];
    [v15 handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:654 description:{@"unrecognized tag %lu on SGMSelfIdModelType", a4.var0}];

    v13 = @"ERR_UNMATCHED_TAG";
    if (a5.var0)
    {
LABEL_3:
      if (a5.var0 == 1)
      {
        v14 = @"1";
      }

      else
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [v17 handleFailureInFunction:v18 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a5.var0}];

        v14 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = off_1E7EFC318[a4.var0];
    if (a5.var0)
    {
      goto LABEL_3;
    }
  }

  v14 = @"0";
LABEL_8:
  if (a6.var0 >= 6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSelfIdSupervisionType_toString(SGMSelfIdSupervisionType)"];
    [v20 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:675 description:{@"unrecognized tag %lu on SGMSelfIdSupervisionType", a6.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFC338[a6.var0];
  }

  tracker = self->_tracker;
  v26[0] = v13;
  v26[1] = v14;
  v26[2] = v19;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v26[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v24 value:a3];

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