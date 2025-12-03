@interface HDMedicationExposableDoseEventEngine
+ (BOOL)_dosesEqualExceptStatusForDoseEvent:(void *)event doseEvent2:;
+ (BOOL)writeDoseEvents:(id)events profile:(id)profile error:(id *)error;
+ (id)_allExposableDoseEventsForTransaction:(void *)transaction dateInterval:(void *)interval medicationIdentifier:(void *)identifier profile:(uint64_t)profile error:;
+ (id)_createDoseEventsForScheduleItem:(void *)item medicationIdentifier:(void *)identifier existingDoseEvents:;
+ (id)_createDoseEventsFromExposableEvents:(void *)events profile:(uint64_t)profile error:;
+ (id)_createExposableDoseEventsFromDoseEvents:(uint64_t)events;
+ (id)_createPredicateForDateInterval:(void *)interval medicationIdentifier:;
+ (id)_doseEventForScheduleDose:(void *)dose scheduleItem:;
+ (id)_generateMetadataForScheduleItemIdentifier:(void *)identifier semanticId:(uint64_t)id status:(uint64_t)status isLastScheduledDose:;
+ (id)_getDoseEventsForProfile:(void *)profile predicate:(uint64_t)predicate error:;
+ (id)_populateSemanticIdentifierForExposableEvent:(void *)event activeMedications:(uint64_t)medications error:;
+ (id)_scheuduleItemsPredicateForDateInterval:(uint64_t)interval;
+ (id)doseEventsForDateInterval:(id)interval medicationIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (void)_getActiveListMedicationsForProfile:(uint64_t)profile error:;
+ (void)_getMatchingScheduleItemDoseEventsForExistingDoseEvents:(void *)events dateInterval:(void *)interval medicationIdentifier:(void *)identifier transaction:(uint64_t)transaction profile:(uint64_t)profile error:;
@end

@implementation HDMedicationExposableDoseEventEngine

+ (id)doseEventsForDateInterval:(id)interval medicationIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  intervalCopy = interval;
  identifierCopy = identifier;
  profileCopy = profile;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__HDMedicationExposableDoseEventEngine_doseEventsForDateInterval_medicationIdentifier_profile_error___block_invoke;
  v22[3] = &unk_2796CD4C0;
  v26 = v13;
  selfCopy = self;
  v23 = intervalCopy;
  v24 = identifierCopy;
  v25 = profileCopy;
  v15 = v13;
  v16 = profileCopy;
  v17 = identifierCopy;
  v18 = intervalCopy;
  LODWORD(error) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:database error:error block:v22];

  if (error)
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

