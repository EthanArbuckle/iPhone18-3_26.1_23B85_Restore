@interface CADConferenceUtils
+ (BOOL)_performConferenceURLRenewalWithDatabase:(CalDatabase *)a3;
+ (id)_conferenceURLsToRenewWithDatabase:(CalDatabase *)a3 URLString:(id)a4;
+ (id)_extractURLStringsFromCalEvent:(void *)a3;
+ (void)performConferenceLinkRenewalIfNeeded;
+ (void)removeNextConferenceLinkRenewalDate;
+ (void)setNextConferenceLinkRenewalDate:(id)a3;
@end

@implementation CADConferenceUtils

+ (void)performConferenceLinkRenewalIfNeeded
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "ConferenceRenewal: Starting. Checking whether it is time to run conference link renewal.", buf, 2u);
  }

  v4 = CalDatabaseCreateWithOptions();
  if (v4)
  {
    v5 = v4;
    v6 = CalDatabaseCopyProperty();
    v7 = v6;
    if (v6 && ([v6 doubleValue], v8 > 1.0) && (objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v10;
        _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found next scheduled run date: %@", buf, 0xCu);
      }

      v12 = 20736000;
      v13 = 7776000;
      v14 = [MEMORY[0x277CBEAA8] date];
      [v14 timeIntervalSinceReferenceDate];
      v16 = v15;
      [v10 timeIntervalSinceReferenceDate];
      if (v16 <= v17)
      {
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31622400.0];
        [v10 timeIntervalSinceReferenceDate];
        v31 = v30;
        [v29 timeIntervalSinceReferenceDate];
        v33 = v32;

        if (v31 <= v33)
        {
LABEL_20:
          CFRelease(v5);
          v26 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_INFO, "ConferenceRenewal: Complete.", buf, 2u);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v18 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v35 = v14;
          v36 = 2112;
          v37 = v10;
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "ConferenceRenewal: Current date (%@) is after next scheduled run date (%@). Performing link renewal.", buf, 0x16u);
        }

        v19 = [a1 _performConferenceURLRenewalWithDatabase:v5];

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v13 = 2592000;
      v12 = 1296000;
      v20 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: No date found for next scheduled run date. Will generate one within 45 days.", buf, 2u);
      }

      v10 = 0;
    }

    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random() % v13 + v12)];
    v22 = MEMORY[0x277CCACA8];
    [v21 timeIntervalSinceReferenceDate];
    v24 = [v22 stringWithFormat:@"%lf", v23];
    v25 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v21;
      _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_INFO, "ConferenceRenewal: Setting next scheduled run date to %@", buf, 0xCu);
    }

    CalDatabaseSetProperty();
    CalDatabaseSave();

    goto LABEL_20;
  }

  v27 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Database is nil. Cannot check renewal dates. Aborting", buf, 2u);
  }

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
}

+ (void)setNextConferenceLinkRenewalDate:(id)a3
{
  v3 = a3;
  v4 = CalDatabaseCreateWithOptions();
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    [v3 timeIntervalSinceReferenceDate];
    v8 = [v6 stringWithFormat:@"%lf", v7];
    CalDatabaseSetProperty();
    CalDatabaseSave();
    CFRelease(v5);
  }

  else
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "setNextConferenceLinkRenewalDate: Database is nil. Cannot set renewal date. Aborting", buf, 2u);
    }
  }
}

+ (void)removeNextConferenceLinkRenewalDate
{
  v2 = CalDatabaseCreateWithOptions();
  if (v2)
  {
    v3 = v2;
    CalDatabaseRemoveProperty();
    CalDatabaseSave();

    CFRelease(v3);
  }

  else
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "setNextConferenceLinkRenewalDate: Database is nil. Cannot set renewal date. Aborting", v5, 2u);
    }
  }
}

