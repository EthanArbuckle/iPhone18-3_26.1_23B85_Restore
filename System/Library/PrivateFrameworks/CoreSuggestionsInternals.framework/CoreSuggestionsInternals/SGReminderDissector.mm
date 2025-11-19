@interface SGReminderDissector
+ (BOOL)isReminderDueDateComponentsInPast:(id)a3 givenReferenceDate:(id)a4 allDay:(BOOL)a5;
+ (id)enrichedTaggedCharacterRangesFromEntity:(id)a3 forMessage:(id)a4;
+ (id)enrichedTaggedCharacterRangesFromTaggedCharacterRanges:(id)a3 messageIsSent:(BOOL)a4;
+ (id)getContactIdentifierForName:(id)a3 andEmail:(id)a4 ifMatchingPredicate:(id)a5;
+ (id)sharedInstance;
- (BOOL)_isTestMessage:(id)a3;
- (BOOL)isAllDay:(id)a3;
- (BOOL)isValidTextMessageForProcessing:(id)a3;
- (BOOL)mailAddressIsAccountOwner:(id)a3;
- (SGReminderDissector)init;
- (SGReminderDissector)initWithConversations:(id)a3 rtRoutineManager:(id)a4;
- (id)_detectedReminderEnrichmentFromReminderMessage:(id)a3 parentEntity:(id)a4 language:(id)a5 parentMessage:(id)a6 startTimeProcessing:(unint64_t)a7;
- (id)_reminderEnrichmentWithTitle:(id)a3 dueDateComponents:(id)a4 dueLocationType:(unsigned __int8)a5 dueLocation:(id)a6 dueLocationTrigger:(unsigned __int8)a7 sourceURL:(id)a8 reminderStatus:(unsigned __int8)a9 parentEntity:(id)a10 parentMessage:(id)a11 allDay:(BOOL)a12;
- (id)_reminderMessageForTextMessage:(id)a3 withEntity:(id)a4 extractionModel:(id)a5 processingLanguage:(id)a6 preprocessing:(BOOL)a7;
- (id)_testReminder:(id)a3 entity:(id)a4;
- (id)_validateDueDateComponents:(id)a3 dueLocation:(id)a4 forReminderMessages:(id)a5;
- (id)defaultDueDateComponentsFromMessages:(id)a3;
- (id)dueDateComponentsFromMessages:(id)a3;
- (id)dueLocationFromMessages:(id)a3;
- (id)extractReminderFromMailMessage:(id)a3 entity:(id)a4;
- (id)extractReminderFromOwnedMailMessage:(id)a3 entity:(id)a4;
- (id)extractReminderFromTextMessage:(id)a3 entity:(id)a4 store:(id)a5;
- (id)fetchLocationOfInterestByType:(int64_t)a3 name:(id)a4;
- (id)processingLanguageForContent:(id)a3;
- (id)reminderTitleForContent:(id)a3;
- (id)reminderTitleFromMessages:(id)a3 forLanguage:(id)a4;
- (id)storageLocationFromDueLocation:(id)a3;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGReminderDissector

- (id)fetchLocationOfInterestByType:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  rtRoutineManager = self->_rtRoutineManager;
  if (rtRoutineManager)
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__1849;
    v41 = __Block_byref_object_dispose__1850;
    v42 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__SGReminderDissector_fetchLocationOfInterestByType_name___block_invoke;
    v32[3] = &unk_27894B308;
    v36 = a3;
    v33 = v6;
    v35 = buf;
    v9 = v7;
    v34 = v9;
    [(RTRoutineManager *)rtRoutineManager fetchLocationsOfInterestOfType:a3 withHandler:v32];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v38 + 5))
    {
      v10 = [SGStorageLocation alloc];
      v30 = [*(v38 + 5) preferredName];
      v31 = [*(v38 + 5) mapItem];
      v11 = [v31 location];
      [v11 latitude];
      v13 = v12;
      v14 = [*(v38 + 5) mapItem];
      v15 = [v14 location];
      [v15 longitude];
      v17 = v16;
      v18 = [*(v38 + 5) mapItem];
      v19 = [v18 location];
      [v19 horizontalUncertainty];
      v21 = v20;
      [*(v38 + 5) confidence];
      v23 = v22;
      v24 = [*(v38 + 5) mapItem];
      v25 = [v24 geoMapItemHandle];
      v26 = [(SGStorageLocation *)v10 initWithType:1 label:v30 address:0 airportCode:0 latitude:v25 longitude:v13 accuracy:v17 quality:v21 handle:v23];
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    _Block_object_dispose(buf, 8);
    v28 = v27;
  }

  else
  {
    v27 = sgRemindersLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "Unable to load RTRoutineManager", buf, 2u);
    }

    v28 = 0;
  }

  return v28;
}

void __58__SGReminderDissector_fetchLocationOfInterestByType_name___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sgRemindersLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v6;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "Unable to get LocationsOfInterest: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 56) != -1)
  {
    if ([v5 count] == 1)
    {
      v8 = [v5 firstObject];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
LABEL_31:

      goto LABEL_32;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v5;
    v19 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v19)
    {
      goto LABEL_31;
    }

    v20 = v19;
    v29 = v6;
    v21 = 0;
    v22 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v10);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        v25 = [v24 visits];
        v26 = [v25 count];

        if (v26 > v21)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v24);
          v27 = [v24 visits];
          v21 = [v27 count];
        }
      }

      v20 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
LABEL_30:
    v6 = v29;
    goto LABEL_31;
  }

  if ([*(a1 + 32) length])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v11)
    {
      goto LABEL_31;
    }

    v12 = v11;
    v29 = v6;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * j);
        v16 = [v15 preferredName];
        if ([v16 length])
        {
          v17 = [v15 preferredName];
          v18 = [v17 caseInsensitiveCompare:*(a1 + 32)];

          if (!v18)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
    goto LABEL_30;
  }

LABEL_32:
  dispatch_semaphore_signal(*(a1 + 40));

  v28 = *MEMORY[0x277D85DE8];
}

- (id)storageLocationFromDueLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 locationType];
  v6 = 0;
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    v8 = 0;
    v7 = 0;
    if (v5 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v5 == 4)
    {
      v6 = [v4 name];
      if (!v6)
      {
        v7 = 0;
        goto LABEL_13;
      }

      v8 = -1;
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      v6 = 0;
      v8 = 2;
      goto LABEL_12;
    }

    v7 = 0;
    if (v5 == 2)
    {
      v6 = 0;
      v8 = 1;
LABEL_12:
      v7 = [(SGReminderDissector *)self fetchLocationOfInterestByType:v8 name:v6];
    }
  }

LABEL_13:
  v9 = v7;

  v6 = v9;
LABEL_14:

  return v6;
}

