@interface SubCalICSDataActor
+ (id)_processedDigestForDocument:(id)document;
+ (id)_processedDigestForOriginalData:(id)data;
+ (id)externalIDForICSEvent:(id)event;
- (BOOL)_processedAddedEvents:(id)events fromCalendarData:(id)data intoCalendar:(id)calendar options:(unint64_t)options uidToMasterEvent:(id)event uidsOfEventsToRemove:(id)remove error:(id *)error;
- (BOOL)_updateSubCalWithICSDocument:(id)document data:(id)data calendar:(id)calendar digestPair:(id)pair error:(id *)error;
- (SubCalICSDataActor)initWithSourceId:(id)id calendarId:(id)calendarId migrateCalendarExternalID:(id)d changeTrackingID:(id)iD removeAlarms:(BOOL)alarms removeAttachments:(BOOL)attachments forcedRefresh:(BOOL)refresh clearChanges:(BOOL)self0 callbackTarget:(id)self1;
- (SubCalICSDataCallbackActor)callbackTarget;
- (id)_gatherAddedEventsFromDocument:(id)document existingEventExternalIDs:(id)ds existingEventUIDs:(id)iDs eventsToRemove:(id *)remove;
- (id)_internalProcessICSData:(id)data;
- (id)_processICSDocument:(id)document icsData:(id)data calendar:(id)calendar digestPair:(id)pair;
- (id)_reallyProcessICSData:(id)data withCalendar:(id)calendar existingDigestPair:(id)pair newUnprocessedDigest:(id)digest;
- (void)_gatherExistingEventsInCalendar:(id)calendar uidToEventMap:(id *)map uidToExternalIDs:(id *)ds;
- (void)_sendResultToCallbackActor:(id)actor;
- (void)processICSData:(id)data;
- (void)processICSDataAtPath:(id)path removeFileWhenDone:(BOOL)done;
- (void)synchronouslyCancel;
@end

@implementation SubCalICSDataActor

- (SubCalICSDataActor)initWithSourceId:(id)id calendarId:(id)calendarId migrateCalendarExternalID:(id)d changeTrackingID:(id)iD removeAlarms:(BOOL)alarms removeAttachments:(BOOL)attachments forcedRefresh:(BOOL)refresh clearChanges:(BOOL)self0 callbackTarget:(id)self1
{
  idCopy = id;
  calendarIdCopy = calendarId;
  dCopy = d;
  iDCopy = iD;
  targetCopy = target;
  v34.receiver = self;
  v34.super_class = SubCalICSDataActor;
  v22 = [(SubCalICSDataActor *)&v34 init];
  if (v22)
  {
    v23 = [idCopy copy];
    sourceExternalId = v22->_sourceExternalId;
    v22->_sourceExternalId = v23;

    v25 = [calendarIdCopy copy];
    calendarExternalId = v22->_calendarExternalId;
    v22->_calendarExternalId = v25;

    v27 = [dCopy copy];
    migrateCalendarExternalID = v22->_migrateCalendarExternalID;
    v22->_migrateCalendarExternalID = v27;

    v22->_removeAlarms = alarms;
    v22->_removeAttachments = attachments;
    v22->_forcedRefresh = refresh;
    objc_storeWeak(&v22->_callbackTarget, targetCopy);
    v22->_clearChanges = changes;
    v29 = dispatch_queue_create("com.apple.dataaccess.subcal.actor", 0);
    actorQueue = v22->_actorQueue;
    v22->_actorQueue = v29;

    v31 = [SubCalLocalDBHelper eventStoreWithClientId:iDCopy];
    eventStore = v22->_eventStore;
    v22->_eventStore = v31;
  }

  return v22;
}

- (void)_sendResultToCallbackActor:(id)actor
{
  actorCopy = actor;
  callbackTarget = [(SubCalICSDataActor *)self callbackTarget];

  if (callbackTarget)
  {
    callbackTarget2 = [(SubCalICSDataActor *)self callbackTarget];
    v7 = dataaccess_get_global_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_61F0;
    block[3] = &unk_1C558;
    v10 = actorCopy;
    selfCopy = self;
    v12 = callbackTarget2;
    v8 = callbackTarget2;
    dispatch_async(v7, block);

    [(SubCalICSDataActor *)self setCallbackTarget:0];
  }
}

