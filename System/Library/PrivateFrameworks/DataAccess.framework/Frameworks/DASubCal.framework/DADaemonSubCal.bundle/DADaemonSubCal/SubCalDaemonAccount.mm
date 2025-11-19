@interface SubCalDaemonAccount
+ (BOOL)isBadPasswordError:(id)a3;
- (BOOL)_calendarExistsOnParent;
- (BOOL)monitorFoldersWithIDs:(id)a3;
- (BOOL)shouldRefreshSubCalForCalendar:(id)a3;
- (SubCalDaemonAccountDelegate)delegate;
- (id)changeTrackingID;
- (id)sourceExternalId;
- (void)stopMonitoringFolders;
- (void)subCalRefreshTask:(id)a3 didRedirectToURL:(id)a4;
- (void)subCalRefreshTask:(id)a3 finishedWithError:(id)a4;
- (void)subCalRefreshTask:(id)a3 needsUsernamePasswordForHost:(id)a4 continuation:(id)a5;
@end

@implementation SubCalDaemonAccount

- (id)changeTrackingID
{
  v3 = [(SubCalDaemonAccount *)self backingAccountInfo];
  v4 = [v3 parentAccount];

  if (v4)
  {
    v5 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v6 = [v5 parentAccount];
    v7 = [v6 identifier];
    v8 = [NSString stringWithFormat:@"com.apple.dataaccessd-%@", v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SubCalDaemonAccount;
    v8 = [(SubCalDaemonAccount *)&v10 changeTrackingID];
  }

  return v8;
}

- (id)sourceExternalId
{
  v3 = [(SubCalDaemonAccount *)self backingAccountInfo];
  v4 = [v3 parentAccount];

  if (v4)
  {
    v5 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v6 = [v5 parentAccount];
    v7 = [v6 identifier];
  }

  else
  {
    v7 = kSubCalCalendarStoreExternalId;
  }

  return v7;
}

- (BOOL)_calendarExistsOnParent
{
  v3 = [(SubCalDaemonAccount *)self backingAccountInfo];
  v4 = [v3 parentAccount];

  if (!v4)
  {
    return 1;
  }

  v5 = [(SubCalDaemonAccount *)self backingAccountInfo];
  v6 = [v5 parentAccount];
  v7 = +[DASharedAccountProperties CalDAVSubscribedCalendarsKey];
  v8 = [v6 objectForKeyedSubscript:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(SubCalDaemonAccount *)self calDAVURLPath];
        LOBYTE(v14) = [v14 isEqualToString:v15];

        if (v14)
        {
          v16 = 1;
          goto LABEL_12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)shouldRefreshSubCalForCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 subcalURL];
  v5 = [v4 lowercaseString];
  v6 = [v5 containsString:@".icloud.com/holidays/cn_zh.ics"];

  LODWORD(v4) = [v3 migrationVersion];
  if (v4 < 2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)subCalRefreshTask:(id)a3 finishedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (v7)
  {
    v10 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v8, v10))
    {
      v11 = [(SubCalDaemonAccount *)self accountID];
      v40 = 138543618;
      v41 = v11;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_0, v9, v10, "Refresh completed for account with ID %{public}@ with error %@", &v40, 0x16u);
    }

    v12 = [v7 domain];
    if ([v12 isEqualToString:kSubCalURLRequestErrorDomain])
    {
      v13 = [v7 code];

      if (v13 == &stru_158.flags + 2)
      {
        v14 = [(SubCalDaemonAccount *)self backingAccountInfo];
        v15 = [v14 parentAccount];

        if (v15)
        {
          goto LABEL_31;
        }

        v16 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v16, _CPLog_to_os_log_type[3]))
        {
          v18 = [(SubCalDaemonAccount *)self accountDescription];
          v19 = [(SubCalDaemonAccount *)self publicDescription];
          v40 = 138412546;
          v41 = v18;
          v42 = 2114;
          v43 = v19;
          _os_log_impl(&dword_0, v16, v17, "The server for account %@ (%{public}@) returned a 410 status code, which means this calendar is gone gone gone. Disabling calendars for this account.", &v40, 0x16u);
        }

        [(SubCalDaemonAccount *)self setEnabled:0 forDADataclass:4];
        [(SubCalDaemonAccount *)self setEnabled:0 forDADataclass:16];
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (![SubCalDaemonAccount isBadPasswordError:v7])
    {
      goto LABEL_31;
    }

    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v23, v24))
    {
      v25 = [(SubCalDaemonAccount *)self accountDescription];
      v26 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = v25;
      v42 = 2114;
      v43 = v26;
      _os_log_impl(&dword_0, v23, v24, "Got a bad password error; marking account ad unauthenticated: %@ (%{public}@)", &v40, 0x16u);
    }

    v27 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v28 = v27;
    v29 = 0;
    goto LABEL_29;
  }

  v20 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v8, v20))
  {
    v21 = [(SubCalDaemonAccount *)self accountID];
    v40 = 138543362;
    v41 = v21;
    _os_log_impl(&dword_0, v9, v20, "Refresh completed for account with ID %{public}@", &v40, 0xCu);
  }

  if (([(SubCalDaemonAccount *)self useSSL]& 1) != 0 || ([(SubCalDaemonAccount *)self allowInsecureConnection]& 1) != 0)
  {
    v22 = 0;
  }

  else
  {
    v30 = DALoggingwithCategory();
    if (os_log_type_enabled(v30, v20))
    {
      v31 = [(SubCalDaemonAccount *)self accountDescription];
      v32 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = v31;
      v42 = 2114;
      v43 = v32;
      _os_log_impl(&dword_0, v30, v20, "Account %@ (%{public}@) successfully refreshed using https; updating the account", &v40, 0x16u);
    }

    v22 = 1;
    [(SubCalDaemonAccount *)self setUseSSL:1];
  }

  v33 = [(SubCalDaemonAccount *)self backingAccountInfo];
  v34 = [v33 isAuthenticated];

  if ((v34 & 1) == 0)
  {
    v35 = DALoggingwithCategory();
    if (os_log_type_enabled(v35, v20))
    {
      v36 = [(SubCalDaemonAccount *)self accountDescription];
      v37 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = v36;
      v42 = 2114;
      v43 = v37;
      _os_log_impl(&dword_0, v35, v20, "Account %@ (%{public}@) was marked as unauthenticated but refreshed successfully. Marking it as authenticated.", &v40, 0x16u);
    }

    v27 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v28 = v27;
    v29 = 1;
LABEL_29:
    [v27 setAuthenticated:v29];

    goto LABEL_30;
  }

  if (v22)
  {
LABEL_30:
    [(SubCalDaemonAccount *)self saveAccountProperties];
  }

