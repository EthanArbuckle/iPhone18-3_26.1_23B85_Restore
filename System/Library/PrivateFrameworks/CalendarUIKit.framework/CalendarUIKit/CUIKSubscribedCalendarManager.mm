@interface CUIKSubscribedCalendarManager
- (id)_accountDescriptionForCalendar:(id)calendar;
- (id)_createCalDAVChildSubCalAccountForCalendar:(id)calendar inAccountStore:(id)store;
- (id)_createLocalSubCalAccountForCalendar:(id)calendar inAccountStore:(id)store;
- (id)_createSubcalAccountForCalendar:(id)calendar inAccountStore:(id)store newAccountNeedsSaving:(BOOL *)saving;
- (void)_saveAccount:(id)account inStore:(id)store updated:(BOOL)updated;
- (void)_updateAccount:(id)account inAccountStore:(id)store withCalendar:(id)calendar oldAccount:(id)oldAccount newAccountDirty:(BOOL)dirty newUsername:(id)username newPassword:(id)password newAllowsInsecureConnections:(BOOL)self0;
- (void)restartDAAfterAccountUpdates;
- (void)restartDAAfterCalendarUpdates;
- (void)shutdownDAForAccountUpdates;
- (void)shutdownDAForCalendarUpdates;
- (void)updateOrCreateAccountWithCalendar:(id)calendar previousAccountID:(id)d newUsername:(id)username newPassword:(id)password newAllowsInsecureConnections:(BOOL)connections;
@end

@implementation CUIKSubscribedCalendarManager

- (void)shutdownDAForCalendarUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_calendarSaveMonitoringToken)
  {
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    self->_calendarSaveMonitoringToken = [mEMORY[0x1E69998A8] requestDaemonStopMonitoringAgents];

    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      calendarSaveMonitoringToken = self->_calendarSaveMonitoringToken;
      v6 = 134217984;
      v7 = calendarSaveMonitoringToken;
      _os_log_impl(&dword_1CAB19000, v4, OS_LOG_TYPE_DEFAULT, "Requesting DA stop monitoring agents for calendar updates with token %lu", &v6, 0xCu);
    }
  }
}

- (void)restartDAAfterCalendarUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_calendarSaveMonitoringToken)
  {
    v3 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      calendarSaveMonitoringToken = self->_calendarSaveMonitoringToken;
      v6 = 134217984;
      v7 = calendarSaveMonitoringToken;
      _os_log_impl(&dword_1CAB19000, v3, OS_LOG_TYPE_DEFAULT, "Requesting DA start monitoring agents for calendar updates with token %lu", &v6, 0xCu);
    }

    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    [mEMORY[0x1E69998A8] requestDaemonStartMonitoringAgentsWithToken:self->_calendarSaveMonitoringToken];

    self->_calendarSaveMonitoringToken = 0;
  }
}

- (void)shutdownDAForAccountUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_accountsSaveMonitoringToken)
  {
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    self->_accountsSaveMonitoringToken = [mEMORY[0x1E69998A8] requestDaemonStopMonitoringAgents];

    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      accountsSaveMonitoringToken = self->_accountsSaveMonitoringToken;
      v6 = 134217984;
      v7 = accountsSaveMonitoringToken;
      _os_log_impl(&dword_1CAB19000, v4, OS_LOG_TYPE_DEFAULT, "Requesting DA stop monitoring agents for account updates with token %lu", &v6, 0xCu);
    }
  }
}

- (void)restartDAAfterAccountUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_accountsSaveMonitoringToken)
  {
    v3 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      accountsSaveMonitoringToken = self->_accountsSaveMonitoringToken;
      v6 = 134217984;
      v7 = accountsSaveMonitoringToken;
      _os_log_impl(&dword_1CAB19000, v3, OS_LOG_TYPE_DEFAULT, "Requesting DA start monitoring agents for account updates with token %lu", &v6, 0xCu);
    }

    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    [mEMORY[0x1E69998A8] requestDaemonStartMonitoringAgentsWithToken:self->_accountsSaveMonitoringToken];

    self->_accountsSaveMonitoringToken = 0;
  }
}

