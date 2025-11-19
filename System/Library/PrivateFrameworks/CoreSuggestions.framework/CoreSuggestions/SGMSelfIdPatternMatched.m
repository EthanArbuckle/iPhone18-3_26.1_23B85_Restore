@interface SGMSelfIdPatternMatched
- (SGMSelfIdPatternMatched)init;
- (void)trackEventWithScalar:(unint64_t)a3 patternType:(SGMSIPatternType_)a4 patternHash:(id)a5 nameTokens:(unint64_t)a6 nameClass:(SGMSINameClassification_)a7 messageIndex:(unint64_t)a8;
@end

@implementation SGMSelfIdPatternMatched

- (void)trackEventWithScalar:(unint64_t)a3 patternType:(SGMSIPatternType_)a4 patternHash:(id)a5 nameTokens:(unint64_t)a6 nameClass:(SGMSINameClassification_)a7 messageIndex:(unint64_t)a8
{
  v27[5] = *MEMORY[0x1E69E9840];
  v14 = a5;
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v15 = @"SelfIdRequest";
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSIPatternType_toString(SGMSIPatternType)"];
      [v16 handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:524 description:{@"unrecognized tag %lu on SGMSIPatternType", a4.var0}];

      v15 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v15 = @"SelfId";
  }

  v18 = v14;
  if (a7.var0 >= 3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSINameClassification_toString(SGMSINameClassification)"];
    [v20 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:511 description:{@"unrecognized tag %lu on SGMSINameClassification", a7.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFC1D0[a7.var0];
  }

  tracker = self->_tracker;
  v27[0] = v15;
  v27[1] = v18;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v27[2] = v23;
  v27[3] = v19;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a8];
  v27[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v25 value:a3];

  v26 = *MEMORY[0x1E69E9840];
}

- (SGMSelfIdPatternMatched)init
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SGMSelfIdPatternMatched;
  v2 = [(SGMSelfIdPatternMatched *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"PatternType"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"PatternHash"];
    v5 = [MEMORY[0x1E69C5B40] propertyWithName:@"NameTokens" range:1 clampValues:{2, 1}];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"NameClass"];
    v7 = [MEMORY[0x1E69C5B40] propertyWithName:@"MessageIndex" range:0 clampValues:{5, 1}];
    v8 = objc_alloc(MEMORY[0x1E69C5B58]);
    v15[0] = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
    v10 = [v8 initWithFeatureId:@"Found" event:@"SelfIdPatternMatched" registerProperties:v9 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

@end