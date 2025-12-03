@interface _HKMedicationDoseEventComparisonFilter
- (id)_predicateForHealthConceptIdentifier;
- (id)_predicateForMedicationUUID;
- (id)_predicateForScheduledDate;
@end

@implementation _HKMedicationDoseEventComparisonFilter

- (id)_predicateForMedicationUUID
{
  selfCopy = self;
  if (self)
  {
    operatorType = [self operatorType];
    value = [selfCopy value];
    v4 = value;
    if (operatorType == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationUUIDs(value);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationUUID(value, [selfCopy operatorType] == 4);
    }
    selfCopy = ;
  }

  return selfCopy;
}

- (id)_predicateForScheduledDate
{
  if (self)
  {
    if ([self operatorType] == 10)
    {
      value = [self value];
      HDMedicationDoseEventEntityPredicateForScheduledDates(value);
    }

    else
    {
      [self operatorType];
      v3 = HDSQLiteComparisonTypeForPredicateOperator();
      value = [self value];
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
  selfCopy = self;
  if (self)
  {
    operatorType = [self operatorType];
    value = [selfCopy value];
    v4 = value;
    if (operatorType == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifiers(value);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationConceptIdentifier(value, [selfCopy operatorType] == 4);
    }
    selfCopy = ;
  }

  return selfCopy;
}

@end