+ (id)_allExposableDoseEventsForTransaction:(void *)transaction dateInterval:(void *)interval medicationIdentifier:(void *)identifier profile:(uint64_t)profile error:
{
  v10 = a2;
  transactionCopy = transaction;
  intervalCopy = interval;
  identifierCopy = identifier;
  v14 = objc_opt_self();
  v15 = [(HDMedicationExposableDoseEventEngine *)v14 _createPredicateForDateInterval:transactionCopy medicationIdentifier:intervalCopy];
  v16 = [(HDMedicationExposableDoseEventEngine *)v14 _getDoseEventsForProfile:identifierCopy predicate:v15 error:profile];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = [(HDMedicationExposableDoseEventEngine *)v14 _createExposableDoseEventsFromDoseEvents:v16];
    v19 = [v17 initWithArray:v18];

    v21 = [(HDMedicationExposableDoseEventEngine *)v14 _getMatchingScheduleItemDoseEventsForExistingDoseEvents:v16 dateInterval:transactionCopy medicationIdentifier:intervalCopy transaction:v10 profile:v20 error:profile];
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

+ (BOOL)writeDoseEvents:(id)events profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [(HDMedicationExposableDoseEventEngine *)self _createDoseEventsFromExposableEvents:events profile:profileCopy error:error];
  if (v9)
  {
    v10 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:profileCopy error:error];
    if (v10)
    {
      dataManager = [profileCopy dataManager];
      v12 = [dataManager insertDataObjects:v9 sourceEntity:v10 deviceEntity:0 sourceVersion:0 creationDate:error error:CFAbsoluteTimeGetCurrent()];
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

+ (id)_createDoseEventsFromExposableEvents:(void *)events profile:(uint64_t)profile error:
{
  v6 = a2;
  eventsCopy = events;
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
  v9 = eventsCopy;
  profileCopy = profile;
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

+ (id)_createPredicateForDateInterval:(void *)interval medicationIdentifier:
{
  v17[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = a2;
  objc_opt_self();
  startDate = [v5 startDate];
  v7 = HDSampleEntityPredicateForStartDate();

  endDate = [v5 endDate];

  v9 = HDSampleEntityPredicateForEndDate();

  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v17[0] = v7;
  v17[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v10 initWithArray:v11];

  if (intervalCopy)
  {
    v13 = HDMedicationDoseEventEntityPredicateForHashedMedicationIdentifier();
    [v12 addObject:v13];
  }

  v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_getDoseEventsForProfile:(void *)profile predicate:(uint64_t)predicate error:
{
  profileCopy = profile;
  v7 = a2;
  objc_opt_self();
  v8 = MEMORY[0x277D10768];
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  v10 = [v8 samplesWithType:medicationDoseEventType profile:v7 encodingOptions:0 predicate:profileCopy limit:0 anchor:0 error:predicate];

  return v10;
}

+ (id)_createExposableDoseEventsFromDoseEvents:(uint64_t)events
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_2];

  return v3;
}

+ (void)_getMatchingScheduleItemDoseEventsForExistingDoseEvents:(void *)events dateInterval:(void *)interval medicationIdentifier:(void *)identifier transaction:(uint64_t)transaction profile:(uint64_t)profile error:
{
  v11 = a2;
  intervalCopy = interval;
  identifierCopy = identifier;
  eventsCopy = events;
  v15 = objc_opt_self();
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(HDMedicationExposableDoseEventEngine *)v15 _scheuduleItemsPredicateForDateInterval:eventsCopy];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __156__HDMedicationExposableDoseEventEngine__getMatchingScheduleItemDoseEventsForExistingDoseEvents_dateInterval_medicationIdentifier_transaction_profile_error___block_invoke;
  v24[3] = &unk_2796CD4E8;
  v25 = intervalCopy;
  v26 = v11;
  v27 = v16;
  v28 = v15;
  v18 = v16;
  v19 = v11;
  v20 = intervalCopy;
  LODWORD(profile) = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v17 orderingTerms:0 transaction:identifierCopy error:profile enumerationHandler:v24];

  if (profile)
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

+ (id)_scheuduleItemsPredicateForDateInterval:(uint64_t)interval
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  startDate = [v2 startDate];
  v4 = HDMedicationScheduleItemPredicateForScheduledDateTime(5);

  endDate = [v2 endDate];

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

+ (id)_createDoseEventsForScheduleItem:(void *)item medicationIdentifier:(void *)identifier existingDoseEvents:
{
  v6 = a2;
  itemCopy = item;
  identifierCopy = identifier;
  v9 = objc_opt_self();
  doses = [v6 doses];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__HDMedicationExposableDoseEventEngine__createDoseEventsForScheduleItem_medicationIdentifier_existingDoseEvents___block_invoke;
  v16[3] = &unk_2796CD510;
  v17 = itemCopy;
  v18 = v6;
  v19 = identifierCopy;
  v20 = v9;
  v11 = identifierCopy;
  v12 = v6;
  v13 = itemCopy;
  v14 = [doses hk_map:v16];

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

+ (id)_doseEventForScheduleDose:(void *)dose scheduleItem:
{
  doseCopy = dose;
  v5 = a2;
  v6 = objc_opt_self();
  identifier = [doseCopy identifier];
  medicationIdentifier = [v5 medicationIdentifier];
  v9 = +[HDMedicationExposableDoseEventEngine _generateMetadataForScheduleItemIdentifier:semanticId:status:isLastScheduledDose:](v6, identifier, medicationIdentifier, 1, [v5 isLastScheduledDose]);

  v10 = MEMORY[0x277CCD650];
  identifier2 = [doseCopy identifier];
  medicationIdentifier2 = [v5 medicationIdentifier];
  dose = [v5 dose];

  scheduledDateTime = [doseCopy scheduledDateTime];
  scheduledDateTime2 = [doseCopy scheduledDateTime];

  v16 = [v10 medicationDoseEventWithLogOrigin:2 scheduleItemIdentifier:identifier2 medicationIdentifier:medicationIdentifier2 scheduledDoseQuantity:dose doseQuantity:0 scheduledDate:scheduledDateTime startDate:scheduledDateTime2 logStatus:2 doseUnitString:0 metadata:v9];

  return v16;
}

+ (BOOL)_dosesEqualExceptStatusForDoseEvent:(void *)event doseEvent2:
{
  v6 = a2;
  eventCopy = event;
  objc_opt_self();
  medicationIdentifier = [v6 medicationIdentifier];
  medicationIdentifier2 = [eventCopy medicationIdentifier];
  if (medicationIdentifier != medicationIdentifier2)
  {
    medicationIdentifier3 = [eventCopy medicationIdentifier];
    if (!medicationIdentifier3)
    {
      v19 = 0;
      goto LABEL_37;
    }

    v3 = medicationIdentifier3;
    medicationIdentifier4 = [v6 medicationIdentifier];
    medicationIdentifier5 = [eventCopy medicationIdentifier];
    if (![medicationIdentifier4 isEqual:medicationIdentifier5])
    {
      v19 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v41 = medicationIdentifier5;
  }

  scheduleItemIdentifier = [v6 scheduleItemIdentifier];
  scheduleItemIdentifier2 = [eventCopy scheduleItemIdentifier];
  if (scheduleItemIdentifier != scheduleItemIdentifier2)
  {
    scheduleItemIdentifier3 = [eventCopy scheduleItemIdentifier];
    if (!scheduleItemIdentifier3)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v15 = scheduleItemIdentifier3;
    v43 = v3;
    v16 = medicationIdentifier4;
    scheduleItemIdentifier4 = [v6 scheduleItemIdentifier];
    scheduleItemIdentifier5 = [eventCopy scheduleItemIdentifier];
    if (([scheduleItemIdentifier4 isEqual:scheduleItemIdentifier5] & 1) == 0)
    {

      v19 = 0;
      medicationIdentifier5 = v41;
      medicationIdentifier4 = v16;
      v3 = v43;
      if (medicationIdentifier == medicationIdentifier2)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v37 = scheduleItemIdentifier5;
    v38 = scheduleItemIdentifier4;
    v39 = v15;
    medicationIdentifier4 = v16;
    v3 = v43;
  }

  scheduledDate = [v6 scheduledDate];
  scheduledDate2 = [eventCopy scheduledDate];
  if (scheduledDate == scheduledDate2)
  {
    v40 = medicationIdentifier4;
    v44 = v3;
    goto LABEL_17;
  }

  scheduledDate3 = [eventCopy scheduledDate];
  if (scheduledDate3)
  {
    v36 = scheduledDate3;
    scheduledDate4 = [v6 scheduledDate];
    scheduledDate5 = [eventCopy scheduledDate];
    v35 = scheduledDate4;
    if (![scheduledDate4 isEqual:?])
    {
      v19 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v40 = medicationIdentifier4;
    v44 = v3;
LABEL_17:
    scheduledDoseQuantity = [v6 scheduledDoseQuantity];
    scheduledDoseQuantity2 = [eventCopy scheduledDoseQuantity];
    if (scheduledDoseQuantity == scheduledDoseQuantity2)
    {
      v33 = scheduledDate;
    }

    else
    {
      scheduledDoseQuantity3 = [eventCopy scheduledDoseQuantity];
      if (!scheduledDoseQuantity3)
      {

        v19 = 0;
LABEL_30:
        v28 = scheduledDate2;
        v3 = v44;
        medicationIdentifier4 = v40;
        if (scheduledDate == scheduledDate2)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v32 = scheduledDoseQuantity3;
      scheduledDoseQuantity4 = [v6 scheduledDoseQuantity];
      scheduledDoseQuantity5 = [eventCopy scheduledDoseQuantity];
      v31 = scheduledDoseQuantity4;
      v33 = scheduledDate;
      if (![scheduledDoseQuantity4 isEqual:?])
      {
        v19 = 0;
        goto LABEL_26;
      }
    }

    logOrigin = [v6 logOrigin];
    v19 = logOrigin == [eventCopy logOrigin];
    if (scheduledDoseQuantity == scheduledDoseQuantity2)
    {
LABEL_27:

      scheduledDate = v33;
      goto LABEL_30;
    }

LABEL_26:

    goto LABEL_27;
  }

  v19 = 0;
LABEL_32:
  v28 = scheduledDate2;
LABEL_33:

  if (scheduleItemIdentifier != scheduleItemIdentifier2)
  {
  }

LABEL_35:

  medicationIdentifier5 = v41;
  if (medicationIdentifier != medicationIdentifier2)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v19;
}

+ (id)_generateMetadataForScheduleItemIdentifier:(void *)identifier semanticId:(uint64_t)id status:(uint64_t)status isLastScheduledDose:
{
  identifierCopy = identifier;
  v9 = a2;
  objc_opt_self();
  v10 = [MEMORY[0x277CCD650] syncIdentifierForScheduleItemIdentifier:v9 medicationIdentifier:identifierCopy];

  v11 = [MEMORY[0x277CCD650] syncVersionForStatus:id];
  v12 = [MEMORY[0x277CCD650] _metadataWithSyncIdentifier:v10 syncVersion:v11 isLastScheduledDose:status];

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

+ (void)_getActiveListMedicationsForProfile:(uint64_t)profile error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  userDomainConceptManager = [v4 userDomainConceptManager];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HDMedicationExposableDoseEventEngine__getActiveListMedicationsForProfile_error___block_invoke;
  v12[3] = &unk_2796CD5A0;
  v13 = v6;
  v8 = v6;
  LODWORD(profile) = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v5 error:profile enumerationHandler:v12];

  if (profile)
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

+ (id)_populateSemanticIdentifierForExposableEvent:(void *)event activeMedications:(uint64_t)medications error:
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  eventCopy = event;
  objc_opt_self();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = eventCopy;
  v38 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v38)
  {
    v37 = *v41;
    medicationsCopy = medications;
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
        semanticIdentifier = [v10 semanticIdentifier];
        stringValue = [semanticIdentifier stringValue];
        v14 = [v11 initWithSemanticIdentifierString:stringValue];

        underlyingIdentifier = [v14 underlyingIdentifier];
        medicationIdentifier = [v6 medicationIdentifier];
        underlyingIdentifier2 = [medicationIdentifier underlyingIdentifier];
        v18 = underlyingIdentifier2;
        if (underlyingIdentifier == underlyingIdentifier2)
        {
          v36 = v10;

LABEL_15:
          [v36 semanticIdentifier];
          v29 = underlyingIdentifier6 = v14;
          stringValue2 = [v29 stringValue];
          v28 = [v6 updateForSemanticIdentifier:stringValue2];

          v25 = v6;
          v8 = obj;
          v26 = obj;
          goto LABEL_16;
        }

        medicationIdentifier2 = [v6 medicationIdentifier];
        underlyingIdentifier3 = [medicationIdentifier2 underlyingIdentifier];
        if (underlyingIdentifier3)
        {
          v36 = v10;
          underlyingIdentifier4 = [v14 underlyingIdentifier];
          medicationIdentifier3 = [v6 medicationIdentifier];
          underlyingIdentifier5 = [medicationIdentifier3 underlyingIdentifier];
          v39 = [underlyingIdentifier4 isEqualToString:underlyingIdentifier5];

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
      medications = medicationsCopy;
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
  underlyingIdentifier6 = [v26 underlyingIdentifier];
  [v24 hk_assignError:medications code:118 format:{@"Unable to find a HKMedicationUserDomainConcept with a semantic identifier that matches the HKMedicationExposableDoseEvent's hashed identifier: %@. Cancelling saving dose events.", underlyingIdentifier6}];
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