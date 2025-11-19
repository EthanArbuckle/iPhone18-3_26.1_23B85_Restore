@interface CUIKSubscribedCalendarManager
- (id)_accountDescriptionForCalendar:(id)a3;
- (id)_createCalDAVChildSubCalAccountForCalendar:(id)a3 inAccountStore:(id)a4;
- (id)_createLocalSubCalAccountForCalendar:(id)a3 inAccountStore:(id)a4;
- (id)_createSubcalAccountForCalendar:(id)a3 inAccountStore:(id)a4 newAccountNeedsSaving:(BOOL *)a5;
- (void)_saveAccount:(id)a3 inStore:(id)a4 updated:(BOOL)a5;
- (void)_updateAccount:(id)a3 inAccountStore:(id)a4 withCalendar:(id)a5 oldAccount:(id)a6 newAccountDirty:(BOOL)a7 newUsername:(id)a8 newPassword:(id)a9 newAllowsInsecureConnections:(BOOL)a10;
- (void)restartDAAfterAccountUpdates;
- (void)restartDAAfterCalendarUpdates;
- (void)shutdownDAForAccountUpdates;
- (void)shutdownDAForCalendarUpdates;
- (void)updateOrCreateAccountWithCalendar:(id)a3 previousAccountID:(id)a4 newUsername:(id)a5 newPassword:(id)a6 newAllowsInsecureConnections:(BOOL)a7;
@end

@implementation CUIKSubscribedCalendarManager

- (void)shutdownDAForCalendarUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_calendarSaveMonitoringToken)
  {
    v3 = [MEMORY[0x1E69998A8] sharedConnection];
    self->_calendarSaveMonitoringToken = [v3 requestDaemonStopMonitoringAgents];

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

    v5 = [MEMORY[0x1E69998A8] sharedConnection];
    [v5 requestDaemonStartMonitoringAgentsWithToken:self->_calendarSaveMonitoringToken];

    self->_calendarSaveMonitoringToken = 0;
  }
}

- (void)shutdownDAForAccountUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_accountsSaveMonitoringToken)
  {
    v3 = [MEMORY[0x1E69998A8] sharedConnection];
    self->_accountsSaveMonitoringToken = [v3 requestDaemonStopMonitoringAgents];

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

    v5 = [MEMORY[0x1E69998A8] sharedConnection];
    [v5 requestDaemonStartMonitoringAgentsWithToken:self->_accountsSaveMonitoringToken];

    self->_accountsSaveMonitoringToken = 0;
  }
}