- (void)updateOrCreateAccountWithCalendar:(id)calendar previousAccountID:(id)d newUsername:(id)username newPassword:(id)password newAllowsInsecureConnections:(BOOL)connections
{
  calendarCopy = calendar;
  dCopy = d;
  usernameCopy = username;
  passwordCopy = password;
  if (([calendarCopy isSubscribedHolidayCalendar] & 1) == 0)
  {
    v16 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v17 = v16;
    if (dCopy)
    {
      v18 = [v16 accountWithIdentifier:dCopy];
      if (v18)
      {
        goto LABEL_8;
      }

      v19 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CUIKSubscribedCalendarManager updateOrCreateAccountWithCalendar:previousAccountID:newUsername:newPassword:newAllowsInsecureConnections:];
      }
    }

    v18 = 0;
LABEL_8:
    subcalAccountID = [calendarCopy subcalAccountID];
    if (subcalAccountID)
    {
      v21 = [v17 accountWithIdentifier:subcalAccountID];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        HIBYTE(v25) = 0;
LABEL_15:
        LOBYTE(v25) = connections;
        [(CUIKSubscribedCalendarManager *)self _updateAccount:v22 inAccountStore:v17 withCalendar:calendarCopy oldAccount:v18 newAccountDirty:v23 & 1 newUsername:usernameCopy newPassword:passwordCopy newAllowsInsecureConnections:v25];

        goto LABEL_16;
      }

      v24 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [CUIKSubscribedCalendarManager updateOrCreateAccountWithCalendar:previousAccountID:newUsername:newPassword:newAllowsInsecureConnections:];
      }
    }

    HIBYTE(v25) = 0;
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v22 = [(CUIKSubscribedCalendarManager *)self _createSubcalAccountForCalendar:calendarCopy inAccountStore:v17 newAccountNeedsSaving:&v25 + 7];
    v23 = HIBYTE(v25);
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateAccount:(id)account inAccountStore:(id)store withCalendar:(id)calendar oldAccount:(id)oldAccount newAccountDirty:(BOOL)dirty newUsername:(id)username newPassword:(id)password newAllowsInsecureConnections:(BOOL)self0
{
  dirtyCopy = dirty;
  accountCopy = account;
  storeCopy = store;
  calendarCopy = calendar;
  oldAccountCopy = oldAccount;
  usernameCopy = username;
  passwordCopy = password;
  v21 = usernameCopy;
  v22 = passwordCopy;
  v23 = v22;
  v62 = v22;
  v63 = v21;
  if (oldAccountCopy)
  {
    username = [oldAccountCopy username];

    credential = [oldAccountCopy credential];
    password = [credential password];

    subCalInsecureConnectionApproved = [MEMORY[0x1E69998C0] SubCalInsecureConnectionApproved];
    v27 = [oldAccountCopy objectForKeyedSubscript:subCalInsecureConnectionApproved];
    connectionsCopy = [v27 BOOLValue];

    if (!username)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  connectionsCopy = connections;
  password = v22;
  username = v21;
  if (v21)
  {
LABEL_3:
    [accountCopy setUsername:username];
    dirtyCopy = 1;
  }

LABEL_4:
  if (password)
  {
    v29 = [MEMORY[0x1E6959A30] credentialWithPassword:?];
    [accountCopy setCredential:v29];

    dirtyCopy = 1;
  }

  v61 = username;
  if (connectionsCopy)
  {
    subCalInsecureConnectionApproved2 = [MEMORY[0x1E69998C0] SubCalInsecureConnectionApproved];
    [accountCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:subCalInsecureConnectionApproved2];

    dirtyCopy = 1;
  }

  v31 = [MEMORY[0x1E6999830] daAccountSubclassWithBackingAccountInfo:accountCopy];
  v32 = MEMORY[0x1E695DFF8];
  subcalURL = [calendarCopy subcalURL];
  v34 = [v32 URLWithString:subcalURL];

  if (v34)
  {
    v57 = oldAccountCopy;
    v58 = storeCopy;
    v59 = accountCopy;
    scheme = [v34 scheme];
    v36 = [scheme isEqualToString:@"https"];

    scheme2 = [v34 scheme];
    v38 = [scheme2 isEqualToString:@"ftp"];

    v39 = [MEMORY[0x1E6993070] hostStringFromURL:v34];
    user = [v34 user];
    stringByRemovingPercentEncoding = [user stringByRemovingPercentEncoding];

    password2 = [v34 password];
    stringByRemovingPercentEncoding2 = [password2 stringByRemovingPercentEncoding];

    if (v36 != [v31 useSSL])
    {
      [v31 setUseSSL:v36];
      dirtyCopy = 1;
    }

    if (v38 != [v31 useFTP])
    {
      [v31 setUseFTP:v38];
      dirtyCopy = 1;
    }

    host = [v31 host];
    v45 = [host isEqualToString:v39];

    if ((v45 & 1) == 0)
    {
      [v31 setHost:v39];
      dirtyCopy = 1;
    }

    oldAccountCopy = v57;
    if ([stringByRemovingPercentEncoding length])
    {
      username2 = [v31 username];
      v47 = [stringByRemovingPercentEncoding isEqualToString:username2];

      if ((v47 & 1) == 0)
      {
        [v31 setUsername:stringByRemovingPercentEncoding];
        dirtyCopy = 1;
      }
    }

    if ([stringByRemovingPercentEncoding2 length])
    {
      password3 = [v31 password];
      v49 = [stringByRemovingPercentEncoding2 isEqualToString:password3];

      if ((v49 & 1) == 0)
      {
        [v31 setPassword:stringByRemovingPercentEncoding2];
        dirtyCopy = 1;
      }
    }

    storeCopy = v58;
    accountCopy = v59;
  }

  calendarExternalId = [v31 calendarExternalId];
  externalID = [calendarCopy externalID];
  v52 = [externalID isEqualToString:calendarExternalId];

  if ((v52 & 1) == 0)
  {
    [calendarCopy setExternalID:calendarExternalId];
  }

  stripAlarms = [calendarCopy stripAlarms];
  if (stripAlarms != [v31 shouldRemoveAlarms])
  {
    [v31 setShouldRemoveAlarms:stripAlarms];
    dirtyCopy = 1;
  }

  stripAttachments = [calendarCopy stripAttachments];
  if (stripAttachments != [v31 shouldRemoveAttachments])
  {
    [v31 setShouldRemoveAttachments:stripAttachments];
    dirtyCopy = 1;
  }

  refreshInterval = [calendarCopy refreshInterval];
  [v31 refreshInterval];
  if (v56 != refreshInterval)
  {
    [v31 setRefreshInterval:refreshInterval];
    dirtyCopy = 1;
  }

  if (oldAccountCopy)
  {
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __156__CUIKSubscribedCalendarManager__updateAccount_inAccountStore_withCalendar_oldAccount_newAccountDirty_newUsername_newPassword_newAllowsInsecureConnections___block_invoke;
    v65[3] = &unk_1E83997E8;
    v66 = oldAccountCopy;
    selfCopy = self;
    v68 = accountCopy;
    v69 = storeCopy;
    v70 = dirtyCopy;
    [v69 removeAccount:v66 withCompletionHandler:v65];
  }

  else
  {
    [(CUIKSubscribedCalendarManager *)self _saveAccount:accountCopy inStore:storeCopy updated:dirtyCopy];
  }
}

void __156__CUIKSubscribedCalendarManager__updateAccount_inAccountStore_withCalendar_oldAccount_newAccountDirty_newUsername_newPassword_newAllowsInsecureConnections___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __156__CUIKSubscribedCalendarManager__updateAccount_inAccountStore_withCalendar_oldAccount_newAccountDirty_newUsername_newPassword_newAllowsInsecureConnections___block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 40) _saveAccount:*(a1 + 48) inStore:*(a1 + 56) updated:*(a1 + 64)];
}