+ (BOOL)_performConferenceURLRenewalWithDatabase:(CalDatabase *)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_INFO, "ConferenceRenewal: Starting URL renewal.", buf, 2u);
  }

  mach_absolute_time();
  v6 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_INFO, "ConferenceRenewal: Retrieving all active conversation links.", buf, 2u);
  }

  v56 = objc_alloc_init(MEMORY[0x277D6EE98]);
  *buf = 0;
  v78 = buf;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__12;
  v81 = __Block_byref_object_dispose__12;
  v82 = 0;
  v7 = dispatch_semaphore_create(0);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke;
  v74[3] = &unk_27851BAC8;
  v76 = buf;
  v8 = v7;
  v75 = v8;
  [v56 getActiveLinksWithCreatedOnly:1 completionHandler:v74];
  v9 = dispatch_time(0, 60000000000);
  v53 = v8;
  dispatch_semaphore_wait(v8, v9);
  if (*(v78 + 5))
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(v78 + 5) count];
      LODWORD(v92) = 134217984;
      *(&v92 + 4) = v11;
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found %lu links.", &v92, 0xCu);
    }

    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(v78 + 5), "count")}];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v13 = *(v78 + 5);
    v14 = [v13 countByEnumeratingWithState:&v70 objects:v96 count:16];
    if (v14)
    {
      v15 = *v71;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v71 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v70 + 1) + 8 * i);
          v18 = [v17 URL];
          v19 = [v18 absoluteString];
          [v12 setObject:v17 forKey:v19];
        }

        v14 = [v13 countByEnumeratingWithState:&v70 objects:v96 count:16];
      }

      while (v14);
    }

    v20 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v92) = 0;
      _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_INFO, "ConferenceRenewal: Searching for events that contain conference URLs that require renewal.", &v92, 2u);
    }

    v21 = [MEMORY[0x277D6EE90] baseURLs];
    v22 = [MEMORY[0x277CBEB58] set];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v21;
    v23 = [obj countByEnumeratingWithState:&v66 objects:v95 count:16];
    if (v23)
    {
      v24 = *v67;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = [*(*(&v66 + 1) + 8 * j) host];
          v27 = [a1 _conferenceURLsToRenewWithDatabase:a3 URLString:v26];
          [v22 addObjectsFromArray:v27];
        }

        v23 = [obj countByEnumeratingWithState:&v66 objects:v95 count:16];
      }

      while (v23);
    }

    group = dispatch_group_create();
    *&v92 = 0;
    *(&v92 + 1) = &v92;
    v93 = 0x2020000000;
    v94 = 0;
    v54 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31622400.0];
    v28 = CADLogHandle;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v22 count];
      *v90 = 134218242;
      *&v90[4] = v29;
      *&v90[12] = 2112;
      *&v90[14] = v54;
      _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_INFO, "ConferenceRenewal: Found a total of %lu conference URLs from events to renew. Setting new expiration date to %@", v90, 0x16u);
    }

    *v90 = 0;
    *&v90[8] = v90;
    *&v90[16] = 0x2020000000;
    v91 = 0;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v30 = v22;
    v31 = 0;
    v32 = [v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
    if (v32)
    {
      v33 = *v63;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v63 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v62 + 1) + 8 * k);
          v36 = [v12 objectForKey:*&v35];
          v37 = v36;
          if (!v36)
          {
            v39 = CADLogHandle;
            if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_42;
            }

            *v83 = 138412290;
            v84 = v35;
            v40 = v39;
            v41 = "ConferenceRenewal: Skipping URL because it isn't owned by this account: %@";
            goto LABEL_41;
          }

          if ([v36 isLocallyCreated])
          {
            v38 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v83 = 138412290;
              v84 = v35;
              _os_log_impl(&dword_22430B000, v38, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Attempting to renew URL: %@", v83, 0xCu);
            }

            dispatch_group_enter(group);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke_34;
            v58[3] = &unk_27851BAF0;
            *&v58[4] = v35;
            v60 = v90;
            v61 = &v92;
            v59 = group;
            [v56 renewLink:v37 expirationDate:v54 reason:1 completionHandler:v58];

            ++v31;
          }

          else if (([v37 isLocallyCreated] & 1) == 0)
          {
            v42 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v83 = 138412290;
              v84 = v35;
              v40 = v42;
              v41 = "ConferenceRenewal: Skipping URL because it wasn't locally created: %@";
LABEL_41:
              _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_DEBUG, v41, v83, 0xCu);
            }
          }

