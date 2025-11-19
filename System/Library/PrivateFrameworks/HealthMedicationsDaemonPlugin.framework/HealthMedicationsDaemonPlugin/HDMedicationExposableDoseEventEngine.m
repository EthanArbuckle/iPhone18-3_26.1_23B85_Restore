@interface HDMedicationExposableDoseEventEngine
+ (BOOL)_dosesEqualExceptStatusForDoseEvent:(void *)a3 doseEvent2:;
+ (BOOL)writeDoseEvents:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_allExposableDoseEventsForTransaction:(void *)a3 dateInterval:(void *)a4 medicationIdentifier:(void *)a5 profile:(uint64_t)a6 error:;
+ (id)_createDoseEventsForScheduleItem:(void *)a3 medicationIdentifier:(void *)a4 existingDoseEvents:;
+ (id)_createDoseEventsFromExposableEvents:(void *)a3 profile:(uint64_t)a4 error:;
+ (id)_createExposableDoseEventsFromDoseEvents:(uint64_t)a1;
+ (id)_createPredicateForDateInterval:(void *)a3 medicationIdentifier:;
+ (id)_doseEventForScheduleDose:(void *)a3 scheduleItem:;
+ (id)_generateMetadataForScheduleItemIdentifier:(void *)a3 semanticId:(uint64_t)a4 status:(uint64_t)a5 isLastScheduledDose:;
+ (id)_getDoseEventsForProfile:(void *)a3 predicate:(uint64_t)a4 error:;
+ (id)_populateSemanticIdentifierForExposableEvent:(void *)a3 activeMedications:(uint64_t)a4 error:;
+ (id)_scheuduleItemsPredicateForDateInterval:(uint64_t)a1;
+ (id)doseEventsForDateInterval:(id)a3 medicationIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
+ (void)_getActiveListMedicationsForProfile:(uint64_t)a3 error:;
+ (void)_getMatchingScheduleItemDoseEventsForExistingDoseEvents:(void *)a3 dateInterval:(void *)a4 medicationIdentifier:(void *)a5 transaction:(uint64_t)a6 profile:(uint64_t)a7 error:;
@end

@implementation HDMedicationExposableDoseEventEngine

+ (id)doseEventsForDateInterval:(id)a3 medicationIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [v12 database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__HDMedicationExposableDoseEventEngine_doseEventsForDateInterval_medicationIdentifier_profile_error___block_invoke;
  v22[3] = &unk_2796CD4C0;
  v26 = v13;
  v27 = a1;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  LODWORD(a6) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:v14 error:a6 block:v22];

  if (a6)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

BOOL __101__HDMedicationExposableDoseEventEngine_doseEventsForDateInterval_medicationIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDMedicationExposableDoseEventEngine *)*(a1 + 64) _allExposableDoseEventsForTransaction:a2 dateInterval:*(a1 + 32) medicationIdentifier:*(a1 + 40) profile:*(a1 + 48) error:a3];
  if (v4)
  {
    [*(a1 + 56) addObjectsFromArray:v4];
  }

  return v4 != 0;
}

+ (id)_allExposableDoseEventsForTransaction:(void *)a3 dateInterval:(void *)a4 medicationIdentifier:(void *)a5 profile:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_opt_self();
  v15 = [(HDMedicationExposableDoseEventEngine *)v14 _createPredicateForDateInterval:v11 medicationIdentifier:v12];
  v16 = [(HDMedicationExposableDoseEventEngine *)v14 _getDoseEventsForProfile:v13 predicate:v15 error:a6];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = [(HDMedicationExposableDoseEventEngine *)v14 _createExposableDoseEventsFromDoseEvents:v16];
    v19 = [v17 initWithArray:v18];

    v21 = [(HDMedicationExposableDoseEventEngine *)v14 _getMatchingScheduleItemDoseEventsForExistingDoseEvents:v16 dateInterval:v11 medicationIdentifier:v12 transaction:v10 profile:v20 error:a6];
    if (v21)
    {
      [v19 addObjectsFromArray:v21];
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)writeDoseEvents:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HDMedicationExposableDoseEventEngine *)a1 _createDoseEventsFromExposableEvents:a3 profile:v8 error:a5];
  if (v9)
  {
    v10 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:v8 error:a5];
    if (v10)
    {
      v11 = [v8 dataManager];
      v12 = [v11 insertDataObjects:v9 sourceEntity:v10 deviceEntity:0 sourceVersion:0 creationDate:a5 error:CFAbsoluteTimeGetCurrent()];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_createDoseEventsFromExposableEvents:(void *)a3 profile:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__2;
  v25[4] = __Block_byref_object_dispose__2;
  v26 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HDMedicationExposableDoseEventEngine__createDoseEventsFromExposableEvents_profile_error___block_invoke;
  v15[3] = &unk_2796CD558;
  v17 = v25;
  v19 = v8;
  v9 = v7;
  v20 = a4;
  v16 = v9;
  v18 = &v21;
  v10 = [v6 hk_map:v15];
  v11 = v10;
  if (v22[3])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__HDMedicationExposableDoseEventEngine__createDoseEventsFromExposableEvents_profile_error___block_invoke_2;
    v14[3] = &__block_descriptor_40_e63___HKMedicationDoseEvent_16__0__HKMedicationExposableDoseEvent_8l;
    v14[4] = v8;
    v12 = [v10 hk_map:v14];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);

  return v12;
}

