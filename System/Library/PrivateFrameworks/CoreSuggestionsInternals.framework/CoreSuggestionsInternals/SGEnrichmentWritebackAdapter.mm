@interface SGEnrichmentWritebackAdapter
+ (BOOL)_isEligibleEvent:(id)a3;
+ (BOOL)_isSupportedEntityType:(int64_t)a3;
+ (id)_attributeSetForEvent:(id)a3;
+ (id)_bundleIdentifierFromEvent:(id)a3;
+ (id)_index;
- (id)_deleteEventsMatchingEvent:(id)a3 keepingNewerEvents:(BOOL)a4;
- (id)_deleteEventsMatchingGroupId:(id)a3 fallbackGroupId:(id)a4 olderThanDate:(id)a5;
- (id)_uniqueIdentifiersMatchingEvent:(id)a3 olderThanDate:(id)a4;
- (id)_uniqueIdentifiersMatchingGroupId:(id)a3 fallbackGroupId:(id)a4 olderThanDate:(id)a5;
- (void)addEvent:(id)a3;
- (void)addEvents:(id)a3;
- (void)cancelEvents:(id)a3;
- (void)orphanEvent:(id)a3;
@end

@implementation SGEnrichmentWritebackAdapter

- (void)cancelEvents:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self cancelEvent:v9, v12];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self addEvent:v9, v12];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)orphanEvent:(id)a3
{
  v4 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:a3 keepingNewerEvents:0];
  [v4 setTimeout:60.0];
  v3 = [v4 wait];
}

- (void)addEvent:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![SGEnrichmentWritebackAdapter _isEligibleEvent:v5])
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v62 = v5;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ skipping due to being ineligible", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v6 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:v5];
  if ([v6 isEqualToString:*MEMORY[0x277D021C0]])
  {
    v7 = [v5 duplicateKey];
    v8 = [v7 parentKey];
    v9 = [v8 emailKey];
    v10 = [v9 messageId];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D021D0]])
  {
    v7 = [v5 duplicateKey];
    v8 = [v7 parentKey];
    v9 = [v8 messageKey];
    v10 = [v9 uniqueIdentifier];
LABEL_8:
    v11 = v10;

    if (v11)
    {
      v12 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:v5 keepingNewerEvents:1];
      [v12 setTimeout:60.0];
      v13 = [v12 wait];
      v14 = [v12 result];

      if (v14)
      {
        v15 = [v12 result];
        v16 = [v15 isEqualToNumber:&unk_284749518];

        if (v16)
        {
          v17 = @"update";
        }

        else
        {
          v17 = @"confirm";
        }

        v18 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingEvent:v5 olderThanDate:0];
        [v18 setTimeout:60.0];
        v19 = [v18 wait];
        v20 = [v18 error];

        if (v20)
        {
          v21 = sgLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            v44 = [v18 error];
            *buf = 138740227;
            v62 = v5;
            v63 = 2112;
            v64 = v44;
            _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because failed to query spotlight for newer events: %@", buf, 0x16u);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            goto LABEL_25;
          }

          goto LABEL_37;
        }

        v55 = v11;
        v24 = [v18 result];
        v25 = [v24 count];

        if (v25)
        {
          v26 = sgLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v18 result];
            *buf = 138740227;
            v62 = v5;
            v63 = 2117;
            v64 = v27;
            _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because newer events were found in spotlight: %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        v28 = [SGEnrichmentWritebackAdapter _attributeSetForEvent:v5];
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
            v62 = v5;
            _os_log_impl(&dword_231E60000, v43, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because event is not valid for spotlight donation", buf, 0xCu);
          }

          goto LABEL_36;
        }

        context = objc_autoreleasePoolPush();
        v29 = [v5 duplicateKey];
        v30 = [v29 parentKey];
        v52 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", [v30 entityType]);

        if (!v52)
        {
          v47 = [MEMORY[0x277CCA890] currentHandler];
          v54 = [v5 duplicateKey];
          v48 = [v54 parentKey];
          [v47 handleFailureInMethod:a2 object:self file:@"SGEnrichmentWritebackAdapter.m" lineNumber:292 description:{@"unexpected entityType %lld (uniqueIdentifier logic only supports mail and message bundle ID)", objc_msgSend(v48, "entityType")}];
        }

        if ([v6 rangeOfString:@"-" options:2]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = objc_alloc(MEMORY[0x277CCACA8]);
          v32 = [v26 eventGroupIdentifier];
          v53 = [v31 initWithFormat:@"%@-%@-default-%@-%@", @"CoreSuggestions", @"v3", v32, v6];

          objc_autoreleasePoolPop(context);
          v49 = objc_autoreleasePoolPush();
          v33 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
          v34 = [v33 invertedSet];

          v60[0] = @"CoreSuggestions";
          v60[1] = @"v3";
          v60[2] = @"default";
          v35 = [v55 stringByAddingPercentEncodingWithAllowedCharacters:v34];
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
          v57 = v5;
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
          v62 = v5;
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
          v45 = [v12 error];
          *buf = 138740227;
          v62 = v5;
          v63 = 2112;
          v64 = v45;
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
    v62 = v5;
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

- (id)_deleteEventsMatchingEvent:(id)a3 keepingNewerEvents:(BOOL)a4
{
  v6 = a3;
  if (([v6 heuristicUpdatingEnabled] & 1) != 0 && (objc_msgSend(v6, "duplicateKey"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "parentKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", objc_msgSend(v8, "entityType")), v8, v7, v9))
  {
    v10 = [v6 duplicateKey];
    v11 = [v10 pseudoEventKey];
    v12 = [v11 groupId];
    v13 = [v6 extraKeyTag];
    v14 = [v13 value];
    if (a4)
    {
      [v6 creationTimestamp];
      v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v15];
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:v12 fallbackGroupId:v14 olderThanDate:v16];
    }

    else
    {
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:v12 fallbackGroupId:v14 olderThanDate:0];
    }
  }

  else
  {
    v17 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  return v17;
}

