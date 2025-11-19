@interface IMAccountController
+ (id)bestAccountFromAccounts:(id)a3;
+ (id)sharedInstance;
- (BOOL)_deactivateAccount:(id)a3;
- (BOOL)accountConnected:(id)a3;
- (BOOL)accountConnecting:(id)a3;
- (BOOL)accountLogoutable:(id)a3;
- (BOOL)activateAccounts:(id)a3 force:(BOOL)a4 locally:(BOOL)a5;
- (BOOL)activateAndHandleReconnectAccount:(id)a3;
- (BOOL)activateAndHandleReconnectAccounts:(id)a3;
- (BOOL)addAccount:(id)a3 locally:(BOOL)a4;
- (BOOL)canActivateAccount:(id)a3;
- (BOOL)canActivateAccounts:(id)a3;
- (BOOL)canDeleteAccount:(id)a3;
- (BOOL)deactivateAccount:(id)a3;
- (BOOL)deactivateAccounts:(id)a3;
- (BOOL)deactivateAccounts:(id)a3 withDisable:(BOOL)a4;
- (BOOL)deleteAccount:(id)a3;
- (BOOL)deleteAccount:(id)a3 locally:(BOOL)a4;
- (BOOL)hasRelayApprovedAccount;
- (BOOL)metionedHandleMatchesMeCard:(id)a3;
- (BOOL)receiverIsMyMention:(id)a3;
- (IMAccount)activeIMessageAccount;
- (IMAccount)activeSMSAccount;
- (IMAccountController)init;
- (NSArray)activeAccounts;
- (NSArray)connectedAccounts;
- (NSArray)operationalAccounts;
- (id)_bestAccountForAddresses:(id)a3;
- (id)_bestOperationalAccountForSendingForService:(id)a3;
- (id)accountForUniqueID:(id)a3;
- (id)accountsForService:(id)a3;
- (id)accountsWithCapability:(unint64_t)a3;
- (id)accountsWithServiceCapability:(id)a3;
- (id)activeAccountsForService:(id)a3;
- (id)activeAccountsWithServiceCapability:(id)a3;
- (id)aimAccount;
- (id)bestAccountForStatus;
- (id)bestAccountWithCapability:(unint64_t)a3;
- (id)connectedAccountsForService:(id)a3;
- (id)connectedAccountsWithCapability:(unint64_t)a3;
- (id)connectedAccountsWithServiceCapability:(id)a3;
- (id)iMessageAccountForLastAddressedHandle:(id)a3 simID:(id)a4;
- (id)jabberAccount;
- (id)mostLoggedInAccount;
- (id)operationalAccountsForService:(id)a3;
- (id)operationalAccountsWithCapability:(unint64_t)a3;
- (id)senderIdentifiers;
- (int64_t)activeAccountsAreEligibleForAppleSMSFilter;
- (int64_t)activeAccountsAreEligibleForAppleSMSFilterSubClassification;
- (int64_t)activeAccountsAreEligibleForDefaultAppleSMSFilter;
- (int64_t)activeAccountsAreEligibleForFilterUnknownSendersByDefault;
- (int64_t)activeAccountsAreEligibleForHawking;
- (int64_t)activeAccountsAreEligibleForInternationalFiltering;
- (int64_t)activeAccountsAreEligibleForiMessageJunk;
- (void)_disableCache;
- (void)_requestNetworkDataAvailability;
- (void)accountLoginComplete:(id)a3;
- (void)autoLogin;
- (void)dealloc;
- (void)deferredSetup;
@end

@implementation IMAccountController

+ (id)sharedInstance
{
  if (qword_1ED767888 != -1)
  {
    sub_1A8241884();
  }

  v3 = qword_1ED767848;

  return v3;
}

- (IMAccountController)init
{
  v19.receiver = self;
  v19.super_class = IMAccountController;
  v2 = [(IMAccountController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    objc_sync_enter(v4);
    accounts = v4->_accounts;
    v4->_accounts = MEMORY[0x1E695E0F0];

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    accountMap = v4->_accountMap;
    v4->_accountMap = Mutable;

    objc_sync_exit(v4);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, v4, sel__activeAccountChanged_, @"NotificationActiveAccountChanged", 0);

    v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, v4, sel__accountRegistrationStatusChanged_, @"__kIMAccountRegistrationStatusChangedNotification", 0);

    v4->_networkDataAvailable = 1;
    objc_msgSend_performSelector_withObject_afterDelay_(v4, v16, sel_deferredSetup, 0, 0.0);
    v17 = v4;
  }

  return v3;
}

- (NSArray)operationalAccounts
{
  v26 = *MEMORY[0x1E69E9840];
  p_operationalAccountsCache = &self->_operationalAccountsCache;
  operationalAccountsCache = self->_operationalAccountsCache;
  if (operationalAccountsCache)
  {
    Mutable = operationalAccountsCache;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = objc_msgSend_activeAccounts(self, v6, v7, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (objc_msgSend_isOperational(v16, v11, v12))
          {
            v17 = Mutable == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 != 0)
          {
            CFArrayAppendValue(Mutable, v16);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v21, v25, 16);
      }

      while (v13);
    }

    objc_storeStrong(p_operationalAccountsCache, Mutable);
  }

  v19 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (NSArray)activeAccounts
{
  v21 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_accounts;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_accountActive_(self, v7, v11, v16))
        {
          v12 = Mutable == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && v11 != 0)
        {
          CFArrayAppendValue(Mutable, v11);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (void)deferredSetup
{
  if (objc_msgSend__shouldPerformDeferredSetup(self, a2, v2))
  {

    MEMORY[0x1EEE66B58](self, sel__requestNetworkDataAvailability, v4);
  }
}

- (id)bestAccountForStatus
{
  v3 = objc_msgSend_activeAccounts(self, a2, v2);
  v5 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v4, v3);

  return v5;
}

- (int64_t)activeAccountsAreEligibleForiMessageJunk
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_activeAccounts(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = v3;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v57, v62, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v58;
      v13 = MEMORY[0x1E69A7AD0];
      v51 = v3;
      while (2)
      {
        v14 = 0;
        v52 = v11;
        do
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v57 + 1) + 8 * v14);
          v16 = objc_msgSend_serviceName(v15, v9, v10, v51);
          isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *v13);

          if ((isEqualToString & 1) == 0)
          {
            v19 = MEMORY[0x1E69A82A0];
            v20 = objc_msgSend_countryCode(v15, v9, v10);
            if (objc_msgSend_accountCountryIsCandidateForiMessageJunk_(v19, v21, v20))
            {
              goto LABEL_25;
            }

            v24 = v6;
            v25 = MEMORY[0x1E69A82A0];
            v26 = objc_msgSend_loginIMHandle(v15, v22, v23);
            v29 = objc_msgSend_countryCode(v26, v27, v28);
            LOBYTE(v25) = objc_msgSend_accountCountryIsCandidateForiMessageJunk_(v25, v30, v29);

            if (v25)
            {
              v48 = 1;
              v6 = v24;
              goto LABEL_27;
            }

            v33 = objc_msgSend_aliases(v15, v31, v32);
            v36 = objc_msgSend_count(v33, v34, v35);

            v6 = v24;
            if (v36)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v20 = objc_msgSend_aliases(v15, v37, v38);
              v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v39, &v53, v61, 16);
              if (v40)
              {
                v42 = v40;
                v43 = *v54;
LABEL_13:
                v44 = 0;
                while (1)
                {
                  if (*v54 != v43)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if (objc_msgSend_receiverIsCandidateForiMessageJunk_(MEMORY[0x1E69A82A0], v41, *(*(&v53 + 1) + 8 * v44)))
                  {
                    break;
                  }

                  if (v42 == ++v44)
                  {
                    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v41, &v53, v61, 16);
                    if (v42)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_19;
                  }
                }

LABEL_25:

LABEL_26:
                v48 = 1;
LABEL_27:
                v3 = v51;
                goto LABEL_29;
              }