+ (id)_createPredicateForDateInterval:(void *)a3 medicationIdentifier:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 startDate];
  v7 = HDSampleEntityPredicateForStartDate();

  v8 = [v5 endDate];

  v9 = HDSampleEntityPredicateForEndDate();

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v17[0] = v7;
  v17[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v10 initWithArray:v11];

  if (v4)
  {
    v13 = HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifier();
    [v12 addObject:v13];
  }

  v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_getDoseEventsForProfile:(void *)a3 predicate:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10768];
  v9 = [MEMORY[0x277CCD658] medicationDoseEventType];
  v10 = [v8 samplesWithType:v9 profile:v7 encodingOptions:0 predicate:v6 limit:0 anchor:0 error:a4];

  return v10;
}

+ (id)_createExposableDoseEventsFromDoseEvents:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_2];

  return v3;
}

+ (void)_getMatchingScheduleItemDoseEventsForExistingDoseEvents:(void *)a3 dateInterval:(void *)a4 medicationIdentifier:(void *)a5 transaction:(uint64_t)a6 profile:(uint64_t)a7 error:
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a3;
  v15 = objc_opt_self();
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(HDMedicationExposableDoseEventEngine *)v15 _scheuduleItemsPredicateForDateInterval:v14];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __156__HDMedicationExposableDoseEventEngine__getMatchingScheduleItemDoseEventsForExistingDoseEvents_dateInterval_medicationIdentifier_transaction_profile_error___block_invoke;
  v24[3] = &unk_2796CD4E8;
  v25 = v12;
  v26 = v11;
  v27 = v16;
  v28 = v15;
  v18 = v16;
  v19 = v11;
  v20 = v12;
  LODWORD(a7) = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v17 orderingTerms:0 transaction:v13 error:a7 enumerationHandler:v24];

  if (a7)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (id)_scheuduleItemsPredicateForDateInterval:(uint64_t)a1
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 startDate];
  v4 = HDMedicationScheduleItemPredicateForScheduledDateTime(5);

  v5 = [v2 endDate];

  v6 = HDMedicationScheduleItemPredicateForScheduledDateTime(3);

  v7 = MEMORY[0x277D10B20];
  v12[0] = v4;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __156__HDMedicationExposableDoseEventEngine__getMatchingScheduleItemDoseEventsForExistingDoseEvents_dateInterval_medicationIdentifier_transaction_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(HDMedicationExposableDoseEventEngine *)*(a1 + 56) _createDoseEventsForScheduleItem:a2 medicationIdentifier:*(a1 + 32) existingDoseEvents:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = [HDMedicationExposableDoseEventEngine _createExposableDoseEventsFromDoseEvents:v3];
  [v4 addObjectsFromArray:v5];

  return 1;
}

+ (id)_createDoseEventsForScheduleItem:(void *)a3 medicationIdentifier:(void *)a4 existingDoseEvents:
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = [v6 doses];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__HDMedicationExposableDoseEventEngine__createDoseEventsForScheduleItem_medicationIdentifier_existingDoseEvents___block_invoke;
  v16[3] = &unk_2796CD510;
  v17 = v7;
  v18 = v6;
  v19 = v8;
  v20 = v9;
  v11 = v8;
  v12 = v6;
  v13 = v7;
  v14 = [v10 hk_map:v16];

  return v14;
}

