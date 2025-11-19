@interface SGMSearchResultsIncludedPureSuggestion
- (SGMSearchResultsIncludedPureSuggestion)init;
- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMContactDetailUsedApp_)a4;
@end

@implementation SGMSearchResultsIncludedPureSuggestion

- (void)trackEventWithScalar:(unint64_t)a3 app:(SGMContactDetailUsedApp_)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 0xC)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [v8 handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", a4.var0}];

    v7 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v7 = off_1E7EFBE68[a4.var0];
  }

  v10 = v7;
  tracker = self->_tracker;
  v14[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v12 value:a3];

  v13 = *MEMORY[0x1E69E9840];
}

- (SGMSearchResultsIncludedPureSuggestion)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMSearchResultsIncludedPureSuggestion;
  v2 = [(SGMSearchResultsIncludedPureSuggestion *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SearchResultsIncludedPureSuggestion" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end