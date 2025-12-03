@interface HKDiagnosticTestResult(Displayable)
- (id)codings;
- (id)title;
- (id)titleDisplayStringForDetailViewController;
- (void)_displayItemsForCodedValueCollection:()Displayable healthRecordsStore:preferredStyle:signedClinicalDataRecord:completion:;
- (void)_displayItemsForValuePreferedStyle:()Displayable healthRecordsStore:signedClinicalDataRecord:completion:;
- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
- (void)fetchObservationDetailItemsWithHealthRecordsStore:()Displayable style:completion:;
@end

@implementation HKDiagnosticTestResult(Displayable)

- (id)title
{
  category = [self category];
  v2 = HKDiagnosticTestResultCategoryFromNSString();

  if (v2 == *MEMORY[0x1E696B790])
  {
    v4 = @"LAB_DETAIL_TITLE";
  }

  else
  {
    if (v2 != *MEMORY[0x1E696B798])
    {
      v3 = 0;
      goto LABEL_7;
    }

    v4 = @"VITAL_DETAIL_TITLE";
  }

  v3 = HRLocalizedString(v4);
LABEL_7:

  return v3;
}

- (id)codings
{
  diagnosticTestCodingCollection = [self diagnosticTestCodingCollection];
  codings = [diagnosticTestCodingCollection codings];

  return codings;
}

- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__HKDiagnosticTestResult_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke;
  v12[3] = &unk_1E83DCE28;
  v13 = v8;
  selfCopy = self;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  [self _displayItemsForValuePreferedStyle:2 healthRecordsStore:a3 signedClinicalDataRecord:0 completion:v12];
}

- (void)fetchObservationDetailItemsWithHealthRecordsStore:()Displayable style:completion:
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__HKDiagnosticTestResult_Displayable__fetchObservationDetailItemsWithHealthRecordsStore_style_completion___block_invoke;
  v12[3] = &unk_1E83DCE50;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [self fetchCorrespondingSignedClinicalDataRecordWithHealthRecordsStore:v11 completion:v12];
}

- (void)_displayItemsForValuePreferedStyle:()Displayable healthRecordsStore:signedClinicalDataRecord:completion:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  value = [self value];
  inspectableValue = [value inspectableValue];
  codedValueCollection = [inspectableValue codedValueCollection];
  canonicalBloodPressureDisplay = [codedValueCollection canonicalBloodPressureDisplay];

  primaryConcept = [self primaryConcept];
  groupByConcept = [primaryConcept groupByConcept];
  chartsBloodPressure = [groupByConcept chartsBloodPressure];
  if (canonicalBloodPressureDisplay)
  {
    v20 = chartsBloodPressure;
  }

  else
  {
    v20 = 0;
  }

  value2 = [self value];
  inspectableValue2 = [value2 inspectableValue];
  valueType = [inspectableValue2 valueType];

  value3 = [self value];
  v25 = value3;
  if (valueType != 8 || (v20 & 1) != 0)
  {

    if (v25)
    {
      v28 = a3;
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = MEMORY[0x1E696C200];
      value4 = [self value];
      referenceRanges = [self referenceRanges];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __129__HKDiagnosticTestResult_Displayable___displayItemsForValuePreferedStyle_healthRecordsStore_signedClinicalDataRecord_completion___block_invoke;
      v34[3] = &unk_1E83DCE78;
      v41 = v20;
      v40 = v28;
      v35 = canonicalBloodPressureDisplay;
      selfCopy = self;
      v37 = v11;
      v38 = v29;
      v39 = v12;
      v32 = v29;
      [v33 parseValueCollection:value4 referenceRanges:referenceRanges healthRecordsStore:v10 withCompletion:v34];
    }

    else
    {
      (*(v12 + 2))(v12, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    inspectableValue3 = [value3 inspectableValue];
    codedValueCollection2 = [inspectableValue3 codedValueCollection];
    [self _displayItemsForCodedValueCollection:codedValueCollection2 healthRecordsStore:v10 preferredStyle:a3 signedClinicalDataRecord:v11 completion:v12];
  }
}

- (void)_displayItemsForCodedValueCollection:()Displayable healthRecordsStore:preferredStyle:signedClinicalDataRecord:completion:
{
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x1E695DF70];
  v14 = a7;
  array = [v13 array];
  codedValues = [v11 codedValues];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __146__HKDiagnosticTestResult_Displayable___displayItemsForCodedValueCollection_healthRecordsStore_preferredStyle_signedClinicalDataRecord_completion___block_invoke;
  v20[3] = &unk_1E83DCEC8;
  v24 = array;
  v25 = a5;
  v21 = v11;
  selfCopy = self;
  v23 = v12;
  v17 = array;
  v18 = v12;
  v19 = v11;
  [codedValues enumerateObjectsUsingBlock:v20];

  v14[2](v14, v17);
}

- (id)titleDisplayStringForDetailViewController
{
  category = [self category];
  v2 = HKDiagnosticTestResultCategoryFromNSString();

  if (v2 == *MEMORY[0x1E696B798])
  {
    v3 = @"RECORD_DETAIL_VITAL_TITLE";
  }

  else
  {
    v3 = @"RECORD_DETAIL_UNKNOWN_RECORD_TITLE";
  }

  if (v2 == *MEMORY[0x1E696B790])
  {
    v4 = @"RECORD_DETAIL_LAB_TITLE";
  }

  else
  {
    v4 = v3;
  }

  v5 = HRLocalizedString(v4);

  return v5;
}

@end