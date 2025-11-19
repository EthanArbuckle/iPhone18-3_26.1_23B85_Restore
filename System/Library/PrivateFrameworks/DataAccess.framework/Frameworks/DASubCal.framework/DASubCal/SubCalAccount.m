@interface SubCalAccount
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3;
- (BOOL)allowInsecureConnection;
- (BOOL)hasSubscribedCalendarAtURL:(id)a3;
- (BOOL)isChinaHolidayCalendar;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isHolidaySubscribedCalendar;
- (BOOL)isManagedCalendar;
- (BOOL)isSyncedHolidayCalendar;
- (BOOL)removeDataFromCalendar:(id)a3 forAccountChange:(id)a4;
- (BOOL)upgradeAccount;
- (DACoreDAVTaskManager)taskManager;
- (NSData)tmpICSData;
- (NSString)calDAVURLPath;
- (NSString)calendarExternalId;
- (NSURL)subscriptionURL;
- (SubCalAccount)initWithBackingAccountInfo:(id)a3;
- (double)refreshInterval;
- (id)_tmpICSCalendarPath;
- (id)accountDescription;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (int)currentAccountVersion;
- (void)clearTmpICSData;
- (void)removeDBSyncDataForAccountChange:(id)a3;
- (void)saveTmpICSData;
- (void)setAccountDescription:(id)a3;
- (void)setCalDAVURLPath:(id)a3;
- (void)setHost:(id)a3;
- (void)setRefreshInterval:(double)a3;
- (void)subCalValidationTask:(id)a3 finishedWithError:(id)a4 calendarName:(id)a5 document:(id)a6 calendarData:(id)a7;
- (void)upgradeAccountSpecificPropertiesOnAccount:(id)a3 inStore:(id)a4 parentAccount:(id)a5;
@end

@implementation SubCalAccount

- (SubCalAccount)initWithBackingAccountInfo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SubCalAccount;
  v5 = [(SubCalAccount *)&v9 initWithBackingAccountInfo:v4];
  if (v5)
  {
    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [SubCalAccount initWithBackingAccountInfo:];
    }

    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];

    if (!v6)
    {
      [(SubCalAccount *)v5 setShouldRemoveAlarms:1];
    }

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];

    if (!v7)
    {
      [(SubCalAccount *)v5 setShouldRemoveAttachments:1];
    }
  }

  return v5;
}

void __44__SubCalAccount_initWithBackingAccountInfo___block_invoke()
{
  v0 = [MEMORY[0x277D03800] sharedLogger];
  [v0 registerWithiCalendar];
}

