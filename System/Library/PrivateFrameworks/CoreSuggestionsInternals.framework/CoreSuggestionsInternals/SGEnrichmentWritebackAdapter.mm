@interface SGEnrichmentWritebackAdapter
+ (BOOL)_isEligibleEvent:(id)event;
+ (BOOL)_isSupportedEntityType:(int64_t)type;
+ (id)_attributeSetForEvent:(id)event;
+ (id)_bundleIdentifierFromEvent:(id)event;
+ (id)_index;
- (id)_deleteEventsMatchingEvent:(id)event keepingNewerEvents:(BOOL)events;
- (id)_deleteEventsMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date;
- (id)_uniqueIdentifiersMatchingEvent:(id)event olderThanDate:(id)date;
- (id)_uniqueIdentifiersMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)cancelEvents:(id)events;
- (void)orphanEvent:(id)event;
@end

@implementation SGEnrichmentWritebackAdapter

- (void)cancelEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  eventsCopy = events;
  v5 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self cancelEvent:v9, v12];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  eventsCopy = events;
  v5 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self addEvent:v9, v12];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)orphanEvent:(id)event
{
  v4 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:event keepingNewerEvents:0];
  [v4 setTimeout:60.0];
  wait = [v4 wait];
}

- (void)addEvent:(id)event
{
  v65 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![SGEnrichmentWritebackAdapter _isEligibleEvent:eventCopy])
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v62 = eventCopy;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ skipping due to being ineligible", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v6 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:eventCopy];
  if ([v6 isEqualToString:*MEMORY[0x277D021C0]])
  {
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey emailKey];
    messageId = [emailKey messageId];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D021D0]])
  {
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey messageKey];
    messageId = [emailKey uniqueIdentifier];
LABEL_8:
    v11 = messageId;

    if (v11)
    {
      v12 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:eventCopy keepingNewerEvents:1];
      [v12 setTimeout:60.0];
      wait = [v12 wait];
      result = [v12 result];

      if (result)
      {
        result2 = [v12 result];
        v16 = [result2 isEqualToNumber:&unk_284749518];

        if (v16)
        {
          v17 = @"update";
        }

        else
        {
          v17 = @"confirm";
        }

        v18 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingEvent:eventCopy olderThanDate:0];
        [v18 setTimeout:60.0];
        wait2 = [v18 wait];
        error = [v18 error];

        if (error)
        {
          v21 = sgLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            error2 = [v18 error];
            *buf = 138740227;
            v62 = eventCopy;
            v63 = 2112;
            v64 = error2;
            _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because failed to query spotlight for newer events: %@", buf, 0x16u);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            goto LABEL_25;
          }

          goto LABEL_37;
        }

        v55 = v11;
        result3 = [v18 result];
        v25 = [result3 count];

        if (v25)
        {
          v26 = sgLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            result4 = [v18 result];
            *buf = 138740227;
            v62 = eventCopy;
            v63 = 2117;
            v64 = result4;
            _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because newer events were found in spotlight: %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        v28 = [SGEnrichmentWritebackAdapter _attributeSetForEvent:eventCopy];
        v26 = v28;
        if (!v28)
        {
LABEL_35:
          v11 = v55;
          goto LABEL_36;
        }

        [v28 setEventStatus:v17];
        if (([MEMORY[0x277D06960] isValidEventForSpotlightDonation:v26] & 1) == 0)
        {
          v43 = sgLogHandle();
          v11 = v55;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138739971;
            v62 = eventCopy;
            _os_log_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because event is not valid for spotlight donation", buf, 0xCu);
          }

          goto LABEL_36;
        }

        context = objc_autoreleasePoolPush();
        duplicateKey2 = [eventCopy duplicateKey];
        parentKey2 = [duplicateKey2 parentKey];
        v52 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", [parentKey2 entityType]);

        if (!v52)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          duplicateKey3 = [eventCopy duplicateKey];
          parentKey3 = [duplicateKey3 parentKey];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGEnrichmentWritebackAdapter.m" lineNumber:292 description:{@"unexpected entityType %lld (uniqueIdentifier logic only supports mail and message bundle ID)", objc_msgSend(parentKey3, "entityType")}];
        }

        if ([v6 rangeOfString:@"-" options:2]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = objc_alloc(MEMORY[0x277CCACA8]);
          eventGroupIdentifier = [v26 eventGroupIdentifier];
          v53 = [v31 initWithFormat:@"%@-%@-default-%@-%@", @"CoreSuggestions", @"v3", eventGroupIdentifier, v6];

          objc_autoreleasePoolPop(context);
          v49 = objc_autoreleasePoolPush();
          v33 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
          invertedSet = [v33 invertedSet];

          v60[0] = @"CoreSuggestions";
          v60[1] = @"v3";
          v60[2] = @"default";
          v35 = [v55 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
          v60[3] = v35;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
          contexta = [v36 _pas_componentsJoinedByString:@"."];

          objc_autoreleasePoolPop(v49);
          v37 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v53 domainIdentifier:contexta attributeSet:v26];
          v38 = dispatch_semaphore_create(0);
          v39 = +[SGEnrichmentWritebackAdapter _index];
          v59 = v37;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __41__SGEnrichmentWritebackAdapter_addEvent___block_invoke;
          v56[3] = &unk_2789501E0;
          v57 = eventCopy;
          v58 = v38;
          v41 = v38;
          [v39 indexSearchableItems:v40 completionHandler:v56];

          v11 = v55;
          dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);

