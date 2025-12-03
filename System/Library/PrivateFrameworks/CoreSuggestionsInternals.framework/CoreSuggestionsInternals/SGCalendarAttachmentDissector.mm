@interface SGCalendarAttachmentDissector
+ (id)baseAttachmentFrom:(id)from includingEvents:(id)events withRanges:(id)ranges;
+ (id)splitAttachment:(id)attachment intoEvents:(id)events withTimezones:(id)timezones;
+ (int64_t)replaceTzid:(id)tzid inDocument:(id)document fromOriginal:(id)original withBaseLength:(unint64_t)length withEventRange:(_NSRange)range;
- (BOOL)hasCalendarAccountForOneOf:(id)of;
- (BOOL)shouldIgnoreEntity:(id)entity;
- (SGCalendarAttachmentDissector)init;
- (SGMEventICSSourceType_)accountTypeFor:(id)for;
- (id)enrichmentsFromData:(id)data inDocument:(id)document parentMessage:(id)message parentEntity:(id)entity;
- (void)_dissectMessage:(id)message entity:(id)entity;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGCalendarAttachmentDissector

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  [(SGCalendarAttachmentDissector *)self _dissectMessage:messageCopy entity:entityCopy];
  objc_autoreleasePoolPop(v10);
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  if (_os_feature_enabled_impl() && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGCalendarAttachmentDissector: TextUnderstanding flags enabled, ignoring email.", v13, 2u);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    [(SGCalendarAttachmentDissector *)self _dissectMessage:messageCopy entity:entityCopy];
    objc_autoreleasePoolPop(v12);
  }
}

- (void)_dissectMessage:(id)message entity:(id)entity
{
  v55 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  selfCopy = self;
  if (![(SGCalendarAttachmentDissector *)self shouldIgnoreEntity:entityCopy])
  {
    if ([MEMORY[0x277D02098] detectStructuredEvents])
    {
      attachments = [messageCopy attachments];
      v9 = [(SGCalendarAttachmentDissector *)self downloadedCalendarAttachmentsFrom:attachments];

      v10 = sgLogHandle();
      v39 = messageCopy;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        attachments2 = [messageCopy attachments];
        *buf = 134218240;
        v52 = [attachments2 count];
        v53 = 2048;
        v54 = [v9 count];
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Message with %lu attachments (%lu downloaded ics)", buf, 0x16u);

        messageCopy = v39;
      }

      if ([v9 count])
      {
        v38 = entityCopy;
        v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = v9;
        v11 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          v41 = 0;
          v13 = 0;
          v14 = 0;
          v43 = *v47;
          while (1)
          {
            v15 = 0;
            v16 = v14;
            do
            {
              if (*v47 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v46 + 1) + 8 * v15);
              v18 = objc_autoreleasePoolPush();
              v19 = objc_alloc(MEMORY[0x277CBEA90]);
              path = [v17 path];
              v45 = 0;
              v14 = [v19 initWithContentsOfFile:path options:1 error:&v45];
              v21 = v45;

              if (v21 || !v14)
              {
                v30 = sgLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  path2 = [v17 path];
                  *buf = 138412546;
                  v52 = path2;
                  v53 = 2112;
                  v54 = v21;
                  _os_log_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEFAULT, "Error when reading attachment at %@:\n%@", buf, 0x16u);
                }

LABEL_25:

LABEL_26:
                goto LABEL_27;
              }

              v22 = objc_alloc(MEMORY[0x277D7F108]);
              v44 = 0;
              v23 = [v22 initWithData:v14 options:0 error:&v44];
              v21 = v44;

              if (v21 || !v23)
              {
                v30 = sgLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  path3 = [v17 path];
                  *buf = 138412546;
                  v52 = path3;
                  v53 = 2112;
                  v54 = v21;
                  _os_log_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEFAULT, "Error when instantiating ICSDocument for attachment at %@:\n%@", buf, 0x16u);
                }

                v13 = v23;
                goto LABEL_25;
              }

              calendar = [v23 calendar];

              calscale = [calendar calscale];
              if (!calscale || (v26 = calscale, [calendar calscale], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", @"GREGORIAN"), v27, v26, v28))
              {
                messageCopy = v39;
                v21 = [(SGCalendarAttachmentDissector *)selfCopy enrichmentsFromData:v14 inDocument:v23 parentMessage:v39 parentEntity:v38, v37];
                if (!v21 || (v29 = [v37 count], (objc_msgSend(v21, "count") + v29) >= 0xB))
                {

                  objc_autoreleasePoolPop(v18);
                  v9 = obj;

                  v34 = v37;
                  entityCopy = v38;
                  goto LABEL_37;
                }

                [v37 addObjectsFromArray:v21];
                v41 = calendar;
                v13 = v23;
                goto LABEL_26;
              }

              v13 = v23;
              v41 = calendar;
LABEL_27:
              objc_autoreleasePoolPop(v18);
              ++v15;
              v16 = v14;
            }

            while (v12 != v15);
            v33 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
            v12 = v33;
            if (!v33)
            {
              goto LABEL_36;
            }
          }
        }

        v41 = 0;
        v13 = 0;
        v14 = 0;