- (void)_saveAccount:(id)account inStore:(id)store updated:(BOOL)updated
{
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  if (updated)
  {
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CUIKSubscribedCalendarManager__saveAccount_inStore_updated___block_invoke;
    v12[3] = &unk_1E8399810;
    v13 = accountCopy;
    selfCopy = self;
    [storeCopy saveAccount:v13 withCompletionHandler:v12];
  }

  else
  {
    v10 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      identifier = [accountCopy identifier];
      *buf = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_1CAB19000, v10, OS_LOG_TYPE_INFO, "No accounts changes required saving subscribed calendar for account %{public}@", buf, 0xCu);
    }

    [(CUIKSubscribedCalendarManager *)self restartDAAfterAccountUpdates];
  }
}

void __62__CUIKSubscribedCalendarManager__saveAccount_inStore_updated___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__CUIKSubscribedCalendarManager__saveAccount_inStore_updated___block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 40) restartDAAfterAccountUpdates];
}

- (id)_createSubcalAccountForCalendar:(id)calendar inAccountStore:(id)store newAccountNeedsSaving:(BOOL *)saving
{
  storeCopy = store;
  calendarCopy = calendar;
  source = [calendarCopy source];
  if ([source sourceType] == 2)
  {
    *saving = 0;
    [(CUIKSubscribedCalendarManager *)self _createCalDAVChildSubCalAccountForCalendar:calendarCopy inAccountStore:storeCopy];
  }

  else
  {
    *saving = 1;
    [(CUIKSubscribedCalendarManager *)self _createLocalSubCalAccountForCalendar:calendarCopy inAccountStore:storeCopy];
  }
  v11 = ;

  return v11;
}

