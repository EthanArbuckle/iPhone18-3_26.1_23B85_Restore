@interface SubCalLocalDBHelper
+ (BOOL)_updateConstraintsIfNecessaryForSource:(id)source;
+ (id)_existingCalendarInCalDAVSourceWithExternalID:(id)d inSource:(id)source;
+ (id)_makeCalendarWithExternalId:(id)id inStore:(id)store error:(id *)error;
+ (id)_relativePathFromCalDAVExternalID:(id)d;
+ (id)eventStoreWithClientId:(id)id;
+ (id)initializeCalendarWithExternalId:(id)id inSource:(id)source needsSave:(BOOL *)save error:(id *)error;
+ (id)initializeSourceWithExternalId:(id)id inStore:(id)store needsSave:(BOOL *)save error:(id *)error;
@end

@implementation SubCalLocalDBHelper

+ (id)eventStoreWithClientId:(id)id
{
  v3 = MEMORY[0x277CC59F8];
  idCopy = id;
  v5 = [[v3 alloc] initWithCustomClientId:idCopy];

  v6 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:6 path:0 changeTrackingClientId:v5 enablePropertyModificationLogging:0 allowDelegateSources:1];
  [v6 setSkipModificationValidation:1];

  return v6;
}

+ (id)initializeSourceWithExternalId:(id)id inStore:(id)store needsSave:(BOOL *)save error:(id *)error
{
  idCopy = id;
  v10 = *MEMORY[0x277D03880];
  storeCopy = store;
  if ([idCopy isEqualToString:v10])
  {
    v12 = [storeCopy getSubscribedCalendarsSourceCreateIfNeededWithError:error];

    if (v12)
    {
      v13 = [objc_opt_class() _updateConstraintsIfNecessaryForSource:v12];
      if (save)
      {
        *save = v13;
      }
    }
  }

  else
  {
    v12 = [storeCopy sourceWithExternalID:idCopy];
  }

  v14 = v12;

  return v12;
}

+ (BOOL)_updateConstraintsIfNecessaryForSource:(id)source
{
  sourceCopy = source;
  v4 = sourceCopy;
  if (sourceCopy)
  {
    constraintsName = [sourceCopy constraintsName];
    v6 = *MEMORY[0x277CF7AB8];
    v7 = v6;
    if (constraintsName && ([v6 isEqualToString:constraintsName] & 1) == 0)
    {
      [v4 setConstraintsName:v7];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)initializeCalendarWithExternalId:(id)id inSource:(id)source needsSave:(BOOL *)save error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  sourceCopy = source;
  v12 = [sourceCopy calendarWithExternalIdentifier:idCopy];
  if (v12)
  {
    v13 = v12;
    goto LABEL_3;
  }

  if ([sourceCopy sourceType] == 2)
  {
    v13 = [self _existingCalendarInCalDAVSourceWithExternalID:idCopy inSource:sourceCopy];
    v17 = DALoggingwithCategory();
    v18 = v17;
    if (v13)
    {
      v19 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v17, v19))
      {
        externalID = [v13 externalID];
        v24 = 138412546;
        v25 = idCopy;
        v26 = 2112;
        v27 = externalID;
        _os_log_impl(&dword_248587000, v18, v19, "Looked up CalDAV subscribed calendar using relative path. Searched for ID: %@; found ID: %@", &v24, 0x16u);
      }

LABEL_3:
      v14 = 0;
      if (!save)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, *(MEMORY[0x277D03988] + 3)))
    {
      v24 = 138412290;
      v25 = idCopy;
      _os_log_impl(&dword_248587000, v18, v21, "Unable to find existing calendar for a CalDAV subscribed calendar. (externalID = %@)", &v24, 0xCu);
    }
  }

  v22 = objc_opt_class();
  eventStore = [sourceCopy eventStore];
  v13 = [v22 _makeCalendarWithExternalId:idCopy inStore:eventStore error:error];

  [v13 setSource:sourceCopy];
  v14 = 1;
  if (save)
  {
LABEL_4:
    *save = v14;
  }

LABEL_5:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_existingCalendarInCalDAVSourceWithExternalID:(id)d inSource:(id)source
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [source calendarsForEntityType:0];
  v8 = [self _relativePathFromCalDAVExternalID:dCopy];
  if (![v8 length])
  {
    v9 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v18))
    {
      *buf = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_248587000, v9, v18, "Can't turn %@ into a relative path", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v21 = v7;
  v12 = *v23;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v22 + 1) + 8 * i);
      externalID = [v14 externalID];
      v16 = [self _relativePathFromCalDAVExternalID:externalID];

      if ([v16 isEqualToString:v8])
      {
        v17 = v14;

        goto LABEL_12;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v17 = 0;
LABEL_12:
  v7 = v21;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_relativePathFromCalDAVExternalID:(id)d
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:d];
  path = [v3 path];

  return path;
}

+ (id)_makeCalendarWithExternalId:(id)id inStore:(id)store error:(id *)error
{
  v6 = MEMORY[0x277CC59B0];
  idCopy = id;
  v8 = [v6 calendarForEntityType:0 eventStore:store];
  [v8 setExternalID:idCopy];

  [v8 setSubscribed:1];
  [v8 setReadOnly:1];
  [v8 setAllowedEntityTypes:1];

  return v8;
}

@end