id __113__HDMedicationExposableDoseEventEngine__createDoseEventsForScheduleItem_medicationIdentifier_existingDoseEvents___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CCD660]);
  v5 = [v3 medicationIdentifier];
  v6 = [v4 initWithSemanticIdentifierString:v5];

  v7 = *(a1 + 32);
  if (!v7 || v6 == v7 || [v6 isEqual:?])
  {
    v8 = [(HDMedicationExposableDoseEventEngine *)*(a1 + 56) _doseEventForScheduleDose:v3 scheduleItem:*(a1 + 40)];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([(HDMedicationExposableDoseEventEngine *)*(a1 + 56) _dosesEqualExceptStatusForDoseEvent:v8 doseEvent2:*(*(&v17 + 1) + 8 * i)])
          {

            v14 = 0;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = v8;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_doseEventForScheduleDose:(void *)a3 scheduleItem:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [v4 identifier];
  v8 = [v5 medicationIdentifier];
  v9 = +[HDMedicationExposableDoseEventEngine _generateMetadataForScheduleItemIdentifier:semanticId:status:isLastScheduledDose:](v6, v7, v8, 1, [v5 isLastScheduledDose]);

  v10 = MEMORY[0x277CCD650];
  v11 = [v4 identifier];
  v12 = [v5 medicationIdentifier];
  v13 = [v5 dose];

  v14 = [v4 scheduledDateTime];
  v15 = [v4 scheduledDateTime];

  v16 = [v10 medicationDoseEventWithLogOrigin:2 scheduleItemIdentifier:v11 medicationIdentifier:v12 scheduledDoseQuantity:v13 doseQuantity:0 scheduledDate:v14 startDate:v15 logStatus:2 doseUnitString:0 metadata:v9];

  return v16;
}

+ (BOOL)_dosesEqualExceptStatusForDoseEvent:(void *)a3 doseEvent2:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [v6 medicationIdentifier];
  v9 = [v7 medicationIdentifier];
  if (v8 != v9)
  {
    v10 = [v7 medicationIdentifier];
    if (!v10)
    {
      v19 = 0;
      goto LABEL_37;
    }

    v3 = v10;
    v4 = [v6 medicationIdentifier];
    v11 = [v7 medicationIdentifier];
    if (![v4 isEqual:v11])
    {
      v19 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v41 = v11;
  }

  v12 = [v6 scheduleItemIdentifier];
  v13 = [v7 scheduleItemIdentifier];
  if (v12 != v13)
  {
    v14 = [v7 scheduleItemIdentifier];
    if (!v14)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v15 = v14;
    v43 = v3;
    v16 = v4;
    v17 = [v6 scheduleItemIdentifier];
    v18 = [v7 scheduleItemIdentifier];
    if (([v17 isEqual:v18] & 1) == 0)
    {

      v19 = 0;
      v11 = v41;
      v4 = v16;
      v3 = v43;
      if (v8 == v9)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v37 = v18;
    v38 = v17;
    v39 = v15;
    v4 = v16;
    v3 = v43;
  }

  v20 = [v6 scheduledDate];
  v42 = [v7 scheduledDate];
  if (v20 == v42)
  {
    v40 = v4;
    v44 = v3;
    goto LABEL_17;
  }

  v21 = [v7 scheduledDate];
  if (v21)
  {
    v36 = v21;
    v22 = [v6 scheduledDate];
    v34 = [v7 scheduledDate];
    v35 = v22;
    if (![v22 isEqual:?])
    {
      v19 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v40 = v4;
    v44 = v3;
LABEL_17:
    v23 = [v6 scheduledDoseQuantity];
    v24 = [v7 scheduledDoseQuantity];
    if (v23 == v24)
    {
      v33 = v20;
    }

    else
    {
      v25 = [v7 scheduledDoseQuantity];
      if (!v25)
      {

        v19 = 0;
LABEL_30:
        v28 = v42;
        v3 = v44;
        v4 = v40;
        if (v20 == v42)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v32 = v25;
      v26 = [v6 scheduledDoseQuantity];
      v30 = [v7 scheduledDoseQuantity];
      v31 = v26;
      v33 = v20;
      if (![v26 isEqual:?])
      {
        v19 = 0;
        goto LABEL_26;
      }
    }

    v27 = [v6 logOrigin];
    v19 = v27 == [v7 logOrigin];
    if (v23 == v24)
    {
LABEL_27:

      v20 = v33;
      goto LABEL_30;
    }

LABEL_26:

    goto LABEL_27;
  }

  v19 = 0;
LABEL_32:
  v28 = v42;
LABEL_33:

  if (v12 != v13)
  {
  }

LABEL_35:

  v11 = v41;
  if (v8 != v9)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v19;
}

+ (id)_generateMetadataForScheduleItemIdentifier:(void *)a3 semanticId:(uint64_t)a4 status:(uint64_t)a5 isLastScheduledDose:
{
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  v10 = [MEMORY[0x277CCD650] syncIdentifierForScheduleItemIdentifier:v9 medicationIdentifier:v8];

  v11 = [MEMORY[0x277CCD650] syncVersionForStatus:a4];
  v12 = [MEMORY[0x277CCD650] _metadataWithSyncIdentifier:v10 syncVersion:v11 isLastScheduledDose:a5];

  return v12;
}

id __81__HDMedicationExposableDoseEventEngine__createExposableDoseEventsFromDoseEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D11540];
  v3 = a2;
  v4 = [[v2 alloc] initWithDoseEvent:v3];

  return v4;
}

id __91__HDMedicationExposableDoseEventEngine__createDoseEventsFromExposableEvents_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 semanticIdentifier];

  if (v4)
  {
    v5 = v3;
    goto LABEL_11;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
LABEL_4:
    v7 = [(HDMedicationExposableDoseEventEngine *)*(a1 + 56) _populateSemanticIdentifierForExposableEvent:v3 activeMedications:v6 error:*(a1 + 64)];
    v5 = v7;
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    goto LABEL_11;
  }

  v9 = [(HDMedicationExposableDoseEventEngine *)*(a1 + 56) _getActiveListMedicationsForProfile:*(a1 + 64) error:?];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 40) + 8) + 40);
  if (v12)
  {
    if ([v12 count])
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      goto LABEL_4;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    [MEMORY[0x277CCA9B8] hk_assignError:*(a1 + 64) code:126 description:{@"User has no active medications, thus attempts to write dose events are invalid."}];
    v5 = 0;
  }

  else
  {
    v5 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_11:

  return v5;
}