- (BOOL)_processedAddedEvents:(id)events fromCalendarData:(id)data intoCalendar:(id)calendar options:(unint64_t)options uidToMasterEvent:(id)event uidsOfEventsToRemove:(id)remove error:(id *)error
{
  eventsCopy = events;
  dataCopy = data;
  calendarCopy = calendar;
  eventCopy = event;
  removeCopy = remove;
  eventStore = [(SubCalICSDataActor *)self eventStore];
  v19 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[6];
  v58 = calendarCopy;
  v60 = eventCopy;
  if (os_log_type_enabled(v19, v20))
  {
    title = [calendarCopy title];
    subcalAccountID = [v58 subcalAccountID];
    *buf = 138413058;
    v76 = title;
    v77 = 2114;
    v78 = subcalAccountID;
    v79 = 2048;
    v80 = [eventsCopy count];
    v81 = 2048;
    v82 = [removeCopy count];
    _os_log_impl(&dword_0, v19, v20, "Beginning import into calendar %@ (%{public}@). Will add/update %lu events and delete %lu events.", buf, 0x2Au);

    calendarCopy = v58;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kCalSyncClientBeginningMultiSave, 0, 0, 1u);
  v24 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v24 claimedOwnershipOfDataclasses:4];

  v74 = eventsCopy;
  v25 = [NSArray arrayWithObjects:&v74 count:1];
  v73 = dataCopy;
  v26 = [NSArray arrayWithObjects:&v73 count:1];
  v72 = calendarCopy;
  v27 = [NSArray arrayWithObjects:&v72 count:1];
  v28 = [eventStore importEventsWithExternalIDs:v25 fromICSData:v26 intoCalendars:v27 options:options batchSize:25];

  v57 = v28;
  if (v28)
  {
    v56 = dataCopy;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = removeCopy;
    v29 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (!v29)
    {
      v48 = v58;
      v34 = eventStore;
      goto LABEL_33;
    }

    v30 = v29;
    v55 = eventsCopy;
    v31 = 0;
    v32 = *v68;
    v33 = _CPLog_to_os_log_type[3];
    v34 = eventStore;
    type = v33;
    do
    {
      v35 = 0;
      do
      {
        if (*v68 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = [eventCopy objectForKeyedSubscript:*(*(&v67 + 1) + 8 * v35)];
        v66 = 0;
        v37 = [v34 removeEvent:v36 span:1 commit:0 error:&v66];
        v38 = v66;
        if ((v37 & 1) == 0)
        {
          v39 = DALoggingwithCategory();
          if (os_log_type_enabled(v39, v33))
          {
            title2 = [v36 title];
            externalID = [v36 externalID];
            uniqueID = [v36 uniqueID];
            *buf = 138413058;
            v76 = title2;
            v77 = 2114;
            v78 = externalID;
            v79 = 2114;
            v80 = uniqueID;
            v81 = 2112;
            v82 = v38;
            _os_log_impl(&dword_0, v39, type, "Error removing event (summary=%@, externalID=%{public}@ uniqueID=%{public}@): %@", buf, 0x2Au);

            eventCopy = v60;
            v34 = eventStore;

            v33 = type;
          }
        }

        if (v31 >= 24)
        {
          v65 = v38;
          v44 = [v34 commitWithRollback:&v65];
          v43 = v65;

          if (v44)
          {
            v31 = 0;
            v33 = type;
          }

          else
          {
            v45 = DALoggingwithCategory();
            v33 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 138412290;
              v76 = v43;
              _os_log_impl(&dword_0, v45, type, "Error committing removal batch: %@", buf, 0xCu);
            }

            v31 = 0;
          }
        }

        else
        {
          ++v31;
          v43 = v38;
        }

        v35 = v35 + 1;
      }

      while (v30 != v35);
      v46 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      v30 = v46;
    }

    while (v46);

    v47 = v31 < 1;
    eventsCopy = v55;
    dataCopy = v56;
    v48 = v58;
    if (!v47)
    {
      v64 = 0;
      v49 = [v34 commitWithRollback:&v64];
      obj = v64;
      if (v49)
      {
LABEL_33:

        goto LABEL_34;
      }

      v50 = DALoggingwithCategory();
      if (os_log_type_enabled(v50, type))
      {
        *buf = 138412290;
        v76 = obj;
        _os_log_impl(&dword_0, v50, type, "Error committing removal batch: %@", buf, 0xCu);
      }

LABEL_31:

      goto LABEL_33;
    }
  }

  else
  {
    v51 = DALoggingwithCategory();
    v52 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v51, v52, "Importing subscribed calendar events failed", buf, 2u);
    }

    v48 = v58;
    v34 = eventStore;
    if (error)
    {
      v53 = kSubCalICSDataActorErrorDomain;
      obj = NSStringFromSubCalRefreshTaskError();
      v50 = [NSDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];
      v34 = eventStore;
      *error = [NSError errorWithDomain:v53 code:0 userInfo:v50];
      goto LABEL_31;
    }
  }

