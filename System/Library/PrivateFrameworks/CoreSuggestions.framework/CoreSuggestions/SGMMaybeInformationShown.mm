@interface SGMMaybeInformationShown
- (SGMMaybeInformationShown)init;
- (void)trackEventWithScalar:(unint64_t)a3 extracted:(SGMBannerExtractionType_)a4 extractionModelVersion:(unint64_t)a5;
@end

@implementation SGMMaybeInformationShown

- (void)trackEventWithScalar:(unint64_t)a3 extracted:(SGMBannerExtractionType_)a4 extractionModelVersion:(unint64_t)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a4.var0 >= 4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerExtractionType_toString(SGMBannerExtractionType)"];
    [v10 handleFailureInFunction:v11 file:@"SGMetricsDefines.h" lineNumber:111 description:{@"unrecognized tag %lu on SGMBannerExtractionType", a4.var0}];

    v9 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v9 = off_1E7EFBEC8[a4.var0];
  }

  tracker = self->_tracker;
  v16[0] = v9;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v14 value:a3];

  v15 = *MEMORY[0x1E69E9840];
}

- (SGMMaybeInformationShown)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMMaybeInformationShown;
  v2 = [(SGMMaybeInformationShown *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v4 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"MaybeShown" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

@end