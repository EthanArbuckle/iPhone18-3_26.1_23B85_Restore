@interface LDAPSearchTask
- (LDAPSearchTask)initWithQuery:(id)a3;
- (id)_copySearchStringForQueryInput:(id)a3;
- (id)daLevelErrorForLDAPError:(int)a3;
- (int)numDownloadedElements;
- (void)_appendKey:(id)a3 value:(id)a4 toSearchResultElement:(id)a5;
- (void)_failImmediately;
- (void)_performQuery;
- (void)_promptForPasswordDueToError:(id)a3;
- (void)disable;
- (void)finishWithError:(id)a3;
- (void)performTask;
@end

@implementation LDAPSearchTask

- (LDAPSearchTask)initWithQuery:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LDAPSearchTask;
  v6 = [(LDAPSearchTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
    v8 = objc_opt_new();
    foundContacts = v7->_foundContacts;
    v7->_foundContacts = v8;
  }

  return v7;
}

- (void)disable
{
  v3 = [(LDAPSearchTask *)self operation];

  if (v3)
  {
    v4 = [(LDAPSearchTask *)self operation];
    ldap_operation_cancel();
  }

  v5.receiver = self;
  v5.super_class = LDAPSearchTask;
  [(LDAPTask *)&v5 disable];
}

- (id)_copySearchStringForQueryInput:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_285AC75D8] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v5 stringByTrimmingCharactersInSet:v7];

    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
    v11 = [v9 count];
    if (v11 - 1 >= 0)
    {
      v12 = v11;
      do
      {
        v13 = [v9 objectAtIndexedSubscript:--v12];
        if (v13)
        {
          v14 = v13;
          v15 = [v9 objectAtIndexedSubscript:v12];
          v16 = [v15 isEqualToString:&stru_285AC75D8];

          if (!v16)
          {
            continue;
          }
        }

        [v10 removeObjectAtIndex:v12];
      }

      while (v12 > 0);
    }

    v17 = [v10 count];
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = [v10 objectAtIndexedSubscript:0];
        v6 = [(LDAPSearchTask *)self _searchStringForWord:v18];
      }

      else
      {
        v6 = objc_opt_new();
        v28 = v8;
        v19 = [(LDAPSearchTask *)self _searchStringForWord:v8];
        objc_msgSend(v6, "appendFormat:", CFSTR("(|%@(&"), v19);

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v10;
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v30;
          do
          {
            v24 = 0;
            do
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [(LDAPSearchTask *)self _searchStringForWord:*(*(&v29 + 1) + 8 * v24)];
              [v6 appendString:v25];

              ++v24;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v22);
        }

        [v6 appendString:@"]"));
        v8 = v28;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_performQuery
{
  v39 = *MEMORY[0x277D85DE8];
  if (_performQuery_onceToken != -1)
  {
    [LDAPSearchTask _performQuery];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __31__LDAPSearchTask__performQuery__block_invoke_2;
  v34[3] = &unk_278F1FB90;
  v34[4] = self;
  v32 = MEMORY[0x24C1D1EE0](v34);
  v3 = [(LDAPSearchTask *)self query];
  v4 = [v3 searchString];

  v31 = v4;
  v5 = [(LDAPSearchTask *)self _copySearchStringForQueryInput:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_285AC75D8;
  }

  v8 = v7;

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_24857C000, v9, v10, "searchstring is %@", buf, 0xCu);
  }

  v11 = [(LDAPSearchTask *)self query];
  v12 = [v11 searchBase];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285AC75D8;
  }

  v15 = v14;

  v16 = [(LDAPSearchTask *)self query];
  v17 = [v16 searchScope];

  if (([v17 isEqualToString:@"kLDAPScopeBase"] & 1) == 0)
  {
    [v17 isEqualToString:@"kLDAPScopeOneLevel"];
  }

  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v10))
  {
    v19 = [(LDAPSearchTask *)self query];
    v20 = [v19 searchBase];
    *buf = 138412546;
    v36 = v20;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&dword_24857C000, v18, v10, "search base is %@, search scope is %@", buf, 0x16u);
  }

  v21 = _performQuery_attributes;
  v22 = [(LDAPSearchTask *)self query];
  v23 = [v22 includePhotos];

  v24 = v8;
  if ((v23 & 1) == 0)
  {
    v25 = _performQuery_attributesSansPhoto;

    v21 = v25;
  }

  v26 = [(LDAPTask *)self ldConnection];
  v27 = [(LDAPSearchTask *)self query];
  [v27 timeLimit];
  v28 = [(LDAPSearchTask *)self query];
  [v28 maxResults];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __31__LDAPSearchTask__performQuery__block_invoke_105;
  v33[3] = &unk_278F1FBE0;
  v33[4] = self;
  v29 = ldap_connection_query_create();
  [(LDAPSearchTask *)self setOperation:v29, v32, v33];

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __31__LDAPSearchTask__performQuery__block_invoke()
{
  v0 = _performQuery_attributes;
  _performQuery_attributes = &unk_285AC85F0;

  v1 = [&unk_285AC85F0 mutableCopy];
  v2 = _performQuery_attributesSansPhoto;
  _performQuery_attributesSansPhoto = v1;

  [_performQuery_attributesSansPhoto removeObject:@"jpegPhoto"];
  _performQuery_binaryAttributes = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"jpegphoto", 0}];

  return MEMORY[0x2821F96F8]();
}

