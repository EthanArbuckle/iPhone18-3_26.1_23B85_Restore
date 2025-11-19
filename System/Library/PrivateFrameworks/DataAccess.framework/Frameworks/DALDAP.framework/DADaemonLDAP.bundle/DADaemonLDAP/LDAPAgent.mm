@interface LDAPAgent
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
@end

@implementation LDAPAgent

- (void)startMonitoring
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, v3, "Verifying LDAP stores", buf, 2u);
  }

  type = v3;

  v4 = [(LDAPAgent *)self account];
  v5 = [v4 searchSettings];
  v6 = [v5 mutableCopy];

  v73 = v6;
  v79 = [v6 count];
  v7 = +[LDAPLocalDBHelper sharedInstance];
  v8 = [(LDAPAgent *)self account];
  v9 = [v8 changeTrackingID];
  [v7 abOpenDBWithClientIdentifier:v9];

  v10 = +[LDAPLocalDBHelper sharedInstance];
  v11 = [v10 abDB];

  v12 = [(LDAPAgent *)self account];
  v13 = [v12 accountID];
  v14 = ABAddressBookCopyAccountWithIdentifier();

  v66 = v14 == 0;
  v15 = v14;
  v62 = v14;
  addressBook = v11;
  if (!v14)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v16, v17))
    {
      v18 = [(LDAPAgent *)self account];
      v19 = [v18 accountID];
      *buf = 138543362;
      v92 = v19;
      _os_log_impl(&dword_0, v16, v17, "ACCOUNTDCOERROR Didn't find account with identifier %{public}@ in AB db. Creating one", buf, 0xCu);
    }

    v15 = ABAccountCreate();
    v20 = [(LDAPAgent *)self account];
    v21 = [v20 accountID];
    ABAccountSetIdentifier();

    ABAddressBookAddRecord(v11, v15, 0);
    ABAddressBookProcessAddedRecords();
  }

  cf = v15;
  v22 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  v67 = v22;
  if (![v22 count])
  {
    goto LABEL_35;
  }

  v23 = 0;
  v71 = kABSourceExternalIdentifierProperty;
  v68 = kABSourceExternalModificationTagProperty;
  v64 = kLDAPScopeOneLevel;
  v65 = kLDAPScopeBase;
  do
  {
    v24 = [v22 objectAtIndexedSubscript:v23];

    v25 = ABRecordCopyValue(v24, kABSourceNameProperty);
    v26 = ABRecordCopyValue(v24, v71);
    v27 = ABRecordCopyValue(v24, v68);
    v28 = v27;
    if (v27)
    {
      if ([v27 isEqualToString:v65])
      {
        v29 = 0;
      }

      else if ([v28 isEqualToString:v64])
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }

    else
    {
      v29 = 2;
    }

    v30 = objc_opt_new();
    [v30 setScope:v29];
    v76 = v26;
    [v30 setSearchBase:v26];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v31 = v73;
    v32 = [v31 countByEnumeratingWithState:&v85 objects:v90 count:16];
    if (!v32)
    {
      goto LABEL_24;
    }

    v33 = v32;
    v34 = *v86;
    while (2)
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v86 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v85 + 1) + 8 * i);
        if ([v36 hasSameScopeAndBaseAsOther:v30])
        {
          v37 = v36;

          if (!v37)
          {
            goto LABEL_29;
          }

          if (v79 < 2)
          {
            v39 = [(LDAPAgent *)self account];
            v38 = [v39 accountDescription];

            if (!v25)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v38 = [v37 searchDescription];
            if (!v25)
            {
              goto LABEL_32;
            }
          }

          if ([v25 isEqual:v38])
          {
LABEL_33:
            [v31 removeObject:v37];

            goto LABEL_34;
          }

LABEL_32:
          ABRecordSetValue(v24, kABSourceNameProperty, v38, 0);
          v66 = 1;
          goto LABEL_33;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v85 objects:v90 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

LABEL_24:

LABEL_29:
    ABAddressBookRemoveRecord(addressBook, v24, 0);
    v66 = 1;
LABEL_34:

    ++v23;
    v22 = v67;
  }

  while (v23 < [v67 count]);
