@interface SubCalAccount
- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info;
- (BOOL)allowInsecureConnection;
- (BOOL)hasSubscribedCalendarAtURL:(id)l;
- (BOOL)isChinaHolidayCalendar;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)isHolidaySubscribedCalendar;
- (BOOL)isManagedCalendar;
- (BOOL)isSyncedHolidayCalendar;
- (BOOL)removeDataFromCalendar:(id)calendar forAccountChange:(id)change;
- (BOOL)upgradeAccount;
- (DACoreDAVTaskManager)taskManager;
- (NSData)tmpICSData;
- (NSString)calDAVURLPath;
- (NSString)calendarExternalId;
- (NSURL)subscriptionURL;
- (SubCalAccount)initWithBackingAccountInfo:(id)info;
- (double)refreshInterval;
- (id)_tmpICSCalendarPath;
- (id)accountDescription;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (int)currentAccountVersion;
- (void)clearTmpICSData;
- (void)removeDBSyncDataForAccountChange:(id)change;
- (void)saveTmpICSData;
- (void)setAccountDescription:(id)description;
- (void)setCalDAVURLPath:(id)path;
- (void)setHost:(id)host;
- (void)setRefreshInterval:(double)interval;
- (void)subCalValidationTask:(id)task finishedWithError:(id)error calendarName:(id)name document:(id)document calendarData:(id)data;
- (void)upgradeAccountSpecificPropertiesOnAccount:(id)account inStore:(id)store parentAccount:(id)parentAccount;
@end

@implementation SubCalAccount

- (SubCalAccount)initWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = SubCalAccount;
  v5 = [(SubCalAccount *)&v9 initWithBackingAccountInfo:infoCopy];
  if (v5)
  {
    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [SubCalAccount initWithBackingAccountInfo:];
    }

    v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];

    if (!v6)
    {
      [(SubCalAccount *)v5 setShouldRemoveAlarms:1];
    }

    v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];

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
  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    subCalTitleKey = [MEMORY[0x277D03970] SubCalTitleKey];
    accountDescription = [(SubCalAccount *)self objectForKeyedSubscript:subCalTitleKey];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SubCalAccount;
    accountDescription = [(SubCalAccount *)&v8 accountDescription];
  }

  return accountDescription;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    subCalTitleKey = [MEMORY[0x277D03970] SubCalTitleKey];
    [(SubCalAccount *)self setObject:descriptionCopy forKeyedSubscript:subCalTitleKey];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SubCalAccount;
    [(SubCalAccount *)&v8 setAccountDescription:descriptionCopy];
  }
}