+ (void)_getActiveListMedicationsForProfile:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [v4 userDomainConceptManager];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HDMedicationExposableDoseEventEngine__getActiveListMedicationsForProfile_error___block_invoke;
  v12[3] = &unk_2796CD5A0;
  v13 = v6;
  v8 = v6;
  LODWORD(a3) = [v7 enumerateUserDomainConceptsWithPredicate:v5 error:a3 enumerationHandler:v12];

  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)_populateSemanticIdentifierForExposableEvent:(void *)a3 activeMedications:(uint64_t)a4 error:
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v7;
  v38 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v38)
  {
    v37 = *v41;
    v33 = a4;
    obj = v8;
    v35 = v6;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CCD660]);
        v12 = [v10 semanticIdentifier];
        v13 = [v12 stringValue];
        v14 = [v11 initWithSemanticIdentifierString:v13];

        v15 = [v14 underlyingIdentifier];
        v16 = [v6 medicationIdentifier];
        v17 = [v16 underlyingIdentifier];
        v18 = v17;
        if (v15 == v17)
        {
          v36 = v10;

LABEL_15:
          [v36 semanticIdentifier];
          v29 = v27 = v14;
          v30 = [v29 stringValue];
          v28 = [v6 updateForSemanticIdentifier:v30];

          v25 = v6;
          v8 = obj;
          v26 = obj;
          goto LABEL_16;
        }

        v19 = [v6 medicationIdentifier];
        v20 = [v19 underlyingIdentifier];
        if (v20)
        {
          v36 = v10;
          v21 = [v14 underlyingIdentifier];
          v22 = [v6 medicationIdentifier];
          v23 = [v22 underlyingIdentifier];
          v39 = [v21 isEqualToString:v23];

          v6 = v35;
          if (v39)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v8 = obj;
      a4 = v33;
      v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v24 = MEMORY[0x277CCA9B8];
  [v6 medicationIdentifier];
  v26 = v25 = v6;
  v27 = [v26 underlyingIdentifier];
  [v24 hk_assignError:a4 code:118 format:{@"Unable to find a HKMedicationUserDomainConcept with a semantic identifier that matches the HKMedicationExposableDoseEvent's hashed identifier: %@. Cancelling saving dose events.", v27}];
  v28 = 0;
LABEL_16:

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

id __91__HDMedicationExposableDoseEventEngine__createDoseEventsFromExposableEvents_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 scheduleItemIdentifier];
  v5 = [v3 semanticIdentifier];
  v23 = +[HDMedicationExposableDoseEventEngine _generateMetadataForScheduleItemIdentifier:semanticId:status:isLastScheduledDose:](v2, v4, v5, [v3 status], 0);

  v22 = MEMORY[0x277CCD650];
  v6 = [MEMORY[0x277CCD658] medicationDoseEventType];
  v7 = [v3 startDate];
  v8 = [v3 startDate];
  v21 = [v3 logOrigin];
  v9 = [v3 scheduleItemIdentifier];
  v10 = [v3 semanticIdentifier];
  v11 = [v3 scheduledDoseQuantity];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v3 doseQuantity];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v3 scheduledDate];
  v18 = [v3 status];

  v19 = [v22 medicationDoseEventWithType:v6 startDate:v7 endDate:v8 device:0 metadata:v23 logOrigin:v21 scheduleItemIdentifier:v13 medicationIdentifier:v16 scheduledDoseQuantity:v9 doseQuantity:v10 scheduledDate:v17 logStatus:v18 medicationUuid:0 doseUnitString:0];

  return v19;
}

@end