void __31__LDAPSearchTask__performQuery__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__LDAPSearchTask__performQuery__block_invoke_3;
  v7[3] = &unk_278F1FB68;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __31__LDAPSearchTask__performQuery__block_invoke_3(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24857C000, v2, v4, "LDAPSearchTask got result", buf, 2u);
  }

  if (([*(a1 + 32) isDisabled] & 1) == 0)
  {
    v28 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [*(a1 + 40) allKeys];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = v6;
    v8 = *v31;
    v9 = *(v3 + 3);
    v10 = 0x277CBE000uLL;
    v26 = *v31;
    v27 = a1;
    while (1)
    {
      v11 = 0;
      v29 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
        v14 = *(v10 + 2656);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![v13 count])
          {
            goto LABEL_23;
          }

          v15 = v10;
          v16 = [v12 lowercaseString];
          v17 = [v13 objectAtIndexedSubscript:0];
          if (![_performQuery_binaryAttributes containsObject:v16] || (objc_opt_class(), (objc_opt_isKindOfClass())) && ((objc_msgSend(_performQuery_binaryAttributes, "containsObject:", v16) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())))
          {
            [*(a1 + 32) _appendKey:v16 value:v17 toSearchResultElement:v28];
          }

          else
          {
            v19 = v5;
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v9))
            {
              v21 = objc_opt_class();
              *buf = 138412546;
              v35 = v21;
              v36 = 2112;
              v37 = v12;
              v22 = v21;
              _os_log_impl(&dword_24857C000, v20, v9, "Unexpected value class %@ for attribute %@.  Skipping", buf, 0x16u);
            }

            v5 = v19;
            v8 = v26;
            a1 = v27;
          }

          v10 = v15;
          v7 = v29;
        }

        else
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v9))
          {
            v18 = objc_opt_class();
            *buf = 138412546;
            v35 = v18;
            v36 = 2112;
            v37 = v12;
            _os_log_impl(&dword_24857C000, v16, v9, "Unexpected class of %@ for key %@.  Skipping it", buf, 0x16u);
          }
        }