LABEL_19:

              v11 = v52;
            }

            else
            {
              v45 = MEMORY[0x1E69A82A0];
              v46 = objc_msgSend_login(v15, v37, v38);
              LOBYTE(v45) = objc_msgSend_receiverIsCandidateForiMessageJunk_(v45, v47, v46);

              v11 = v52;
              if (v45)
              {
                goto LABEL_26;
              }
            }
          }

          ++v14;
        }

        while (v14 != v11);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v57, v62, 16);
        v48 = 0;
        v3 = v51;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v48 = 0;
    }

LABEL_29:
  }

  else
  {
    v48 = -1;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v48;
}

- (IMAccount)activeIMessageAccount
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_iMessageService(IMService, a2, v2);
  v6 = objc_msgSend_accountsForService_(self, v5, v4);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend__isUsableForSending(v14, v9, v10, v17))
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_requestNetworkDataAvailability
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v5 = objc_msgSend_remoteDaemon(v8, v3, v4);
  objc_msgSend_requestNetworkDataAvailability(v5, v6, v7);
}

- (IMAccount)activeSMSAccount
{
  v3 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_smsService(IMServiceImpl, v4, v5);
  v8 = objc_msgSend_activeAccountsForService_(v3, v7, v6);
  v11 = objc_msgSend_firstObject(v8, v9, v10);

  if (v11 && ((objc_msgSend_allowsSMSRelay(v11, v12, v13) & 1) != 0 || objc_msgSend_allowsMMSRelay(v11, v14, v15)))
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)autoLogin
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_accounts;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_autoLogin(v10, v5, v6, v12) && (objc_msgSend_isConnected(v10, v5, v6) & 1) == 0)
        {
          objc_msgSend_loginAccount(v10, v5, v6);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16);
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6 = self;
  objc_sync_enter(v6);
  accounts = v6->_accounts;
  v6->_accounts = 0;

  accountMap = v6->_accountMap;
  v6->_accountMap = 0;

  objc_sync_exit(v6);
  v9.receiver = v6;
  v9.super_class = IMAccountController;
  [(IMAccountController *)&v9 dealloc];
}

- (void)accountLoginComplete:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend___mainThreadPostNotificationName_object_(v6, v7, @"__kIMAccountControllerUpdatedNotification", v3);

  v8 = *MEMORY[0x1E69E9840];
}

- (id)accountForUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v7 = objc_msgSend_objectForKey_(v5->_accountMap, v6, v4);
    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)connectedAccounts
{
  v22 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_accounts;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_isConnected(v12, v7, v8, v17))
        {
          v13 = Mutable == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && v12 != 0)
        {
          CFArrayAppendValue(Mutable, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v17, v21, 16);
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (id)accountsWithServiceCapability:(id)a3
{
  v4 = a3;
  accounts = self->_accounts;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82AC1A0;
  v10[3] = &unk_1E7810DE0;
  v11 = v4;
  v6 = v4;
  v8 = objc_msgSend___imArrayByFilteringWithBlock_(accounts, v7, v10);

  return v8;
}

- (id)accountsForService:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    serviceToAccountsMap = self->_serviceToAccountsMap;
    v9 = objc_msgSend_internalName(v4, v5, v6);
    v11 = objc_msgSend_objectForKey_(serviceToAccountsMap, v10, v9);

    if (!v11)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v13 = self;
      objc_sync_enter(v13);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v13;
      v14 = v13->_accounts;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
      if (v18)
      {
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = objc_msgSend_service(v21, v16, v17);
            v23 = v22 == v7;

            if (v23 && Mutable != 0 && v21 != 0)
            {
              CFArrayAppendValue(Mutable, v21);
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v34, v38, 16);
        }

        while (v18);
      }

      objc_sync_exit(obj);
      if (!self->_serviceToAccountsMap)
      {
        v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v25 = self->_serviceToAccountsMap;
        self->_serviceToAccountsMap = v24;
      }

      v11 = Mutable;
      if (v11)
      {
        v28 = self->_serviceToAccountsMap;
        v29 = objc_msgSend_internalName(v7, v26, v27);
        CFDictionarySetValue(v28, v29, v11);
      }
    }

    v30 = v11;
  }

  else
  {
    v30 = objc_msgSend_accounts(self, v5, v6);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)activeAccountsWithServiceCapability:(id)a3
{
  v4 = a3;
  accounts = self->_accounts;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82AC504;
  v10[3] = &unk_1E7810E08;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  v8 = objc_msgSend___imArrayByFilteringWithBlock_(accounts, v7, v10);

  return v8;
}

- (id)activeAccountsForService:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    serviceToActiveAccountsMap = self->_serviceToActiveAccountsMap;
    v9 = objc_msgSend_internalName(v4, v5, v6);
    v11 = objc_msgSend_objectForKey_(serviceToActiveAccountsMap, v10, v9);

    if (!v11)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = objc_msgSend_accountsForService_(self, v13, v7, 0);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
      if (v16)
      {
        v18 = v16;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            if (objc_msgSend_accountActive_(self, v17, v21))
            {
              v22 = Mutable == 0;
            }

            else
            {
              v22 = 1;
            }

            if (!v22 && v21 != 0)
            {
              CFArrayAppendValue(Mutable, v21);
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v37, 16);
        }

        while (v18);
      }

      if (!self->_serviceToActiveAccountsMap)
      {
        v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v25 = self->_serviceToActiveAccountsMap;
        self->_serviceToActiveAccountsMap = v24;
      }

      v11 = Mutable;
      if (v11)
      {
        v28 = self->_serviceToActiveAccountsMap;
        v29 = objc_msgSend_internalName(v7, v26, v27);
        CFDictionarySetValue(v28, v29, v11);
      }
    }

    v30 = v11;
  }

  else
  {
    v30 = objc_msgSend_activeAccounts(self, v5, v6);
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)operationalAccountsForService:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    if (!self->_cachesEnabled || (v8 = self->_serviceToOperationalAccountsMap, objc_msgSend_internalName(v4, v5, v6), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v8, v10, v9), v11 = objc_claimAutoreleasedReturnValue(), v9, !v11))
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = objc_msgSend_activeAccountsForService_(self, v13, v7, 0);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
      if (v16)
      {
        v19 = v16;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            if (objc_msgSend_isOperational(v22, v17, v18))
            {
              v23 = Mutable == 0;
            }

            else
            {
              v23 = 1;
            }

            if (!v23 && v22 != 0)
            {
              CFArrayAppendValue(Mutable, v22);
            }
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
        }

        while (v19);
      }

      if (!self->_serviceToOperationalAccountsMap)
      {
        v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        serviceToOperationalAccountsMap = self->_serviceToOperationalAccountsMap;
        self->_serviceToOperationalAccountsMap = v25;
      }

      v11 = Mutable;
      if (v11)
      {
        v29 = self->_serviceToOperationalAccountsMap;
        v30 = objc_msgSend_internalName(v7, v27, v28);
        CFDictionarySetValue(v29, v30, v11);
      }
    }

    v31 = v11;
  }

  else
  {
    v31 = objc_msgSend_operationalAccounts(self, v5, v6);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)connectedAccountsWithServiceCapability:(id)a3
{
  v3 = objc_msgSend_accountsWithServiceCapability_(self, a2, a3);
  v5 = objc_msgSend___imArrayByFilteringWithBlock_(v3, v4, &unk_1F1B6E140);

  return v5;
}