LABEL_42:
        }

        v32 = [v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
      }

      while (v32);
    }

    v43 = dispatch_time(0, (([v30 count] * 2.0 + 30.0) * 1000000000.0));
    dispatch_group_wait(group, v43);
    mach_absolute_time();
    CalAnalyticsTimeIntervalFromMachTimes();
    v45 = v44;
    v46 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v47 = v45;
      v48 = *(*(&v92 + 1) + 24);
      *v83 = 134218496;
      v84 = v47;
      v85 = 2048;
      v86 = v48;
      v87 = 2048;
      v88 = v31;
      _os_log_impl(&dword_22430B000, v46, OS_LOG_TYPE_INFO, "ConferenceRenewal: Finished URL renewal in %f seconds. Renewed %lu / %lu links.", v83, 0x20u);
    }

    if (v31 < 3 || *(*(&v92 + 1) + 24) || *(*&v90[8] + 24) != v31)
    {
      v50 = 1;
    }

    else
    {
      v49 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v83 = 0;
        _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_ERROR, "ConferenceRenewal: all link renewals failed with seemingly transient errors. Will retry later.", v83, 2u);
      }

      v50 = 0;
    }

    _Block_object_dispose(v90, 8);

    _Block_object_dispose(&v92, 8);
  }

  else
  {
    v50 = 0;
  }

  _Block_object_dispose(buf, 8);
  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

void __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Failed to retrieve links. error = %@", &v10, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