- (id)_deleteEventsMatchingGroupId:(id)a3 fallbackGroupId:(id)a4 olderThanDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 | v9)
  {
    v12 = objc_opt_new();
    v13 = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke;
    block[3] = &unk_278954AC8;
    block[4] = self;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v14 = v12;
    v21 = v14;
    dispatch_async(v13, block);

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

- (id)_uniqueIdentifiersMatchingEvent:(id)a3 olderThanDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 heuristicUpdatingEnabled])
  {
    v8 = [v6 duplicateKey];
    v9 = [v8 pseudoEventKey];
    v10 = [v9 groupId];
    v11 = [v6 extraKeyTag];
    v12 = [v11 value];
    v13 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingGroupId:v10 fallbackGroupId:v12 olderThanDate:v7];
  }

  else
  {
    v13 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEBF8]];
  }

  return v13;
}

- (id)_uniqueIdentifiersMatchingGroupId:(id)a3 fallbackGroupId:(id)a4 olderThanDate:(id)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 | v8)
  {
    v35 = objc_opt_new();
    v11 = objc_opt_new();
    [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
    v47[0] = *MEMORY[0x277CC3208];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    [v11 setFetchAttributes:v12];

    [v11 setReason:@"reason:SGEnrichmentWritebackAdapter-1; code:8"];
    v13 = objc_opt_new();
    if (v7)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = spotlightEscaped(v7);
      v16 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v15];
      [v13 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }

    if (v8)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = spotlightEscaped(v8);
      v19 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v18];
      [v13 addObject:v19];

      objc_autoreleasePoolPop(v17);
    }

    v20 = [v13 _pas_componentsJoinedByString:@" || "];

    if (v9)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      [v9 timeIntervalSinceReferenceDate];
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

+ (id)_attributeSetForEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 attributeSetForEvent];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:v3];
  if ([v5 isEqualToString:*MEMORY[0x277D021C0]])
  {
    [v4 setEventSourceBundleIdentifier:@"com.apple.mobilemail"];
    v6 = [v3 duplicateKey];
    v7 = [v6 parentKey];
    v8 = [v7 emailKey];
    v9 = [v8 messageId];
LABEL_6:
    v10 = v9;
    [v4 setEventMessageIdentifier:v9];

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D021D0]])
  {
    [v4 setEventSourceBundleIdentifier:@"com.apple.MobileSMS"];
    v6 = [v3 duplicateKey];
    v7 = [v6 parentKey];
    v8 = [v7 messageKey];
    v9 = [v8 uniqueIdentifier];
    goto LABEL_6;
  }

LABEL_7:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = [v3 tags];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v33 + 1) + 8 * v15);
      if ([v16 isAppleMailMessageId])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
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

    v18 = [v17 value];
    v19 = SGDelimitedStringsDeserialize();

    v20 = [v19 firstObject];
    [v4 setAccountIdentifier:v20];

    v21 = [v19 lastObject];
    [v4 setMailMessageID:v21];

    v11 = v17;
  }

LABEL_18:

LABEL_19:
  v22 = [v3 tags];
  v23 = [v22 _pas_mappedSetWithTransform:&__block_literal_global_98_14628];
  v24 = [v23 allObjects];
  [v4 setMailboxIdentifiers:v24];

  v25 = [v3 duplicateKey];
  v26 = [v25 pseudoEventKey];
  v27 = [v26 groupId];
  [v4 setEventGroupIdentifier:v27];

  v28 = [v3 extraKeyTag];
  v29 = [v28 value];
  [v4 setEventFallbackGroupIdentifier:v29];

  v30 = v4;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];

  return v4;
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

+ (BOOL)_isEligibleEvent:(id)a3
{
  v22 = a3;
  v23 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v19 = [MEMORY[0x277D01FA0] extractedFlight];
  v18 = [MEMORY[0x277D01FA0] extractedHotel];
  v3 = [MEMORY[0x277D01FA0] extractedFood];
  v4 = [MEMORY[0x277D01FA0] extractedCarRental];
  v5 = [MEMORY[0x277D01FA0] extractedTicket];
  v6 = [MEMORY[0x277D01FA0] extractedMovie];
  v7 = [MEMORY[0x277D01FA0] extractedAppointment];
  v8 = [MEMORY[0x277D01FA0] extractedSocial];
  v9 = [MEMORY[0x277D01FA0] extractedBus];
  v10 = [MEMORY[0x277D01FA0] extractedBoat];
  v11 = [MEMORY[0x277D01FA0] extractedTrain];
  v21 = [v20 initWithObjects:{v19, v18, v3, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  objc_autoreleasePoolPop(v23);
  v12 = [v22 duplicateKey];
  v13 = [v12 parentKey];
  if ([a1 _isSupportedEntityType:{objc_msgSend(v13, "entityType")}])
  {
    v14 = [v22 tags];
    v15 = v21;
    v16 = [v14 intersectsSet:v21];
  }

  else
  {
    v16 = 0;
    v15 = v21;
  }

  return v16;
}

+ (BOOL)_isSupportedEntityType:(int64_t)a3
{
  if (a3 != 5)
  {
    return a3 == 13;
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

+ (id)_bundleIdentifierFromEvent:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithObjectsAndKeys:{*MEMORY[0x277D021C0], &unk_284749548, *MEMORY[0x277D021D0], &unk_284749560, 0}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 duplicateKey];

  v9 = [v8 parentKey];
  v10 = [v7 numberWithLongLong:{objc_msgSend(v9, "entityType")}];
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