- (id)connectedAccountsForService:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    if (self->_cachesEnabled && (v8 = self->_serviceToConnectedAccountsMap, objc_msgSend_internalName(v4, v5, v6), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v8, v10, v9), Mutable = objc_claimAutoreleasedReturnValue(), v9, Mutable))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = Mutable;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Caches were enabled, cached connected accounts are %@", buf, 0xCu);
        }
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v14 = objc_msgSend_accountsForService_(self, v13, v7, 0);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v42, v50, 16);
      if (v18)
      {
        v19 = *v43;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v42 + 1) + 8 * i);
            if ((objc_msgSend_isConnected(v21, v16, v17) & (Mutable != 0) & (v21 != 0)) == 1)
            {
              CFArrayAppendValue(Mutable, v21);
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v42, v50, 16);
        }

        while (v18);
      }

      if (!self->_serviceToConnectedAccountsMap)
      {
        v22 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        serviceToConnectedAccountsMap = self->_serviceToConnectedAccountsMap;
        self->_serviceToConnectedAccountsMap = v22;
      }

      if (Mutable)
      {
        v24 = self->_serviceToConnectedAccountsMap;
        v25 = Mutable;
        v28 = objc_msgSend_internalName(v7, v26, v27);
        CFDictionarySetValue(v24, v28, v25);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v32 = objc_msgSend_internalName(v7, v30, v31);
          *buf = 138412546;
          v47 = v32;
          v48 = 2112;
          v49 = Mutable;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "For service %@, connected accounts are %@", buf, 0x16u);
        }
      }
    }

    v33 = Mutable;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v39 = objc_msgSend_connectedAccounts(self, v37, v38);
        *buf = 138412290;
        v47 = v39;
        _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Service is nil, connected accounts are %@", buf, 0xCu);
      }
    }

    v33 = objc_msgSend_connectedAccounts(self, v34, v35);
  }

  v40 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)accountsWithCapability:(unint64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = self;
  objc_sync_enter(v6);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6->_accounts;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        hasCapability = objc_msgSend_hasCapability_(v13, v9, a3, v19);
        if (Mutable)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = hasCapability;
        }

        if (v16 == 1)
        {
          CFArrayAppendValue(Mutable, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v23, 16);
    }

    while (v10);
  }

  objc_sync_exit(v6);
  v17 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (id)operationalAccountsWithCapability:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = self;
  objc_sync_enter(v6);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = objc_msgSend_accountsWithCapability_(v6, v7, a3, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (objc_msgSend_isOperational(v15, v10, v11))
        {
          isActive = objc_msgSend_isActive(v15, v10, v11);
          v17 = !Mutable || v15 == 0;
          v18 = v17 ? 0 : isActive;
          if (v18 == 1)
          {
            CFArrayAppendValue(Mutable, v15);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v21, v25, 16);
    }

    while (v12);
  }

  objc_sync_exit(v6);
  v19 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (id)connectedAccountsWithCapability:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_accountsWithCapability_(self, v6, a3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_isConnected(v15, v10, v11))
        {
          v16 = Mutable == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && v15 != 0)
        {
          CFArrayAppendValue(Mutable, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return Mutable;
}

- (BOOL)canDeleteAccount:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_service(v3, v4, v5);
  if (objc_msgSend_isPersistent(v6, v7, v8) & 1) != 0 || (objc_msgSend_isManaged(v3, v9, v10))
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v14 = objc_msgSend_service(v3, v11, v12);
    v13 = objc_msgSend_shouldDisableDeactivation(v14, v15, v16) ^ 1;
  }

  return v13;
}

- (BOOL)accountLogoutable:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_accountActive_(self, v5, v4);
  isAccountKeyCDPSyncingOrWaitingForUser = objc_msgSend_isAccountKeyCDPSyncingOrWaitingForUser_(self, v7, v4);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if ((v6 | isAccountKeyCDPSyncingOrWaitingForUser))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      if (isAccountKeyCDPSyncingOrWaitingForUser)
      {
        v10 = @"YES";
      }

      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "account is logoutable: %@, account is active: %@, account is CDPSyncing Or WaitingForUser: %@", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return (v6 | isAccountKeyCDPSyncingOrWaitingForUser) & 1;
}

- (BOOL)addAccount:(id)a3 locally:(BOOL)a4
{
  v4 = a4;
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_service(v6, v7, v8);
  isPersistent = objc_msgSend_isPersistent(v9, v10, v11);

  if (isPersistent && (objc_msgSend_service(v6, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_accountsForService_(self, v16, v15), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_count(v17, v18, v19), v17, v15, v20))
  {
    v21 = 0;
  }

  else
  {
    v22 = self;
    objc_sync_enter(v22);
    v24 = objc_msgSend_containsObjectIdenticalTo_(v22->_accounts, v23, v6);
    objc_sync_exit(v22);

    if ((v24 & 1) == 0)
    {
      if (!v4 && IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v80 = 138412290;
          v81 = v6;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Adding account: %@", &v80, 0xCu);
        }
      }

      v26 = v22;
      objc_sync_enter(v26);
      v28 = objc_msgSend_arrayByAddingObject_(v22->_accounts, v27, v6);
      objc_msgSend_setAccounts_(v26, v29, v28);

      v30 = v6;
      v33 = v30;
      if (v30)
      {
        accountMap = v26->_accountMap;
        v35 = objc_msgSend_uniqueID(v30, v31, v32);
        CFDictionarySetValue(accountMap, v35, v33);
      }

      objc_msgSend_removeAllObjects(v26->_serviceToAccountsMap, v36, v37);
      objc_msgSend_removeAllObjects(v26->_serviceToActiveAccountsMap, v38, v39);
      objc_sync_exit(v26);

      if (((objc_msgSend_readOnly(v26, v40, v41) | v4) & 1) == 0)
      {
        v44 = objc_msgSend_sharedController(IMDaemonController, v42, v43);
        v47 = objc_msgSend_remoteDaemon(v44, v45, v46);
        v50 = objc_msgSend_uniqueID(v33, v48, v49);
        v53 = objc_msgSend_dictionary(v33, v51, v52);
        v56 = objc_msgSend_service(v33, v54, v55);
        v59 = objc_msgSend_internalName(v56, v57, v58);
        objc_msgSend_addAccount_defaults_service_(v47, v60, v50, v53, v59);
      }

      v61 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v42, v43);
      objc_msgSend___mainThreadPostNotificationName_object_(v61, v62, @"__k_IMAccountControllerUpdatedNotification", v33);

      v65 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v63, v64);
      objc_msgSend___mainThreadPostNotificationName_object_(v65, v66, @"__kIMAccountControllerUpdatedNotification", v33);

      v69 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v67, v68);
      objc_msgSend___mainThreadPostNotificationName_object_(v69, v70, @"__kIMAccountControllerAccountAddedNotification", v33);

      objc_msgSend__rebuildOperationalAccountsCache_(v26, v71, 1);
      v74 = objc_msgSend_standardControls(IMParentalControls, v72, v73);
      v76 = objc_msgSend_okToConnectAccount_(v74, v75, v33);

      if ((v76 & 1) == 0)
      {
        objc_msgSend_deactivateAccount_withDisable_(v26, v77, v33, 1);
      }
    }

    v21 = 1;
  }

  v78 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)deleteAccount:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Client request to delete account: %@", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend_deleteAccount_locally_(self, v5, v4, 0);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deleteAccount:(id)a3 locally:(BOOL)a4
{
  v4 = a4;
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_service(v6, v7, v8);
  shouldDisableDeactivation = objc_msgSend_shouldDisableDeactivation(v9, v10, v11);

  if (shouldDisableDeactivation)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_26:
      v65 = 0;
      goto LABEL_27;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v69 = 138412290;
      v70 = v6;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Someone tried to delete an account that can't be deactivated, you can't do this (%@)", &v69, 0xCu);
    }