- (id)_reminderEnrichmentWithTitle:(id)a3 dueDateComponents:(id)a4 dueLocationType:(unsigned __int8)a5 dueLocation:(id)a6 dueLocationTrigger:(unsigned __int8)a7 sourceURL:(id)a8 reminderStatus:(unsigned __int8)a9 parentEntity:(id)a10 parentMessage:(id)a11 allDay:(BOOL)a12
{
  v73 = a7;
  v74 = a5;
  v85 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = a10;
  v20 = a11;
  v75 = v20;
  if (v16 | v17)
  {
    v21 = v20;
    v72 = v18;
    if (v16)
    {
      v22 = [v20 date];
      if (v22)
      {
        v23 = v22;
        v24 = objc_opt_class();
        v25 = [v21 date];
        if ([v24 isReminderDueDateComponentsInPast:v16 givenReferenceDate:v25 allDay:a12])
        {
          v26 = [MEMORY[0x277D02098] showPastEvents];

          v18 = v72;
          if ((v26 & 1) == 0)
          {
            v27 = sgRemindersLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: DueDate in past, bailing", buf, 2u);
            }
          }
        }

        else
        {

          v18 = v72;
        }
      }
    }

    v30 = sgRemindersLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740483;
      v80 = v15;
      v81 = 2117;
      v82 = v16;
      v83 = 2117;
      v84 = v17;
      _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Creating enrichment for Reminder: %{sensitive}@, dueTime: %{sensitive}@, dueLocation: %{sensitive}@", buf, 0x20u);
    }

    v31 = sgRemindersLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v31, OS_LOG_TYPE_INFO, "Creating Reminder enrichment", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v21;
      if ([v32 isSent])
      {
        v33 = [v32 recipients];
        v34 = [v33 firstObject];
        v35 = [v34 contactIdentifier];

        v18 = v72;
      }

      else
      {
        v33 = [v32 sender];
        v35 = [v33 contactIdentifier];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = sgRemindersLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "SGReminderDissector - Unknown object encountered while resolving contactId", buf, 2u);
        }

LABEL_29:
        v36 = sgRemindersLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v36, OS_LOG_TYPE_DEFAULT, "SGReminderDissector - Could not resolve Contact. Nil contactIdentifier", buf, 2u);
        }

        v28 = 0;
        v35 = &stru_284703F00;
        goto LABEL_32;
      }

      v36 = v21;
      v37 = [v36 from];
      v38 = [v37 asCSPerson];
      v35 = [v38 contactIdentifier];

      if (v35)
      {
        v28 = v35;
        v18 = v72;
LABEL_32:

LABEL_33:
        v71 = v17;
        v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v15];
        if (!v45)
        {
          v57 = sgRemindersLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v80 = v19;
            _os_log_error_impl(&dword_231E60000, v57, OS_LOG_TYPE_ERROR, "No groupId found for entity %@", buf, 0xCu);
          }

          v29 = 0;
          goto LABEL_48;
        }

        [v19 creationTimestamp];
        v47 = v46;
        v48 = [v19 duplicateKey];
        v49 = [SGDuplicateKey duplicateKeyForPseudoReminderWithGroupId:v45 withCreationTime:v48 parentKey:v47];

        v68 = v49;
        v69 = v19;
        v29 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v49 title:v15 parent:v19];
        v70 = v15;
        if (v16)
        {
          v50 = MEMORY[0x277D020E8];
          v51 = [v16 date];
          v52 = [v16 timeZone];
          v53 = [v16 date];
          v54 = [v16 timeZone];
          v55 = [v50 rangeWithStartDate:v51 startTimeZone:v52 endDate:v53 endTimeZone:v54];
          [(SGEntity *)v29 setTimeRange:v55];

          v56 = v73;
        }

        else
        {
          v56 = v73;
          if (!v71 || !v73)
          {
            goto LABEL_43;
          }

          v58 = objc_alloc(MEMORY[0x277CBEB58]);
          v78 = v71;
          v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
          v52 = [v58 initWithArray:v51];
          [(SGEntity *)v29 setLocations:v52];
        }

LABEL_43:
        v59 = MEMORY[0x277D01FA0];
        v76[0] = *MEMORY[0x277D02438];
        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a9];
        v77[0] = v60;
        v76[1] = *MEMORY[0x277D02428];
        v61 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
        v77[1] = v61;
        v76[2] = *MEMORY[0x277D02430];
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v74];
        v76[3] = *MEMORY[0x277D02420];
        v77[2] = v62;
        v77[3] = v35;
        v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:4];
        v64 = [v59 reminderMetadata:v63];

        v19 = v69;
        [v69 creationTimestamp];
        [(SGPipelineEnrichment *)v29 setCreationTimestamp:?];
        if (v64)
        {
          [(SGEntity *)v29 addTag:v64];
        }

        v18 = v72;
        if (a12)
        {
          v65 = [MEMORY[0x277D01FA0] allDay];
          [(SGEntity *)v29 addTag:v65];
        }

        v15 = v70;
        v57 = v68;
LABEL_48:

        v17 = v71;
        goto LABEL_49;
      }

      v40 = objc_opt_class();
      v41 = [v36 from];
      v42 = [v41 name];
      v43 = [v36 from];
      v44 = [v43 emailAddress];
      v33 = [v40 getContactIdentifierForName:v42 andEmail:v44 ifMatchingPredicate:&__block_literal_global_120];

      v35 = [v33 identifier];
      v18 = v72;
      v21 = v75;
    }

    v28 = v35;
    if (v35)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v28 = sgRemindersLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v28, OS_LOG_TYPE_DEBUG, "No dueLocation or dueDate, bailing", buf, 2u);
  }

  v29 = 0;
LABEL_49:

  v66 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_testReminder:(id)a3 entity:(id)a4
{
  v6 = MEMORY[0x277CBEA80];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentCalendar];
  v10 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v11 = objc_opt_new();
  v12 = [v11 dateByAddingTimeInterval:172800.0];
  v13 = [v9 componentsInTimeZone:v10 fromDate:v12];

  v14 = [(SGReminderDissector *)self fetchLocationOfInterestByType:0 name:0];
  v15 = MEMORY[0x277D01F88];
  v16 = [v8 uniqueIdentifier];
  v17 = [v15 urlForEKEventFromTextMessageWithUniqueIdentifier:v16];
  LOBYTE(v21) = 0;
  LOBYTE(v20) = 2;
  v18 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:@"TEST REMINDER" dueDateComponents:v13 dueLocationType:1 dueLocation:v14 dueLocationTrigger:1 sourceURL:v17 reminderStatus:v20 parentEntity:v7 parentMessage:v8 allDay:v21];

  return v18;
}

