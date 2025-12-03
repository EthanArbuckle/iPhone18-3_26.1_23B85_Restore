@interface _HKMedicationDoseEventComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicationDoseEventComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  selfCopy = self;
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC7A0]];

  if (v5)
  {
    if (!selfCopy)
    {
      goto LABEL_31;
    }

    operatorType = [selfCopy operatorType];
    value = [selfCopy value];
    v8 = value;
    if (operatorType == 10)
    {
      HDMedicationDoseEventEntityPredicateForStatuses(value);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForStatus([value integerValue], objc_msgSend(selfCopy, "operatorType") == 4);
    }

    v25 = LABEL_23:;
    selfCopy = v25;

    goto LABEL_31;
  }

  keyPath2 = [selfCopy keyPath];
  v10 = [keyPath2 isEqualToString:*MEMORY[0x277CCC708]];

  if (v10)
  {
    if (!selfCopy)
    {
      goto LABEL_31;
    }

    operatorType2 = [selfCopy operatorType];
    value2 = [selfCopy value];
    v8 = value2;
    if (operatorType2 == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationIdentifiers(value2);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationIdentifier(value2, [selfCopy operatorType] == 4);
    }

    goto LABEL_23;
  }

  keyPath3 = [selfCopy keyPath];
  v14 = [keyPath3 isEqualToString:*MEMORY[0x277CCC6D8]];

  if (v14)
  {
    if (!selfCopy)
    {
      goto LABEL_31;
    }

    operatorType3 = [selfCopy operatorType];
    value3 = [selfCopy value];
    v8 = value3;
    if (operatorType3 == 10)
    {
      HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifiers(value3);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifier(value3, [selfCopy operatorType] == 4);
    }

    goto LABEL_23;
  }

  keyPath4 = [selfCopy keyPath];
  v18 = [keyPath4 isEqualToString:*MEMORY[0x277CCC758]];

  if (v18)
  {
    if (!selfCopy)
    {
      goto LABEL_31;
    }

    operatorType4 = [selfCopy operatorType];
    value4 = [selfCopy value];
    v8 = value4;
    if (operatorType4 == 10)
    {
      HDMedicationDoseEventEntityPredicateForScheduleItemIdentifiers(value4);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier(value4, [selfCopy operatorType] == 4);
    }

    goto LABEL_23;
  }

  keyPath5 = [selfCopy keyPath];
  v22 = [keyPath5 isEqualToString:*MEMORY[0x277CCC6E8]];

  if (v22)
  {
    if (!selfCopy)
    {
      goto LABEL_31;
    }

    operatorType5 = [selfCopy operatorType];
    value5 = [selfCopy value];
    v8 = value5;
    if (operatorType5 == 10)
    {
      HDMedicationDoseEventEntityPredicateForLogOrigins(value5);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForLogOrigin([value5 integerValue], objc_msgSend(selfCopy, "operatorType") == 4);
    }

    goto LABEL_23;
  }

  keyPath6 = [selfCopy keyPath];
  v27 = [keyPath6 isEqualToString:*MEMORY[0x277CCC710]];

  if (v27)
  {
    _predicateForMedicationUUID = [(_HKMedicationDoseEventComparisonFilter *)selfCopy _predicateForMedicationUUID];
  }

  else
  {
    keyPath7 = [selfCopy keyPath];
    v30 = [keyPath7 isEqualToString:*MEMORY[0x277CCC760]];

    if (v30)
    {
      _predicateForMedicationUUID = [(_HKMedicationDoseEventComparisonFilter *)selfCopy _predicateForScheduledDate];
    }

    else
    {
      keyPath8 = [selfCopy keyPath];
      v33 = [keyPath8 isEqualToString:*MEMORY[0x277CCC700]];

      if (v33)
      {
        [(_HKMedicationDoseEventComparisonFilter *)selfCopy _predicateForHealthConceptIdentifier];
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_HKMedicationDoseEventComparisonFilter+HealthDaemon.m" lineNumber:57 description:@"Unreachable code has been executed"];

        [MEMORY[0x277D10B70] falsePredicate];
      }
      _predicateForMedicationUUID = ;
    }
  }

  selfCopy = _predicateForMedicationUUID;
LABEL_31:

  return selfCopy;
}

@end