LABEL_5:

    goto LABEL_26;
  }

  if (!v4)
  {
    if (objc_msgSend_supportsRegistration(v6, v13, v14) && objc_msgSend_accountType(v6, v16, v17) == 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_26;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v69) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Someone tried to delete a phone account, you can't do this", &v69, 2u);
      }

      goto LABEL_5;
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v69 = 138412546;
        v70 = v6;
        v71 = 2112;
        v72 = @"NO";
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Deleting account: %@  (Locally: %@)", &v69, 0x16u);
      }
    }
  }

  if (objc_msgSend_isConnected(v6, v13, v14))
  {
    objc_msgSend_logoutAccount(v6, v19, v20);
  }

  if (objc_msgSend_accountActive_(self, v19, v6) && !objc_msgSend_deactivateAccount_(self, v21, v6))
  {
    goto LABEL_26;
  }

  v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
  objc_msgSend___mainThreadPostNotificationName_object_(v23, v24, @"__kIMAccountControllerAccountWillBeRemovedNotification", v6);

  objc_msgSend_accountWillBeRemoved(v6, v25, v26);
  v27 = self;
  objc_sync_enter(v27);
  v30 = objc_msgSend_mutableCopy(v27->_accounts, v28, v29);
  objc_msgSend_removeObject_(v30, v31, v6);
  objc_msgSend_setAccounts_(v27, v32, v30);
  v35 = objc_msgSend_uniqueID(v6, v33, v34);

  if (v35)
  {
    accountMap = v27->_accountMap;
    v39 = objc_msgSend_uniqueID(v6, v36, v37);
    objc_msgSend_removeObjectForKey_(accountMap, v40, v39);
  }

  objc_msgSend_removeAllObjects(v27->_serviceToAccountsMap, v36, v37);
  objc_msgSend_removeAllObjects(v27->_serviceToActiveAccountsMap, v41, v42);

  objc_sync_exit(v27);
  if (((objc_msgSend_readOnly(v27, v43, v44) | v4) & 1) == 0)
  {
    v47 = objc_msgSend_sharedController(IMDaemonController, v45, v46);
    v50 = objc_msgSend_remoteDaemon(v47, v48, v49);
    v53 = objc_msgSend_uniqueID(v6, v51, v52);
    objc_msgSend_removeAccount_(v50, v54, v53);
  }

  v55 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
  objc_msgSend___mainThreadPostNotificationName_object_(v55, v56, @"__k_IMAccountControllerUpdatedNotification", v6);

  v59 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v57, v58);
  objc_msgSend___mainThreadPostNotificationName_object_(v59, v60, @"__kIMAccountControllerUpdatedNotification", 0);

  v63 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v61, v62);
  objc_msgSend___mainThreadPostNotificationName_object_(v63, v64, @"__kIMAccountControllerAccountRemovedNotification", v6);

  v65 = 1;
  objc_msgSend__rebuildOperationalAccountsCache_(v27, v66, 1);
LABEL_27:

  v67 = *MEMORY[0x1E69E9840];
  return v65;
}

- (BOOL)deactivateAccounts:(id)a3 withDisable:(BOOL)a4
{
  v4 = a4;
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695E9C0];
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Mutable = CFArrayCreateMutable(0, 0, v7);
  v66 = v4;
  if (v4 && (objc_msgSend_readOnly(self, v8, v9) & 1) == 0 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v84 = v6;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Deactivating accounts: %@", buf, 0xCu);
    }
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = v6;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v76, v82, 16);
  if (v15)
  {
    v16 = *v77;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v77 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v76 + 1) + 8 * i);
        if (objc_msgSend_accountLogoutable_(self, v14, v18))
        {
          v20 = objc_msgSend_service(v18, v14, v19);
          shouldDisableDeactivation = objc_msgSend_shouldDisableDeactivation(v20, v21, v22);

          if ((shouldDisableDeactivation & 1) == 0)
          {
            if (Mutable && v18)
            {
              CFArrayAppendValue(Mutable, v18);
            }

            v25 = objc_msgSend_uniqueID(v18, v14, v24);
            v26 = v25 == 0;

            if (!v26 && theArray != 0)
            {
              v28 = objc_msgSend_uniqueID(v18, v14, v27);
              v29 = v28 == 0;

              if (!v29)
              {
                v31 = objc_msgSend_uniqueID(v18, v14, v30);
                CFArrayAppendValue(theArray, v31);
              }
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v76, v82, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(Mutable, v32, v33))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v34 = Mutable;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v72, v81, 16);
    if (v38)
    {
      v39 = *v73;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v73 != v39)
          {
            objc_enumerationMutation(v34);
          }

          v41 = *(*(&v72 + 1) + 8 * j);
          if (objc_msgSend_isConnected(v41, v36, v37))
          {
            objc_msgSend_logoutAccount(v41, v36, v37);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v72, v81, 16);
      }

      while (v38);
    }

    if (v66 && (objc_msgSend_readOnly(self, v42, v43) & 1) == 0)
    {
      v44 = objc_msgSend_sharedController(IMDaemonController, v42, v43);
      v47 = objc_msgSend_remoteDaemon(v44, v45, v46);
      objc_msgSend_deactivateAccounts_(v47, v48, theArray);
    }

    objc_msgSend_removeAllObjects(self->_serviceToActiveAccountsMap, v42, v43);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v49 = v34;
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v68, v80, 16);
    if (v53)
    {
      v54 = *v69;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v69 != v54)
          {
            objc_enumerationMutation(v49);
          }

          v56 = *(*(&v68 + 1) + 8 * k);
          v57 = objc_msgSend_service(v56, v51, v52);
          v60 = objc_msgSend_shouldDisableDeactivation(v57, v58, v59);

          if ((v60 & 1) == 0)
          {
            objc_msgSend_setIsActive_(v56, v51, 0);
            objc_msgSend_accountDidDeactivate(v56, v61, v62);
          }
        }

        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v51, &v68, v80, 16);
      }

      while (v53);
    }

    objc_msgSend__rebuildOperationalAccountsCache_(self, v63, 1);
  }

  v64 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_deactivateAccount:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_service(v4, v5, v6);
  shouldDisableDeactivation = objc_msgSend_shouldDisableDeactivation(v7, v8, v9);

  if (shouldDisableDeactivation)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_deactivateAccount_withDisable_(self, v11, v4, 1);
  }

  return v12;
}