LABEL_36:
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v46 = sgLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *buf = 138740227;
          v62 = eventCopy;
          v63 = 2114;
          v64 = v6;
          _os_log_fault_impl(&dword_231E60000, v46, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because bundleIdentifierForUniqueIdentifier contains '-': %{public}@", buf, 0x16u);
        }

        v11 = v55;
        if (!_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          objc_autoreleasePoolPop(context);
          goto LABEL_36;
        }
      }

      else
      {
        v23 = sgLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          error3 = [v12 error];
          *buf = 138740227;
          v62 = eventCopy;
          v63 = 2112;
          v64 = error3;
          _os_log_fault_impl(&dword_231E60000, v23, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because deletion timed out or failed: %@", buf, 0x16u);
        }

        if (!_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          goto LABEL_38;
        }
      }

LABEL_25:
      abort();
    }
  }

  v22 = sgLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 138739971;
    v62 = eventCopy;
    _os_log_fault_impl(&dword_231E60000, v22, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing due to nil messageId", buf, 0xCu);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_25;
  }

LABEL_39:

  v42 = *MEMORY[0x277D85DE8];
}

void __41__SGEnrichmentWritebackAdapter_addEvent___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138740227;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ indexing failed with error %@", &v7, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_deleteEventsMatchingEvent:(id)event keepingNewerEvents:(BOOL)events
{
  eventCopy = event;
  if (([eventCopy heuristicUpdatingEnabled] & 1) != 0 && (objc_msgSend(eventCopy, "duplicateKey"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "parentKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", objc_msgSend(v8, "entityType")), v8, v7, v9))
  {
    duplicateKey = [eventCopy duplicateKey];
    pseudoEventKey = [duplicateKey pseudoEventKey];
    groupId = [pseudoEventKey groupId];
    extraKeyTag = [eventCopy extraKeyTag];
    value = [extraKeyTag value];
    if (events)
    {
      [eventCopy creationTimestamp];
      v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v15];
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:groupId fallbackGroupId:value olderThanDate:v16];
    }

    else
    {
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:groupId fallbackGroupId:value olderThanDate:0];
    }
  }

  else
  {
    v17 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  return v17;
}

- (id)_deleteEventsMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  if (idCopy | groupIdCopy)
  {
    v12 = objc_opt_new();
    workQueue = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke;
    block[3] = &unk_278954AC8;
    block[4] = self;
    v18 = idCopy;
    v19 = groupIdCopy;
    v20 = dateCopy;
    v14 = v12;
    v21 = v14;
    dispatch_async(workQueue, block);

    v15 = v21;
    v11 = v14;
  }

  else
  {
    v11 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  return v11;
}

void __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _uniqueIdentifiersMatchingGroupId:*(a1 + 40) fallbackGroupId:*(a1 + 48) olderThanDate:*(a1 + 56)];
  v3 = [v2 wait];
  if (([*(a1 + 64) isComplete] & 1) == 0)
  {
    v4 = [v2 result];

    if (v4)
    {
      v5 = +[SGEnrichmentWritebackAdapter _index];
      v6 = [v2 result];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2;
      v16[3] = &unk_2789501E0;
      v7 = &v17;
      v17 = v2;
      v18 = *(a1 + 64);
      [v5 deleteSearchableItemsWithIdentifiers:v6 completionHandler:v16];

      v8 = v18;
    }

    else
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = [v2 error];
        *buf = 138740483;
        v20 = v11;
        v21 = 2117;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "deleteEventsMatchingGroupId:%{sensitive}@ fallbackGroupId:%{sensitive}@ deleting all because we couldn't find existing stuff in Spotlight (%@)", buf, 0x20u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }

      v8 = +[SGEnrichmentWritebackAdapter _index];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_45;
      v14[3] = &unk_278955BA8;
      v7 = &v15;
      v15 = *(a1 + 64);
      [v8 deleteSearchableItemsWithDomainIdentifiers:&unk_28474A630 completionHandler:v14];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 result];
  v5 = [v4 count];
  v6 = &unk_284749518;
  if (!v5)
  {
    v6 = &unk_284749530;
  }

  v7 = v6;

  if (v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [*(a1 + 40) completeWithResult:v8 error:?];
}