- (id)_createCalDAVChildSubCalAccountForCalendar:(id)calendar inAccountStore:(id)store
{
  v51[3] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  storeCopy = store;
  source = [calendarCopy source];
  externalID = [source externalID];
  v8 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = externalID;
    _os_log_impl(&dword_1CAB19000, v8, OS_LOG_TYPE_DEFAULT, "Adding subscription calendar account to parent account ID %{public}@", &buf, 0xCu);
  }

  v36 = [storeCopy accountWithIdentifier:externalID];
  v38 = [MEMORY[0x1E6999830] daAccountSubclassWithBackingAccountInfo:v36];
  if ([v38 conformsToProtocol:&unk_1F4AF8560])
  {
    v9 = v38;
    externalIDTag = [calendarCopy externalIDTag];
    if (!externalIDTag)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      externalIDTag = [uUID UUIDString];
      [calendarCopy setExternalIDTag:externalIDTag];
    }

    mainPrincipal = [v9 mainPrincipal];
    calendarHomeURL = [mainPrincipal calendarHomeURL];

    appendSlashIfNeeded = [externalIDTag appendSlashIfNeeded];
    v32 = [calendarHomeURL URLByAppendingPathComponent:appendSlashIfNeeded];

    path = [v32 path];
    appendSlashIfNeeded2 = [path appendSlashIfNeeded];

    v50[0] = *MEMORY[0x1E69931A0];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(calendarCopy, "stripAttachments")}];
    v51[0] = v14;
    v50[1] = *MEMORY[0x1E6993198];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(calendarCopy, "stripAlarms")}];
    v51[1] = v15;
    v50[2] = *MEMORY[0x1E69931B0];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(calendarCopy, "refreshInterval")}];
    v51[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v18 = [v17 mutableCopy];

    subcalURL = [calendarCopy subcalURL];
    [v18 setObject:subcalURL forKeyedSubscript:*MEMORY[0x1E69931C0]];

    v20 = [(CUIKSubscribedCalendarManager *)self _accountDescriptionForCalendar:calendarCopy];
    [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69931C8]];

    subscribedCalendars = [v9 subscribedCalendars];
    v22 = [subscribedCalendars mutableCopy];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v22 setObject:v18 forKeyedSubscript:appendSlashIfNeeded2];
    [v9 setSubscribedCalendars:v22];
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v23 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy_;
    v48 = __Block_byref_object_dispose_;
    v49 = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __91__CUIKSubscribedCalendarManager__createCalDAVChildSubCalAccountForCalendar_inAccountStore___block_invoke;
    v39[3] = &unk_1E8399838;
    v24 = v23;
    v40 = v24;
    v41 = storeCopy;
    v42 = v36;
    v25 = appendSlashIfNeeded2;
    v43 = v25;
    p_buf = &buf;
    [v41 saveAccount:v42 withCompletionHandler:v39];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v26 = *(*(&buf + 1) + 40);
    if (v26)
    {
      identifier = [v26 identifier];
      [calendarCopy setSubcalAccountID:identifier];

      v28 = *(*(&buf + 1) + 40);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v9 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CUIKSubscribedCalendarManager _createCalDAVChildSubCalAccountForCalendar:inAccountStore:];
    }

    v29 = 0;
  }

  return v29;
}