- (BOOL)deactivateAccount:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Client request to deactivate account: %@", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend__deactivateAccount_(self, v5, v4);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deactivateAccounts:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Client request to deactivate accounts: %@", &v10, 0xCu);
    }
  }

  v7 = objc_msgSend__deactivateAccounts_(self, v5, v4);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)activateAccounts:(id)a3 force:(BOOL)a4 locally:(BOOL)a5
{
  v5 = a5;
  v118 = *MEMORY[0x1E69E9840];
  v92 = a3;
  canActivateAccounts = objc_msgSend_canActivateAccounts_(self, v7, v92);
  if (canActivateAccounts)
  {
    v90 = v5;
    if (!v5 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v117 = v92;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Activating accounts: %@", buf, 0xCu);
      }
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v9 = v92;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v108, v115, 16);
    if (v12)
    {
      v13 = *v109;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v109 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v108 + 1) + 8 * i);
          if ((objc_msgSend_accountActive_(self, v11, v15) & 1) == 0)
          {
            if (theArray && v15)
            {
              CFArrayAppendValue(theArray, v15);
            }

            v17 = objc_msgSend_uniqueID(v15, v11, v16);
            v18 = v17 == 0;

            if (!v18 && Mutable != 0)
            {
              v20 = objc_msgSend_uniqueID(v15, v11, v19);
              v21 = v20 == 0;

              if (!v21)
              {
                v23 = objc_msgSend_uniqueID(v15, v11, v22);
                CFArrayAppendValue(Mutable, v23);
              }
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v108, v115, 16);
      }

      while (v12);
    }

    if (objc_msgSend_count(theArray, v24, v25))
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = theArray;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v104, v114, 16);
      if (v30)
      {
        v31 = *v105;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v105 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v104 + 1) + 8 * j);
            v34 = objc_msgSend_service(v33, v28, v29);
            v37 = objc_msgSend_allowsMultipleConnections(v34, v35, v36);

            if ((v37 & 1) == 0)
            {
              v38 = objc_msgSend_service(v33, v28, v29);
              if (v38)
              {
                v39 = objc_msgSend_service(v33, v28, v29);
                v41 = objc_msgSend_containsObject_(v26, v40, v39);

                if ((v41 & 1) == 0)
                {
                  v42 = objc_msgSend_service(v33, v28, v29);
                  objc_msgSend_addObject_(v26, v43, v42);
                }
              }
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v104, v114, 16);
        }

        while (v30);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v44 = v26;
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v100, v113, 16);
      if (v47)
      {
        v48 = *v101;
        do
        {
          for (k = 0; k != v47; ++k)
          {
            if (*v101 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v50 = objc_msgSend_activeAccountsForService_(self, v46, *(*(&v100 + 1) + 8 * k));
            v53 = objc_msgSend___imSetFromArray(v50, v51, v52);
            v56 = objc_msgSend_mutableCopy(v53, v54, v55);

            v59 = objc_msgSend___imSetFromArray(v9, v57, v58);
            if (objc_msgSend_count(v59, v60, v61))
            {
              objc_msgSend_minusSet_(v56, v62, v59);
            }

            if (objc_msgSend_count(v56, v62, v63))
            {
              v66 = objc_msgSend_allObjects(v56, v64, v65);
              objc_msgSend_deactivateAccounts_withDisable_(self, v67, v66, 1);
            }
          }

          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v100, v113, 16);
        }

        while (v47);
      }

      if (((objc_msgSend_readOnly(self, v68, v69) | v90) & 1) == 0)
      {
        v72 = objc_msgSend_sharedController(IMDaemonController, v70, v71);
        v75 = objc_msgSend_remoteDaemon(v72, v73, v74);
        objc_msgSend_activateAccounts_(v75, v76, Mutable);
      }

      objc_msgSend_removeAllObjects(self->_serviceToActiveAccountsMap, v70, v71);
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v77 = obj;
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v96, v112, 16);
      if (v80)
      {
        v81 = *v97;
        do
        {
          for (m = 0; m != v80; ++m)
          {
            if (*v97 != v81)
            {
              objc_enumerationMutation(v77);
            }

            v83 = *(*(&v96 + 1) + 8 * m);
            objc_msgSend_setIsActive_(v83, v79, 1);
            objc_msgSend_accountDidBecomeActive(v83, v84, v85);
          }

          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v96, v112, 16);
        }

        while (v80);
      }

      objc_msgSend__rebuildOperationalAccountsCache_(self, v86, 1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v87 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v117 = v92;
      _os_log_impl(&dword_1A823F000, v87, OS_LOG_TYPE_INFO, "Accounts could not be activated: %@", buf, 0xCu);
    }
  }

  v88 = *MEMORY[0x1E69E9840];
  return canActivateAccounts;
}

- (BOOL)activateAndHandleReconnectAccounts:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_activeAccounts(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  v14 = objc_msgSend_activateAccounts_force_locally_(self, v11, v4, 1, 0);
  if (v14)
  {
    if (!v10)
    {
      goto LABEL_4;
    }

    v15 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
    v18 = objc_msgSend_listener(v15, v16, v17);
    v21 = objc_msgSend_myStatus(v18, v19, v20);
    IsOnline = IMPersonStatusIsOnline(v21);

    if (IsOnline)
    {
LABEL_4:
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = v4;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v33, v37, 16);
      if (v25)
      {
        v28 = v25;
        v29 = *v34;
        do
        {
          v30 = 0;
          do
          {
            if (*v34 != v29)
            {
              objc_enumerationMutation(v23);
            }

            objc_msgSend_loginAccount(*(*(&v33 + 1) + 8 * v30++), v26, v27, v33);
          }

          while (v28 != v30);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v33, v37, 16);
        }

        while (v28);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)activateAndHandleReconnectAccount:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = IMSingleObjectArray();
  LOBYTE(self) = objc_msgSend_activateAndHandleReconnectAccounts_(self, v5, v4);

  return self;
}

- (BOOL)accountConnecting:(id)a3
{
  v4 = a3;
  if (objc_msgSend_accountActive_(self, v5, v4) && objc_msgSend_isConnecting(v4, v6, v7))
  {
    v10 = objc_msgSend_isConnected(v4, v8, v9) ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)accountConnected:(id)a3
{
  v4 = a3;
  if (objc_msgSend_accountActive_(self, v5, v4))
  {
    isConnected = objc_msgSend_isConnected(v4, v6, v7);
  }

  else
  {
    isConnected = 0;
  }

  return isConnected;
}

- (BOOL)canActivateAccount:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_standardControls(IMParentalControls, v5, v6);
  v9 = objc_msgSend_okToConnectAccount_(v7, v8, v4);

  if (v9)
  {
    if (objc_msgSend_accountActive_(self, v10, v4))
    {
      goto LABEL_14;
    }

    v13 = objc_msgSend_service(v4, v11, v12);
    v16 = objc_msgSend_allowsMultipleConnections(v13, v14, v15);

    if ((v16 & 1) != 0 || (objc_msgSend_service(v4, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_connectedAccountsForService_(self, v20, v19), v21 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend_count(v21, v22, v23), v21, v19, !v24))
    {
LABEL_14:
      v26 = 1;
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v4;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Not activating account since we already have active accounts of this type for account: %@", &v29, 0xCu);
      }

LABEL_12:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      v30 = v4;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Parental controls disabled account: %@   not allowed to activate", &v29, 0xCu);
    }

    goto LABEL_12;
  }

  v26 = 0;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)canActivateAccounts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v7);
          }

          if (!objc_msgSend_canActivateAccount_(self, v10, *(*(&v17 + 1) + 8 * i), v17))
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)bestAccountFromAccounts:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v46, v50, 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_22;
  }

  v8 = v5;
  v9 = 0;
  v10 = *v47;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v46 + 1) + 8 * i);
      if (!v9)
      {
        v9 = v12;
        continue;
      }

      v13 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
      if (objc_msgSend_accountActive_(v13, v14, v9))
      {
      }

      else
      {
        v19 = objc_msgSend_sharedInstance(IMAccountController, v15, v16);
        v21 = objc_msgSend_accountActive_(v19, v20, v12);

        if (v21)
        {
          goto LABEL_17;
        }
      }

      if ((objc_msgSend_isConnected(v9, v17, v18) & 1) == 0 && objc_msgSend_isConnected(v12, v22, v23))
      {
        goto LABEL_17;
      }

      v24 = objc_msgSend_sharedInstance(IMAccountController, v22, v23);
      v26 = objc_msgSend_accountActive_(v24, v25, v9);
      v29 = objc_msgSend_sharedInstance(IMAccountController, v27, v28);
      if (v26 != objc_msgSend_accountActive_(v29, v30, v12) || (isConnected = objc_msgSend_isConnected(v9, v31, v32), isConnected != objc_msgSend_isConnected(v12, v34, v35)))
      {

        continue;
      }

      v38 = objc_msgSend_myStatus(v9, v36, v37);
      v41 = objc_msgSend_myStatus(v12, v39, v40);
      v42 = IMComparePersonStatus(v38, v41);

      if (v42 == NSOrderedAscending)
      {
LABEL_17:
        v43 = v12;

        v9 = v43;
        continue;
      }
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v46, v50, 16);
  }

  while (v8);
LABEL_22:

  v44 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)iMessageAccountForLastAddressedHandle:(id)a3 simID:(id)a4
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v70 = a4;
  if (objc_msgSend_length(v70, v7, v8))
  {
    v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v9, v10);
    v14 = objc_msgSend_ctSubscriptionInfo(v11, v12, v13);
    v68 = objc_msgSend___im_subscriptionContextForForSimID_(v14, v15, v70);

    if (!objc_msgSend_length(v6, v16, v17))
    {
      v18 = objc_msgSend_phoneNumber(v68, v9, v10);

      v6 = v18;
      v21 = objc_msgSend_length(v18, v19, v20, v68);
      goto LABEL_6;
    }
  }

  else
  {
    v68 = 0;
  }

  v21 = objc_msgSend_length(v6, v9, v10, v68);