LABEL_36:
        v9 = obj;

        v34 = v37;
        entityCopy = v38;
        [v38 addEnrichments:v37];
        v23 = v13;
        calendar = v41;
        messageCopy = v39;
LABEL_37:
      }
    }

    else
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "Skipping calendar attachment dissector: detectStructuredEvents is OFF", buf, 2u);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)enrichmentsFromData:(id)data inDocument:(id)document parentMessage:(id)message parentEntity:(id)entity
{
  v79 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  documentCopy = document;
  messageCopy = message;
  entityCopy = entity;
  v63 = objc_opt_new();
  v59 = objc_opt_new();
  v55 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v67 = documentCopy;
  calendar = [documentCopy calendar];
  obj = [calendar componentKeys];

  v66 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v66)
  {
    v65 = *v75;
    v57 = *MEMORY[0x277D02468];
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v75 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v74 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      calendar2 = [v67 calendar];
      v15 = [calendar2 componentForKey:v12];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_40:

      objc_autoreleasePoolPop(v13);
      if (v66 == ++v11)
      {
        v66 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
        if (v66)
        {
          goto LABEL_3;
        }

        goto LABEL_42;
      }
    }

    method = [v15 method];
    if (!method)
    {
      calendar3 = [v67 calendar];
      method = [calendar3 method];
    }

    if (method > 2)
    {
LABEL_39:
      if ([v63 count] > 0xA)
      {

        objc_autoreleasePoolPop(v13);
        v52 = 0;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v73 = 1;
    calendar4 = [v67 calendar];
    v19 = [v15 enrichmentWithParentEntity:entityCopy withCalendar:calendar4 withCorrectnessFlag:&v73];

    v20 = [v15 uid];
    v21 = v20;
    v22 = &stru_284703F00;
    if (v20)
    {
      v22 = v20;
    }

    v64 = v22;

    if (v19)
    {
      if (([v59 containsObject:v64] & 1) == 0)
      {
        v24 = sgLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEBUG, "Found event", buf, 2u);
        }

        [v63 addObject:v19];
        [v59 addObject:v64];
        *buf = 0;
        v70 = buf;
        v71 = 0x2020000000;
        v72 = 0;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __91__SGCalendarAttachmentDissector_enrichmentsFromData_inDocument_parentMessage_parentEntity___block_invoke;
        v68[3] = &unk_27894D860;
        v68[4] = buf;
        [MEMORY[0x277CC5A40] sg_usingSharedStoreForReadingOnly:v68];
        timeRange = [v19 timeRange];
        startTimeZone = [timeRange startTimeZone];
        name = [startTimeZone name];
        v28 = name;
        if (!name)
        {
          v28 = @"floating";
          if (v70[24])
          {
            v28 = 0;
          }
        }

        v29 = v28;

        if (v29)
        {
          v30 = [MEMORY[0x277D01FA0] timezoneIdentifier:v29];
          [v19 addTag:v30];
        }

        if ((v73 & 1) == 0)
        {
          [v55 setValue:v29 forKey:v64];
        }

        accountHandles = [messageCopy accountHandles];
        firstObject = [accountHandles firstObject];

        activeAccounts = [getMailAccountClass() activeAccounts];
        v34 = activeAccounts;
        if (firstObject && activeAccounts)
        {
          v35 = [getMailAccountClass() accountContainingEmailAddress:firstObject];
          v36 = v35;
          if (v35 && [v35 sourceIsManaged])
          {
            v37 = [MEMORY[0x277D01FA0] managedSourceAccount:@"MCAccountIsManaged"];
            [v19 addTag:v37];
          }
        }

        v38 = [MEMORY[0x277D01FA0] icsAttachmentData:dataCopy];
        [v19 addTag:v38];

        _Block_object_dispose(buf, 8);
        goto LABEL_37;
      }

      if (![v59 containsObject:v64])
      {
LABEL_37:

        if (method == 2)
        {
          author = [messageCopy author];
          sg_emailAddress = [author sg_emailAddress];
          v41.var0 = [(SGCalendarAttachmentDissector *)self accountTypeFor:sg_emailAddress];

          accountHandles2 = [messageCopy accountHandles];
          firstObject2 = [accountHandles2 firstObject];
          v44.var0 = [(SGCalendarAttachmentDissector *)self accountTypeFor:firstObject2];

          v45 = objc_opt_new();
          [v45 setSource:v41.var0];
          [v45 setRecipient:v44.var0];
          accountHandles3 = [messageCopy accountHandles];
          [v45 setAccountSetup:{-[SGCalendarAttachmentDissector hasCalendarAccountForOneOf:](self, "hasCalendarAccountForOneOf:", accountHandles3)}];

          mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
          [mEMORY[0x277D41DA8] trackScalarForMessage:v45];

          v48 = objc_alloc(MEMORY[0x277CCACA8]);
          v49 = [v45 key];
          v50 = [v48 initWithFormat:@"%@.%@", v57, v49];

          dictionaryRepresentation = [v45 dictionaryRepresentation];
          AnalyticsSendEvent();
        }

        goto LABEL_39;
      }

      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "Ignoring event that has the same UID as another event in the same ics attachment.", buf, 2u);
      }
    }

    else
    {
      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "Failed to parse event from ics attachment.", buf, 2u);
      }
    }

    goto LABEL_37;
  }

