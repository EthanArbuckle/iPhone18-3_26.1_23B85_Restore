@interface HKUserAnnotatedMedicationComparisonFilter
@end

@implementation HKUserAnnotatedMedicationComparisonFilter

id __81___HKUserAnnotatedMedicationComparisonFilter_HealthDaemon__predicateWithProfile___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 supportsUserAnnotatedMedicationAPIObjectGeneration])
  {
    v3 = [objc_msgSend(a2 "userDomainConceptClass")];
    v4 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end