LABEL_34:

  return v57 != 0;
}

- (BOOL)_updateSubCalWithICSDocument:(id)document data:(id)data calendar:(id)calendar digestPair:(id)pair error:(id *)error
{
  documentCopy = document;
  dataCopy = data;
  calendarCopy = calendar;
  pairCopy = pair;
  if ([(SubCalICSDataActor *)self removeAlarms])
  {
    v12 = 1342177280;
  }

  else
  {
    v12 = 0x10000000;
  }

  if ([(SubCalICSDataActor *)self removeAttachments])
  {
    v13 = v12 | 0x1000000;
  }

  else
  {
    v13 = v12;
  }

  v56 = 0;
  v57 = 0;
  [(SubCalICSDataActor *)self _gatherExistingEventsInCalendar:calendarCopy uidToEventMap:&v57 uidToExternalIDs:&v56];
  v14 = v57;
  v15 = v56;
  v16 = DALoggingwithCategory();
  v17 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v16, v17, "Gathering added/removed events.", buf, 2u);
  }

  v55 = 0;
  v18 = documentCopy;
  v50 = v15;
  v19 = [(SubCalICSDataActor *)self _gatherAddedEventsFromDocument:documentCopy existingEventExternalIDs:v15 existingEventUIDs:v14 eventsToRemove:&v55];
  v20 = v55;
  v21 = DALoggingwithCategory();
  if (os_log_type_enabled(v21, v17))
  {
    v22 = [v19 count];
    v23 = [v20 count];
    *buf = 67109376;
    LODWORD(v59[0]) = v22;
    WORD2(v59[0]) = 1024;
    *(v59 + 6) = v23;
    _os_log_impl(&dword_0, v21, v17, "Finished gathering. added = %d, removed = %d", buf, 0xEu);
  }

  if ([v19 count] || objc_msgSend(v20, "count"))
  {
    if (![(SubCalICSDataActor *)self _processedAddedEvents:v19 fromCalendarData:dataCopy intoCalendar:calendarCopy options:v13 uidToMasterEvent:v14 uidsOfEventsToRemove:v20 error:error])
    {
      LOBYTE(v31) = 0;
      goto LABEL_36;
    }
  }

  else
  {
    calendar = [documentCopy calendar];
    componentKeys = [calendar componentKeys];
    v34 = [componentKeys count];

    if (v34)
    {
      v35 = DALoggingwithCategory();
      v36 = _CPLog_to_os_log_type[5];
      if (os_log_type_enabled(v35, v36))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v35, v36, "There are no changes after processing ICS data. Recording the processed digest.", buf, 2u);
      }

      processedDigest = [pairCopy processedDigest];

      if (processedDigest)
      {
        v38 = DALoggingwithCategory();
        v39 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v38, v39))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v38, v39, "Looks like we already had a processed digest, and yet still no changes were saved. This is unexpected!", buf, 2u);
        }
      }

      v40 = [objc_opt_class() _processedDigestForOriginalData:dataCopy];
      [pairCopy setProcessedDigest:v40];
    }
  }

  calendar2 = [documentCopy calendar];
  x_apple_language = [calendar2 x_apple_language];
  if (x_apple_language)
  {
    v26 = x_apple_language;
    x_apple_region = [calendar2 x_apple_region];

    if (x_apple_region)
    {
      x_apple_language2 = [calendar2 x_apple_language];
      v29 = [x_apple_language2 containsString:@"-"];

      [calendar2 x_apple_language];
      if (v29)
        v30 = {;
      }

      else
        v41 = {;
        x_apple_region2 = [calendar2 x_apple_region];
        v30 = [NSString stringWithFormat:@"%@-%@", v41, x_apple_region2];
      }

      [calendarCopy setLocale:v30];
    }
  }

  v43 = [NSString stringWithFormat:@"%lf", CFAbsoluteTimeGetCurrent()];
  v44 = DALoggingwithCategory();
  v45 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v44, v45))
  {
    *buf = 138412290;
    v59[0] = v43;
    _os_log_impl(&dword_0, v44, v45, "Saving timestamp %@ as external tag", buf, 0xCu);
  }

  [calendarCopy setExternalModificationTag:v43];
  [(SubCalICSDataActor *)self removeAlarms];
  subCalSetRefreshFlagsOnCalendar();
  serializedData = [pairCopy serializedData];
  [calendarCopy setDigest:serializedData];
  eventStore = [(SubCalICSDataActor *)self eventStore];
  v31 = [eventStore saveCalendar:calendarCopy commit:0 error:error];

  if (v31 && ![(SubCalICSDataActor *)self shouldCancel]&& [(SubCalICSDataActor *)self clearChanges])
  {
    eventStore2 = [(SubCalICSDataActor *)self eventStore];
    [eventStore2 markChangedObjectIDsConsumedUpToToken:0x7FFFFFFFLL];
  }

  v18 = documentCopy;
