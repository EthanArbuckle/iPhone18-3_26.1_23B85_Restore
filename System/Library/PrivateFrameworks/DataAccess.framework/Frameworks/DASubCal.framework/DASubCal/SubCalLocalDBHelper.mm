@interface SubCalLocalDBHelper
+ (BOOL)_updateConstraintsIfNecessaryForSource:(id)a3;
+ (id)_existingCalendarInCalDAVSourceWithExternalID:(id)a3 inSource:(id)a4;
+ (id)_makeCalendarWithExternalId:(id)a3 inStore:(id)a4 error:(id *)a5;
+ (id)_relativePathFromCalDAVExternalID:(id)a3;
+ (id)eventStoreWithClientId:(id)a3;
+ (id)initializeCalendarWithExternalId:(id)a3 inSource:(id)a4 needsSave:(BOOL *)a5 error:(id *)a6;
+ (id)initializeSourceWithExternalId:(id)a3 inStore:(id)a4 needsSave:(BOOL *)a5 error:(id *)a6;
@end

@implementation SubCalLocalDBHelper

+ (id)eventStoreWithClientId:(id)a3
{
  v3 = MEMORY[0x277CC59F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithCustomClientId:v4];

  v6 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:6 path:0 changeTrackingClientId:v5 enablePropertyModificationLogging:0 allowDelegateSources:1];
  [v6 setSkipModificationValidation:1];

  return v6;
}

+ (id)initializeSourceWithExternalId:(id)a3 inStore:(id)a4 needsSave:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = *MEMORY[0x277D03880];
  v11 = a4;
  if ([v9 isEqualToString:v10])
  {
    v12 = [v11 getSubscribedCalendarsSourceCreateIfNeededWithError:a6];

    if (v12)
    {
      v13 = [objc_opt_class() _updateConstraintsIfNecessaryForSource:v12];
      if (a5)
      {
        *a5 = v13;
      }
    }
  }

  else
  {
    v12 = [v11 sourceWithExternalID:v9];
  }

  v14 = v12;

  return v12;
}

+ (BOOL)_updateConstraintsIfNecessaryForSource:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 constraintsName];
    v6 = *MEMORY[0x277CF7AB8];
    v7 = v6;
    if (v5 && ([v6 isEqualToString:v5] & 1) == 0)
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

+ (id)initializeCalendarWithExternalId:(id)a3 inSource:(id)a4 needsSave:(BOOL *)a5 error:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v11 calendarWithExternalIdentifier:v10];
  if (v12)
  {
    v13 = v12;
    goto LABEL_3;
  }

  if ([v11 sourceType] == 2)
  {
    v13 = [a1 _existingCalendarInCalDAVSourceWithExternalID:v10 inSource:v11];
    v17 = DALoggingwithCategory();
    v18 = v17;
    if (v13)
    {
      v19 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v17, v19))
      {
        v20 = [v13 externalID];
        v24 = 138412546;
        v25 = v10;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_248587000, v18, v19, "Looked up CalDAV subscribed calendar using relative path. Searched for ID: %@; found ID: %@", &v24, 0x16u);
      }

LABEL_3:
      v14 = 0;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, *(MEMORY[0x277D03988] + 3)))
    {
      v24 = 138412290;
      v25 = v10;
      _os_log_impl(&dword_248587000, v18, v21, "Unable to find existing calendar for a CalDAV subscribed calendar. (externalID = %@)", &v24, 0xCu);
    }
  }

  v22 = objc_opt_class();
  v23 = [v11 eventStore];
  v13 = [v22 _makeCalendarWithExternalId:v10 inStore:v23 error:a6];

  [v13 setSource:v11];
  v14 = 1;
  if (a5)
  {
LABEL_4:
    *a5 = v14;
  }

LABEL_5:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_existingCalendarInCalDAVSourceWithExternalID:(id)a3 inSource:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 calendarsForEntityType:0];
  v8 = [a1 _relativePathFromCalDAVExternalID:v6];
  if (![v8 length])
  {
    v9 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v9, v18))
    {
      *buf = 138412290;
      v28 = v6;
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
      v15 = [v14 externalID];
      v16 = [a1 _relativePathFromCalDAVExternalID:v15];

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

+ (id)_relativePathFromCalDAVExternalID:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v4 = [v3 path];

  return v4;
}

+ (id)_makeCalendarWithExternalId:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x277CC59B0];
  v7 = a3;
  v8 = [v6 calendarForEntityType:0 eventStore:a4];
  [v8 setExternalID:v7];

  [v8 setSubscribed:1];
  [v8 setReadOnly:1];
  [v8 setAllowedEntityTypes:1];

  return v8;
}

@end