LABEL_42:

  v52 = v63;
LABEL_44:

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

void __91__SGCalendarAttachmentDissector_enrichmentsFromData_inDocument_parentMessage_parentEntity___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 defaultCalendarForNewEvents];
  v3 = [v5 source];
  v4 = [v3 title];
  *(*(*(a1 + 32) + 8) + 24) = [v4 isEqualToString:@"Gmail"];
}

- (SGMEventICSSourceType_)accountTypeFor:(id)for
{
  forCopy = for;
  if ([forCopy containsString:@"@icloud.com"] & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@me.com") & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@mac.com"))
  {
    v4 = MEMORY[0x277D02340];
  }

  else if ([forCopy containsString:@"@gmail.com"] & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@googlemail.com") & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@google.com"))
  {
    v4 = MEMORY[0x277D02338];
  }

  else if ([forCopy containsString:@"@yahoo.com"] & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@yahoo.co.uk") & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@ymail.com") & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@sbcglobal.net") & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@rocketmail.com"))
  {
    v4 = MEMORY[0x277D02358];
  }

  else if ([forCopy containsString:@"@outlook.com"] & 1) != 0 || (objc_msgSend(forCopy, "containsString:", @"@hotmail.com"))
  {
    v4 = MEMORY[0x277D02348];
  }

  else
  {
    v7 = [forCopy containsString:@"@hotmail.co.uk"];
    v4 = MEMORY[0x277D02348];
    if ((v7 & 1) == 0 && ![forCopy containsString:@"@rocketmaill.com"])
    {
      v4 = MEMORY[0x277D02350];
    }
  }

  v5.var0 = *v4;

  return v5;
}

- (BOOL)hasCalendarAccountForOneOf:(id)of
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  ofCopy = of;
  v5 = [ofCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(ofCopy);
        }

        if ([(SGAccountsAdapter *)self->_accountsAdapter hasCalendarAccount:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [ofCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)shouldIgnoreEntity:(id)entity
{
  hasEventEnrichment = [entity hasEventEnrichment];
  if (hasEventEnrichment)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Ignoring attachments because a structured event already found", v6, 2u);
    }
  }

  return hasEventEnrichment;
}

uint64_t __67__SGCalendarAttachmentDissector_downloadedCalendarAttachmentsFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCalendarMimeType])
  {
    v3 = [v2 isDownloadedLocally];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SGCalendarAttachmentDissector)init
{
  v6.receiver = self;
  v6.super_class = SGCalendarAttachmentDissector;
  v2 = [(SGCalendarAttachmentDissector *)&v6 init];
  if (v2)
  {
    v3 = +[SGAccountsAdapter sharedInstance];
    accountsAdapter = v2->_accountsAdapter;
    v2->_accountsAdapter = v3;
  }

  return v2;
}