LABEL_36:

  return v31;
}

- (void)_gatherExistingEventsInCalendar:(id)calendar uidToEventMap:(id *)map uidToExternalIDs:(id *)ds
{
  calendarCopy = calendar;
  eventStore = [(SubCalICSDataActor *)self eventStore];
  v28 = calendarCopy;
  v8 = [eventStore predicateForEventsInSubscribedCalendar:calendarCopy];

  eventStore2 = [(SubCalICSDataActor *)self eventStore];
  v25 = v8;
  v10 = [eventStore2 eventsMatchingPredicate:v8];

  v29 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        originalItem = [v17 originalItem];
        v19 = originalItem;
        if (!originalItem)
        {
          originalItem = v17;
        }

        uniqueID = [originalItem uniqueID];
        if (uniqueID)
        {
          externalID = [v17 externalID];
          if (externalID)
          {
            v22 = [v11 objectForKeyedSubscript:uniqueID];
            if (!v22)
            {
              v22 = [[NSMutableSet alloc] initWithCapacity:1];
              [v11 setObject:v22 forKeyedSubscript:uniqueID];
            }

            [v22 addObject:externalID];
          }

          if (!v19)
          {
            [v29 setObject:v17 forKeyedSubscript:uniqueID];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v23 = v11;
  *ds = v11;
  v24 = v29;
  *map = v29;
}

- (id)_gatherAddedEventsFromDocument:(id)document existingEventExternalIDs:(id)ds existingEventUIDs:(id)iDs eventsToRemove:(id *)remove
{
  documentCopy = document;
  dsCopy = ds;
  iDsCopy = iDs;
  v10 = [NSMutableSet alloc];
  v51 = iDsCopy;
  allKeys = [iDsCopy allKeys];
  v58 = [v10 initWithArray:allKeys];

  v66 = objc_alloc_init(NSMutableDictionary);
  v53 = documentCopy;
  calendar = [documentCopy calendar];
  v50 = componentsWithPhantomMasterForICSCalendar();
  [calendar setComponents:? options:?];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  componentKeys = [calendar componentKeys];
  v14 = [componentKeys countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v80;
    v17 = &SBSSetStatusBarShowsActivityForApplication_ptr;
    v55 = componentKeys;
    v56 = calendar;
    v54 = *v80;
    type = _CPLog_to_os_log_type[4];
    do
    {
      v18 = 0;
      v57 = v15;
      do
      {
        if (*v80 != v16)
        {
          objc_enumerationMutation(componentKeys);
        }

        v67 = *(*(&v79 + 1) + 8 * v18);
        v19 = [calendar componentForKey:?];
        if (v19)
        {
          v20 = v17[142];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = v19;
            v63 = v18;
            v21 = v19;
            v22 = [calendar componentOccurrencesForKey:v67];
            v23 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v22, "count") + 1}];
            v64 = v21;
            [SubCalICSDataActor externalIDForICSEvent:v21];
            v61 = v69 = v23;
            [v23 addObject:?];
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            obj = v22;
            v24 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v76;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v76 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v28 = *(*(&v75 + 1) + 8 * i);
                  v29 = v17[142];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = [SubCalICSDataActor externalIDForICSEvent:v28];
                    [v69 addObject:v30];
                  }
                }

                v25 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
              }

              while (v25);
            }

            v31 = [dsCopy objectForKeyedSubscript:v67];
            v32 = v31;
            if (!v31 || ([v31 isEqualToSet:v69] & 1) == 0)
            {
              v60 = v32;
              v33 = [SubCalICSDataActor externalIDForICSEvent:v64];
              [v66 setObject:v33 forKeyedSubscript:v67];

              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v68 = obj;
              v34 = [v68 countByEnumeratingWithState:&v71 objects:v85 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v72;
                do
                {
                  for (j = 0; j != v35; j = j + 1)
                  {
                    if (*v72 != v36)
                    {
                      objc_enumerationMutation(v68);
                    }

                    v38 = *(*(&v71 + 1) + 8 * j);
                    v39 = v17[142];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = v38;
                      recurrence_id = [v40 recurrence_id];
                      value = [recurrence_id value];
                      v43 = value;
                      if (recurrence_id)
                      {
                        icsString = [value icsString];
                        [NSString stringWithFormat:@"%@/%@", v67, icsString];
                        v46 = v45 = v17;
                        v47 = [SubCalICSDataActor externalIDForICSEvent:v40];
                        [v66 setObject:v47 forKeyedSubscript:v46];

                        v17 = v45;
                      }

                      else
                      {
                        icsString = DALoggingwithCategory();
                        if (os_log_type_enabled(icsString, type))
                        {
                          *buf = 138543362;
                          v84 = v67;
                          _os_log_impl(&dword_0, icsString, type, "Dropping detached occurrence of %{public}@ without recurrence id", buf, 0xCu);
                        }
                      }
                    }
                  }

                  v35 = [v68 countByEnumeratingWithState:&v71 objects:v85 count:16];
                }

                while (v35);
              }

              componentKeys = v55;
              calendar = v56;
              v16 = v54;
              v15 = v57;
              v32 = v60;
            }

            [v58 removeObject:v67];

            v19 = v62;
            v18 = v63;
          }
        }

        v18 = v18 + 1;
      }

      while (v18 != v15);
      v15 = [componentKeys countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v15);
  }

  v48 = v58;
  *remove = v58;

  return v66;
}