- (BOOL)_isTestMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 textContent];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 textContent];
    v7 = [v6 isEqualToString:@"SG_QA_REMINDER_TEST"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_reminderMessageForTextMessage:(id)a3 withEntity:(id)a4 extractionModel:(id)a5 processingLanguage:(id)a6 preprocessing:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!v14)
  {
    v21 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      v23 = 0;
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "SGReminderDissector: ExtractionModel is nil";
LABEL_21:
    _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 2u);
    goto LABEL_12;
  }

  if (!v15)
  {
    v21 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v22 = "SGReminderDissector: Processinglanguage is nil";
    goto LABEL_21;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1849;
  v38 = __Block_byref_object_dispose__1850;
  v39 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __114__SGReminderDissector__reminderMessageForTextMessage_withEntity_extractionModel_processingLanguage_preprocessing___block_invoke;
  v28[3] = &unk_27894E068;
  v17 = v13;
  v29 = v17;
  v18 = v12;
  v30 = v18;
  v32 = self;
  v33 = buf;
  v31 = v16;
  [v17 runWithDissectorLock:v28];
  if ([*(v35 + 5) count])
  {
    v19 = [v14 modelInferences:*(v35 + 5)];
    if (v19 || a7)
    {
      v25 = [SGReminderMessage alloc];
      v23 = [(SGReminderMessage *)v25 initWithMessage:v18 entity:v17 enrichedTaggedCharacterRanges:*(v35 + 5) modelOutput:v19];
      goto LABEL_16;
    }

    v20 = sgRemindersLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "SGReminderDissector: No model output, bailing", v27, 2u);
    }

    v19 = 0;
  }

  else
  {
    conversations = self->_conversations;
    v19 = [v18 conversationIdentifier];
    [(NSMutableDictionary *)conversations removeObjectForKey:v19];
  }

  v23 = 0;
LABEL_16:

  _Block_object_dispose(buf, 8);
LABEL_17:

  return v23;
}

uint64_t __114__SGReminderDissector__reminderMessageForTextMessage_withEntity_extractionModel_processingLanguage_preprocessing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[SGPOSTagger sharedInstance];
  v4 = [*(a1 + 40) textContent];
  v5 = [v3 tokenizeTextContent:v4 languageHint:*(a1 + 48)];
  [v2 addTaggedCharacterRanges:v5];

  v6 = *(a1 + 56);
  v7 = [objc_opt_class() enrichedTaggedCharacterRangesFromEntity:*(a1 + 32) forMessage:*(a1 + 40)];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8]();
}

- (id)_validateDueDateComponents:(id)a3 dueLocation:(id)a4 forReminderMessages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v8 | v9))
  {
    v8 = [(SGReminderDissector *)self defaultDueDateComponentsFromMessages:v10];
    v11 = +[SGReminderTrialClientWrapper sharedInstance];
    v12 = v11;
    if (!v8)
    {
      if ([v11 triggerOptional])
      {
        v13 = [MEMORY[0x277CBEAA8] date];
        v8 = [(SGExtractionDocument *)SGReminderMessage allDayDateComponentsFromDate:v13];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  if (v8)
  {
    v14 = objc_opt_class();
    v15 = [MEMORY[0x277CBEAA8] date];
    if ([v14 isReminderDueDateComponentsInPast:v8 givenReferenceDate:v15 allDay:{-[SGReminderDissector isAllDay:](self, "isAllDay:", v8)}])
    {
      v16 = [MEMORY[0x277D02098] showPastEvents];

      if ((v16 & 1) == 0)
      {
        v17 = sgRemindersLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Date is in the past, skipping", v19, 2u);
        }

        v8 = 0;
      }
    }

    else
    {
    }
  }

  return v8;
}

- (BOOL)isAllDay:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "minute") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "second") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (id)defaultDueDateComponentsFromMessages:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasTrigger])
        {
          v4 = 0;
          goto LABEL_12;
        }

        v5 |= [v8 isTriggerOptional];
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      v4 = [(SGExtractionDocument *)SGReminderMessage allDayDateComponentsFromDate:v9];
      goto LABEL_13;
    }

    v4 = 0;
  }

  else
  {
LABEL_12:
    v9 = v3;
LABEL_13:
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)dueLocationFromMessages:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) dueLocation];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count] == 1)
  {
    v11 = [v4 anyObject];
LABEL_14:
    v12 = v11;
    goto LABEL_16;
  }

  if ([v4 count] >= 2)
  {
    v11 = [SGReminderDueLocation mergeDueLocations:v4];
    goto LABEL_14;
  }

  v12 = 0;
LABEL_16:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)dueDateComponentsFromMessages:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v31 + 1) + 8 * i) dueDateDataDetectorMatches];
        v13 = [v12 first];

        if (v13)
        {
          v14 = [v12 first];
          [v5 addObjectsFromArray:v14];

          v15 = [v12 second];
          v16 = [v15 BOOLValue];

          v10 &= v16 ^ 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [SGExtractionDocument dateComponentsFromDataDetectorMatch:*(*(&v27 + 1) + 8 * j) inferDates:v10 & 1 approximateTime:1 partialDate:1 useEndForDurations:0, v27];
        if (v22)
        {
          [v4 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  if ([v4 count] == 1)
  {
    v23 = [v4 anyObject];
  }

  else if ([v4 count] < 2)
  {
    v23 = 0;
  }

  else
  {
    v24 = [v4 allObjects];
    v23 = [SGExtractionDocument mergeDetectedDateComponents:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)reminderTitleFromMessages:(id)a3 forLanguage:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) detectedTitleForLanguage:{v6, v17}];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if ([v7 count] == 1)
  {
    v14 = [v7 firstObject];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)mailAddressIsAccountOwner:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SGContactStoreFactory contactStore];
  v5 = [SGCuratedContactMatcher fetchMeContactFromContactStore:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 emailAddresses];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 emailAddress];
        v12 = SGNormalizeEmailAddress();
        LOBYTE(v10) = [v10 isEqualToString:v12];

        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)processingLanguageForContent:(id)a3
{
  v3 = [MEMORY[0x277D02548] detectLanguageFromText:a3];
  v4 = [MEMORY[0x277D02548] defaultLanguage];
  v5 = [v3 isEqual:v4];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v5 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (BOOL)isValidTextMessageForProcessing:(id)a3
{
  v3 = a3;
  v4 = [v3 textContent];
  if (![v4 length])
  {
    goto LABEL_4;
  }

  v5 = [v3 textContent];
  if ([v5 length] >= 0x3E9)
  {

LABEL_4:
LABEL_5:
    v6 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v12 = "SGReminderDissector: Message too short or too long to process or missing conversationIdentifier, bailing";
    v13 = buf;
LABEL_14:
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, v12, v13, 2u);
    goto LABEL_6;
  }

  v9 = [v3 conversationIdentifier];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v3 recipients];
  v11 = [v10 count];

  if (v11 < 3)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v6 = sgRemindersLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 0;
    v12 = "SGReminderDissector: Message is a group chat, bailing";
    v13 = &v14;
    goto LABEL_14;
  }