void __91__CUIKSubscribedCalendarManager__createCalDAVChildSubCalAccountForCalendar_inAccountStore___block_invoke(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v26 = 0;
    v8 = [v6 childAccountsForAccount:v7 error:&v26];
    v9 = v26;
    v10 = v9;
    if (v8)
    {
      v21 = v9;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        v15 = *MEMORY[0x1E6993190];
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:v15];
            if ([v18 isEqualToString:*(a1 + 56)])
            {
              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v17);

              goto LABEL_16;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v10 = v21;
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        goto LABEL_22;
      }

      v20 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __91__CUIKSubscribedCalendarManager__createCalDAVChildSubCalAccountForCalendar_inAccountStore___block_invoke_cold_2(v20);
      }
    }

    else
    {
      v20 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __91__CUIKSubscribedCalendarManager__createCalDAVChildSubCalAccountForCalendar_inAccountStore___block_invoke_cold_3();
      }
    }

LABEL_22:
    dispatch_semaphore_signal(*(a1 + 32));

    goto LABEL_23;
  }

  v19 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __91__CUIKSubscribedCalendarManager__createCalDAVChildSubCalAccountForCalendar_inAccountStore___block_invoke_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_23:
}

- (id)_createLocalSubCalAccountForCalendar:(id)calendar inAccountStore:(id)store
{
  v16 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v7 = [store accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69598F8]];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v7];
    v9 = [(CUIKSubscribedCalendarManager *)self _accountDescriptionForCalendar:calendarCopy];
    [v8 setAccountDescription:v9];

    [v8 setSupportsAuthentication:1];
    [v8 setAuthenticated:1];
    [v8 setEnabled:1 forDataclass:*MEMORY[0x1E6959AE0]];
    identifier = [v8 identifier];
    [calendarCopy setSubcalAccountID:identifier];

    v11 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v8 identifier];
      v14 = 138543362;
      v15 = identifier2;
      _os_log_impl(&dword_1CAB19000, v11, OS_LOG_TYPE_DEFAULT, "Creating local subscription calendar account ID %{public}@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CUIKSubscribedCalendarManager _createLocalSubCalAccountForCalendar:v11 inAccountStore:?];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_accountDescriptionForCalendar:(id)calendar
{
  calendarCopy = calendar;
  title = [calendarCopy title];
  if (![title length])
  {
    v5 = MEMORY[0x1E695DFF8];
    subcalURL = [calendarCopy subcalURL];
    v7 = [v5 URLWithString:subcalURL];

    v8 = [MEMORY[0x1E6993070] hostStringFromURL:v7];

    title = v8;
  }

  return title;
}

void __156__CUIKSubscribedCalendarManager__updateAccount_inAccountStore_withCalendar_oldAccount_newAccountDirty_newUsername_newPassword_newAllowsInsecureConnections___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1CAB19000, v2, v3, "Failed to remove old subcal account %{public}@; %@", v4, v5, v6, v7, v8);
}

void __62__CUIKSubscribedCalendarManager__saveAccount_inStore_updated___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_1CAB19000, v2, v3, "Failed to save subcal account %{public}@; %@", v4, v5, v6, v7, v8);
}

@end