uint64_t __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = &unk_284749530;
  }

  return [v2 completeWithResult:v3 error:a2];
}

- (id)_uniqueIdentifiersMatchingEvent:(id)event olderThanDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  if ([eventCopy heuristicUpdatingEnabled])
  {
    duplicateKey = [eventCopy duplicateKey];
    pseudoEventKey = [duplicateKey pseudoEventKey];
    groupId = [pseudoEventKey groupId];
    extraKeyTag = [eventCopy extraKeyTag];
    value = [extraKeyTag value];
    v13 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingGroupId:groupId fallbackGroupId:value olderThanDate:dateCopy];
  }

  else
  {
    v13 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEBF8]];
  }

  return v13;
}

- (id)_uniqueIdentifiersMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date
{
  v47[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  if (idCopy | groupIdCopy)
  {
    v35 = objc_opt_new();
    v11 = objc_opt_new();
    [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
    v47[0] = *MEMORY[0x277CC3208];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    [v11 setFetchAttributes:v12];

    [v11 setReason:@"reason:SGEnrichmentWritebackAdapter-1; code:8"];
    v13 = objc_opt_new();
    if (idCopy)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = spotlightEscaped(idCopy);
      v16 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v15];
      [v13 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }

    if (groupIdCopy)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = spotlightEscaped(groupIdCopy);
      v19 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v18];
      [v13 addObject:v19];

      objc_autoreleasePoolPop(v17);
    }

    v20 = [v13 _pas_componentsJoinedByString:@" || "];

    if (dateCopy)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      [dateCopy timeIntervalSinceReferenceDate];
      v23 = [v21 initWithFormat:@"(%@) && kMDItemContentCreationDate < %f", v20, v22, v35];

      v20 = v23;
    }

    v24 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v20 context:v11];
    [v24 setPrivateIndex:0];
    v46 = @"com.apple.spotlight.events";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    [v24 setBundleIDs:v25];

    if ([MEMORY[0x277D42598] isDeviceFormattedForProtection])
    {
      v45 = *MEMORY[0x277CCA1A0];
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v24 setProtectionClasses:v26];
    }

    v27 = objc_opt_new();
    v28 = [objc_alloc(MEMORY[0x277D425A8]) initWithDomain:@"CoreSuggestions"];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke;
    v42[3] = &unk_278951170;
    v29 = v27;
    v43 = v29;
    v30 = v28;
    v44 = v30;
    [v24 setFoundItemsHandler:v42];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_3;
    v39[3] = &unk_2789501E0;
    v31 = v35;
    v40 = v31;
    v32 = v29;
    v41 = v32;
    [v24 setCompletionHandler:v39];
    objc_initWeak(&location, v24);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_4;
    v36[3] = &unk_278950208;
    objc_copyWeak(&v37, &location);
    [v31 wait:v36];
    [v24 start];
    v10 = v31;
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEBF8]];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v10;
}

void __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2;
  v5[3] = &unk_27894DD40;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [a2 _pas_mappedArrayWithTransform:v5];
  [v3 addObjectsFromArray:v4];
}

uint64_t __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 fail:a2];
  }

  else
  {
    return [v3 succeed:*(a1 + 40)];
  }
}

void __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained cancel];
  }
}

id __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 domainIdentifier];
  LODWORD(v4) = [v4 containsDomain:v5];

  if (v4)
  {
    v6 = [v3 uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_attributeSetForEvent:(id)event
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  attributeSetForEvent = [eventCopy attributeSetForEvent];
  if (!attributeSetForEvent)
  {
    goto LABEL_20;
  }

  v5 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:eventCopy];
  if ([v5 isEqualToString:*MEMORY[0x277D021C0]])
  {
    [attributeSetForEvent setEventSourceBundleIdentifier:@"com.apple.mobilemail"];
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey emailKey];
    messageId = [emailKey messageId];
LABEL_6:
    v10 = messageId;
    [attributeSetForEvent setEventMessageIdentifier:messageId];

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D021D0]])
  {
    [attributeSetForEvent setEventSourceBundleIdentifier:@"com.apple.MobileSMS"];
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey messageKey];
    messageId = [emailKey uniqueIdentifier];
    goto LABEL_6;
  }