LABEL_6:
  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v25 = objc_msgSend_iMessageService(IMServiceImpl, v23, v24);
    v27 = objc_msgSend_operationalAccountsForService_(self, v26, v25);

    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v85, v98, 16);
    if (v31)
    {
      v32 = *v86;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v86 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v85 + 1) + 8 * i);
          if (objc_msgSend__isUsableForSending(v34, v29, v30))
          {
            objc_msgSend_addObject_(v22, v29, v34);
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v85, v98, 16);
      }

      while (v31);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v22;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v81, v97, 16);
    if (v38)
    {
      v72 = 0;
      v39 = *v82;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v82 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v81 + 1) + 8 * j);
          if (objc_msgSend_accountType(v41, v36, v37) == 2)
          {
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v42 = objc_msgSend_aliases(v41, v36, v37);
            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v77, v96, 16);
            if (v45)
            {
              v46 = *v78;
              while (2)
              {
                for (k = 0; k != v45; ++k)
                {
                  if (*v78 != v46)
                  {
                    objc_enumerationMutation(v42);
                  }

                  if (objc_msgSend_isPhoneNumber_equivalentToExistingPhoneNumber_(MEMORY[0x1E69A51E8], v44, v6, *(*(&v77 + 1) + 8 * k)))
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v48 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v90 = v6;
                        v91 = 2112;
                        v92 = v41;
                        _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Alias %@  matched phone based iMessage account: %@, selecting it", buf, 0x16u);
                      }
                    }

                    v49 = v41;

                    v72 = v49;
                    goto LABEL_36;
                  }
                }

                v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v77, v96, 16);
                if (v45)
                {
                  continue;
                }

                break;
              }
            }

LABEL_36:
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v81, v97, 16);
      }

      while (v38);

      if (v72)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }

    HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v52 = obj;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v73, v95, 16);
    if (!v56)
    {
LABEL_60:

LABEL_74:
      v72 = 0;
      goto LABEL_75;
    }

    v57 = *v74;
    if (v69)
    {
      v58 = HasMultipleActiveSubscriptions;
    }

    else
    {
      v58 = 0;
    }

LABEL_51:
    v59 = 0;
    while (1)
    {
      if (*v74 != v57)
      {
        objc_enumerationMutation(v52);
      }

      v60 = *(*(&v73 + 1) + 8 * v59);
      if (v58 && objc_msgSend_accountType(*(*(&v73 + 1) + 8 * v59), v54, v55) == 1)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_69;
        }

        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v90 = v6;
          v91 = 2112;
          v92 = v60;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Alias %@  did not match any accounts, selecting Apple ID account %@", buf, 0x16u);
        }

        goto LABEL_68;
      }

      if (objc_msgSend_accountType(v60, v54, v55) != 2)
      {
        v61 = objc_msgSend_aliases(v60, v54, v55);
        v63 = objc_msgSend_containsObject_(v61, v62, v6);

        if (v63)
        {
          break;
        }
      }

      if (v56 == ++v59)
      {
        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v73, v95, 16);
        if (v56)
        {
          goto LABEL_51;
        }

        goto LABEL_60;
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_69;
    }

    v64 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v90 = v6;
      v91 = 2112;
      v92 = v60;
      _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Alias %@  matched account: %@, selecting it", buf, 0x16u);
    }

LABEL_68:

LABEL_69:
    v72 = v60;

    if (!v72)
    {
      goto LABEL_74;
    }

LABEL_70:
    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v90 = v72;
        v91 = 2112;
        v92 = v6;
        v93 = 2112;
        v94 = v70;
        _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "Returning iMessage account %@ for lastAddressedHandle %@ and context %@", buf, 0x20u);
      }
    }

LABEL_75:

    goto LABEL_76;
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v90 = v70;
      v91 = 2112;
      v92 = v69;
      _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Returning nil account because senderLastAddressedHandle is nil for simID %@ and context %@", buf, 0x16u);
    }
  }

  v72 = 0;
LABEL_76:

  v66 = *MEMORY[0x1E69E9840];

  return v72;
}

- (id)bestAccountWithCapability:(unint64_t)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_operationalAccountsWithCapability_(self, a2, a3);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v8, v5);
LABEL_8:

    goto LABEL_9;
  }

  v10 = objc_msgSend_connectedAccountsWithCapability_(self, v8, a3);
  if (objc_msgSend_count(v10, v11, v12))
  {
    v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v13, v10);
LABEL_7:

    goto LABEL_8;
  }

  v14 = objc_msgSend_accountsWithCapability_(self, v13, a3);
  if (objc_msgSend_count(v14, v15, v16))
  {
    v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v17, v14);

    goto LABEL_7;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = objc_msgSend_servicesWithCapability_(IMServiceImpl, v20, a3, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v21, &v41, v45, 16);
  if (!v22)
  {
    goto LABEL_22;
  }

  v24 = v22;
  v25 = *v42;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v42 != v25)
      {
        objc_enumerationMutation(v5);
      }

      v27 = *(*(&v41 + 1) + 8 * i);
      v28 = objc_msgSend_operationalAccountsForService_(self, v23, v27);
      if (objc_msgSend_count(v28, v29, v30))
      {
        v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v31, v28);
LABEL_27:

        goto LABEL_8;
      }

      v32 = objc_msgSend_connectedAccountsForService_(self, v31, v27);
      if (objc_msgSend_count(v32, v33, v34))
      {
        v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v35, v32);
LABEL_26:

        goto LABEL_27;
      }

      v36 = objc_msgSend_accountsForService_(self, v35, v27);
      if (objc_msgSend_count(v36, v37, v38))
      {
        v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v39, v36);

        goto LABEL_26;
      }
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v23, &v41, v45, 16);
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v9 = objc_msgSend_bestActiveAccountForService_(self, v40, 0);
LABEL_9:
  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)mostLoggedInAccount
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = objc_msgSend_accounts(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v8 = v5;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_msgSend_loginStatus(v13, v6, v7);
        if (v14 > v9)
        {
          v15 = v14;
          v16 = v13;

          v9 = v15;
          v10 = v16;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v19, v23, 16);
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)aimAccount
{
  v4 = objc_msgSend_aimService(IMServiceImpl, a2, v2);
  v6 = objc_msgSend_bestAccountForService_(self, v5, v4);

  return v6;
}

- (id)jabberAccount
{
  v4 = objc_msgSend_jabberService(IMServiceImpl, a2, v2);
  v6 = objc_msgSend_bestAccountForService_(self, v5, v4);

  return v6;
}

- (void)_disableCache
{
  self->_cachesEnabled = 0;
  serviceToConnectedAccountsMap = self->_serviceToConnectedAccountsMap;
  self->_serviceToConnectedAccountsMap = 0;

  serviceToOperationalAccountsMap = self->_serviceToOperationalAccountsMap;
  self->_serviceToOperationalAccountsMap = 0;
}