- (NSURL)subscriptionURL
{
  host = [(SubCalAccount *)self host];

  if (host)
  {
    if ([(SubCalAccount *)self useFTP])
    {
      v4 = @"ftp://";
    }

    else
    {
      useSSL = [(SubCalAccount *)self useSSL];
      v7 = @"http://";
      if (useSSL)
      {
        v7 = @"https://";
      }

      v4 = v7;
    }

    host2 = [(SubCalAccount *)self host];
    v9 = [(__CFString *)v4 stringByAppendingString:host2];

    principalPath = [(SubCalAccount *)self principalPath];
    v11 = [principalPath length];

    if (v11)
    {
      principalPath2 = [(SubCalAccount *)self principalPath];
      v13 = [v9 stringByAppendingString:principalPath2];

      v9 = v13;
    }

    v5 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    username = [(SubCalAccount *)self username];

    if (username)
    {
      username2 = [(SubCalAccount *)self username];
      da_stringByAddingPercentEscapesForUsername = [username2 da_stringByAddingPercentEscapesForUsername];
      v17 = [v5 da_urlBySettingUsername:da_stringByAddingPercentEscapesForUsername];

      v5 = v17;
    }

    if ([(SubCalAccount *)self useFTP])
    {
      password = [(SubCalAccount *)self password];
      v19 = [password length];

      if (v19)
      {
        password2 = [(SubCalAccount *)self password];
        da_stringByAddingPercentEscapesForUsername2 = [password2 da_stringByAddingPercentEscapesForUsername];
        v22 = [v5 da_urlBySettingPassword:da_stringByAddingPercentEscapesForUsername2];

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
  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  v3 = [backingAccountInfo objectForKeyedSubscript:*MEMORY[0x277CF7AB0]];

  return v3;
}

- (void)setCalDAVURLPath:(id)path
{
  pathCopy = path;
  calDAVURLPath = [(SubCalAccount *)self calDAVURLPath];
  if (calDAVURLPath != pathCopy && ([pathCopy isEqual:calDAVURLPath] & 1) == 0)
  {
    [(SubCalAccount *)self setObject:pathCopy forKeyedSubscript:*MEMORY[0x277CF7AB0]];
  }
}

- (NSString)calendarExternalId
{
  if ([(SubCalAccount *)self isHolidaySubscribedCalendar])
  {
    calDAVURLPath2 = @"__HolidayCalendar__";
  }

  else
  {
    calDAVURLPath = [(SubCalAccount *)self calDAVURLPath];
    v5 = [calDAVURLPath length];

    if (v5)
    {
      calDAVURLPath2 = [(SubCalAccount *)self calDAVURLPath];
    }

    else
    {
      subscriptionURL = [(SubCalAccount *)self subscriptionURL];
      calDAVURLPath2 = [subscriptionURL absoluteString];
    }
  }

  return calDAVURLPath2;
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

- (void)subCalValidationTask:(id)task finishedWithError:(id)error calendarName:(id)name document:(id)document calendarData:(id)data
{
  taskCopy = task;
  errorCopy = error;
  nameCopy = name;
  dataCopy = data;
  v14 = [(SubCalAccount *)self consumerForTask:taskCopy];
  if (!errorCopy)
  {
    if (dataCopy)
    {
      [(SubCalAccount *)self setTmpICSData:dataCopy];
    }

    if (nameCopy)
    {
      [(SubCalAccount *)self setAccountDescription:nameCopy];
    }

    else
    {
      accountDescription = [(SubCalAccount *)self accountDescription];

      if (!accountDescription)
      {
        host = [(SubCalAccount *)self host];
        [(SubCalAccount *)self setAccountDescription:host];
      }
    }

    subscriptionURL = [taskCopy subscriptionURL];

    if (subscriptionURL)
    {
      subscriptionURL2 = [taskCopy subscriptionURL];
      absoluteString = [subscriptionURL2 absoluteString];
      [(SubCalAccount *)self setHost:absoluteString];
    }
  }

  [v14 account:self isValid:errorCopy == 0 validationError:errorCopy];
  [(SubCalAccount *)self removeConsumerForTask:taskCopy];
}

- (id)_tmpICSCalendarPath
{
  v2 = MEMORY[0x277CCACA8];
  accountID = [(SubCalAccount *)self accountID];
  v4 = [v2 stringWithFormat:@"/tmp/DataAccess.SubscribedCalendar.%@.ics", accountID];

  return v4;
}

- (void)saveTmpICSData
{
  isa = self[1].super.super.isa;
  if (isa)
  {
    _tmpICSCalendarPath = [(SubCalAccount *)self _tmpICSCalendarPath];
    [(objc_class *)isa writeToFile:_tmpICSCalendarPath atomically:0];
  }
}

- (NSData)tmpICSData
{
  isa = self[1].super.super.isa;
  if (!isa)
  {
    _tmpICSCalendarPath = [(SubCalAccount *)self _tmpICSCalendarPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:_tmpICSCalendarPath];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfMappedFile:_tmpICSCalendarPath];
      [(SubCalAccount *)self setTmpICSData:v7];
    }

    isa = self[1].super.super.isa;
  }

  return isa;
}

- (void)clearTmpICSData
{
  v15 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _tmpICSCalendarPath = [(SubCalAccount *)self _tmpICSCalendarPath];
  v10 = 0;
  [defaultManager removeItemAtPath:_tmpICSCalendarPath error:&v10];
  v5 = v10;

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      _tmpICSCalendarPath2 = [(SubCalAccount *)self _tmpICSCalendarPath];
      *buf = 138412546;
      v12 = _tmpICSCalendarPath2;
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
  subCalInsecureConnectionApproved = [MEMORY[0x277D03970] SubCalInsecureConnectionApproved];
  LOBYTE(self) = [(SubCalAccount *)self accountBoolPropertyForKey:subCalInsecureConnectionApproved];

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
  currentAccountVersion = [(SubCalAccount *)self currentAccountVersion];
  v4 = currentAccountVersion;
  if (currentAccountVersion <= 16000)
  {
    v5 = MEMORY[0x277D03988];
    if (currentAccountVersion > 11200)
    {
      goto LABEL_15;
    }

    v6 = DALoggingwithCategory();
    v7 = v5[7];
    if (os_log_type_enabled(v6, v7))
    {
      accountDescription = [(SubCalAccount *)self accountDescription];
      publicDescription = [(SubCalAccount *)self publicDescription];
      *buf = 138412546;
      v45 = accountDescription;
      v46 = 2114;
      v47 = publicDescription;
      _os_log_impl(&dword_248587000, v6, v7, "Sanitizing subscription URL for account %@ (%{public}@)", buf, 0x16u);
    }

    backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
    parentAccount = [backingAccountInfo parentAccount];

    if (!parentAccount || ([parentAccount accountType], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CB8BC8]), v13, v12, !v14))
    {
LABEL_14:

LABEL_15:
      [(SubCalAccount *)self removeAccountPropertyForKey:*MEMORY[0x277CF7B08]];
      backingAccountInfo2 = [(SubCalAccount *)self backingAccountInfo];
      v28 = *MEMORY[0x277CF7AB0];
      v29 = [backingAccountInfo2 objectForKeyedSubscript:*MEMORY[0x277CF7AB0]];

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
        da_appendSlashIfNeeded = DALoggingwithCategory();
        v39 = v5[3];
        if (!os_log_type_enabled(da_appendSlashIfNeeded, v39))
        {
LABEL_26:

          goto LABEL_27;
        }

        accountID = [(SubCalAccount *)self accountID];
        *buf = 138543618;
        v45 = accountID;
        v46 = 2112;
        v47 = v29;
        _os_log_impl(&dword_248587000, da_appendSlashIfNeeded, v39, "Account %{public}@ has a bad CalDAV URL, %@", buf, 0x16u);
      }

      else
      {
        if (!v30)
        {
LABEL_27:

          [(SubCalAccount *)self setCurrentAccountVersion:16001];
          goto LABEL_28;
        }

        path = [v30 path];
        da_appendSlashIfNeeded = [path da_appendSlashIfNeeded];

        v35 = DALoggingwithCategory();
        v36 = v5[6];
        if (os_log_type_enabled(v35, v36))
        {
          accountID2 = [(SubCalAccount *)self accountID];
          *buf = 138543874;
          v45 = accountID2;
          v46 = 2112;
          v47 = v29;
          v48 = 2112;
          v49 = da_appendSlashIfNeeded;
          _os_log_impl(&dword_248587000, v35, v36, "Updating CalDAV URL for account %{public}@: %@ -> %@", buf, 0x20u);
        }

        accountID = [(SubCalAccount *)self backingAccountInfo];
        [accountID setObject:da_appendSlashIfNeeded forKeyedSubscript:v28];
      }

      goto LABEL_26;
    }

    username = [parentAccount username];
    subscriptionURL = [(SubCalAccount *)self subscriptionURL];
    password = [subscriptionURL password];
    if (!password)
    {
      user = [subscriptionURL user];
      v19 = [user isEqualToString:username];

      if (!v19)
      {
LABEL_13:

        goto LABEL_14;
      }

      da_urlByRemovingUsername = [subscriptionURL da_urlByRemovingUsername];
      password = [da_urlByRemovingUsername absoluteString];

      v21 = DALoggingwithCategory();
      v22 = v5[6];
      if (os_log_type_enabled(v21, v22))
      {
        accountDescription2 = [(SubCalAccount *)self accountDescription];
        publicDescription2 = [(SubCalAccount *)self publicDescription];
        *buf = 138413314;
        v45 = username;
        v46 = 2112;
        v47 = accountDescription2;
        v48 = 2114;
        v49 = publicDescription2;
        v24 = publicDescription2;
        v50 = 2112;
        v51 = subscriptionURL;
        v52 = 2112;
        v53 = password;
        _os_log_impl(&dword_248587000, v21, v22, "Removing username %@ from URL for subscribed account %@ (%{public}@): %@ -> %@", buf, 0x34u);
      }

      [(SubCalAccount *)self setUsername:0];
      backingAccountInfo3 = [(SubCalAccount *)self backingAccountInfo];
      subCalSubscriptionURLKey = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
      [backingAccountInfo3 setObject:password forKeyedSubscript:subCalSubscriptionURLKey];
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

- (void)upgradeAccountSpecificPropertiesOnAccount:(id)account inStore:(id)store parentAccount:(id)parentAccount
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v7 = objc_opt_new();
  externalRepresentation = [(SubCalAccount *)self externalRepresentation];
  [v7 setValue:externalRepresentation forKey:@"SubCalExtRep"];

  syncId = [(SubCalAccount *)self syncId];
  [v7 setValue:syncId forKey:@"SubCalSyncId"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SubCalAccount shouldRemoveAlarms](self, "shouldRemoveAlarms")}];
  [v7 setValue:v10 forKey:*MEMORY[0x277CF7AF0]];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [v7 allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v7 objectForKeyedSubscript:v16];
        [accountCopy setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setHost:(id)host
{
  hostCopy = host;
  if (hostCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:hostCopy];
  }

  else
  {
    v5 = 0;
  }

  scheme = [v5 scheme];
  v7 = scheme;
  resourceSpecifier = hostCopy;
  if (scheme)
  {
    v9 = [scheme caseInsensitiveCompare:@"https"];
    if (!v9 || ![v7 caseInsensitiveCompare:@"webcal"] || (resourceSpecifier = hostCopy, !objc_msgSend(v7, "caseInsensitiveCompare:", @"http")))
    {
      v10 = v9 == 0;
      user = [v5 user];
      password = [v5 password];
      [(SubCalAccount *)self setUseSSL:v10];
      if (user)
      {
        [(SubCalAccount *)self setUsername:user];
      }

      if (password)
      {
        [(SubCalAccount *)self setPassword:password];
      }

      resourceSpecifier = [v5 resourceSpecifier];

      if (user && (v13 = [resourceSpecifier rangeOfString:@"@"], v13 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v14 = v13 + 1;
      }

      else
      {
        if (![resourceSpecifier hasPrefix:@"//"])
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = 2;
      }

      v15 = [resourceSpecifier substringFromIndex:v14];

      resourceSpecifier = v15;
      goto LABEL_18;
    }
  }

LABEL_19:
  v16.receiver = self;
  v16.super_class = SubCalAccount;
  [(SubCalAccount *)&v16 setHost:resourceSpecifier];
}

- (double)refreshInterval
{
  v2 = [(SubCalAccount *)self accountPropertyForKey:*MEMORY[0x277CF7AE8]];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
  [(SubCalAccount *)self setAccountProperty:v4 forKey:*MEMORY[0x277CF7AE8]];
}

- (BOOL)isManagedCalendar
{
  v2 = [(SubCalAccount *)self objectForKeyedSubscript:*MEMORY[0x277CF7AE0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isChinaHolidayCalendar
{
  subscriptionURL = [(SubCalAccount *)self subscriptionURL];
  absoluteString = [subscriptionURL absoluteString];
  lowercaseString = [absoluteString lowercaseString];
  v5 = [lowercaseString containsString:@".icloud.com/holidays/cn_zh.ics"];

  return v5;
}

- (BOOL)isSyncedHolidayCalendar
{
  subscriptionURL = [(SubCalAccount *)self subscriptionURL];
  absoluteString = [subscriptionURL absoluteString];
  lowercaseString = [absoluteString lowercaseString];
  if ([lowercaseString containsString:@".icloud.com/holidays/"])
  {
    backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
    accountType = [backingAccountInfo accountType];
    identifier = [accountType identifier];
    v9 = [identifier isEqualToString:*MEMORY[0x277CB8C48]] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isHolidaySubscribedCalendar
{
  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  accountType = [backingAccountInfo accountType];
  identifier = [accountType identifier];
  v5 = [identifier isEqualToString:*MEMORY[0x277CB8C48]];

  return v5;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  username = [accountCopy username];
  v9 = [username length];
  if (v9 || (-[SubCalAccount username](self, "username"), v24 = objc_claimAutoreleasedReturnValue(), [v24 length]))
  {
    username2 = [accountCopy username];
    username3 = [(SubCalAccount *)self username];
    if (![username2 isEqualToString:username3])
    {
      v10 = 0;
      goto LABEL_25;
    }

    v23 = username2;
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  host = [accountCopy host];
  v12 = [host length];
  if (v12 || (-[SubCalAccount host](self, "host"), v21 = objc_claimAutoreleasedReturnValue(), [v21 length]))
  {
    username2 = [accountCopy host];
    host2 = [(SubCalAccount *)self host];
    if (![username2 isEqualToString:host2])
    {
      v10 = 0;
      goto LABEL_15;
    }

    v22 = username;
    v13 = 1;
  }

  else
  {
    v22 = username;
    v13 = 0;
  }

  port = [accountCopy port];
  v10 = port == [(SubCalAccount *)self port];
  if (v13)
  {
    username = v22;
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

  username = v22;
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
  username2 = v23;
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
  backingAccountInfo = [accountCopy backingAccountInfo];
  parentAccountIdentifier = [backingAccountInfo parentAccountIdentifier];

  backingAccountInfo2 = [(SubCalAccount *)self backingAccountInfo];
  parentAccountIdentifier2 = [backingAccountInfo2 parentAccountIdentifier];

  v19 = parentAccountIdentifier == parentAccountIdentifier2 || [parentAccountIdentifier isEqualToString:parentAccountIdentifier2];
LABEL_30:

  return v19;
}

- (BOOL)accountHasSignificantPropertyChangesWithChangeInfo:(id)info
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = SubCalAccount;
  if ([(SubCalAccount *)&v20 accountHasSignificantPropertyChangesWithChangeInfo:infoCopy])
  {
    goto LABEL_3;
  }

  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  v6 = *MEMORY[0x277CF7AF0];
  v7 = [backingAccountInfo objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];
  bOOLValue = [v7 BOOLValue];
  oldAccountProperties = [infoCopy oldAccountProperties];
  v10 = [oldAccountProperties objectForKeyedSubscript:v6];
  bOOLValue2 = [v10 BOOLValue];

  if (bOOLValue == bOOLValue2)
  {
    backingAccountInfo2 = [(SubCalAccount *)self backingAccountInfo];
    v14 = *MEMORY[0x277CF7AC8];
    v15 = [backingAccountInfo2 objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
    bOOLValue3 = [v15 BOOLValue];
    oldAccountProperties2 = [infoCopy oldAccountProperties];
    v18 = [oldAccountProperties2 objectForKeyedSubscript:v14];
    v12 = bOOLValue3 ^ [v18 BOOLValue];
  }

  else
  {
LABEL_3:
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)removeDBSyncDataForAccountChange:(id)change
{
  v31 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  changeTrackingID = [(SubCalAccount *)self changeTrackingID];
  v5 = [SubCalLocalDBHelper eventStoreWithClientId:changeTrackingID];

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
        subcalAccountID = [v12 subcalAccountID];
        accountID = [(SubCalAccount *)self accountID];
        v15 = [subcalAccountID isEqualToString:accountID];

        if (v15)
        {
          v9 |= [(SubCalAccount *)self removeDataFromCalendar:v12 forAccountChange:changeCopy];
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

- (BOOL)removeDataFromCalendar:(id)calendar forAccountChange:(id)change
{
  v85 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  changeCopy = change;
  backingAccountInfo = [(SubCalAccount *)self backingAccountInfo];
  v8 = *MEMORY[0x277CF7AF0];
  v9 = [backingAccountInfo objectForKeyedSubscript:*MEMORY[0x277CF7AF0]];
  bOOLValue = [v9 BOOLValue];

  backingAccountInfo2 = [(SubCalAccount *)self backingAccountInfo];
  v12 = *MEMORY[0x277CF7AC8];
  v13 = [backingAccountInfo2 objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
  bOOLValue2 = [v13 BOOLValue];

  v15 = changeCopy;
  oldAccountProperties = [changeCopy oldAccountProperties];
  v17 = [oldAccountProperties objectForKeyedSubscript:v8];
  v18 = bOOLValue ^ [v17 BOOLValue];

  oldAccountProperties2 = [v15 oldAccountProperties];
  v20 = [oldAccountProperties2 objectForKeyedSubscript:v12];
  bOOLValue3 = [v20 BOOLValue];

  if ((bOOLValue & 1) != 0 || !v18)
  {
    v22 = (bOOLValue2 ^ 1) & bOOLValue3;
  }

  else
  {
    v22 = 1;
  }

  v79.receiver = self;
  v79.super_class = SubCalAccount;
  v23 = [(SubCalAccount *)&v79 accountHasSignificantPropertyChangesWithChangeInfo:v15];
  v24 = calendarCopy;
  v58 = v15;
  if (v15)
  {
    v25 = bOOLValue2 ^ bOOLValue3;
    if (((v23 | v22) & 1) == 0 || ([calendarCopy setExternalModificationTag:0], !v22))
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

    [calendarCopy setExternalModificationTag:0];
    v25 = 1;
    v18 = 1;
  }

  [calendarCopy setDigest:0];
  v26 = 1;
LABEL_13:
  eventStore = [calendarCopy eventStore];
  v78 = 0;
  v30 = [eventStore saveCalendar:calendarCopy commit:0 error:&v78];
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
    v57 = [eventStore predicateForEventsInSubscribedCalendar:calendarCopy];
    [eventStore eventsMatchingPredicate:?];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v77 = 0u;
    v64 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v64)
    {
      v32 = *v75;
      v63 = v18 & bOOLValue;
      v62 = v25 & bOOLValue2;
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
            v37 = eventStore;
            alarms = [v35 alarms];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v39 = [alarms countByEnumeratingWithState:&v70 objects:v81 count:16];
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
                    objc_enumerationMutation(alarms);
                  }

                  v43 = *(*(&v70 + 1) + 8 * i);
                  if (([v43 isDefaultAlarm] & 1) == 0)
                  {
                    [v35 removeAlarm:v43];
                  }
                }

                v40 = [alarms countByEnumeratingWithState:&v70 objects:v81 count:16];
              }

              while (v40);
            }

            eventStore = v37;
            v26 = v36;
            v32 = v60;
          }

          if (v62)
          {
            attachments = [v35 attachments];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v45 = [attachments countByEnumeratingWithState:&v66 objects:v80 count:16];
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
                    objc_enumerationMutation(attachments);
                  }

                  [v35 removeAttachment:*(*(&v66 + 1) + 8 * j)];
                }

                v46 = [attachments countByEnumeratingWithState:&v66 objects:v80 count:16];
              }

              while (v46);
            }
          }

          v65 = v34;
          v49 = [eventStore saveEvent:v35 span:3 commit:0 error:&v65];
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

            [eventStore rollback];
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
    v24 = calendarCopy;
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
  accountDescription = [(SubCalAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, accountDescription];

  return v7;
}

- (BOOL)hasSubscribedCalendarAtURL:(id)l
{
  lCopy = l;
  subscriptionURL = [(SubCalAccount *)self subscriptionURL];
  v6 = [subscriptionURL isEqual:lCopy];

  return v6;
}

@end