LABEL_6:

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)extractReminderFromTextMessage:(id)a3 entity:(id)a4 store:(id)a5
{
  v143 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v120 = a5;
  v10 = sgRemindersLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_INFO, "Dissecting Text Message to find reminder", &buf, 2u);
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  conversations = self->_conversations;
  v12 = [v8 conversationIdentifier];
  v13 = [(NSMutableDictionary *)conversations objectForKeyedSubscript:v12];

  if ([(SGReminderDissector *)self _isTestMessage:v8])
  {
    v14 = [(SGReminderDissector *)self _testReminder:v8 entity:v9];
    goto LABEL_69;
  }

  v15 = [v9 duplicateKey];
  v119 = [v15 entityKey];

  v16 = [v119 source];
  v17 = [v16 isEqualToString:@"suggest_tool_preprocess"];

  if (v17)
  {
    v18 = [MEMORY[0x277D02548] defaultLanguage];
    goto LABEL_7;
  }

  if (![(SGReminderDissector *)self isValidTextMessageForProcessing:v8])
  {
    v36 = [v8 conversationIdentifier];

    if (!v36)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

  if (![v8 isSent])
  {
    v42 = +[SGReminderExtractionModel sharedInstance];
    v43 = [v8 textContent];
    v44 = [v42 hasWhitelistedVerbInContent:v43];

    if (v44)
    {
      v45 = [[SGReminderMessage alloc] initWithMessage:v8 entity:v9 enrichedTaggedCharacterRanges:0 modelOutput:0];
      v46 = self->_conversations;
      v47 = [v8 conversationIdentifier];
      [(NSMutableDictionary *)v46 setObject:v45 forKeyedSubscript:v47];

      v48 = [v8 textContent];
      LODWORD(v45) = [SGReminderMessage isConfirmationOptionalForContent:v48];

      if (!v45)
      {
        goto LABEL_39;
      }

      v39 = [v8 sender];
      if ([v39 sg_isSignificantWithStore:v120])
      {
        v49 = mach_absolute_time();
        v50 = [v8 textContent];
        v117 = [(SGReminderDissector *)self processingLanguageForContent:v50];

        v51 = +[SGReminderExtractionModel sharedInstance];
        v52 = [(SGReminderDissector *)self _reminderMessageForTextMessage:v8 withEntity:v9 extractionModel:v51 processingLanguage:v117 preprocessing:0];

        if (v52)
        {
          v53 = self->_conversations;
          v54 = [v8 conversationIdentifier];
          [(NSMutableDictionary *)v53 setObject:v52 forKeyedSubscript:v54];

          v14 = [(SGReminderDissector *)self _detectedReminderEnrichmentFromReminderMessage:v52 parentEntity:v9 language:v117 parentMessage:v8 startTimeProcessing:v49];
          if (v14)
          {
            v55 = self->_conversations;
            v56 = [v8 conversationIdentifier];
            v57 = [(NSMutableDictionary *)v55 objectForKeyedSubscript:v56];
            v58 = [v14 duplicateKey];
            [v57 setExtractedReminderDuplicateKey:v58];

            v59 = v14;
          }

          v39 = v14;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_64;
      }

LABEL_66:
      v14 = 0;
      goto LABEL_67;
    }

LABEL_65:
    v75 = self->_conversations;
    v39 = [v8 conversationIdentifier];
    [(NSMutableDictionary *)v75 removeObjectForKey:v39];
    goto LABEL_66;
  }

  if (v13)
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = [v13 message];
    v32 = [v31 textContent];
    v33 = [v8 textContent];
    v34 = [v30 initWithFormat:@"%@ %@", v32, v33];

    v35 = [(SGReminderDissector *)self processingLanguageForContent:v34];

    if (v35)
    {
      v18 = v35;
LABEL_7:
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "SGReminderDissector: ProcessingLanguage: %@", &buf, 0xCu);
      }

      v117 = v18;

      v130[2] = 0;
      v130[0] = @"ReminderDissector full extraction";
      v111 = mach_absolute_time();
      v130[1] = v111;
      v116 = +[SGReminderExtractionModel sharedInstance];
      v20 = [SGReminderDissector _reminderMessageForTextMessage:"_reminderMessageForTextMessage:withEntity:extractionModel:processingLanguage:preprocessing:" withEntity:v8 extractionModel:v9 processingLanguage:? preprocessing:?];
      v21 = v20;
      if (!v20)
      {
        v37 = self->_conversations;
        v38 = [v8 conversationIdentifier];
        [(NSMutableDictionary *)v37 removeObjectForKey:v38];

        v39 = 0;
LABEL_63:

        SGRecordMeasurementState(v130);
        v14 = v39;
LABEL_64:

LABEL_67:
        goto LABEL_68;
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v139 = 0x3032000000;
      v140 = __Block_byref_object_copy__1849;
      v141 = __Block_byref_object_dispose__1850;
      v142 = 0;
      if (v13)
      {
        if ([v20 isConfirmation] && (objc_msgSend(v13, "extractedReminderDuplicateKey"), v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v23))
        {
          v78 = sgRemindersLogHandle();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            *v135 = 0;
            _os_log_debug_impl(&dword_231E60000, v78, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Message with confirmation found", v135, 2u);
          }

          v79 = [v13 modelOutput];
          v80 = v79 == 0;

          if (v80)
          {
            v81 = [v13 entity];
            [v81 acquireDissectorLock];

            v113 = [v13 entity];
            v115 = +[SGPOSTagger sharedInstance];
            v82 = [v13 message];
            v83 = [v82 textContent];
            v84 = [v115 tokenizeTextContent:v83 languageHint:v117];
            [v113 addTaggedCharacterRanges:v84];

            v85 = objc_opt_class();
            v86 = [v13 entity];
            v87 = [v13 message];
            v114 = [v85 enrichedTaggedCharacterRangesFromEntity:v86 forMessage:v87];

            v88 = [v13 entity];
            [v88 releaseDissectorLock];

            v89 = [v116 modelInferences:v114];
            if (!v89)
            {
              v74 = sgRemindersLogHandle();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *v135 = 0;
                _os_log_error_impl(&dword_231E60000, v74, OS_LOG_TYPE_ERROR, "SGReminderDissector: No modelOutput for previousMessage", v135, 2u);
              }

              v39 = 0;
              goto LABEL_62;
            }

            [v13 setEnrichedTaggedCharacterRanges:v114];
            [v13 setModelOutput:v89];
          }

          if ([v13 isProposal])
          {
            v90 = sgRemindersLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              *v135 = 0;
              _os_log_debug_impl(&dword_231E60000, v90, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Previous message has proposal and question", v135, 2u);
            }

            v137[0] = v13;
            v137[1] = v21;
            v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
            [(SGReminderDissector *)self reminderTitleFromMessages:v91 forLanguage:v117];
            v110 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v109 = v91;
            if (v110 == 0.0)
            {
              v102 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = @"No title found for message";

              v112 = 0;
              v114 = 0;
              v41 = 0;
              *(v132 + 24) = 5;
            }

            else
            {
              v92 = sgRemindersLogHandle();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
              {
                *v135 = 138739971;
                v136 = v110;
                _os_log_debug_impl(&dword_231E60000, v92, OS_LOG_TYPE_DEBUG, "SGReminderDissector: Found title for reminder %{sensitive}@", v135, 0xCu);
              }

              v93 = [(SGReminderDissector *)self dueDateComponentsFromMessages:v91];
              v114 = [(SGReminderDissector *)self dueLocationFromMessages:v91];
              v94 = [(SGReminderDissector *)self storageLocationFromDueLocation:?];
              v112 = [(SGReminderDissector *)self _validateDueDateComponents:v93 dueLocation:v94 forReminderMessages:v91];
              v108 = v94;

              if (v112 | v94)
              {
                v95 = MEMORY[0x277D01F88];
                v96 = [v13 message];
                v97 = [v96 uniqueIdentifier];
                v107 = [v95 urlForEKEventFromTextMessageWithUniqueIdentifier:v97];

                v98 = [v114 locationType];
                v99 = [v114 trigger];
                LOBYTE(v106) = [(SGReminderDissector *)self isAllDay:v112];
                LOBYTE(v105) = 2;
                v41 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:*&v110 dueDateComponents:v112 dueLocationType:v98 dueLocation:v108 dueLocationTrigger:v99 sourceURL:v107 reminderStatus:v105 parentEntity:v9 parentMessage:v8 allDay:v106];
                *(v132 + 24) = 1;
              }

              else
              {
                v103 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = @"No dueDate nor dueLocation found in message";

                v41 = 0;
                *(v132 + 24) = 4;
              }
            }

            goto LABEL_42;
          }

          v100 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = @"No proposal found";

          v112 = 0;
          v114 = 0;
          v41 = 0;
          v61 = v132;
          v62 = 2;
        }

        else
        {
          if ([v21 isRejection])
          {
            v24 = [v13 extractedReminderDuplicateKey];
            v25 = v24 == 0;

            if (!v25)
            {
              v26 = [v13 extractedReminderDuplicateKey];
              v129 = 0;
              v27 = [v120 rejectReminderByKey:v26 error:&v129];
              v28 = COERCE_DOUBLE(v129);

              if ((v27 & 1) == 0)
              {
                v29 = sgRemindersLogHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v135 = 138412290;
                  v136 = v28;
                  _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "SGReminderDissector: Couldn't reject reminder: %@", v135, 0xCu);
                }
              }

LABEL_31:
              v112 = 0;
              v114 = 0;
              v41 = 0;
LABEL_42:
              if (*(*(&buf + 1) + 40))
              {
                v63 = sgRemindersLogHandle();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  v101 = *(*(&buf + 1) + 40);
                  *v135 = 138412290;
                  v136 = v101;
                  _os_log_debug_impl(&dword_231E60000, v63, OS_LOG_TYPE_DEBUG, "SGReminderDissector: %@", v135, 0xCu);
                }
              }

              v64 = [v119 source];
              v65 = [v64 hasPrefix:@"suggest_tool"];

              if (v65)
              {
                if (v17 && ([v8 isSent] & 1) == 0)
                {
                  v66 = self->_conversations;
                  v67 = [v8 conversationIdentifier];
                  [(NSMutableDictionary *)v66 setObject:v21 forKeyedSubscript:v67];
                }

                v121[0] = MEMORY[0x277D85DD0];
                v121[1] = 3221225472;
                v121[2] = __67__SGReminderDissector_extractReminderFromTextMessage_entity_store___block_invoke;
                v121[3] = &unk_27894B2E0;
                v122 = v9;
                v123 = v21;
                p_buf = &buf;
                v124 = v13;
                v128 = &v131;
                v125 = v116;
                v126 = v117;
                [v122 runWithDissectorLock:v121];

                v68 = v122;
              }

              else
              {
                if (([v8 isSent] & 1) == 0)
                {
                  v104 = [MEMORY[0x277CCA890] currentHandler];
                  [v104 handleFailureInMethod:a2 object:self file:@"SGReminderDissector.m" lineNumber:648 description:{@"Invalid parameter not satisfying: %@", @"textMessage.isSent"}];
                }

                v69 = self->_conversations;
                v68 = [v8 conversationIdentifier];
                [(NSMutableDictionary *)v69 removeObjectForKey:v68];
              }

              v70 = mach_absolute_time() - v111;
              if (SGMachTimeToNanoseconds_onceToken != -1)
              {
                dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
              }

              v71 = (v70 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734) * 0.000001;
              if (v41 || *(*(&buf + 1) + 40))
              {
                v72 = +[SGRTCLogging defaultLogger];
                [v72 logReminderExtractionFromEntity:v9 interface:0 actionType:0 dueLocation:v114 dueDateComponents:v112 extractionStatus:*(v132 + 24) timingProcessing:v71];
              }

              v73 = sgRemindersLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                *v135 = 134217984;
                v136 = v71;
                _os_log_debug_impl(&dword_231E60000, v73, OS_LOG_TYPE_DEBUG, "SGReminderDissector: timing(ms): %f", v135, 0xCu);
              }

              v39 = v41;
              v74 = v112;