LABEL_23:
        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v7)
      {
LABEL_25:

        v23 = [v28 emailAddress];
        [v28 setIdentifierOnServer:v23];

        v24 = [*(a1 + 32) foundContacts];
        [v24 addObject:v28];

        break;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __31__LDAPSearchTask__performQuery__block_invoke_105(uint64_t a1, uint64_t a2, int a3)
{
  v5 = dataaccess_get_global_queue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__LDAPSearchTask__performQuery__block_invoke_2_106;
  v6[3] = &unk_278F1FBB8;
  v7 = a3;
  v6[4] = *(a1 + 32);
  dispatch_async(v5, v6);
}

uint64_t __31__LDAPSearchTask__performQuery__block_invoke_2_106(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v4))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_24857C000, v2, v4, "LDAPSearchTask operation completed", v14, 2u);
  }

  if ((*(a1 + 40) | 4) == 4)
  {
    v5 = [*(a1 + 32) isDisabled];
    v6 = *(a1 + 32);
    if (!v5)
    {
      [*(a1 + 32) finishWithError:0];
      goto LABEL_11;
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(v3 + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(a1 + 40);
      v14[0] = 67109120;
      v14[1] = v10;
      _os_log_impl(&dword_24857C000, v8, v9, "Couldn't complete operation, error %d", v14, 8u);
    }

    v6 = *(a1 + 32);
    v7 = [v6 daLevelErrorForLDAPError:*(a1 + 40)];
  }

  v11 = v7;
  [v6 finishWithError:v7];

LABEL_11:
  result = [*(a1 + 32) setOperation:0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_appendKey:(id)a3 value:(id)a4 toSearchResultElement:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v10, v11))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_24857C000, v10, v11, "Found key->value of %@->%@", &v14, 0x16u);
  }

  if ([v7 isEqualToString:@"givenname"])
  {
    [v9 setFirstName:v8];
  }

  else if ([v7 isEqualToString:@"sn"])
  {
    [v9 setLastName:v8];
  }

  else if ([v7 isEqualToString:@"cn"])
  {
    [v9 setDisplayName:v8];
  }

  else if ([v7 isEqualToString:@"mail"])
  {
    [v9 setEmailAddress:v8];
  }

  else if ([v7 isEqualToString:@"telephonenumber"])
  {
    [v9 setWorkPhone:v8];
  }

  else if ([v7 isEqualToString:@"facsimiletelephonenumber"])
  {
    [v9 setFaxPhone:v8];
  }

  else if ([v7 isEqualToString:@"o"])
  {
    [v9 setCompany:v8];
  }

  else if ([v7 isEqualToString:@"title"])
  {
    [v9 setTitle:v8];
  }

  else if ([v7 isEqualToString:@"buildingname"])
  {
    [v9 setBuildingName:v8];
  }

  else if ([v7 isEqualToString:@"applefloor"])
  {
    [v9 setAppleFloor:v8];
  }

  else
  {
    if ([v7 isEqualToString:@"street"])
    {
      v12 = [v8 ldapSanitizedAddress];
      [v9 setStreet:v12];
    }

    else
    {
      if ([v7 isEqualToString:@"l"])
      {
        [v9 setCity:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"postalcode"])
      {
        [v9 setZip:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"c"])
      {
        [v9 setCountry:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"jpegphoto"])
      {
        [v9 setJpegPhoto:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"mobile"])
      {
        [v9 setMobilePhone:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"pager"])
      {
        [v9 setPagerNumber:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"labeleduri"])
      {
        [v9 setUri:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"imhandle"])
      {
        [v9 setImUsername:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"homephone"])
      {
        [v9 setHomePhone:v8];
        goto LABEL_44;
      }

      if ([v7 isEqualToString:@"postaladdress"])
      {
        v12 = [v8 ldapSanitizedAddress];
        [v9 setPostalAddress:v12];
      }

      else
      {
        if (![v7 isEqualToString:@"homepostaladdress"])
        {
          goto LABEL_44;
        }

        v12 = [v8 ldapSanitizedAddress];
        [v9 setHomePostalAddress:v12];
      }
    }
  }