- (void)updateOrCreateAccountWithCalendar:(id)a3 previousAccountID:(id)a4 newUsername:(id)a5 newPassword:(id)a6 newAllowsInsecureConnections:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (([v12 isSubscribedHolidayCalendar] & 1) == 0)
  {
    v16 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v17 = v16;
    if (v13)
    {
      v18 = [v16 accountWithIdentifier:v13];
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
    v20 = [v12 subcalAccountID];
    if (v20)
    {
      v21 = [v17 accountWithIdentifier:v20];
      if (v21)
      {
        v22 = v21;
        v23 = 0;
        HIBYTE(v25) = 0;
LABEL_15:
        LOBYTE(v25) = a7;
        [(CUIKSubscribedCalendarManager *)self _updateAccount:v22 inAccountStore:v17 withCalendar:v12 oldAccount:v18 newAccountDirty:v23 & 1 newUsername:v14 newPassword:v15 newAllowsInsecureConnections:v25];

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
    v22 = [(CUIKSubscribedCalendarManager *)self _createSubcalAccountForCalendar:v12 inAccountStore:v17 newAccountNeedsSaving:&v25 + 7];
    v23 = HIBYTE(v25);
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateAccount:(id)a3 inAccountStore:(id)a4 withCalendar:(id)a5 oldAccount:(id)a6 newAccountDirty:(BOOL)a7 newUsername:(id)a8 newPassword:(id)a9 newAllowsInsecureConnections:(BOOL)a10
{
  v11 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = v19;
  v22 = v20;
  v23 = v22;
  v62 = v22;
  v63 = v21;
  if (v18)
  {
    v24 = [v18 username];

    v25 = [v18 credential];
    v64 = [v25 password];

    v26 = [MEMORY[0x1E69998C0] SubCalInsecureConnectionApproved];
    v27 = [v18 objectForKeyedSubscript:v26];
    v28 = [v27 BOOLValue];

    if (!v24)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = a10;
  v64 = v22;
  v24 = v21;
  if (v21)
  {
LABEL_3:
    [v15 setUsername:v24];
    v11 = 1;
  }

LABEL_4:
  if (v64)
  {
    v29 = [MEMORY[0x1E6959A30] credentialWithPassword:?];
    [v15 setCredential:v29];

    v11 = 1;
  }

  v61 = v24;
  if (v28)
  {
    v30 = [MEMORY[0x1E69998C0] SubCalInsecureConnectionApproved];
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v30];

    v11 = 1;
  }

  v31 = [MEMORY[0x1E6999830] daAccountSubclassWithBackingAccountInfo:v15];
  v32 = MEMORY[0x1E695DFF8];
  v33 = [v17 subcalURL];
  v34 = [v32 URLWithString:v33];

  if (v34)
  {
    v57 = v18;
    v58 = v16;
    v59 = v15;
    v35 = [v34 scheme];
    v36 = [v35 isEqualToString:@"https"];

    v37 = [v34 scheme];
    v38 = [v37 isEqualToString:@"ftp"];

    v39 = [MEMORY[0x1E6993070] hostStringFromURL:v34];
    v40 = [v34 user];
    v41 = [v40 stringByRemovingPercentEncoding];

    v42 = [v34 password];
    v43 = [v42 stringByRemovingPercentEncoding];

    if (v36 != [v31 useSSL])
    {
      [v31 setUseSSL:v36];
      v11 = 1;
    }

    if (v38 != [v31 useFTP])
    {
      [v31 setUseFTP:v38];
      v11 = 1;
    }

    v44 = [v31 host];
    v45 = [v44 isEqualToString:v39];

    if ((v45 & 1) == 0)
    {
      [v31 setHost:v39];
      v11 = 1;
    }

    v18 = v57;
    if ([v41 length])
    {
      v46 = [v31 username];
      v47 = [v41 isEqualToString:v46];

      if ((v47 & 1) == 0)
      {
        [v31 setUsername:v41];
        v11 = 1;
      }
    }

    if ([v43 length])
    {
      v48 = [v31 password];
      v49 = [v43 isEqualToString:v48];

      if ((v49 & 1) == 0)
      {
        [v31 setPassword:v43];
        v11 = 1;
      }
    }

    v16 = v58;
    v15 = v59;
  }

  v50 = [v31 calendarExternalId];
  v51 = [v17 externalID];
  v52 = [v51 isEqualToString:v50];

  if ((v52 & 1) == 0)
  {
    [v17 setExternalID:v50];
  }

  v53 = [v17 stripAlarms];
  if (v53 != [v31 shouldRemoveAlarms])
  {
    [v31 setShouldRemoveAlarms:v53];
    v11 = 1;
  }

  v54 = [v17 stripAttachments];
  if (v54 != [v31 shouldRemoveAttachments])
  {
    [v31 setShouldRemoveAttachments:v54];
    v11 = 1;
  }

  v55 = [v17 refreshInterval];
  [v31 refreshInterval];
  if (v56 != v55)
  {
    [v31 setRefreshInterval:v55];
    v11 = 1;
  }

  if (v18)
  {
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __156__CUIKSubscribedCalendarManager__updateAccount_inAccountStore_withCalendar_oldAccount_newAccountDirty_newUsername_newPassword_newAllowsInsecureConnections___block_invoke;
    v65[3] = &unk_1E83997E8;
    v66 = v18;
    v67 = self;
    v68 = v15;
    v69 = v16;
    v70 = v11;
    [v69 removeAccount:v66 withCompletionHandler:v65];
  }

  else
  {
    [(CUIKSubscribedCalendarManager *)self _saveAccount:v15 inStore:v16 updated:v11];
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

- (void)_saveAccount:(id)a3 inStore:(id)a4 updated:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    [(CUIKSubscribedCalendarManager *)self shutdownDAForAccountUpdates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CUIKSubscribedCalendarManager__saveAccount_inStore_updated___block_invoke;
    v12[3] = &unk_1E8399810;
    v13 = v8;
    v14 = self;
    [v9 saveAccount:v13 withCompletionHandler:v12];
  }

  else
  {
    v10 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 identifier];
      *buf = 138543362;
      v16 = v11;
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

- (id)_createSubcalAccountForCalendar:(id)a3 inAccountStore:(id)a4 newAccountNeedsSaving:(BOOL *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 source];
  if ([v10 sourceType] == 2)
  {
    *a5 = 0;
    [(CUIKSubscribedCalendarManager *)self _createCalDAVChildSubCalAccountForCalendar:v9 inAccountStore:v8];
  }

  else
  {
    *a5 = 1;
    [(CUIKSubscribedCalendarManager *)self _createLocalSubCalAccountForCalendar:v9 inAccountStore:v8];
  }
  v11 = ;

  return v11;
}

- (id)_createCalDAVChildSubCalAccountForCalendar:(id)a3 inAccountStore:(id)a4
{
  v51[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v35 = [v6 source];
  v37 = [v35 externalID];
  v8 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v37;
    _os_log_impl(&dword_1CAB19000, v8, OS_LOG_TYPE_DEFAULT, "Adding subscription calendar account to parent account ID %{public}@", &buf, 0xCu);
  }

  v36 = [v7 accountWithIdentifier:v37];
  v38 = [MEMORY[0x1E6999830] daAccountSubclassWithBackingAccountInfo:v36];
  if ([v38 conformsToProtocol:&unk_1F4AF8560])
  {
    v9 = v38;
    v34 = [v6 externalIDTag];
    if (!v34)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v34 = [v10 UUIDString];
      [v6 setExternalIDTag:v34];
    }

    v11 = [v9 mainPrincipal];
    v33 = [v11 calendarHomeURL];

    v12 = [v34 appendSlashIfNeeded];
    v32 = [v33 URLByAppendingPathComponent:v12];

    v13 = [v32 path];
    v31 = [v13 appendSlashIfNeeded];

    v50[0] = *MEMORY[0x1E69931A0];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "stripAttachments")}];
    v51[0] = v14;
    v50[1] = *MEMORY[0x1E6993198];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "stripAlarms")}];
    v51[1] = v15;
    v50[2] = *MEMORY[0x1E69931B0];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "refreshInterval")}];
    v51[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v18 = [v17 mutableCopy];

    v19 = [v6 subcalURL];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69931C0]];

    v20 = [(CUIKSubscribedCalendarManager *)self _accountDescriptionForCalendar:v6];
    [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69931C8]];

    v21 = [v9 subscribedCalendars];
    v22 = [v21 mutableCopy];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v22 setObject:v18 forKeyedSubscript:v31];
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
    v41 = v7;
    v42 = v36;
    v25 = v31;
    v43 = v25;
    p_buf = &buf;
    [v41 saveAccount:v42 withCompletionHandler:v39];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    v26 = *(*(&buf + 1) + 40);
    if (v26)
    {
      v27 = [v26 identifier];
      [v6 setSubcalAccountID:v27];

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

- (id)_createLocalSubCalAccountForCalendar:(id)a3 inAccountStore:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69598F8]];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v7];
    v9 = [(CUIKSubscribedCalendarManager *)self _accountDescriptionForCalendar:v6];
    [v8 setAccountDescription:v9];

    [v8 setSupportsAuthentication:1];
    [v8 setAuthenticated:1];
    [v8 setEnabled:1 forDataclass:*MEMORY[0x1E6959AE0]];
    v10 = [v8 identifier];
    [v6 setSubcalAccountID:v10];

    v11 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 identifier];
      v14 = 138543362;
      v15 = v12;
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

- (id)_accountDescriptionForCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if (![v4 length])
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v3 subcalURL];
    v7 = [v5 URLWithString:v6];

    v8 = [MEMORY[0x1E6993070] hostStringFromURL:v7];

    v4 = v8;
  }

  return v4;
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