LABEL_35:
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v72 = v73;
  v40 = [v72 countByEnumeratingWithState:&v81 objects:v89 count:16];
  v41 = v66;
  if (v40)
  {
    v42 = v40;
    v77 = *v82;
    v74 = kLDAPScopeOneLevel;
    *property = kLDAPScopeBase;
    *v69 = kLDAPScopeSubtree;
    v43 = kABSourceExternalIdentifierProperty;
    v44 = kABSourceExternalModificationTagProperty;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v82 != v77)
        {
          objc_enumerationMutation(v72);
        }

        v46 = *(*(&v81 + 1) + 8 * j);
        v47 = [v46 scope];
        v48 = *property;
        if (v47)
        {
          v48 = v74;
          if (v47 != &dword_0 + 1)
          {
            v48 = *v69;
          }
        }

        v49 = v48;
        v50 = ABSourceCreate();
        ABRecordSetValue(v50, kABSourceTypeProperty, &off_4190, 0);
        ABAddressBookSetAccountForSource();
        if (v79 < 2)
        {
          v52 = [(LDAPAgent *)self account];
          v51 = [v52 accountDescription];
        }

        else
        {
          v51 = [v46 searchDescription];
          v52 = v51;
        }

        ABRecordSetValue(v50, kABSourceNameProperty, v51, 0);

        v53 = [v46 searchBase];
        ABRecordSetValue(v50, v43, v53, 0);

        ABRecordSetValue(v50, v44, v49, 0);
        ABAddressBookAddRecord(addressBook, v50, 0);
        CFRelease(v50);
      }

      v42 = [v72 countByEnumeratingWithState:&v81 objects:v89 count:16];
    }

    while (v42);
    v41 = 1;
    v22 = v67;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ([v72 count])
  {
    v54 = 0;
    if ((v41 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v55 = [(LDAPAgent *)self account];
    v54 = [v55 shouldDoInitialAutodiscovery];

    if ((v41 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v56 = +[LDAPLocalDBHelper sharedInstance];
  [v56 abSaveDB];

  if (!v62)
  {
    v57 = +[LDAPLocalDBHelper sharedInstance];
    [v57 abDB];
    ABDatabaseIntegrityCheckWithAddressBook();
  }

LABEL_57:
  v58 = +[LDAPLocalDBHelper sharedInstance];
  [v58 abCloseDBAndSave:0];

  if (v54)
  {
    v59 = DALoggingwithCategory();
    if (os_log_type_enabled(v59, type))
    {
      v60 = [(LDAPAgent *)self account];
      *buf = 138412290;
      v92 = v60;
      _os_log_impl(&dword_0, v59, type, "Account %@ has no search base.  Doing autodiscovery", buf, 0xCu);
    }

    v61 = [(LDAPAgent *)self account];
    [v61 discoverInitialPropertiesWithConsumer:self];
  }
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v6 = a3;
  [(LDAPAgent *)self setIsMonitoring:0];
  v4 = [(LDAPAgent *)self account];
  v5 = [v4 taskManager];
  [v5 shutdown];

  v6[2](v6, self);
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v5 = a4;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  v9 = os_log_type_enabled(v7, v8);
  if (v5)
  {
    if (v9)
    {
      v10 = [(LDAPAgent *)self account];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_0, v7, v8, "Account %@ was successfully autodiscovered, saving account settings", &v13, 0xCu);
    }

    v7 = sharedDAAccountStore();
    v11 = [(LDAPAgent *)self account];
    v12 = [v11 backingAccountInfo];
    [v7 saveVerifiedAccount:v12 withCompletionHandler:0];

    goto LABEL_7;
  }

  if (v9)
  {
    v11 = [(LDAPAgent *)self account];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_0, v7, v8, "Account %@ could not be autodiscovered.  We'll stick around, but we're pretty useless, what with no search bases", &v13, 0xCu);
LABEL_7:
  }
}

@end