void __63__CADConferenceUtils__performConferenceURLRenewalWithDatabase___block_invoke_34(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Successfully renewed URL: %@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Unable to renew URL: %@, error = %@", &v13, 0x16u);
    }

    v10 = [v5 domain];
    if ([v10 isEqual:*MEMORY[0x277CCA050]])
    {
      if ([v5 code] == 4099)
      {
      }

      else
      {
        v11 = [v5 code];

        if (v11 != 4097)
        {
          goto LABEL_12;
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_12;
    }
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_conferenceURLsToRenewWithDatabase:(CalDatabase *)a3 URLString:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = CADLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v59 = v6;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Starting search for conference URLs with base host: %@", buf, 0xCu);
    }

    v8 = CalFilterCreateWithDatabaseShowingAll();
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    v12 = CalDatabaseCopyEventOccurrenceCache();
    v13 = CADLogHandle;
    if (v12)
    {
      v14 = v12;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v6;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: searching for events containing the base URL %@", buf, 0xCu);
      }

      v15 = CalDatabaseCopyEventIDsOfEventsMatching();
      if (v15)
      {
        v16 = v15;
        v55 = v14;
        v56 = v8;
        Count = CFArrayGetCount(v15);
        v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
        v19 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v59 = v6;
          v60 = 2048;
          v61 = Count;
          _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Search for events containing URL %@ returned %lu results", buf, 0x16u);
        }

        v53 = v6;
        v20 = MEMORY[0x277CBF128];
        theArray = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
        Mutable = CFArrayCreateMutable(0, Count, v20);
        if (Count < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          for (i = 0; i != Count; ++i)
          {
            *buf = CFArrayGetValueAtIndex(v16, i);
            v24 = MEMORY[0x22AA4B950](a3);
            if (v24)
            {
              v25 = v24;
              if (CalCalendarItemHasRecurrenceRules())
              {
                v26 = CFNumberCreate(0, kCFNumberIntType, buf);
                CFArrayAppendValue(theArray, v26);
                CFArrayAppendValue(Mutable, v25);
                CFRelease(v26);
              }

              else
              {
                CalEventGetEndDate();
                if (v27 > v11)
                {
                  v28 = [a1 _extractURLStringsFromCalEvent:v25];
                  if ([v28 count])
                  {
                    [v18 addObjectsFromArray:v28];
                  }

                  ++v22;
                }
              }

              CFRelease(v25);
            }
          }
        }

        v30 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v31 = v30;
          v32 = CFArrayGetCount(theArray);
          *buf = 134217984;
          v59 = v32;
          _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Of those, %lu have recurrences", buf, 0xCu);
        }

        v33 = CADLogHandle;
        v14 = v55;
        v8 = v56;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v59 = v22;
          _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Also found %lu events in the future", buf, 0xCu);
        }

        v34 = [MEMORY[0x277CBEAA8] date];
        [v34 timeIntervalSinceReferenceDate];

        HaveOccurrencesAfterDate = CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate();
        if (HaveOccurrencesAfterDate)
        {
          v36 = HaveOccurrencesAfterDate;
          v37 = CFArrayGetCount(Mutable);
          v38 = CFArrayCreateMutable(0, v37, MEMORY[0x277CBF128]);
          v6 = v54;
          if (CFArrayGetCount(v36) >= 1)
          {
            v39 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
              *buf = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, buf);
              if (*buf)
              {
                v41 = CFArrayGetValueAtIndex(Mutable, v39);
                CFArrayAppendValue(v38, v41);
              }

              ++v39;
            }

            while (v39 < CFArrayGetCount(v36));
          }

          v42 = CFArrayGetCount(v38);
          v43 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v59 = v42;
            _os_log_impl(&dword_22430B000, v43, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: And of those, %lu events with future occurrences.", buf, 0xCu);
          }

          if (CFArrayGetCount(v38) >= 1)
          {
            v44 = 0;
            do
            {
              v45 = [a1 _extractURLStringsFromCalEvent:{CFArrayGetValueAtIndex(v38, v44)}];
              if ([v45 count])
              {
                [v18 addObjectsFromArray:v45];
              }

              ++v44;
            }

            while (v44 < CFArrayGetCount(v38));
          }

          CFRelease(v36);
          CFRelease(v38);
          v14 = v55;
          v8 = v56;
        }

        else
        {
          v46 = CADLogHandle;
          v6 = v54;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v46, OS_LOG_TYPE_INFO, "ConferenceRenewal: No events found with occurrences after date.", buf, 2u);
          }
        }

        CFRelease(v16);
        CFRelease(theArray);
        CFRelease(Mutable);
      }

      else
      {
        v29 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v59 = v6;
          _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "ConferenceRenewal: Search for events containing URL %@ returned nil", buf, 0xCu);
        }

        v18 = 0;
      }

      CFRelease(v14);
    }

    else
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "ConferenceRenewal: Occurrence cache is nil. Will not perform link renewal.", buf, 2u);
      }

      v18 = 0;
    }

    CFRelease(v8);
    v47 = [v18 count];
    v48 = CADLogHandle;
    if (v47)
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        v49 = v48;
        v50 = [v18 count];
        *buf = 134218242;
        v59 = v50;
        v60 = 2112;
        v61 = v6;
        _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_INFO, "ConferenceRenewal: Search completed. Found %lu URLs with host %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v6;
      _os_log_impl(&dword_22430B000, v48, OS_LOG_TYPE_ERROR, "ConferenceRenewal. Search completed. Unable to find URLs for with host %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "ConferenceRenewal: conference URL search returning nil because no URLString was provided.", buf, 2u);
    }

    v18 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_extractURLStringsFromCalEvent:(void *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = CalCalendarItemCopyDescription();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CF7780] deserializeConference:v3];
    v6 = [v5 conference];
    v7 = [v6 joinMethods];
    v8 = [v7 count];

    if (v8)
    {
      v33 = v4;
      v9 = MEMORY[0x277CBEB18];
      v10 = [v5 conference];
      v11 = [v10 joinMethods];
      v12 = [v9 arrayWithCapacity:{objc_msgSend(v11, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = v5;
      v13 = [v5 conference];
      v14 = [v13 joinMethods];

      v15 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = MEMORY[0x277CF7788];
            v21 = [v19 URL];
            LODWORD(v20) = [v20 isTUConversationLink:v21];

            if (v20)
            {
              v22 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v23 = v22;
                v24 = [v19 URL];
                v25 = [v24 absoluteString];
                *buf = 138412290;
                v39 = v25;
                _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: adding URL: %@", buf, 0xCu);
              }

              v26 = [v19 URL];
              v27 = [v26 absoluteString];
              [v12 addObject:v27];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v16);
      }

      v5 = v32;
      v4 = v33;
    }

    else
    {
      v29 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "ConferenceRenewal: Skipping a found event because was unable to deserialize conference data", buf, 2u);
      }

      v12 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v28 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_DEBUG, "ConferenceRenewal: Skipping a found event because it has no notes", buf, 2u);
    }

    v12 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v12;
}

@end