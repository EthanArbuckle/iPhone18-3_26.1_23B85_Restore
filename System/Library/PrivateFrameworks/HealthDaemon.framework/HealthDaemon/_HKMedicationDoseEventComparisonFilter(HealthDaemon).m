@interface _HKMedicationDoseEventComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKMedicationDoseEventComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v3 = a1;
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC7A0]];

  if (v5)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    v6 = [v3 operatorType];
    v7 = [v3 value];
    v8 = v7;
    if (v6 == 10)
    {
      HDMedicationDoseEventEntityPredicateForStatuses(v7);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForStatus([v7 integerValue], objc_msgSend(v3, "operatorType") == 4);
    }

    v25 = LABEL_23:;
    v3 = v25;

    goto LABEL_31;
  }

  v9 = [v3 keyPath];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC708]];

  if (v10)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    v11 = [v3 operatorType];
    v12 = [v3 value];
    v8 = v12;
    if (v11 == 10)
    {
      HDMedicationDoseEventEntityPredicateForMedicationIdentifiers(v12);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForMedicationIdentifier(v12, [v3 operatorType] == 4);
    }

    goto LABEL_23;
  }

  v13 = [v3 keyPath];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCC6D8]];

  if (v14)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    v15 = [v3 operatorType];
    v16 = [v3 value];
    v8 = v16;
    if (v15 == 10)
    {
      HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifiers(v16);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifier(v16, [v3 operatorType] == 4);
    }

    goto LABEL_23;
  }

  v17 = [v3 keyPath];
  v18 = [v17 isEqualToString:*MEMORY[0x277CCC758]];

  if (v18)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    v19 = [v3 operatorType];
    v20 = [v3 value];
    v8 = v20;
    if (v19 == 10)
    {
      HDMedicationDoseEventEntityPredicateForScheduleItemIdentifiers(v20);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier(v20, [v3 operatorType] == 4);
    }

    goto LABEL_23;
  }

  v21 = [v3 keyPath];
  v22 = [v21 isEqualToString:*MEMORY[0x277CCC6E8]];

  if (v22)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    v23 = [v3 operatorType];
    v24 = [v3 value];
    v8 = v24;
    if (v23 == 10)
    {
      HDMedicationDoseEventEntityPredicateForLogOrigins(v24);
    }

    else
    {
      HDMedicationDoseEventEntityPredicateForLogOrigin([v24 integerValue], objc_msgSend(v3, "operatorType") == 4);
    }

    goto LABEL_23;
  }

  v26 = [v3 keyPath];
  v27 = [v26 isEqualToString:*MEMORY[0x277CCC710]];

  if (v27)
  {
    v28 = [(_HKMedicationDoseEventComparisonFilter *)v3 _predicateForMedicationUUID];
  }

  else
  {
    v29 = [v3 keyPath];
    v30 = [v29 isEqualToString:*MEMORY[0x277CCC760]];

    if (v30)
    {
      v28 = [(_HKMedicationDoseEventComparisonFilter *)v3 _predicateForScheduledDate];
    }

    else
    {
      v32 = [v3 keyPath];
      v33 = [v32 isEqualToString:*MEMORY[0x277CCC700]];

      if (v33)
      {
        [(_HKMedicationDoseEventComparisonFilter *)v3 _predicateForHealthConceptIdentifier];
      }

      else
      {
        v34 = [MEMORY[0x277CCA890] currentHandler];
        [v34 handleFailureInMethod:a2 object:v3 file:@"_HKMedicationDoseEventComparisonFilter+HealthDaemon.m" lineNumber:57 description:@"Unreachable code has been executed"];

        [MEMORY[0x277D10B70] falsePredicate];
      }
      v28 = ;
    }
  }

  v3 = v28;
LABEL_31:

  return v3;
}

@end