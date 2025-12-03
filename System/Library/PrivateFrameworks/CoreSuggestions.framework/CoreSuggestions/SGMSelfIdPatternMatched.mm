@interface SGMSelfIdPatternMatched
- (SGMSelfIdPatternMatched)init;
- (void)trackEventWithScalar:(unint64_t)scalar patternType:(SGMSIPatternType_)type patternHash:(id)hash nameTokens:(unint64_t)tokens nameClass:(SGMSINameClassification_)class messageIndex:(unint64_t)index;
@end

@implementation SGMSelfIdPatternMatched

- (void)trackEventWithScalar:(unint64_t)scalar patternType:(SGMSIPatternType_)type patternHash:(id)hash nameTokens:(unint64_t)tokens nameClass:(SGMSINameClassification_)class messageIndex:(unint64_t)index
{
  v27[5] = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  if (type.var0)
  {
    if (type.var0 == 1)
    {
      v15 = @"SelfIdRequest";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSIPatternType_toString(SGMSIPatternType)"];
      [currentHandler handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:524 description:{@"unrecognized tag %lu on SGMSIPatternType", type.var0}];

      v15 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v15 = @"SelfId";
  }

  v18 = hashCopy;
  if (class.var0 >= 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMSINameClassification_toString(SGMSINameClassification)"];
    [currentHandler2 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:511 description:{@"unrecognized tag %lu on SGMSINameClassification", class.var0}];

    v19 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v19 = off_1E7EFC1D0[class.var0];
  }

  tracker = self->_tracker;
  v27[0] = v15;
  v27[1] = v18;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:tokens];
  v27[2] = v23;
  v27[3] = v19;
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v27[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v25 value:scalar];

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