@interface COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList(FCAdditions)
- (id)cohortWithPreferredType:()FCAdditions;
@end

@implementation COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList(FCAdditions)

- (id)cohortWithPreferredType:()FCAdditions
{
  cohorts = [self cohorts];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList_FCAdditions__cohortWithPreferredType___block_invoke;
  v11[3] = &__block_descriptor_36_e49_B16__0__COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohort_8l;
  v12 = a3;
  v6 = [cohorts fc_firstObjectPassingTest:v11];
  v7 = v6;
  if (v6)
  {
    firstObject = v6;
  }

  else
  {
    cohorts2 = [self cohorts];
    firstObject = [cohorts2 firstObject];
  }

  return firstObject;
}

@end