- (id)_processICSDocument:(id)document icsData:(id)data calendar:(id)calendar digestPair:(id)pair
{
  v11 = 0;
  v7 = [(SubCalICSDataActor *)self _updateSubCalWithICSDocument:document data:data calendar:calendar digestPair:pair error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0 && [(SubCalICSDataActor *)self shouldCancel])
  {
    v9 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];

    v8 = v9;
  }

  return v8;
}

- (id)_reallyProcessICSData:(id)data withCalendar:(id)calendar existingDigestPair:(id)pair newUnprocessedDigest:(id)digest
{
  dataCopy = data;
  calendarCopy = calendar;
  pairCopy = pair;
  digestCopy = digest;
  v14 = objc_autoreleasePoolPush();
  if ([(SubCalICSDataActor *)self shouldCancel])
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v45 = 0;
    v15 = [[ICSDocument alloc] initWithData:dataCopy options:0 error:&v45];
    v16 = v45;
    if (!v15)
    {
      context = v14;
      v31 = DALoggingwithCategory();
      v32 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 138412290;
        v47 = v16;
        _os_log_impl(&dword_0, v31, v32, "Failed to init ICS document with given data. Error: %@", buf, 0xCu);
      }

      v16 = v16;
      v30 = v16;
      goto LABEL_17;
    }
  }

  v44 = pairCopy;
  if (![(SubCalICSDataActor *)self shouldCancel])
  {
    calendar = [v15 calendar];

    if (!calendar)
    {
      v33 = v14;
      v17 = digestCopy;
      v34 = DALoggingwithCategory();
      v35 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v34, v35))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v34, v35, "Did not get a valid ics calendar", buf, 2u);
      }

      v36 = kSubCalICSDataActorErrorDomain;
      v19 = NSStringFromSubCalRefreshTaskError();
      v37 = [NSDictionary dictionaryWithObject:v19 forKey:v36];
      v18 = [NSError errorWithDomain:v36 code:4 userInfo:v37];

      v14 = v33;
      goto LABEL_28;
    }

    v42 = calendarCopy;
    v19 = objc_opt_new();
    [v19 setUnprocessedDigest:digestCopy];
    processedDigest = [pairCopy processedDigest];

    if (processedDigest)
    {
      context = v14;
      v22 = digestCopy;
      v23 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, v24, "Found an existing processed digest. Calculating new processed digest to compare.", buf, 2u);
      }

      v25 = [objc_opt_class() _processedDigestForDocument:v15];
      processedDigest2 = [v44 processedDigest];
      v27 = [processedDigest2 isEqualToData:v25];

      v28 = DALoggingwithCategory();
      v29 = os_log_type_enabled(v28, v24);
      if (v27)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v28, v24, "Processed digests are the same, not saving to db", buf, 2u);
        }

        v30 = 0;
        calendarCopy = v42;
        digestCopy = v22;
        pairCopy = v44;
