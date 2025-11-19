id subCalExternalRep(void *a1)
{
  v1 = [a1 externalRepresentation];
  v2 = [MEMORY[0x277CF7848] dictionaryWithExternalRepresentationData:v1];

  return v2;
}

id _subCalLegacyDigestForCalendar(void *a1)
{
  v1 = subCalExternalRep(a1);
  v2 = [v1 objectForKeyedSubscript:@"SCDigest"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _subCalLegacySetDigestOnCalendar(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = subCalExternalRep(v3);
  [v6 setValue:v4 forKey:@"SCDigest"];

  v5 = [MEMORY[0x277CF7848] externalRepresentationDataWithDictionary:v6];
  [v3 setExternalRepresentation:v5];
}

id subCalDigestForCalendar(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = [v3 digest];
  if (!v4)
  {
    v4 = _subCalLegacyDigestForCalendar(v3);
    v5 = [v4 length];
    if (v5)
    {
      [v3 setDigest:v4];
      _subCalLegacySetDigestOnCalendar(0, v3);
    }

    if (a2)
    {
      *a2 = v5 != 0;
    }
  }

  v6 = v4;

  return v6;
}

uint64_t subCalRefreshFlagsForCalendar(void *a1)
{
  v1 = subCalExternalRep(a1);
  v2 = [MEMORY[0x277CF7848] subscribedCalendarRefreshFlagsFromDictionary:v1];

  return v2;
}

void subCalSetRefreshFlagsOnCalendar(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = subCalExternalRep(v3);
  [MEMORY[0x277CF7848] setSubscribedCalendarRefreshFlags:a1 inDictionary:v5];
  v4 = [MEMORY[0x277CF7848] externalRepresentationDataWithDictionary:v5];
  [v3 setExternalRepresentation:v4];
}

CFUserNotificationRef SubCalCopySaveAccountNotification(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VALIDATED_ALERT_MESSAGE_FORMAT" value:&stru_285AC8AA0 table:@"DataAccess"];
  v6 = [v3 accountDescription];

  v7 = [v1 stringWithFormat:v5, v6];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"VALIDATED_ALERT_TITLE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_285AC8AA0 table:@"DataAccess"];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_285AC8AA0 table:@"DataAccess"];
  v14 = _SubCalCopyAccountNotification(v9, v7, v11, v13);

  return v14;
}

CFUserNotificationRef _SubCalCopyAccountNotification(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = 0;
  if (a1 && a3)
  {
    error = 0;
    v9 = MEMORY[0x277CBEB38];
    v10 = a4;
    v11 = a3;
    v12 = a1;
    v13 = [v9 alloc];
    v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x277CBF188], v11, *MEMORY[0x277CBF1E8], v10, *MEMORY[0x277CBF1C0], 0}];

    if (v7)
    {
      [v14 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBF198]];
    }

    v8 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 3uLL, &error, v14);
  }

  return v8;
}

CFUserNotificationRef SubCalCopyInvalidAccountNotification(void *a1)
{
  v1 = a1;
  v2 = [v1 host];
  v3 = [@"http://" stringByAppendingString:v2];

  v24 = v3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v5 = [v1 accountDescription];
  if (!v5 || ([v1 host], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v7))
  {
    v8 = [v4 path];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 lastPathComponent];

      v5 = v10;
      if (!v10)
      {
        v5 = v9;
      }
    }

    else
    {
      v11 = [v1 host];

      v5 = v11;
    }
  }

  v12 = [v4 host];
  v23 = v4;
  if (!v12)
  {
    v12 = [v1 host];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"INVALID_ALERT_MESSAGE_FORMAT" value:&stru_285AC8AA0 table:@"DataAccess"];
  v16 = [v13 stringWithFormat:v15, v5, v12];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"INVALID_ALERT_TITLE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"OK" value:&stru_285AC8AA0 table:@"DataAccess"];
  v21 = _SubCalCopyAccountNotification(v18, v16, v20, 0);

  return v21;
}

CFUserNotificationRef SubCalCopyAuthNeededForHostNotification(void *a1, void *a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"AUTH_NEEDED_ALERT_TITLE_FORMAT" value:&stru_285AC8AA0 table:@"DataAccess"];
  v8 = [v5 stringWithFormat:v7, v3];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PASSWORD_OK" value:&stru_285AC8AA0 table:@"DataAccess"];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = [v11 localizedStringForKey:@"PASSWORD_CANCEL" value:&stru_285AC8AA0 table:@"DataAccess"];
  v12 = v8;
  v13 = v10;
  v14 = v4;
  v15 = 0;
  if (v12 && v13)
  {
    v33 = v11;
    v34 = v3;
    error = 0;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"INVALID_USERNAME_PLACEHOLDER" value:&stru_285AC8AA0 table:@"DataAccess"];
    v43[0] = v17;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"INVALID_PASSWORD_PLACEHOLDER" value:&stru_285AC8AA0 table:@"DataAccess"];
    v43[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      while (1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v21 addObject:&unk_285ACAA38];
        [v22 addObject:&unk_285ACAA50];
        if (!--v25)
        {
          v25 = [v23 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 0;
      _os_log_impl(&dword_248587000, v27, v28, "Constructing notification info dictionary without SBUserNotificationGroupsTextFields key", buf, 2u);
    }

    v29 = objc_alloc(MEMORY[0x277CBEB38]);
    v30 = [v29 initWithObjectsAndKeys:{v12, *MEMORY[0x277CBF198], v23, *MEMORY[0x277CBF230], v21, *MEMORY[0x277D67438], v22, *MEMORY[0x277D67440], v13, *MEMORY[0x277CBF1E8], v35, *MEMORY[0x277CBF1C0], 0}];
    [v30 addEntriesFromDictionary:v14];
    v15 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0x20003uLL, &error, v30);

    v3 = v34;
    v11 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

CFUserNotificationRef SubCalCopyWhereToAccountNotification(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WHERE_TO_ALERT_TITLE_FORMAT" value:&stru_285AC8AA0 table:@"DataAccess"];
  v6 = [v3 accountDescription];

  v7 = [v1 stringWithFormat:v5, v6];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DONE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"VIEW_EVENTS" value:&stru_285AC8AA0 table:@"DataAccess"];
  v12 = _SubCalCopyAccountNotification(v7, 0, v9, v11);

  return v12;
}

CFUserNotificationRef SubCalCopyDuplicateAccountNotification(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_TITLE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v5 = [v2 localizedIdenticalAccountFailureMessage];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_285AC8AA0 table:@"DataAccess"];
  v8 = _SubCalCopyAccountNotification(v4, v5, v7, 0);

  return v8;
}

CFUserNotificationRef SubCalCopySSLFailureNotification(void *a1)
{
  v14 = [a1 subscriptionURL];
  v12 = [v14 host];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v13 localizedStringForKey:@"SUBCAL_CONNECTION_INSECURE_TITLE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SUBCAL_CONNECTION_INSECURE_BODY" value:&stru_285AC8AA0 table:@"DataAccess"];
  v5 = [v2 stringWithFormat:v4, v12];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_285AC8AA0 table:@"DataAccess"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTINUE" value:&stru_285AC8AA0 table:@"DataAccess"];
  v10 = _SubCalCopyAccountNotification(v1, v5, v7, v9);

  return v10;
}

__CFString *NSStringFromSubCalRefreshTaskError(unint64_t a1)
{
  if (a1 > 9)
  {
    v2 = 0;
  }

  else
  {
    v2 = NSStringFromSubCalRefreshTaskError_strings[a1];
  }

  return v2;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}