LABEL_31:
  v38 = [(SubCalDaemonAccount *)self delegate];

  if (v38)
  {
    v39 = [(SubCalDaemonAccount *)self delegate];
    [v39 accountDidCompleteRefresh:self withError:v7];
  }
}

+ (BOOL)isBadPasswordError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:kSubCalURLRequestErrorDomain])
  {
    v5 = [v3 code] == &dword_4 + 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)subCalRefreshTask:(id)a3 didRedirectToURL:(id)a4
{
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(SubCalDaemonAccount *)self accountDescription];
    v9 = [(SubCalDaemonAccount *)self publicDescription];
    v11 = 138412802;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_0, v6, v7, "Account %@ (%{public}@) was redirected to %@", &v11, 0x20u);
  }

  v10 = [v5 absoluteString];
  [(SubCalDaemonAccount *)self setHost:v10];

  [(SubCalDaemonAccount *)self saveAccountProperties];
}

- (BOOL)monitorFoldersWithIDs:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v4;
    v7 = v10;
    _os_log_impl(&dword_0, v5, v6, "%@ asked to monitor these folders: %@", &v9, 0x16u);
  }

  [(SubCalDaemonAccount *)self _refresh:0];
  return 1;
}

- (void)stopMonitoringFolders
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 138412290;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_0, v3, v4, "%@ asked to stop monitoring folders", &v7, 0xCu);
  }

  v6 = [(SubCalDaemonAccount *)self taskManager];
  [v6 cancelAllTasks];
}

- (void)subCalRefreshTask:(id)a3 needsUsernamePasswordForHost:(id)a4 continuation:(id)a5
{
  v6 = a5;
  v7 = dataaccess_get_global_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5EB4;
  v9[3] = &unk_1C530;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(SubCalDaemonAccount *)self dropAssertionsAndRenewCredentialsInQueue:v7 withHandler:v9];
}

- (SubCalDaemonAccountDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end