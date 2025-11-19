@interface _HKMedicationDoseEventComparisonFilter
- (id)_predicateForHealthConceptIdentifier;
- (id)_predicateForMedicationUUID;
- (id)_predicateForScheduledDate;
@end

@implementation _HKMedicationDoseEventComparisonFilter

- (id)_predicateForMedicationUUID
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 operatorType];
    v3 = [v1 value];
    v4 = v3;
    if (v2 == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationUUIDs(v3);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationUUID(v3, [v1 operatorType] == 4);
    }
    v1 = ;
  }

  return v1;
}

- (id)_predicateForScheduledDate
{
  if (a1)
  {
    if ([a1 operatorType] == 10)
    {
      v2 = [a1 value];
      HDMedicationDoseEventEntityPredicateForScheduledDates(v2);
    }

    else
    {
      [a1 operatorType];
      v3 = HDSQLiteComparisonTypeForPredicateOperator();
      v2 = [a1 value];
      HDMedicationDoseEventEntityPredicateForScheduledDate(v3);
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_predicateForHealthConceptIdentifier
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 operatorType];
    v3 = [v1 value];
    v4 = v3;
    if (v2 == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifiers(v3);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifier(v3, [v1 operatorType] == 4);
    }
    v1 = ;
  }

  return v1;
}

@end