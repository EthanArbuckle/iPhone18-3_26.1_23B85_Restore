@interface COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList(FCAdditions)
- (id)cohortWithPreferredType:()FCAdditions;
@end

@implementation COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList(FCAdditions)

- (id)cohortWithPreferredType:()FCAdditions
{
  v5 = [a1 cohorts];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList_FCAdditions__cohortWithPreferredType___block_invoke;
  v11[3] = &__block_descriptor_36_e49_B16__0__COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohort_8l;
  v12 = a3;
  v6 = [v5 fc_firstObjectPassingTest:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 cohorts];
    v8 = [v9 firstObject];
  }

  return v8;
}

@end