LABEL_17:
        objc_autoreleasePoolPop(context);
        goto LABEL_31;
      }

      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v28, v24, "Processed digests are different. Moving on to import the ICS data.", buf, 2u);
      }

      [v19 setProcessedDigest:v25];
      digestCopy = v22;
      v14 = context;
    }

    else
    {
      v24 = _CPLog_to_os_log_type[6];
    }

    v17 = digestCopy;
    v38 = DALoggingwithCategory();
    if (os_log_type_enabled(v38, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v38, v24, "Processing ics calendar", buf, 2u);
    }

    calendarCopy = v42;
    v18 = [(SubCalICSDataActor *)self _processICSDocument:v15 icsData:dataCopy calendar:v42 digestPair:v19];

    goto LABEL_28;
  }

  v17 = digestCopy;
  v18 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v19 = v16;
LABEL_28:

  objc_autoreleasePoolPop(v14);
  v39 = DALoggingwithCategory();
  v40 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v39, v40))
  {
    *buf = 138412290;
    v47 = v18;
    _os_log_impl(&dword_0, v39, v40, "Done processing ics data, error: %@", buf, 0xCu);
  }

  v16 = v18;
  v30 = v16;
  digestCopy = v17;
  pairCopy = v44;
LABEL_31:

  return v30;
}

+ (id)_processedDigestForOriginalData:(id)data
{
  dataCopy = data;
  v5 = [[ICSDocument alloc] initWithData:dataCopy options:0 error:0];

  v6 = [self _processedDigestForDocument:v5];

  return v6;
}

+ (id)_processedDigestForDocument:(id)document
{
  v3 = [document ICSStringWithOptions:8];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 ical_digestWithVersionNumber:2];

  return v5;
}