- (BOOL)hasRelayApprovedAccount
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_accounts(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isSMSRelayCapable(*(*(&v12 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)senderIdentifiers
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_accounts(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = objc_msgSend_vettedAliases(v15, v10, v11, 0);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v35, 16);
        if (v18)
        {
          v21 = v18;
          v22 = *v28;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v16);
              }

              v24 = *(*(&v27 + 1) + 8 * j);
              if (objc_msgSend_length(v24, v19, v20))
              {
                objc_msgSend_addObject_(v4, v19, v24);
              }
            }

            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v27, v35, 16);
          }

          while (v21);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v31, v36, 16);
    }

    while (v12);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_bestOperationalAccountForSendingForService:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v78 = v4;
  v8 = objc_msgSend_operationalAccountsForService_(self, v7, v4);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v92, v103, 16);
  if (v12)
  {
    v13 = *v93;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v93 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v92 + 1) + 8 * i);
        if (objc_msgSend__isUsableForSending(v15, v10, v11))
        {
          objc_msgSend_addObject_(v6, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v92, v103, 16);
    }

    while (v12);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v16 = v6;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v88, v102, 16);
  if (v20)
  {
    v21 = *v89;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v89 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v88 + 1) + 8 * j);
        v24 = objc_msgSend_aliases(v23, v18, v19);
        v27 = objc_msgSend_count(v24, v25, v26) == 0;

        if (!v27)
        {
          v28 = objc_msgSend_aliases(v23, v18, v19);
          objc_msgSend_addObjectsFromArray_(v5, v29, v28);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v88, v102, 16);
    }

    while (v20);
  }

  v32 = objc_msgSend_allObjects(v5, v30, v31);
  v79 = _IDSCopyOrderedAliasStrings();

  if (!objc_msgSend_count(v79, v33, v34))
  {
    goto LABEL_54;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v37 = v16;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v84, v101, 16);
  if (v41)
  {
    v42 = *v85;
LABEL_22:
    v43 = 0;
    while (1)
    {
      if (*v85 != v42)
      {
        objc_enumerationMutation(v37);
      }

      v44 = *(*(&v84 + 1) + 8 * v43);
      if (objc_msgSend_accountType(v44, v39, v40) == 2)
      {
        v45 = objc_msgSend_aliases(v44, v39, v40);
        v48 = objc_msgSend_firstObject(v79, v46, v47);
        v50 = objc_msgSend_containsObject_(v45, v49, v48);

        if (v50)
        {
          break;
        }
      }

      if (v41 == ++v43)
      {
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v84, v101, 16);
        if (v41)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v54 = objc_msgSend_firstObject(v79, v52, v53);
        *buf = 138412546;
        v98 = v54;
        v99 = 2112;
        v100 = v44;
        _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "Alias %@  matched phone based account: %@, selecting it", buf, 0x16u);
      }
    }

    v55 = v44;

    if (v55)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_29:
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v56 = v37;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v80, v96, 16);
  if (!v60)
  {
LABEL_44:

LABEL_54:
    v55 = objc_msgSend_anyObject(v16, v35, v36);
    goto LABEL_55;
  }

  v61 = *v81;
LABEL_37:
  v62 = 0;
  while (1)
  {
    if (*v81 != v61)
    {
      objc_enumerationMutation(v56);
    }

    v63 = *(*(&v80 + 1) + 8 * v62);
    if (objc_msgSend_accountType(v63, v58, v59) != 2)
    {
      v64 = objc_msgSend_aliases(v63, v58, v59);
      v67 = objc_msgSend_firstObject(v79, v65, v66);
      v69 = objc_msgSend_containsObject_(v64, v68, v67);

      if (v69)
      {
        break;
      }
    }

    if (v60 == ++v62)
    {
      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v80, v96, 16);
      if (v60)
      {
        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v70 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v73 = objc_msgSend_firstObject(v79, v71, v72);
      *buf = 138412546;
      v98 = v73;
      v99 = 2112;
      v100 = v63;
      _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_INFO, "Alias %@  matched account: %@, selecting it", buf, 0x16u);
    }
  }

  v55 = v63;

  if (!v55)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (IMOSLoggingEnabled())
  {
    v74 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v98 = v55;
      _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_INFO, "Returning selected best account: %@", buf, 0xCu);
    }
  }

LABEL_55:
  v75 = v55;

  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

- (id)_bestAccountForAddresses:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_iMessageService(IMServiceImpl, v5, v6);
  v8 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v4, 1, v7);

  if ((objc_msgSend__isUsableForSending(v8, v9, v10) & 1) == 0)
  {
    v14 = objc_msgSend_smsService(IMServiceImpl, v11, v12);
    if (v14)
    {
      v15 = objc_msgSend_accountsForService_(self, v13, v14);
      v18 = objc_msgSend___imFirstObject(v15, v16, v17);

      v8 = v18;
    }
  }

  return v8;
}

- (BOOL)receiverIsMyMention:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v7 = IMChatCanonicalIDSIDsForAddress();
    v8 = MEMORY[0x1AC56C3F0]();

    if (objc_msgSend_length(v8, v9, v10))
    {
      objc_msgSend_connectedAccountsWithServiceCapability_(self, v11, *MEMORY[0x1E69A79A8]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = v27 = 0u;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
      if (v16)
      {
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = objc_msgSend_aliases(*(*(&v24 + 1) + 8 * i), v14, v15, v24);
            v21 = objc_msgSend_containsObject_(v19, v20, v8);

            if (v21)
            {
              LOBYTE(v16) = 1;
              goto LABEL_14;
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v24, v28, 16);
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)metionedHandleMatchesMeCard:(id)a3
{
  v4 = a3;
  if (objc_msgSend_receiverIsMyMention_(self, v5, v4))
  {
    v6 = 1;
  }

  else
  {
    if (MEMORY[0x1AC56C3C0](v4))
    {
      v7 = IMNormalizePhoneNumber();
    }

    else
    {
      v7 = v4;
    }

    v10 = v7;
    v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v8, v9);
    v12 = IMMentionContactKeysForMe();
    v14 = objc_msgSend_fetchMeContactWithKeys_(v11, v13, v12);

    v15 = IMMentionMeTokensForContact();
    v6 = objc_msgSend_containsObject_(v15, v16, v10);
  }

  return v6;
}

- (int64_t)activeAccountsAreEligibleForFilterUnknownSendersByDefault
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_activeAccounts(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v6 = v3;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v88, v94, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v89;
      v13 = MEMORY[0x1E69A7AD0];
      v78 = v3;
      v79 = *v89;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v89 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v88 + 1) + 8 * i);
          v16 = objc_msgSend_serviceName(v15, v9, v10, v78);
          isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *v13);

          if ((isEqualToString & 1) == 0)
          {
            v19 = MEMORY[0x1E69A82A0];
            v20 = objc_msgSend_countryCode(v15, v9, v10);
            if (objc_msgSend_accountCountryIsCandidateForHawking_(v19, v21, v20))
            {
              IsCandidateForHawking = 1;
            }

            else
            {
              v25 = MEMORY[0x1E69A82A0];
              v26 = objc_msgSend_loginIMHandle(v15, v22, v23);
              v29 = objc_msgSend_countryCode(v26, v27, v28);
              IsCandidateForHawking = objc_msgSend_accountCountryIsCandidateForHawking_(v25, v30, v29);
            }

            v31 = MEMORY[0x1E69A82A0];
            v34 = objc_msgSend_countryCode(v15, v32, v33);
            if (objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter_(v31, v35, v34))
            {
              goto LABEL_39;
            }

            v38 = MEMORY[0x1E69A82A0];
            v39 = objc_msgSend_loginIMHandle(v15, v36, v37);
            v42 = objc_msgSend_countryCode(v39, v40, v41);
            LODWORD(v38) = objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter_(v38, v43, v42);

            if ((IsCandidateForHawking | v38))
            {
              goto LABEL_43;
            }

            v46 = objc_msgSend_aliases(v15, v44, v45);
            v49 = objc_msgSend_count(v46, v47, v48);

            if (v49)
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v34 = objc_msgSend_aliases(v15, v50, v51);
              v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v52, &v84, v93, 16);
              if (v53)
              {
                v55 = v53;
                v56 = *v85;
LABEL_16:
                v57 = 0;
                while (1)
                {
                  if (*v85 != v56)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v58 = *(*(&v84 + 1) + 8 * v57);
                  if (objc_msgSend_receiverIsCandidateForHawking_(MEMORY[0x1E69A82A0], v54, v58) & 1) != 0 || (objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter_(MEMORY[0x1E69A82A0], v59, v58))
                  {
                    break;
                  }

                  if (v55 == ++v57)
                  {
                    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v54, &v84, v93, 16);
                    if (v55)
                    {
                      goto LABEL_16;
                    }

                    goto LABEL_23;
                  }
                }

LABEL_39:
                v3 = v78;
                v74 = 1;
                goto LABEL_40;
              }

