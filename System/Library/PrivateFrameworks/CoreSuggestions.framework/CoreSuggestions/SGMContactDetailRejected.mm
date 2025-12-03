@interface SGMContactDetailRejected
- (SGMContactDetailRejected)init;
- (void)trackEventWithScalar:(unint64_t)scalar type:(SGMContactDetailType_)type extracted:(SGMDetailExtractionType_)extracted extractionModelVersion:(unint64_t)version;
@end

@implementation SGMContactDetailRejected

- (void)trackEventWithScalar:(unint64_t)scalar type:(SGMContactDetailType_)type extracted:(SGMDetailExtractionType_)extracted extractionModelVersion:(unint64_t)version
{
  v22[3] = *MEMORY[0x1E69E9840];
  if (type.var0 >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [currentHandler handleFailureInFunction:v13 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", type.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v11 = off_1E7EFC2B8[type.var0];
  }

  if (extracted.var0 >= 0xA)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMDetailExtractionType_toString(SGMDetailExtractionType)"];
    [currentHandler2 handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:140 description:{@"unrecognized tag %lu on SGMDetailExtractionType", extracted.var0}];

    v14 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v14 = off_1E7EFBE18[extracted.var0];
  }

  v17 = v14;
  tracker = self->_tracker;
  v22[0] = v11;
  v22[1] = v17;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v22[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v20 value:scalar];

  v21 = *MEMORY[0x1E69E9840];
}

- (SGMContactDetailRejected)init
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SGMContactDetailRejected;
  v2 = [(SGMContactDetailRejected *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Type"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v5 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v6 = objc_alloc(MEMORY[0x1E69C5B58]);
    v13[0] = v3;
    v13[1] = v4;
    v13[2] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 initWithFeatureId:@"Found" event:@"ContactDetailRejected" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

@end