LABEL_62:

              _Block_object_dispose(&buf, 8);
              goto LABEL_63;
            }
          }

          v60 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = @"No confirmation found";

          v112 = 0;
          v114 = 0;
          v41 = 0;
          v61 = v132;
          v62 = 3;
        }

        *(v61 + 24) = v62;
        goto LABEL_42;
      }

      v40 = sgRemindersLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *v135 = 0;
        _os_log_debug_impl(&dword_231E60000, v40, OS_LOG_TYPE_DEBUG, "SGReminderDissector: No previous message", v135, 2u);
      }

      goto LABEL_31;
    }
  }

LABEL_39:
  v14 = 0;
LABEL_68:

LABEL_69:
  _Block_object_dispose(&v131, 8);

  v76 = *MEMORY[0x277D85DE8];

  return v14;
}

void __67__SGReminderDissector_extractReminderFromTextMessage_entity_store___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) modelOutput];
  v4 = [*(a1 + 40) enrichedTaggedCharacterRanges];
  v5 = [SGReminderExtractionModel enrichTaggedCharacterRangesWithModelOutput:v3 usingInputCharacterRanges:v4];
  [v2 addTaggedCharacterRanges:v5];

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v6 = *(a1 + 40);
    v27[0] = *(a1 + 48);
    v27[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v24 = 0;
    v8 = [SGReminderMessage validModelOutput:v7 error:&v24];
    v9 = v24;

    if (!v8)
    {
      if (v9)
      {
        v10 = [v9 userInfo];
        v11 = [v10 description];
        v12 = *(*(a1 + 72) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      *(*(*(a1 + 80) + 8) + 24) = 6;
    }
  }

  v14 = [*(a1 + 56) modelDescription];
  v15 = MEMORY[0x277D01FA0];
  v25[0] = @"extractionStatus";
  v16 = [SGRTCLogging describeReminderExtractionStatus:*(*(*(a1 + 80) + 8) + 24)];
  v17 = v16;
  v25[1] = @"errorMessage";
  v18 = *(a1 + 64);
  v19 = *(*(*(a1 + 72) + 8) + 40);
  if (!v19)
  {
    v19 = &stru_284703F00;
  }

  v26[0] = v16;
  v26[1] = v19;
  v25[2] = @"processingLanguage";
  v25[3] = @"modelDescription";
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = &stru_284703F00;
  }

  v26[2] = v18;
  v26[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v22 = [v15 reminderMetadata:v21];

  if (v22)
  {
    [*(a1 + 32) addTag:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_detectedReminderEnrichmentFromReminderMessage:(id)a3 parentEntity:(id)a4 language:(id)a5 parentMessage:(id)a6 startTimeProcessing:(unint64_t)a7
{
  v50[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!a5)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v15 = [v12 detectedTitleForLanguage:a5];
  v16 = +[SGReminderTrialClientWrapper sharedInstance];
  v49 = v16;
  if ([v12 isProposal] && ((objc_msgSend(v12, "hasTrigger") & 1) != 0 || (objc_msgSend(v12, "isTriggerOptional") & 1) != 0 || objc_msgSend(v16, "triggerOptional")) && v15)
  {
    v17 = [v12 detectedDueDateComponents];
    v48 = v17;
    if ([v17 count] == 1)
    {
      v18 = [v17 firstObject];
    }

    else
    {
      if ([v17 count] < 2)
      {
        v26 = 0;
        goto LABEL_21;
      }

      v18 = [SGExtractionDocument mergeDetectedDateComponents:v17];
    }

    v26 = v18;
LABEL_21:
    v23 = [v12 dueLocation];
    v27 = [(SGReminderDissector *)self storageLocationFromDueLocation:v23];
    v50[0] = v12;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v47 = v27;
    v20 = [(SGReminderDissector *)self _validateDueDateComponents:v26 dueLocation:v27 forReminderMessages:v28];

    if (v20 | v23)
    {
      v29 = [v12 message];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v45 = MEMORY[0x277D01F88];
      if (isKindOfClass)
      {
        v31 = [v12 message];
        v32 = [v31 uniqueIdentifier];
        v46 = [v45 urlForEKEventFromTextMessageWithUniqueIdentifier:v32];
      }

      else
      {
        v44 = [v13 duplicateKey];
        v32 = [v44 emailKey];
        v34 = [v32 messageId];
        v46 = [v45 urlForMailMessageWithId:v34];

        v31 = v44;
      }

      v35 = [v23 locationType];
      v36 = [v23 trigger];
      LOBYTE(v43) = [(SGReminderDissector *)self isAllDay:v20];
      LOBYTE(v42) = 2;
      v37 = v35;
      v33 = v47;
      v24 = [(SGReminderDissector *)self _reminderEnrichmentWithTitle:v15 dueDateComponents:v20 dueLocationType:v37 dueLocation:v47 dueLocationTrigger:v36 sourceURL:v46 reminderStatus:v42 parentEntity:v13 parentMessage:v14 allDay:v43];

      v22 = 1;
    }

    else
    {
      v24 = 0;
      v22 = 4;
      v33 = v47;
    }

    goto LABEL_28;
  }

  v19 = [v12 isProposal];
  v20 = 0;
  if (v15)
  {
    v21 = 0;
  }

  else
  {
    v21 = 5;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = 2;
  }

  v23 = 0;
  v24 = 0;
LABEL_28:
  v38 = +[SGRTCLogging defaultLogger];
  v39 = mach_absolute_time() - a7;
  if (SGMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
  }

  [v38 logReminderExtractionFromEntity:v13 interface:0 actionType:0 dueLocation:v23 dueDateComponents:v20 extractionStatus:v22 timingProcessing:(v39 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 / 0xF4240)];
  v25 = v24;

LABEL_31:
  v40 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)extractReminderFromOwnedMailMessage:(id)a3 entity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1849;
  v30 = __Block_byref_object_dispose__1850;
  v31 = 0;
  v8 = mach_absolute_time();
  v9 = +[SGReminderExtractionModel sharedInstance];
  v10 = [v6 textContent];
  v11 = [v9 whitelistedRangesInContent:v10];

  v12 = [v6 textContent];
  v13 = [(SGReminderDissector *)self processingLanguageForContent:v12];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__SGReminderDissector_extractReminderFromOwnedMailMessage_entity___block_invoke;
  v19[3] = &unk_27894B2B8;
  v14 = v7;
  v20 = v14;
  v15 = v6;
  v21 = v15;
  v16 = v13;
  v22 = v16;
  v23 = self;
  v24 = &v26;
  v25 = v8;
  [v11 enumerateRangesUsingBlock:v19];
  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __66__SGReminderDissector_extractReminderFromOwnedMailMessage_entity___block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3, _BYTE *a4)
{
  v90 = *MEMORY[0x277D85DE8];
  v72 = objc_opt_new();
  v69 = a1;
  v7 = [*(a1 + 32) taggedCharacterRanges];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v79;
    length = a3;
    location = a2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v79 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v78 + 1) + 8 * i);
        v95.location = [v14 range];
        v95.length = v15;
        v91.location = a2;
        v91.length = a3;
        if (NSIntersectionRange(v91, v95).length)
        {
          v96.location = [v14 range];
          v96.length = v16;
          v92.location = location;
          v92.length = length;
          v17 = NSUnionRange(v92, v96);
          location = v17.location;
          length = v17.length;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v78 objects:v89 count:16];
    }

    while (v9);
  }

  else
  {
    length = a3;
    location = a2;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    v70 = length;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v74 + 1) + 8 * j);
        v97.location = [v22 range];
        v97.length = v23;
        v93.location = location;
        v93.length = length;
        v24 = NSIntersectionRange(v93, v97).length;
        v98.location = [v22 range];
        v98.length = v25;
        v94.location = location;
        v94.length = length;
        v26 = NSUnionRange(v94, v98);
        if (v24)
        {
          v27 = v26.location == location;
        }

        else
        {
          v27 = 0;
        }

        if (v27 && v26.length == length)
        {
          v29 = [SGTaggedCharacterRange alloc];
          v30 = [v22 annotationType];
          [v22 tags];
          v32 = v31 = v19;
          v33 = [v22 range] - location;
          [v22 range];
          v35 = v34;
          v36 = [v22 text];
          v37 = [(SGTaggedCharacterRange *)v29 initWithAnnotationType:v30 tags:v32 range:v33 text:v35, v36];

          v19 = v31;
          length = v70;
          [v72 addObject:v37];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v19);
  }

  v38 = [*(v69 + 40) quotedRegions];
  if ([v38 intersectsIndexesInRange:{location, length}])
  {
    goto LABEL_31;
  }

  v39 = [*(v69 + 40) htmlParser];
  v40 = [v39 tabularRegions];
  if ([v40 intersectsIndexesInRange:{location, length}])
  {

LABEL_31:
    goto LABEL_32;
  }

  v42 = [*(v69 + 40) htmlParser];
  v43 = [v42 signatureRegions];
  v44 = [v43 intersectsIndexesInRange:{location, length}];

  if (v44)
  {
LABEL_32:
    v41 = sgRemindersLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v41, OS_LOG_TYPE_INFO, "SGReminderDissector: Skipping parts of content that are identified as not plain text", buf, 2u);
    }

    goto LABEL_46;
  }

  v45 = objc_autoreleasePoolPush();
  v46 = [*(v69 + 40) textContent];
  v41 = [v46 substringWithRange:{location, length}];

  objc_autoreleasePoolPop(v45);
  v47 = [*(v69 + 40) date];
  v48 = [SGDataDetectorMatch detectionsInPlainText:v41 baseDate:v47];

  v49 = +[SGPOSTagger sharedInstance];
  v50 = [v49 tokenizeTextContent:v41 languageHint:*(v69 + 48)];
  [v72 addObjectsFromArray:v50];

  v51 = *(v69 + 56);
  v52 = [objc_opt_class() enrichedTaggedCharacterRangesFromTaggedCharacterRanges:v72 messageIsSent:0];
  if ([v52 count])
  {
    v53 = +[SGReminderExtractionModel sharedInstance];
    v54 = [v53 modelInferences:v52];
    if (v54)
    {
      v67 = v53;
      v55 = [SGMessage alloc];
      v86[0] = @"isSent";
      v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(v69 + 40), "isSent")}];
      v86[1] = @"body";
      v87[0] = v56;
      v87[1] = v41;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
      v58 = [(SGMessage *)v55 initWithMessageDictionary:v57];

      v71 = v48;
      v59 = [[SGReminderMessage alloc] initWithMessage:v58 plainTextDetectedData:v48 enrichedTaggedCharacterRanges:v52 modelOutput:v54];
      v60 = [*(v69 + 56) _detectedReminderEnrichmentFromReminderMessage:v59 parentEntity:*(v69 + 32) language:*(v69 + 48) parentMessage:*(v69 + 40) startTimeProcessing:*(v69 + 72)];
      v61 = *(*(v69 + 64) + 8);
      v62 = *(v61 + 40);
      *(v61 + 40) = v60;

      v63 = sgRemindersLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [*(v69 + 32) loggingIdentifier];
        v65 = [*(*(*(v69 + 64) + 8) + 40) loggingIdentifier];
        *buf = 138543618;
        v83 = v64;
        v84 = 2114;
        v85 = v65;
        _os_log_impl(&dword_231E60000, v63, OS_LOG_TYPE_DEFAULT, "SGEntity: %{public}@ -> SGPipelineEnrichment: %{public}@", buf, 0x16u);
      }

      if (*(*(*(v69 + 64) + 8) + 40))
      {
        *a4 = 1;
      }

      v48 = v71;
      v53 = v67;
    }

    else
    {
      v58 = sgRemindersLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v58, OS_LOG_TYPE_ERROR, "SGReminderDissector: Not model output, bailing", buf, 2u);
      }
    }
  }