LABEL_44:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_promptForPasswordDueToError:(id)a3
{
  v4 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __47__LDAPSearchTask__promptForPasswordDueToError___block_invoke;
  v15 = &unk_278F1FC08;
  v16 = self;
  v17 = v4;
  v5 = v4;
  v6 = MEMORY[0x24C1D1EE0](&v12);
  v7 = [(LDAPTask *)self taskManager:v12];
  v8 = [v7 account];

  if (v8)
  {
    v9 = [(LDAPTask *)self taskManager];
    v10 = [v9 account];
    v11 = dataaccess_get_global_queue();
    [v10 dropAssertionsAndRenewCredentialsInQueue:v11 withHandler:v6];
  }

  else
  {
    v6[2](v6, 2, 0);
  }
}

void __47__LDAPSearchTask__promptForPasswordDueToError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 - 1) >= 2)
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    v8 = v5;
    v7 = runLoopModesToPerformDelayedSelectorsIn();
    [v6 performSelector:sel_performTask withObject:0 afterDelay:v7 inModes:0.0];
  }

  else
  {
    v8 = v5;
    [*(a1 + 32) finishWithError:*(a1 + 40)];
  }

  v5 = v8;
LABEL_6:
}

- (void)_failImmediately
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_24857C000, v3, v4, "Account says we should fail now, finishing with error", v7, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = [v5 initWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
  [(LDAPSearchTask *)self finishWithError:v6];
}

- (void)performTask
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = [(LDAPTask *)self taskManager];
    v4 = [v3 account];
    v5 = [v4 shouldFailAllTasks];

    if (v5)
    {

      [(LDAPSearchTask *)self _failImmediately];
    }

    else
    {
      v6 = [(LDAPTask *)self ldConnection];

      if (v6)
      {
        v7 = [(LDAPTask *)self ldConnection];
        ldap_connection_disconnect();

        [(LDAPTask *)self setLdConnection:0];
      }

      [(LDAPTask *)self initializeConnection];
    }
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(LDAPTask *)v5 isFinished])
  {
    objc_sync_exit(v5);
  }

  else
  {
    [(LDAPTask *)v5 setIsFinished:1];
    objc_sync_exit(v5);

    if ([v4 code] == 79)
    {
      [(LDAPSearchTask *)v5 _promptForPasswordDueToError:v4];
    }

    else
    {
      v6 = [(LDAPTask *)v5 dateConnectionWentOut];

      if (v6)
      {
        v7 = [(LDAPTask *)v5 taskManager];
        v8 = [v7 account];
        v9 = [v8 statusReport];
        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [(LDAPTask *)v5 dateConnectionWentOut];
        [v10 timeIntervalSinceDate:v11];
        [v9 noteTimeSpentInNetworking:?];

        [(LDAPTask *)v5 setDateConnectionWentOut:0];
      }

      v12 = [(LDAPTask *)v5 ldConnection];

      if (v12)
      {
        v13 = [(LDAPTask *)v5 ldConnection];
        ldap_connection_disconnect();
      }

      v14 = [(LDAPTask *)v5 delegate];
      v15 = [(LDAPSearchTask *)v5 foundContacts];
      [v14 ldapSearchTask:v5 finishedWithError:v4 foundItems:v15];

      v16.receiver = v5;
      v16.super_class = LDAPSearchTask;
      [(LDAPTask *)&v16 finishWithError:v4];
    }
  }
}

- (int)numDownloadedElements
{
  v2 = [(LDAPSearchTask *)self foundContacts];
  v3 = [v2 count];

  return v3;
}

- (id)daLevelErrorForLDAPError:(int)a3
{
  if (a3 > 10000)
  {
    if ((a3 - 10001) < 3)
    {
      goto LABEL_12;
    }

    if (a3 == 10006 || a3 == 10004)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (a3 > 0x32)
  {
    goto LABEL_14;
  }

  if (((1 << a3) & 0x7000000002180) == 0)
  {
    if (((1 << a3) & 0x11) != 0)
    {
      v3 = 2;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v3 userInfo:0];
    }

    if (a3 == 3)
    {
LABEL_12:
      v3 = 0;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v3 userInfo:0];
    }

LABEL_14:
    v3 = 5;
    return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v3 userInfo:0];
  }

LABEL_4:
  v3 = 79;
  return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v3 userInfo:0];
}

@end