LABEL_7:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  tags = [eventCopy tags];
  v12 = [tags countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(tags);
      }

      v16 = *(*(&v33 + 1) + 8 * v15);
      if ([v16 isAppleMailMessageId])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [tags countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    v17 = v16;

    if (!v17)
    {
      goto LABEL_19;
    }

    value = [v17 value];
    v19 = SGDelimitedStringsDeserialize();

    firstObject = [v19 firstObject];
    [attributeSetForEvent setAccountIdentifier:firstObject];

    lastObject = [v19 lastObject];
    [attributeSetForEvent setMailMessageID:lastObject];

    tags = v17;
  }

LABEL_18:

LABEL_19:
  tags2 = [eventCopy tags];
  v23 = [tags2 _pas_mappedSetWithTransform:&__block_literal_global_98_14628];
  allObjects = [v23 allObjects];
  [attributeSetForEvent setMailboxIdentifiers:allObjects];

  duplicateKey2 = [eventCopy duplicateKey];
  pseudoEventKey = [duplicateKey2 pseudoEventKey];
  groupId = [pseudoEventKey groupId];
  [attributeSetForEvent setEventGroupIdentifier:groupId];

  extraKeyTag = [eventCopy extraKeyTag];
  value2 = [extraKeyTag value];
  [attributeSetForEvent setEventFallbackGroupIdentifier:value2];

  v30 = attributeSetForEvent;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];

  return attributeSetForEvent;
}

id __54__SGEnrichmentWritebackAdapter__attributeSetForEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMailboxIdentifier])
  {
    v3 = [v2 value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_isEligibleEvent:(id)event
{
  eventCopy = event;
  v23 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  extractedFlight = [MEMORY[0x277D01FA0] extractedFlight];
  extractedHotel = [MEMORY[0x277D01FA0] extractedHotel];
  extractedFood = [MEMORY[0x277D01FA0] extractedFood];
  extractedCarRental = [MEMORY[0x277D01FA0] extractedCarRental];
  extractedTicket = [MEMORY[0x277D01FA0] extractedTicket];
  extractedMovie = [MEMORY[0x277D01FA0] extractedMovie];
  extractedAppointment = [MEMORY[0x277D01FA0] extractedAppointment];
  extractedSocial = [MEMORY[0x277D01FA0] extractedSocial];
  extractedBus = [MEMORY[0x277D01FA0] extractedBus];
  extractedBoat = [MEMORY[0x277D01FA0] extractedBoat];
  extractedTrain = [MEMORY[0x277D01FA0] extractedTrain];
  v21 = [v20 initWithObjects:{extractedFlight, extractedHotel, extractedFood, extractedCarRental, extractedTicket, extractedMovie, extractedAppointment, extractedSocial, extractedBus, extractedBoat, extractedTrain, 0}];

  objc_autoreleasePoolPop(v23);
  duplicateKey = [eventCopy duplicateKey];
  parentKey = [duplicateKey parentKey];
  if ([self _isSupportedEntityType:{objc_msgSend(parentKey, "entityType")}])
  {
    tags = [eventCopy tags];
    v15 = v21;
    v16 = [tags intersectsSet:v21];
  }

  else
  {
    v16 = 0;
    v15 = v21;
  }

  return v16;
}

+ (BOOL)_isSupportedEntityType:(int64_t)type
{
  if (type != 5)
  {
    return type == 13;
  }

  v8 = v3;
  v9 = v4;
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGEnrichmentWritebackdapter: TextUnderstanding/RealtimeAPI and SpotlightknowledgedTUV2 enabled, skip donation to spotlight events bundle.", v7, 2u);
  }

  return 0;
}

+ (id)_bundleIdentifierFromEvent:(id)event
{
  v3 = MEMORY[0x277CBEAC0];
  eventCopy = event;
  v5 = [v3 alloc];
  v6 = [v5 initWithObjectsAndKeys:{*MEMORY[0x277D021C0], &unk_284749548, *MEMORY[0x277D021D0], &unk_284749560, 0}];
  v7 = MEMORY[0x277CCABB0];
  duplicateKey = [eventCopy duplicateKey];

  parentKey = [duplicateKey parentKey];
  v10 = [v7 numberWithLongLong:{objc_msgSend(parentKey, "entityType")}];
  v11 = [v6 objectForKey:v10];

  return v11;
}

+ (id)_index
{
  if (_index__pasOnceToken5 != -1)
  {
    dispatch_once(&_index__pasOnceToken5, &__block_literal_global_14645);
  }

  v3 = _index__pasExprOnceResult;

  return v3;
}

void __38__SGEnrichmentWritebackAdapter__index__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277CC34A8]);
  v2 = [v1 initWithName:@"com.apple.spotlight.events" protectionClass:*MEMORY[0x277CCA1A0] bundleIdentifier:@"com.apple.spotlight.events"];
  v3 = _index__pasExprOnceResult;
  _index__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end