LABEL_46:
  v66 = *MEMORY[0x277D85DE8];
}

- (id)extractReminderFromMailMessage:(id)a3 entity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1849;
  v20 = __Block_byref_object_dispose__1850;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SGReminderDissector_extractReminderFromMailMessage_entity___block_invoke;
  v12[3] = &unk_278953EC0;
  v15 = &v16;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [v9 runWithDissectorLock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __61__SGReminderDissector_extractReminderFromMailMessage_entity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extractReminderFromOwnedMailMessage:*(a1 + 40) entity:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)reminderTitleForContent:(id)a3
{
  v4 = a3;
  v5 = [(SGReminderDissector *)self processingLanguageForContent:v4];
  if (v4 && [v4 length] <= 0x3E8)
  {
    v6 = 0;
    if ([v4 length] && v5)
    {
      v8 = +[SGPOSTagger sharedInstance];
      v9 = [v8 tokenizeTextContent:v4 languageHint:v5];

      v10 = [objc_opt_class() enrichedTaggedCharacterRangesFromTaggedCharacterRanges:v9 messageIsSent:0];
      if ([v10 count])
      {
        v11 = +[SGReminderExtractionModel sharedInstance];
        v12 = [v11 modelInferences:v10];
        if (v12)
        {
          v6 = [SGReminderMessage detectedTitleInModelOutput:v12 enrichedTaggedCharacterRanges:v10 textContent:v4 language:v5];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277D02098] detectReminders] & 1) == 0)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v13 = "SGReminderDissector: detectReminders is OFF";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  if ([v9 hasEventEnrichment])
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v13 = "SGReminderDissector: Not processing since PseudoEvent found";
LABEL_7:
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, v13, &v23, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = +[SGAsset localeAsset];
  v16 = [v15 assetVersion];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 loggingIdentifier];
      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Not processing due to a missing localeAsset. [SGEntity (%{public}@)]", &v23, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v11);
  [v9 releaseDissectorLock];
  v18 = self;
  objc_sync_enter(v18);
  v19 = objc_autoreleasePoolPush();
  v20 = [v10 serviceContext];
  v21 = [v20 store];
  v22 = [(SGReminderDissector *)v18 extractReminderFromTextMessage:v8 entity:v9 store:v21];

  objc_autoreleasePoolPop(v19);
  objc_sync_exit(v18);

  [v9 acquireDissectorLock];
  if (v22)
  {
    [v9 addEnrichment:v22];
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277D02098] detectReminders] & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      v16 = "SGReminderDissector: detectReminders is OFF";
LABEL_10:
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, v16, &v33, 2u);
    }