- (id)accountDescription
{
  v3 = [(SubCalAccount *)self backingAccountInfo];
  v4 = [v3 parentAccount];

  if (v4)
  {
    v5 = [MEMORY[0x277D03970] SubCalTitleKey];
    v6 = [(SubCalAccount *)self objectForKeyedSubscript:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SubCalAccount;
    v6 = [(SubCalAccount *)&v8 accountDescription];
  }

  return v6;
}

- (void)setAccountDescription:(id)a3
{
  v4 = a3;
  v5 = [(SubCalAccount *)self backingAccountInfo];
  v6 = [v5 parentAccount];

  if (v6)
  {
    v7 = [MEMORY[0x277D03970] SubCalTitleKey];
    [(SubCalAccount *)self setObject:v4 forKeyedSubscript:v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SubCalAccount;
    [(SubCalAccount *)&v8 setAccountDescription:v4];
  }
}

- (NSURL)subscriptionURL
{
  v3 = [(SubCalAccount *)self host];

  if (v3)
  {
    if ([(SubCalAccount *)self useFTP])
    {
      v4 = @"ftp://";
    }

    else
    {
      v6 = [(SubCalAccount *)self useSSL];
      v7 = @"http://";
      if (v6)
      {
        v7 = @"https://";
      }

      v4 = v7;
    }

    v8 = [(SubCalAccount *)self host];
    v9 = [(__CFString *)v4 stringByAppendingString:v8];

    v10 = [(SubCalAccount *)self principalPath];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [(SubCalAccount *)self principalPath];
      v13 = [v9 stringByAppendingString:v12];

      v9 = v13;
    }

    v5 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v14 = [(SubCalAccount *)self username];

    if (v14)
    {
      v15 = [(SubCalAccount *)self username];
      v16 = [v15 da_stringByAddingPercentEscapesForUsername];
      v17 = [v5 da_urlBySettingUsername:v16];

      v5 = v17;
    }

    if ([(SubCalAccount *)self useFTP])
    {
      v18 = [(SubCalAccount *)self password];
      v19 = [v18 length];

      if (v19)
      {
        v20 = [(SubCalAccount *)self password];
        v21 = [v20 da_stringByAddingPercentEscapesForUsername];
        v22 = [v5 da_urlBySettingPassword:v21];

        v5 = v22;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)calDAVURLPath
{
  v2 = [(SubCalAccount *)self backingAccountInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CF7AB0]];

  return v3;
}

- (void)setCalDAVURLPath:(id)a3
{
  v5 = a3;
  v4 = [(SubCalAccount *)self calDAVURLPath];
  if (v4 != v5 && ([v5 isEqual:v4] & 1) == 0)
  {
    [(SubCalAccount *)self setObject:v5 forKeyedSubscript:*MEMORY[0x277CF7AB0]];
  }
}

- (NSString)calendarExternalId
{
  if ([(SubCalAccount *)self isHolidaySubscribedCalendar])
  {
    v3 = @"__HolidayCalendar__";
  }

  else
  {
    v4 = [(SubCalAccount *)self calDAVURLPath];
    v5 = [v4 length];

    if (v5)
    {
      v3 = [(SubCalAccount *)self calDAVURLPath];
    }

    else
    {
      v6 = [(SubCalAccount *)self subscriptionURL];
      v3 = [v6 absoluteString];
    }
  }

  return v3;
}

- (DACoreDAVTaskManager)taskManager
{
  v3 = *MEMORY[0x277D03808];
  v4 = *(&self->super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(&self->super.super.isa + v3);
    *(&self->super.super.isa + v3) = v5;

    [*(&self->super.super.isa + v3) setAccount:self];
    v4 = *(&self->super.super.isa + v3);
  }

  return v4;
}

- (void)subCalValidationTask:(id)a3 finishedWithError:(id)a4 calendarName:(id)a5 document:(id)a6 calendarData:(id)a7
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(SubCalAccount *)self consumerForTask:v20];
  if (!v11)
  {
    if (v13)
    {
      [(SubCalAccount *)self setTmpICSData:v13];
    }

    if (v12)
    {
      [(SubCalAccount *)self setAccountDescription:v12];
    }

    else
    {
      v15 = [(SubCalAccount *)self accountDescription];

      if (!v15)
      {
        v16 = [(SubCalAccount *)self host];
        [(SubCalAccount *)self setAccountDescription:v16];
      }
    }

    v17 = [v20 subscriptionURL];

    if (v17)
    {
      v18 = [v20 subscriptionURL];
      v19 = [v18 absoluteString];
      [(SubCalAccount *)self setHost:v19];
    }
  }

  [v14 account:self isValid:v11 == 0 validationError:v11];
  [(SubCalAccount *)self removeConsumerForTask:v20];
}

- (id)_tmpICSCalendarPath
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SubCalAccount *)self accountID];
  v4 = [v2 stringWithFormat:@"/tmp/DataAccess.SubscribedCalendar.%@.ics", v3];

  return v4;
}

- (void)saveTmpICSData
{
  isa = self[1].super.super.isa;
  if (isa)
  {
    v3 = [(SubCalAccount *)self _tmpICSCalendarPath];
    [(objc_class *)isa writeToFile:v3 atomically:0];
  }
}

- (NSData)tmpICSData
{
  isa = self[1].super.super.isa;
  if (!isa)
  {
    v4 = [(SubCalAccount *)self _tmpICSCalendarPath];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfMappedFile:v4];
      [(SubCalAccount *)self setTmpICSData:v7];
    }

    isa = self[1].super.super.isa;
  }

  return isa;
}