+ (id)splitAttachment:(id)attachment intoEvents:(id)events withTimezones:(id)timezones
{
  v69 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  eventsCopy = events;
  timezonesCopy = timezones;
  bytes = [attachmentCopy bytes];
  v46 = attachmentCopy;
  v42 = objc_opt_new();
  v9 = [objc_opt_class() baseAttachmentFrom:attachmentCopy includingEvents:eventsCopy withRanges:v42];
  v45 = [v9 length];
  v10 = v9;
  [v10 appendBytes:"END:VCALENDAR\n" length:14];
  v39 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = eventsCopy;
  v43 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v43)
  {
    v11 = 0;
    v41 = *v54;
    v38 = v63;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v12;
        v13 = *(*(&v53 + 1) + 8 * v12);
        v14 = [v42 objectForKeyedSubscript:{v13, v38}];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v49 objects:v66 count:16];
        v16 = v45;
        if (v15)
        {
          v17 = v15;
          v18 = *v50;
          v16 = v45;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v50 != v18)
              {
                objc_enumerationMutation(v14);
              }

              rangeValue = [*(*(&v49 + 1) + 8 * i) rangeValue];
              v22 = v21;
              [v10 replaceBytesInRange:v16 withBytes:v11 length:{bytes + rangeValue, v21}];
              v23 = [timezonesCopy objectForKeyedSubscript:v13];
              if (v23)
              {
                v16 += [objc_opt_class() replaceTzid:v23 inDocument:v10 fromOriginal:v46 withBaseLength:v16 withEventRange:{rangeValue, v22}];
              }

              v16 += v22;

              v11 = 0;
            }

            v17 = [v14 countByEnumeratingWithState:&v49 objects:v66 count:16];
            v11 = 0;
          }

          while (v17);
        }

        if (v14 && [v14 count])
        {
          v24 = v10;
          v25 = objc_opt_new();
          v61 = MEMORY[0x277D85DD0];
          v62 = 3221225472;
          v63[0] = __removeAttachments_block_invoke;
          v63[1] = &unk_27894C330;
          v26 = v24;
          v64 = v26;
          v27 = v25;
          v65 = v27;
          _PASEnumerateSimpleLinesInUTF8Data();
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          reverseObjectEnumerator = [v27 reverseObjectEnumerator];
          v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v68 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v58;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v58 != v31)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                rangeValue2 = [*(*(&v57 + 1) + 8 * j) rangeValue];
                [v26 replaceBytesInRange:rangeValue2 withBytes:v34 length:{"", 0}];
              }

              v30 = [reverseObjectEnumerator countByEnumeratingWithState:&v57 objects:v68 count:16];
            }

            while (v30);
          }

          v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v26 encoding:4];
          [v39 addObject:v35];
        }

        v11 = v16 - v45;

        v12 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v43);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (int64_t)replaceTzid:(id)tzid inDocument:(id)document fromOriginal:(id)original withBaseLength:(unint64_t)length withEventRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  tzidCopy = tzid;
  documentCopy = document;
  originalCopy = original;
  v14 = [originalCopy bytes] + location;
  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v14 length:length freeWhenDone:0];
  [originalCopy length];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18 = tzidCopy;
  v19 = documentCopy;
  _PASEnumerateSimpleLinesInUTF8Data();
  v16 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v16;
}

uint64_t __99__SGCalendarAttachmentDissector_replaceTzid_inDocument_fromOriginal_withBaseLength_withEventRange___block_invoke(uint64_t a1, uint64_t a2, size_t a3)
{
  v6 = a2 + a3;
  if (a2 + a3 >= *(a1 + 56) || (result = 0, v8 = *(*(a1 + 64) + v6), v8 != 9) && v8 != 32)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = strlen(replaceTzid_inDocument_fromOriginal_withBaseLength_withEventRange__datelines[v9]);
      v12 = v11 <= a3 && strncmp((*(a1 + 64) + a2), replaceTzid_inDocument_fromOriginal_withBaseLength_withEventRange__datelines[v9], v11) == 0;
      v10 |= v12;
      ++v9;
    }

    while (v9 != 6);
    if ((v10 & 1) == 0)
    {
      return 1;
    }

    v13 = strnstr((*(a1 + 64) + a2), "TZID=", a3);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 32);
      v16 = v14 + 5;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v15 = [@"TZID=" stringByAppendingString:*(a1 + 32)];;
      objc_autoreleasePoolPop(v17);
      v16 = strnstr((*(a1 + 64) + a2), ":", a3);
      if (!v16)
      {
LABEL_15:

        return 1;
      }
    }

    v18 = &v16[-*(a1 + 64)];
    v19 = strnstr(v16, ":", v6 - v18);
    if (v19)
    {
      v20 = v19 - v16;
      v21 = *(*(*(a1 + 48) + 8) + 24);
      v22 = &v18[*(a1 + 72)];
      v23 = [v15 UTF8String];
      v24 = strlen(v23);
      [*(a1 + 40) replaceBytesInRange:&v22[v21] withBytes:v20 length:{v23, v24}];
      *(*(*(a1 + 48) + 8) + 24) += v24 - v20;
    }

    goto LABEL_15;
  }

  return result;
}