LABEL_23:

              v12 = v79;
              v13 = MEMORY[0x1E69A7AD0];
            }

            else
            {
              v60 = MEMORY[0x1E69A82A0];
              v34 = objc_msgSend_login(v15, v50, v51);
              if (objc_msgSend_receiverIsCandidateForHawking_(v60, v61, v34))
              {
                goto LABEL_39;
              }

              v64 = MEMORY[0x1E69A82A0];
              v65 = objc_msgSend_login(v15, v62, v63);
              LOBYTE(v64) = objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter_(v64, v66, v65);

              v12 = v79;
              v13 = MEMORY[0x1E69A7AD0];
              if (v64)
              {
LABEL_43:
                v3 = v78;
                v74 = 1;
                goto LABEL_41;
              }
            }
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v88, v94, 16);
        v3 = v78;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    objc_msgSend_IMPhoneNumbersEnabledForMultipleSubscriptionDevice(MEMORY[0x1E69A7F58], v67, v68);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v34 = v83 = 0u;
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v69, &v80, v92, 16);
    if (v70)
    {
      v72 = v70;
      v73 = *v81;
      v74 = 1;
LABEL_30:
      v75 = 0;
      while (1)
      {
        if (*v81 != v73)
        {
          objc_enumerationMutation(v34);
        }

        if (objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter_(MEMORY[0x1E69A82A0], v71, *(*(&v80 + 1) + 8 * v75)))
        {
          break;
        }

        if (v72 == ++v75)
        {
          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v71, &v80, v92, 16);
          if (v72)
          {
            goto LABEL_30;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      v74 = 0;
    }

    v6 = v34;
LABEL_40:

LABEL_41:
  }

  else
  {
    v74 = -1;
  }

  v76 = *MEMORY[0x1E69E9840];
  return v74;
}

- (int64_t)activeAccountsAreEligibleForInternationalFiltering
{
  v54 = *MEMORY[0x1E69E9840];
  objc_msgSend_activeAccounts(self, a2, v2);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = v51 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v48, v53, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v49;
    v10 = MEMORY[0x1E69A7AD0];
    v42 = *v49;
    while (2)
    {
      v11 = 0;
      v43 = v8;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v48 + 1) + 8 * v11);
        v13 = objc_msgSend_serviceName(v12, v6, v7, v42);
        isEqualToString = objc_msgSend_isEqualToString_(v13, v14, *v10);

        if ((isEqualToString & 1) == 0)
        {
          v16 = objc_msgSend_countryCode(v12, v6, v7);
          v19 = objc_msgSend_loginIMHandle(v12, v17, v18);
          v22 = objc_msgSend_countryCode(v19, v20, v21);

          if (objc_msgSend_accountCountryIsCandidateForInternationalFiltering_(MEMORY[0x1E69A8320], v23, v16) & 1) != 0 || (objc_msgSend_accountCountryIsCandidateForInternationalFiltering_(MEMORY[0x1E69A8320], v24, v22))
          {
            goto LABEL_24;
          }

          v27 = objc_msgSend_regionID(v12, v25, v26);
          if (objc_msgSend_accountRegionIsCandidateForInternationalFiltering_(MEMORY[0x1E69A8320], v28, v27))
          {
LABEL_23:

LABEL_24:
            v39 = 1;
            goto LABEL_26;
          }

          v31 = objc_msgSend_aliases(v12, v29, v30);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v32 = v31;
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v44, v52, 16);
          if (v34)
          {
            v36 = v34;
            v37 = *v45;
            while (2)
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v45 != v37)
                {
                  objc_enumerationMutation(v32);
                }

                if (objc_msgSend_receiverIsCandidateForInternationalFiltering_(MEMORY[0x1E69A8320], v35, *(*(&v44 + 1) + 8 * i)))
                {

                  goto LABEL_23;
                }
              }

              v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v44, v52, 16);
              if (v36)
              {
                continue;
              }

              break;
            }
          }

          v9 = v42;
          v8 = v43;
          v10 = MEMORY[0x1E69A7AD0];
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v48, v53, 16);
      v39 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_26:

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

- (int64_t)activeAccountsAreEligibleForHawking
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_activeAccounts(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = v3;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v57, v62, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v58;
      v13 = MEMORY[0x1E69A7AD0];
      v51 = v3;
      while (2)
      {
        v14 = 0;
        v52 = v11;
        do
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v57 + 1) + 8 * v14);
          v16 = objc_msgSend_serviceName(v15, v9, v10, v51);
          isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *v13);

          if ((isEqualToString & 1) == 0)
          {
            v19 = MEMORY[0x1E69A82A0];
            v20 = objc_msgSend_countryCode(v15, v9, v10);
            if (objc_msgSend_accountCountryIsCandidateForHawking_(v19, v21, v20))
            {
              goto LABEL_25;
            }

            v24 = v6;
            v25 = MEMORY[0x1E69A82A0];
            v26 = objc_msgSend_loginIMHandle(v15, v22, v23);
            v29 = objc_msgSend_countryCode(v26, v27, v28);
            LOBYTE(v25) = objc_msgSend_accountCountryIsCandidateForHawking_(v25, v30, v29);

            if (v25)
            {
              v48 = 1;
              v6 = v24;
              goto LABEL_27;
            }

            v33 = objc_msgSend_aliases(v15, v31, v32);
            v36 = objc_msgSend_count(v33, v34, v35);

            v6 = v24;
            if (v36)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v20 = objc_msgSend_aliases(v15, v37, v38);
              v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v39, &v53, v61, 16);
              if (v40)
              {
                v42 = v40;
                v43 = *v54;
LABEL_13:
                v44 = 0;
                while (1)
                {
                  if (*v54 != v43)
                  {
                    objc_enumerationMutation(v20);
                  }

                  if (objc_msgSend_receiverIsCandidateForHawking_(MEMORY[0x1E69A82A0], v41, *(*(&v53 + 1) + 8 * v44)))
                  {
                    break;
                  }

                  if (v42 == ++v44)
                  {
                    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v41, &v53, v61, 16);
                    if (v42)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_19;
                  }
                }

LABEL_25:

LABEL_26:
                v48 = 1;
LABEL_27:
                v3 = v51;
                goto LABEL_29;
              }

LABEL_19:

              v11 = v52;
            }

            else
            {
              v45 = MEMORY[0x1E69A82A0];
              v46 = objc_msgSend_login(v15, v37, v38);
              LOBYTE(v45) = objc_msgSend_receiverIsCandidateForHawking_(v45, v47, v46);

              v11 = v52;
              if (v45)
              {
                goto LABEL_26;
              }
            }
          }

          ++v14;
        }

        while (v14 != v11);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v57, v62, 16);
        v48 = 0;
        v3 = v51;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v48 = 0;
    }

LABEL_29:
  }

  else
  {
    v48 = -1;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v48;
}

- (int64_t)activeAccountsAreEligibleForAppleSMSFilter
{
  if (!objc_msgSend_receiverIsCandidateForAppleSMSFilter(MEMORY[0x1E69A82A0], a2, v2))
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Account is eligible for showing SMS Filter.", v5, 2u);
    }
  }

  return 1;
}

- (int64_t)activeAccountsAreEligibleForDefaultAppleSMSFilter
{
  IsCandidateForDefaultAppleSMSFilter = objc_msgSend_receiverIsCandidateForDefaultAppleSMSFilter(MEMORY[0x1E69A82A0], a2, v2);
  v4 = IMOSLoggingEnabled();
  if (IsCandidateForDefaultAppleSMSFilter)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Account is eligible for enabling SMS Filter by default.", buf, 2u);
      }
    }

    return 1;
  }

  else
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Account is not eligible for enabling SMS Filter by default.", v8, 2u);
      }
    }

    return 0;
  }
}

- (int64_t)activeAccountsAreEligibleForAppleSMSFilterSubClassification
{
  v2 = 1;
  while (!objc_msgSend_receiverIsCandidateForAppleSMSFilterSubClassificationWithSimSlot_(MEMORY[0x1E69A82A0], a2, v2))
  {
    if (++v2 == 3)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Account is not eligible for enabling SMS SubClassification.", v6, 2u);
        }
      }

      return 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Account is eligible for enabling SMS SubClassification.", buf, 2u);
    }
  }

  return 1;
}

@end