LABEL_11:

    objc_autoreleasePoolPop(v11);
    goto LABEL_12;
  }

  if (([MEMORY[0x277D02098] detectRemindersInMail] & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      v16 = "SGReminderDissector: Reminder detection for mail is off";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12 = +[SGAsset localeAsset];
  v13 = [v12 assetVersion];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 loggingIdentifier];
      v33 = 138543362;
      v34 = v15;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGReminderDissector: Not processing due to a missing localeAsset. [SGEntity (%{public}@)]", &v33, 0xCu);
    }

    goto LABEL_11;
  }

  if ([v9 hasEventEnrichment])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Not processing since PseudoEvent found";
    goto LABEL_10;
  }

  v18 = [v8 allRecipients];
  v19 = [v18 count];

  if (v19 >= 2)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail has multiple recipients, skipping";
    goto LABEL_10;
  }

  if ([v9 isInhuman])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is inhuman, skipping";
    goto LABEL_10;
  }

  v20 = [v8 mailingList];

  if (v20)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is from mailing list, skipping";
    goto LABEL_10;
  }

  if ([v8 isPartiallyDownloaded])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is partially downloaded, skipping";
    goto LABEL_10;
  }

  if ([v8 isSent])
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is sent, skipping";
    goto LABEL_10;
  }

  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v8 date];
  [v21 timeIntervalSinceDate:v22];
  v24 = v23;

  if (v24 > 604800.0)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is older than one week, skipping";
    goto LABEL_10;
  }

  v25 = [v8 from];
  v26 = [v25 asCSPerson];
  v27 = [v10 serviceContext];
  v28 = [v27 store];
  v29 = [v26 sg_isSignificantWithStore:v28];

  if ((v29 & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v33) = 0;
    v16 = "SGReminderDissector: Mail is from insignificant sender, skipping";
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v11);
  [v9 releaseDissectorLock];
  v30 = self;
  objc_sync_enter(v30);
  v31 = objc_autoreleasePoolPush();
  v32 = [(SGReminderDissector *)v30 extractReminderFromMailMessage:v8 entity:v9];
  objc_autoreleasePoolPop(v31);
  objc_sync_exit(v30);

  [v9 acquireDissectorLock];
  if (v32)
  {
    [v9 addEnrichment:v32];
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

- (SGReminderDissector)initWithConversations:(id)a3 rtRoutineManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SGReminderDissector;
  v9 = [(SGReminderDissector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversations, a3);
    objc_storeStrong(&v10->_rtRoutineManager, a4);
  }

  return v10;
}