+ (id)baseAttachmentFrom:(id)from includingEvents:(id)events withRanges:(id)ranges
{
  fromCopy = from;
  eventsCopy = events;
  rangesCopy = ranges;
  [fromCopy bytes];
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:eventsCopy];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[4] = 0;
  v18[5] = 0;
  v18[3] = "";
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__5348;
  v16[4] = __Block_byref_object_dispose__5349;
  v17 = 0;
  v13 = objc_opt_new();
  v14 = v10;
  v15 = rangesCopy;
  _PASEnumerateSimpleLinesInUTF8Data();
  v11 = v13;

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  return v11;
}

uint64_t __79__SGCalendarAttachmentDissector_baseAttachmentFrom_includingEvents_withRanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 104);
  v7 = (v6 + a2);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 64) + 8) + 40) += a3;
  }

  if (a3 >= 6)
  {
    if (strncmp(v7, "BEGIN:", 6uLL))
    {
      goto LABEL_7;
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 24);
    *(v11 + 24) = v12 + 1;
    if (v12)
    {
      goto LABEL_11;
    }

    *(*(*(a1 + 64) + 8) + 32) = a2;
    *(*(*(a1 + 64) + 8) + 40) = a3;
    if (a3 >= 0xF)
    {
      if (!strncmp(v7 + 6, "VTIMEZONE", 9uLL))
      {
        v9 = 0;
        v8 = 0;
        v37 = *(a1 + 72);
        goto LABEL_53;
      }

      if (strncmp(v7 + 6, "VEVENT", 6uLL))
      {
        if (!strncmp(v7 + 6, "VCALENDAR", 9uLL))
        {
          v9 = 0;
          v8 = 0;
          --*(*(*(a1 + 56) + 8) + 24);
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    else if (a3 < 0xC || strncmp(v7 + 6, "VEVENT", 6uLL))
    {
      goto LABEL_11;
    }

    v9 = 0;
    v8 = 0;
    v37 = *(a1 + 80);
LABEL_53:
    *(*(v37 + 8) + 24) = 1;
    goto LABEL_14;
  }

  if (a3 <= 3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a1 + 80;
    goto LABEL_22;
  }

LABEL_7:
  if (strncmp(v7, "END:", 4uLL))
  {
LABEL_11:
    v9 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = a3 >= 0xD && strncmp(v7, "END:VCALENDAR", 0xDuLL) == 0;
  v8 = 1;
LABEL_14:
  v10 = a1 + 80;
  if (*(*(*(a1 + 80) + 8) + 24) == 1 && !strncmp(v7, "UID:", 4uLL))
  {
    v13 = a2 + v6 - 1;
    v14 = MEMORY[0x277D85DE0];
    v15 = a3;
    do
    {
      v16 = v15;
      v17 = *(v13 + v15);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = __maskrune(v17, 0x4000uLL);
      }

      else
      {
        v18 = *(v14 + 4 * v17 + 60) & 0x4000;
      }

      v15 = v16 - 1;
    }

    while (v18);
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 + 4 length:v16 - 4 encoding:4];
    v20 = *(*(a1 + 88) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_22:
  v22 = *(*(a1 + 96) + 8);
  if ((*(v22 + 24) & 1) != 0 || v9)
  {
    *(v22 + 24) = 1;
  }

  else
  {
    if (!*(*(*(a1 + 56) + 8) + 24) || *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 32) appendBytes:v7 length:a3];
    }

    if ((v8 & *(*(*v10 + 8) + 24)) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v23 = *(*(a1 + 88) + 8);
      v26 = *(v23 + 40);
      v24 = (v23 + 40);
      v25 = v26;
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = &stru_284703F00;
      }

      objc_storeStrong(v24, v27);
      if ([*(a1 + 40) containsObject:*(*(*(a1 + 88) + 8) + 40)])
      {
        v28 = [MEMORY[0x277CCAE60] valueWithRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
        v29 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 88) + 8) + 40)];
        v30 = v29;
        if (v29)
        {
          [v29 addObject:v28];
        }

        else
        {
          v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v28, 0}];
          [*(a1 + 48) setObject:v31 forKeyedSubscript:*(*(*(a1 + 88) + 8) + 40)];
        }
      }

      v32 = *(*(a1 + 88) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = 0;
    }

    if (v8)
    {
      v34 = *(*(a1 + 56) + 8);
      v35 = *(v34 + 24) - 1;
      *(v34 + 24) = v35;
      if (!v35)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }

  return 1;
}

@end