- (id)_internalProcessICSData:(id)data
{
  dataCopy = data;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = objc_opt_class();
    v8 = v7;
    *buf = 138412546;
    v68 = v7;
    v69 = 2048;
    v70 = [dataCopy length];
    _os_log_impl(&dword_0, v5, v6, "%@ processing data of length %lu", buf, 0x16u);
  }

  v66 = 0;
  v9 = [dataCopy ical_digestWithVersionNumber:2];
  eventStore = [(SubCalICSDataActor *)self eventStore];
  sourceExternalId = [(SubCalICSDataActor *)self sourceExternalId];
  v12 = [eventStore sourceWithExternalID:sourceExternalId];

  if (!v12)
  {
    v21 = DALoggingwithCategory();
    v22 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v21, v22))
    {
      sourceExternalId2 = [(SubCalICSDataActor *)self sourceExternalId];
      *buf = 138412290;
      v68 = sourceExternalId2;
      _os_log_impl(&dword_0, v21, v22, "Can't find source with id %@", buf, 0xCu);
    }

    v24 = kSubCalICSDataActorErrorDomain;
    v14 = NSStringFromSubCalRefreshTaskError();
    v16 = [NSDictionary dictionaryWithObject:v14 forKey:v24];
    v25 = v24;
    v26 = 3;
    goto LABEL_18;
  }

  if (![v9 length])
  {
    v27 = DALoggingwithCategory();
    v28 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v27, v28))
    {
      sourceExternalId3 = [(SubCalICSDataActor *)self sourceExternalId];
      *buf = 138412290;
      v68 = sourceExternalId3;
      _os_log_impl(&dword_0, v27, v28, "Empty digest for calendar with id %@", buf, 0xCu);
    }

    v30 = kSubCalICSDataActorErrorDomain;
    v14 = NSStringFromSubCalRefreshTaskError();
    v16 = [NSDictionary dictionaryWithObject:v14 forKey:v30];
    v25 = v30;
    v26 = 4;
LABEL_18:
    v31 = [NSError errorWithDomain:v25 code:v26 userInfo:v16];
    goto LABEL_51;
  }

  calendarExternalId = [(SubCalICSDataActor *)self calendarExternalId];
  v14 = [v12 calendarWithExternalIdentifier:calendarExternalId];

  if (!v14)
  {
    v38 = DALoggingwithCategory();
    v39 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v38, v39))
    {
      calendarExternalId2 = [(SubCalICSDataActor *)self calendarExternalId];
      *buf = 138412290;
      v68 = calendarExternalId2;
      _os_log_impl(&dword_0, v38, v39, "Can't find calendar with external id %@", buf, 0xCu);
    }

    v41 = kSubCalICSDataActorErrorDomain;
    v16 = NSStringFromSubCalRefreshTaskError();
    v42 = [NSDictionary dictionaryWithObject:v16 forKey:v41];
    v31 = [NSError errorWithDomain:v41 code:4 userInfo:v42];
    goto LABEL_50;
  }

  v15 = subCalDigestForCalendar();
  v16 = [ICSDigestPair digestPairWithSerializedData:v15];

  v17 = &SBSSetStatusBarShowsActivityForApplication_ptr;
  v63 = v12;
  if (![(SubCalICSDataActor *)self forcedRefresh])
  {
    if (v9)
    {
      unprocessedDigest = [v16 unprocessedDigest];
      v19 = [unprocessedDigest isEqualToData:v9];

      if (v19)
      {
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v6))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v20, v6, "Digests are the same, not saving to db", buf, 2u);
        }

LABEL_29:
        date = [v17[101] date];
        [v14 setRefreshDate:date];

        if (self->_migrateCalendarExternalID)
        {
          v44 = DALoggingwithCategory();
          v45 = _CPLog_to_os_log_type[5];
          if (os_log_type_enabled(v44, v45))
          {
            externalID = [v14 externalID];
            migrateCalendarExternalID = self->_migrateCalendarExternalID;
            *buf = 138412546;
            v68 = externalID;
            v69 = 2112;
            v70 = migrateCalendarExternalID;
            _os_log_impl(&dword_0, v44, v45, "Migrating calendar externalID from %@ to %@", buf, 0x16u);
          }

          [v14 setExternalID:self->_migrateCalendarExternalID];
        }

        unprocessedDigest2 = [v16 unprocessedDigest];
        if ([unprocessedDigest2 length])
        {
        }

        else
        {
          migrationVersion = [v14 migrationVersion];

          if (migrationVersion <= 1)
          {
            [v14 setMigrationVersion:2];
          }
        }

        eventStore2 = [(SubCalICSDataActor *)self eventStore];
        v65 = 0;
        v51 = [eventStore2 saveCalendar:v14 commit:0 error:&v65];
        v31 = v65;

        if ((v51 & 1) == 0)
        {
          v42 = DALoggingwithCategory();
          v58 = _CPLog_to_os_log_type[3];
          v12 = v63;
          if (os_log_type_enabled(v42, v58))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v42, v58, "Error saving subscription calendar with updated refresh date (and possibly migrated ID)", buf, 2u);
          }

          goto LABEL_50;
        }

        v31 = 0;