- (SGReminderDissector)init
{
  v3 = objc_opt_new();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getRTRoutineManagerClass_softClass;
  v15 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getRTRoutineManagerClass_block_invoke;
    v11[3] = &unk_278955BF0;
    v11[4] = &v12;
    __getRTRoutineManagerClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  if (v4)
  {
    v6 = NSSelectorFromString(@"defaultManager");
    v7 = ([v4 methodForSelector:v6])(v4, v6);
  }

  else
  {
    v8 = sgRemindersLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "Suggestions failed to dlopen CoreRoutine.", v11, 2u);
    }

    v7 = 0;
  }

  v9 = [(SGReminderDissector *)self initWithConversations:v3 rtRoutineManager:v7];

  return v9;
}

+ (id)getContactIdentifierForName:(id)a3 andEmail:(id)a4 ifMatchingPredicate:(id)a5
{
  v56[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = +[SGContactStoreFactory contactStore];
  v12 = *MEMORY[0x277CBCFC0];
  v56[0] = *MEMORY[0x277CBD018];
  v56[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v53 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __80__SGReminderDissector_getContactIdentifierForName_andEmail_ifMatchingPredicate___block_invoke;
  v50[3] = &unk_278951AD0;
  v38 = v9;
  v52 = v38;
  v14 = v10;
  v51 = v14;
  v41 = v7;
  v39 = v11;
  [SGContactsInterface enumerateContactsMatchingName:v7 withKeysToFetch:v13 usingContactStore:v11 error:&v53 usingBlock:v50];
  v15 = v53;

  v16 = [v14 array];
  v40 = v8;
  v17 = SGNormalizeEmailAddress();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = v16;
  v36 = [v18 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v36)
  {
    v19 = *v47;
    v34 = v15;
    v35 = v14;
    v37 = v18;
    v33 = *v47;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v22 = [v21 emailAddresses];
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          while (2)
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v42 + 1) + 8 * j) value];
              v28 = SGNormalizeEmailAddress();
              v29 = [v17 isEqualToString:v28];

              if (v29)
              {
                v30 = v21;

                v15 = v34;
                v14 = v35;
                v18 = v37;
                goto LABEL_19;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v42 objects:v54 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v18 = v37;
        v19 = v33;
      }

      v30 = 0;
      v15 = v34;
      v14 = v35;
      v36 = [v37 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v36);
  }

  else
  {
    v30 = 0;
  }

LABEL_19:

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

void __80__SGReminderDissector_getContactIdentifierForName_andEmail_ifMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (BOOL)isReminderDueDateComponentsInPast:(id)a3 givenReferenceDate:(id)a4 allDay:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  [a4 timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 dateFromComponents:v7];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  if (v5)
  {
    v14 = [v7 copy];
    [v14 setHour:23];
    [v14 setMinute:59];
    [v14 setSecond:59];
    v15 = [v14 timeZone];

    if (!v15)
    {
      v16 = [MEMORY[0x277CBEBB0] defaultTimeZone];
      [v14 setTimeZone:v16];
    }

    v17 = [v14 date];
    [v17 timeIntervalSinceReferenceDate];
    v13 = v18;
  }

  return v9 > v13;
}

+ (id)enrichedTaggedCharacterRangesFromEntity:(id)a3 forMessage:(id)a4
{
  v6 = a4;
  v7 = [a3 taggedCharacterRanges];
  v8 = [v6 isSent];

  v9 = [a1 enrichedTaggedCharacterRangesFromTaggedCharacterRanges:v7 messageIsSent:v8];

  return v9;
}

+ (id)enrichedTaggedCharacterRangesFromTaggedCharacterRanges:(id)a3 messageIsSent:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v5 = [a3 mutableCopy];
  v6 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if ([v12 annotationType] == 3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v9);
  }

  v13 = +[SGReminderExtractionModel sharedInstance];
  v14 = [v13 enrichments];

  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"polarityEmojisMapping"];
    v16 = v15;
    if (v15)
    {
      v43 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      v18 = [SGTaggedCharacterRange enrichAndFilterTaggedCharacterRanges:v6 usingMapping:v17 withAnnotationType:3];

      v19 = [v14 objectForKeyedSubscript:@"verbsMapping"];
      v20 = v19;
      if (v19)
      {
        v42 = v19;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v34 = [SGTaggedCharacterRange enrichAndFilterTaggedCharacterRanges:v6 usingMapping:v21 withAnnotationType:7];

        [v7 addObjectsFromArray:v18];
        [v7 addObjectsFromArray:v34];
        v22 = @"CONTACT";
        if (v4)
        {
          v22 = @"ACCOUNT_OWNER";
        }

        v23 = v22;
        v24 = [SGTaggedCharacterRange alloc];
        v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IS_%@", v23];

        v40 = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        v27 = [(SGTaggedCharacterRange *)v24 initWithAnnotationType:5 tags:v26 range:0 text:0, &stru_284703F00];
        v41 = v27;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v29 = v28 = v18;

        v30 = [SGTaggedCharacterRange mergeTaggedCharacterRanges:v7 usingBaseTaggedCharacterRanges:v6 extraTags:v29 tagOverrides:0 alignWithGroundTruth:0];

        v18 = v28;
        v31 = v34;
      }

      else
      {
        v31 = sgRemindersLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v31, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load verb mapping", buf, 2u);
        }

        v30 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v18 = sgRemindersLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load emoji assets", buf, 2u);
      }

      v30 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = sgRemindersLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGReminderDissector: Unable to load model assets", buf, 2u);
    }

    v30 = MEMORY[0x277CBEBF8];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4, &__block_literal_global_1945);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __37__SGReminderDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end