- (void)clearTmpICSData
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(SubCalAccount *)self _tmpICSCalendarPath];
  v10 = 0;
  [v3 removeItemAtPath:v4 error:&v10];
  v5 = v10;

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(SubCalAccount *)self _tmpICSCalendarPath];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_248587000, v6, v7, "Error removing temporary ics file %@ : %@", buf, 0x16u);
    }
  }

  [(SubCalAccount *)self setTmpICSData:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowInsecureConnection
{
  v3 = [MEMORY[0x277D03970] SubCalInsecureConnectionApproved];
  LOBYTE(self) = [(SubCalAccount *)self accountBoolPropertyForKey:v3];

  return self;
}

- (int)currentAccountVersion
{
  result = [(SubCalAccount *)self accountIntPropertyForKey:@"SubCalAccountVersion"];
  if (!result)
  {
    if ([(SubCalAccount *)self accountBoolPropertyForKey:*MEMORY[0x277CF7B08]])
    {
      return 11201;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)upgradeAccount
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(SubCalAccount *)self currentAccountVersion];
  v4 = v3;
  if (v3 <= 16000)
  {
    v5 = MEMORY[0x277D03988];
    if (v3 > 11200)
    {
      goto LABEL_15;
    }

    v6 = DALoggingwithCategory();
    v7 = v5[7];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(SubCalAccount *)self accountDescription];
      v9 = [(SubCalAccount *)self publicDescription];
      *buf = 138412546;
      v45 = v8;
      v46 = 2114;
      v47 = v9;
      _os_log_impl(&dword_248587000, v6, v7, "Sanitizing subscription URL for account %@ (%{public}@)", buf, 0x16u);
    }

    v10 = [(SubCalAccount *)self backingAccountInfo];
    v11 = [v10 parentAccount];

    if (!v11 || ([v11 accountType], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CB8BC8]), v13, v12, !v14))
    {
LABEL_14:

LABEL_15:
      [(SubCalAccount *)self removeAccountPropertyForKey:*MEMORY[0x277CF7B08]];
      v27 = [(SubCalAccount *)self backingAccountInfo];
      v28 = *MEMORY[0x277CF7AB0];
      v29 = [v27 objectForKeyedSubscript:*MEMORY[0x277CF7AB0]];

      v30 = [MEMORY[0x277CBEBC0] URLWithString:v29];
      v31 = v30;
      if (v29)
      {
        v32 = v30 == 0;
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        v34 = DALoggingwithCategory();
        v39 = v5[3];
        if (!os_log_type_enabled(v34, v39))
        {
LABEL_26:

          goto LABEL_27;
        }

        v38 = [(SubCalAccount *)self accountID];
        *buf = 138543618;
        v45 = v38;
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&dword_248587000, v34, v39, "Account %{public}@ has a bad CalDAV URL, %@", buf, 0x16u);
      }

      else
      {
        if (!v30)
        {
LABEL_27:

          [(SubCalAccount *)self setCurrentAccountVersion:16001];
          goto LABEL_28;
        }

        v33 = [v30 path];
        v34 = [v33 da_appendSlashIfNeeded];

        v35 = DALoggingwithCategory();
        v36 = v5[6];
        if (os_log_type_enabled(v35, v36))
        {
          v37 = [(SubCalAccount *)self accountID];
          *buf = 138543874;
          v45 = v37;
          v46 = 2112;
          v47 = v29;
          v48 = 2112;
          v49 = v34;
          _os_log_impl(&dword_248587000, v35, v36, "Updating CalDAV URL for account %{public}@: %@ -> %@", buf, 0x20u);
        }

        v38 = [(SubCalAccount *)self backingAccountInfo];
        [v38 setObject:v34 forKeyedSubscript:v28];
      }

      goto LABEL_26;
    }

    v15 = [v11 username];
    v16 = [(SubCalAccount *)self subscriptionURL];
    v17 = [v16 password];
    if (!v17)
    {
      v18 = [v16 user];
      v19 = [v18 isEqualToString:v15];

      if (!v19)
      {
LABEL_13:

        goto LABEL_14;
      }

      v20 = [v16 da_urlByRemovingUsername];
      v17 = [v20 absoluteString];

      v21 = DALoggingwithCategory();
      v22 = v5[6];
      if (os_log_type_enabled(v21, v22))
      {
        v42 = [(SubCalAccount *)self accountDescription];
        v23 = [(SubCalAccount *)self publicDescription];
        *buf = 138413314;
        v45 = v15;
        v46 = 2112;
        v47 = v42;
        v48 = 2114;
        v49 = v23;
        v24 = v23;
        v50 = 2112;
        v51 = v16;
        v52 = 2112;
        v53 = v17;
        _os_log_impl(&dword_248587000, v21, v22, "Removing username %@ from URL for subscribed account %@ (%{public}@): %@ -> %@", buf, 0x34u);
      }

      [(SubCalAccount *)self setUsername:0];
      v25 = [(SubCalAccount *)self backingAccountInfo];
      v26 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
      [v25 setObject:v17 forKeyedSubscript:v26];
    }

    goto LABEL_13;
  }

