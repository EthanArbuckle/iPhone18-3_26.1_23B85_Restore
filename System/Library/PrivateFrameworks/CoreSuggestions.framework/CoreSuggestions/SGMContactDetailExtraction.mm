@interface SGMContactDetailExtraction
- (SGMContactDetailExtraction)init;
- (void)trackEventWithScalar:(unint64_t)a3 source:(SGMDocumentType_)a4 signature:(SGMTypeSafeBool_)a5 detail:(SGMContactDetailType_)a6 outcome:(SGMContactDetailExtractionOutcome_)a7 foundInSenderCNContact:(SGMContactDetailOwner_)a8 extractionModelVersion:(unint64_t)a9 isUnlikelyPhone:(SGMTypeSafeBool_)a10 signatureExtractionSource:(SGMContactDetailExtractionSignatureSource_)a11;
@end

@implementation SGMContactDetailExtraction

- (void)trackEventWithScalar:(unint64_t)a3 source:(SGMDocumentType_)a4 signature:(SGMTypeSafeBool_)a5 detail:(SGMContactDetailType_)a6 outcome:(SGMContactDetailExtractionOutcome_)a7 foundInSenderCNContact:(SGMContactDetailOwner_)a8 extractionModelVersion:(unint64_t)a9 isUnlikelyPhone:(SGMTypeSafeBool_)a10 signatureExtractionSource:(SGMContactDetailExtractionSignatureSource_)a11
{
  v43[8] = *MEMORY[0x1E69E9840];
  if (a4.var0)
  {
    if (a4.var0 == 1)
    {
      v16 = @"Message";
      if (!a5.var0)
      {
        goto LABEL_9;
      }

LABEL_6:
      if (a5.var0 == 1)
      {
        v17 = @"1";
      }

      else
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [v20 handleFailureInFunction:v21 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a5.var0}];

        v17 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_11;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMDocumentType_toString(SGMDocumentType)"];
    [v18 handleFailureInFunction:v19 file:@"SGMetricsDefines.h" lineNumber:588 description:{@"unrecognized tag %lu on SGMDocumentType", a4.var0}];

    v16 = @"ERR_UNMATCHED_TAG";
    if (a5.var0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = @"Email";
    if (a5.var0)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v17 = @"0";
LABEL_11:
  if (a6.var0 >= 5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [v23 handleFailureInFunction:v24 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", a6.var0}];

    v22 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v22 = off_1E7EFC2B8[a6.var0];
  }

  if (a7.var0 >= 7)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailExtractionOutcome_toString(SGMContactDetailExtractionOutcome)"];
    [v26 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:560 description:{@"unrecognized tag %lu on SGMContactDetailExtractionOutcome", a7.var0}];

    v25 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v25 = off_1E7EFC1E8[a7.var0];
  }

  if (a8.var0 >= 3)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailOwner_toString(SGMContactDetailOwner)"];
    [v29 handleFailureInFunction:v30 file:@"SGMetricsDefines.h" lineNumber:174 description:{@"unrecognized tag %lu on SGMContactDetailOwner", a8.var0}];

    v28 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v28 = off_1E7EFC220[a8.var0];
  }

  if (a10.var0)
  {
    if (a10.var0 == 1)
    {
      v31 = @"1";
    }

    else
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [v32 handleFailureInFunction:v33 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", a10.var0}];

      v31 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v31 = @"0";
  }

  if (a11.var0 >= 3)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailExtractionSignatureSource_toString(SGMContactDetailExtractionSignatureSource)"];
    [v35 handleFailureInFunction:v36 file:@"SGMetricsDefines.h" lineNumber:575 description:{@"unrecognized tag %lu on SGMContactDetailExtractionSignatureSource", a11.var0}];

    v34 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v34 = off_1E7EFC238[a11.var0];
  }

  tracker = self->_tracker;
  v43[0] = v16;
  v43[1] = v17;
  v43[2] = v22;
  v43[3] = v25;
  v43[4] = v28;
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a9];
  v43[5] = v38;
  v43[6] = v31;
  v43[7] = v34;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v39 value:a3];

  v40 = *MEMORY[0x1E69E9840];
}

- (SGMContactDetailExtraction)init
{
  v18[8] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SGMContactDetailExtraction;
  v2 = [(SGMContactDetailExtraction *)&v17 init];
  if (v2)
  {
    v16 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Source"];
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Signature"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Detail"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Outcome"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"FoundInSenderCNContact"];
    v7 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExtractionModelVersion" range:0 clampValues:{1000, 1}];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"IsUnlikelyPhone"];
    v9 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"SignatureExtractionSource"];
    v10 = objc_alloc(MEMORY[0x1E69C5B58]);
    v18[0] = v16;
    v18[1] = v3;
    v18[2] = v4;
    v18[3] = v5;
    v18[4] = v6;
    v18[5] = v7;
    v18[6] = v8;
    v18[7] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:8];
    v12 = [v10 initWithFeatureId:@"Found" event:@"ContactDetailExtraction" registerProperties:v11 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

@end