LABEL_39:
        v52 = DALoggingwithCategory();
        if (os_log_type_enabled(v52, v6))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v52, v6, "Initiating EKEvent Store commit", buf, 2u);
        }

        eventStore3 = [(SubCalICSDataActor *)self eventStore];
        v64 = 0;
        v54 = [eventStore3 commitWithRollback:&v64];
        v55 = v64;

        v56 = DALoggingwithCategory();
        v57 = v56;
        if (v54)
        {
          v12 = v63;
          if (os_log_type_enabled(v56, v6))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v57, v6, "EKEventStore commit success.", buf, 2u);
          }

          v42 = v55;
        }

        else
        {
          v59 = _CPLog_to_os_log_type[3];
          v12 = v63;
          if (os_log_type_enabled(v56, v59))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v57, v59, "Error committing the event store.", buf, 2u);
          }

          v42 = v31;
          v31 = v55;
        }

LABEL_50:

        goto LABEL_51;
      }
    }
  }

  v62 = +[NSDate date];
  v32 = DALoggingwithCategory();
  if (os_log_type_enabled(v32, v6))
  {
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
    *buf = 138543362;
    v68 = v33;
    _os_log_impl(&dword_0, v32, v6, "==== SubCal: Starting processing ICS Data. Size of Data %{public}@ Bytes ====", buf, 0xCu);
  }

  v61 = v9;
  v31 = [(SubCalICSDataActor *)self _reallyProcessICSData:dataCopy withCalendar:v14 existingDigestPair:v16 newUnprocessedDigest:v9];
  v34 = +[NSDate date];
  v35 = DALoggingwithCategory();
  if (os_log_type_enabled(v35, v6))
  {
    [v34 timeIntervalSinceDate:v62];
    v36 = [NSNumber numberWithDouble:?];
    v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy length]);
    *buf = 138543618;
    v68 = v36;
    v69 = 2114;
    v70 = v37;
    _os_log_impl(&dword_0, v35, v6, "==== SubCal: Finished processing ICS Data. CPU Time - [%{public}@secs] Size of Data %{public}@ Bytes ====", buf, 0x16u);

    v12 = v63;
  }

  v9 = v61;
  v17 = &SBSSetStatusBarShowsActivityForApplication_ptr;
  if (!v31)
  {
    goto LABEL_29;
  }

  if (v66 == 1)
  {
    goto LABEL_39;
  }

LABEL_51:

  return v31;
}

- (void)processICSData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    actorQueue = [(SubCalICSDataActor *)self actorQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8814;
    v8[3] = &unk_1C4B8;
    v8[4] = self;
    v9 = dataCopy;
    dispatch_async(actorQueue, v8);
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, v7, "Empty icsData passed to SubCalICSDataActor", buf, 2u);
    }
  }
}

- (void)processICSDataAtPath:(id)path removeFileWhenDone:(BOOL)done
{
  pathCopy = path;
  actorQueue = [(SubCalICSDataActor *)self actorQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_892C;
  block[3] = &unk_1C580;
  v10 = pathCopy;
  selfCopy = self;
  doneCopy = done;
  v8 = pathCopy;
  dispatch_async(actorQueue, block);
}

- (void)synchronouslyCancel
{
  [(SubCalICSDataActor *)self setShouldCancel:1];
  actorQueue = [(SubCalICSDataActor *)self actorQueue];
  dispatch_sync(actorQueue, &stru_1C5C0);
}

+ (id)externalIDForICSEvent:(id)event
{
  v3 = [event ICSStringWithOptions:8];
  modTagForSubCal = [v3 modTagForSubCal];

  return modTagForSubCal;
}

- (SubCalICSDataCallbackActor)callbackTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackTarget);

  return WeakRetained;
}

@end