LABEL_28:
  v43.receiver = self;
  v43.super_class = SubCalAccount;
  result = [(SubCalAccount *)&v43 upgradeAccount];
  if (v4 < 16001)
  {
    result = 1;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)upgradeAccountSpecificPropertiesOnAccount:(id)a3 inStore:(id)a4 parentAccount:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(SubCalAccount *)self externalRepresentation];
  [v7 setValue:v8 forKey:@"SubCalExtRep"];

  v9 = [(SubCalAccount *)self syncId];
  [v7 setValue:v9 forKey:@"SubCalSyncId"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SubCalAccount shouldRemoveAlarms](self, "shouldRemoveAlarms")}];
  [v7 setValue:v10 forKey:*MEMORY[0x277CF7AF0]];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v7 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v7 objectForKeyedSubscript:v16];
        [v6 setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setHost:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 scheme];
  v7 = v6;
  v8 = v4;
  if (v6)
  {
    v9 = [v6 caseInsensitiveCompare:@"https"];
    if (!v9 || ![v7 caseInsensitiveCompare:@"webcal"] || (v8 = v4, !objc_msgSend(v7, "caseInsensitiveCompare:", @"http")))
    {
      v10 = v9 == 0;
      v11 = [v5 user];
      v12 = [v5 password];
      [(SubCalAccount *)self setUseSSL:v10];
      if (v11)
      {
        [(SubCalAccount *)self setUsername:v11];
      }

      if (v12)
      {
        [(SubCalAccount *)self setPassword:v12];
      }

      v8 = [v5 resourceSpecifier];

      if (v11 && (v13 = [v8 rangeOfString:@"@"], v13 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v14 = v13 + 1;
      }

      else
      {
        if (![v8 hasPrefix:@"//"])
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = 2;
      }

      v15 = [v8 substringFromIndex:v14];

      v8 = v15;
      goto LABEL_18;
    }
  }

LABEL_19:
  v16.receiver = self;
  v16.super_class = SubCalAccount;
  [(SubCalAccount *)&v16 setHost:v8];
}

- (double)refreshInterval
{
  v2 = [(SubCalAccount *)self accountPropertyForKey:*MEMORY[0x277CF7AE8]];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(SubCalAccount *)self setAccountProperty:v4 forKey:*MEMORY[0x277CF7AE8]];
}

- (BOOL)isManagedCalendar
{
  v2 = [(SubCalAccount *)self objectForKeyedSubscript:*MEMORY[0x277CF7AE0]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isChinaHolidayCalendar
{
  v2 = [(SubCalAccount *)self subscriptionURL];
  v3 = [v2 absoluteString];
  v4 = [v3 lowercaseString];
  v5 = [v4 containsString:@".icloud.com/holidays/cn_zh.ics"];

  return v5;
}

- (BOOL)isSyncedHolidayCalendar
{
  v3 = [(SubCalAccount *)self subscriptionURL];
  v4 = [v3 absoluteString];
  v5 = [v4 lowercaseString];
  if ([v5 containsString:@".icloud.com/holidays/"])
  {
    v6 = [(SubCalAccount *)self backingAccountInfo];
    v7 = [v6 accountType];
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:*MEMORY[0x277CB8C48]] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isHolidaySubscribedCalendar
{
  v2 = [(SubCalAccount *)self backingAccountInfo];
  v3 = [v2 accountType];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277CB8C48]];

  return v5;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v7 = a3;
  v8 = [v7 username];
  v9 = [v8 length];
  if (v9 || (-[SubCalAccount username](self, "username"), v24 = objc_claimAutoreleasedReturnValue(), [v24 length]))
  {
    v3 = [v7 username];
    v4 = [(SubCalAccount *)self username];
    if (![v3 isEqualToString:v4])
    {
      v10 = 0;
      goto LABEL_25;
    }

    v23 = v3;
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v11 = [v7 host];
  v12 = [v11 length];
  if (v12 || (-[SubCalAccount host](self, "host"), v21 = objc_claimAutoreleasedReturnValue(), [v21 length]))
  {
    v3 = [v7 host];
    v5 = [(SubCalAccount *)self host];
    if (![v3 isEqualToString:v5])
    {
      v10 = 0;
      goto LABEL_15;
    }

    v22 = v8;
    v13 = 1;
  }

  else
  {
    v22 = v8;
    v13 = 0;
  }

  v14 = [v7 port];
  v10 = v14 == [(SubCalAccount *)self port];
  if (v13)
  {
    v8 = v22;
LABEL_15:

    if (v12)
    {
      goto LABEL_16;
    }

LABEL_23:

    if ((v25 & 1) == 0)
    {
LABEL_17:
      if (v9)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v8 = v22;
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_16:

  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_24:
  v3 = v23;
LABEL_25:

  if (v9)
  {
LABEL_18:

    if (v10)
    {
      goto LABEL_19;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_30;
  }

LABEL_26:

  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_19:
  v15 = [v7 backingAccountInfo];
  v16 = [v15 parentAccountIdentifier];

  v17 = [(SubCalAccount *)self backingAccountInfo];
  v18 = [v17 parentAccountIdentifier];

  v19 = v16 == v18 || [v16 isEqualToString:v18];
LABEL_30:

  return v19;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SubCalAccount;
  if ([(SubCalAccount *)&v20 accountHasSignificantPropertyChangesWithChangeInfo:v4])
  {
    goto LABEL_3;
  }

  v5 = [(SubCalAccount *)self backingAccountInfo];
  v6 = *MEMORY[0x277CF7AF0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];
  v8 = [v7 BOOLValue];
  v9 = [v4 oldAccountProperties];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = [v10 BOOLValue];

  if (v8 == v11)
  {
    v13 = [(SubCalAccount *)self backingAccountInfo];
    v14 = *MEMORY[0x277CF7AC8];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
    v16 = [v15 BOOLValue];
    v17 = [v4 oldAccountProperties];
    v18 = [v17 objectForKeyedSubscript:v14];
    v12 = v16 ^ [v18 BOOLValue];
  }

  else
  {
LABEL_3:
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)removeDBSyncDataForAccountChange:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = [(SubCalAccount *)self changeTrackingID];
  v5 = [SubCalLocalDBHelper eventStoreWithClientId:v4];

  v6 = [v5 calendarsForEntityType:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = v5;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 subcalAccountID];
        v14 = [(SubCalAccount *)self accountID];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v9 |= [(SubCalAccount *)self removeDataFromCalendar:v12 forAccountChange:v22];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
    v5 = v21;
    if (v9)
    {
      v23 = 0;
      v16 = [v21 commit:&v23];
      v17 = v23;
      if ((v16 & 1) == 0)
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138412290;
          v29 = v17;
          _os_log_impl(&dword_248587000, v18, v19, "Error committing store. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeDataFromCalendar:(id)a3 forAccountChange:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v6 = a4;
  v7 = [(SubCalAccount *)self backingAccountInfo];
  v8 = *MEMORY[0x277CF7AF0];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];
  v10 = [v9 BOOLValue];

  v11 = [(SubCalAccount *)self backingAccountInfo];
  v12 = *MEMORY[0x277CF7AC8];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
  v14 = [v13 BOOLValue];

  v15 = v6;
  v16 = [v6 oldAccountProperties];
  v17 = [v16 objectForKeyedSubscript:v8];
  v18 = v10 ^ [v17 BOOLValue];

  v19 = [v15 oldAccountProperties];
  v20 = [v19 objectForKeyedSubscript:v12];
  v21 = [v20 BOOLValue];

  if ((v10 & 1) != 0 || !v18)
  {
    v22 = (v14 ^ 1) & v21;
  }

  else
  {
    v22 = 1;
  }

  v79.receiver = self;
  v79.super_class = SubCalAccount;
  v23 = [(SubCalAccount *)&v79 accountHasSignificantPropertyChangesWithChangeInfo:v15];
  v24 = v59;
  v58 = v15;
  if (v15)
  {
    v25 = v14 ^ v21;
    if (((v23 | v22) & 1) == 0 || ([v59 setExternalModificationTag:0], !v22))
    {
      v26 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 0;
      _os_log_impl(&dword_248587000, v27, v28, "Asked to remove subcal calendar data, but not told what changed. Assuming everything changed.", buf, 2u);
    }

    [v59 setExternalModificationTag:0];
    v25 = 1;
    v18 = 1;
  }

  [v59 setDigest:0];
  v26 = 1;
LABEL_13:
  v29 = [v59 eventStore];
  v78 = 0;
  v30 = [v29 saveCalendar:v59 commit:0 error:&v78];
  v31 = v78;
  if ((v30 & 1) == 0)
  {
    v51 = DALoggingwithCategory();
    v52 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v51, v52))
    {
      *buf = 138412290;
      v84 = v31;
      _os_log_impl(&dword_248587000, v51, v52, "Error removing tag/digest from calendar: %@", buf, 0xCu);
    }

    v50 = 0;
LABEL_54:

    goto LABEL_55;
  }

  if ((v18 | v25))
  {
    v57 = [v29 predicateForEventsInSubscribedCalendar:v59];
    [v29 eventsMatchingPredicate:?];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v77 = 0u;
    v64 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v64)
    {
      v32 = *v75;
      v63 = v18 & v10;
      v62 = v25 & v14;
      v60 = *v75;
      while (2)
      {
        v33 = 0;
        v34 = v31;
        do
        {
          if (*v75 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v74 + 1) + 8 * v33);
          if (v26)
          {
            [*(*(&v74 + 1) + 8 * v33) setExternalID:0];
          }

          if (v63)
          {
            v36 = v26;
            v37 = v29;
            v38 = [v35 alarms];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v39 = [v38 countByEnumeratingWithState:&v70 objects:v81 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v71;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v71 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v43 = *(*(&v70 + 1) + 8 * i);
                  if (([v43 isDefaultAlarm] & 1) == 0)
                  {
                    [v35 removeAlarm:v43];
                  }
                }

                v40 = [v38 countByEnumeratingWithState:&v70 objects:v81 count:16];
              }

              while (v40);
            }

            v29 = v37;
            v26 = v36;
            v32 = v60;
          }

          if (v62)
          {
            v44 = [v35 attachments];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v45 = [v44 countByEnumeratingWithState:&v66 objects:v80 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v67;
              do
              {
                for (j = 0; j != v46; ++j)
                {
                  if (*v67 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  [v35 removeAttachment:*(*(&v66 + 1) + 8 * j)];
                }

                v46 = [v44 countByEnumeratingWithState:&v66 objects:v80 count:16];
              }

              while (v46);
            }
          }

          v65 = v34;
          v49 = [v29 saveEvent:v35 span:3 commit:0 error:&v65];
          v31 = v65;

          if ((v49 & 1) == 0)
          {
            v53 = DALoggingwithCategory();
            v54 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v53, v54))
            {
              *buf = 138412290;
              v84 = v31;
              _os_log_impl(&dword_248587000, v53, v54, "Error removing external ID from event: %@", buf, 0xCu);
            }

            [v29 rollback];
            v50 = 0;
            goto LABEL_53;
          }

          ++v33;
          v34 = v31;
        }

        while (v33 != v64);
        v64 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

    v50 = 1;
LABEL_53:
    v24 = v59;
    v51 = v57;
    goto LABEL_54;
  }

  v50 = 1;
LABEL_55:

  v55 = *MEMORY[0x277D85DE8];
  return v50;
}

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_SUBCAL" value:&stru_285AC8AA0 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_SUBCAL" value:&stru_285AC8AA0 table:@"DataAccess"];
  v6 = [(SubCalAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (BOOL)hasSubscribedCalendarAtURL:(id)a3
{
  v4 = a3;
  v5 = [(SubCalAccount *)self subscriptionURL];
  v6 = [v5 isEqual:v4];

  return v6;
}

@end