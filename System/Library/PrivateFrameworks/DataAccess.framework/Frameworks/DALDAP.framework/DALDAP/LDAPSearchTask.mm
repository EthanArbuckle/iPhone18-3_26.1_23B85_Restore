@interface LDAPSearchTask
- (LDAPSearchTask)initWithQuery:(id)query;
- (id)_copySearchStringForQueryInput:(id)input;
- (id)daLevelErrorForLDAPError:(int)error;
- (int)numDownloadedElements;
- (void)_appendKey:(id)key value:(id)value toSearchResultElement:(id)element;
- (void)_failImmediately;
- (void)_performQuery;
- (void)_promptForPasswordDueToError:(id)error;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)performTask;
@end

@implementation LDAPSearchTask

- (LDAPSearchTask)initWithQuery:(id)query
{
  queryCopy = query;
  v11.receiver = self;
  v11.super_class = LDAPSearchTask;
  v6 = [(LDAPSearchTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
    v8 = objc_opt_new();
    foundContacts = v7->_foundContacts;
    v7->_foundContacts = v8;
  }

  return v7;
}

- (void)disable
{
  operation = [(LDAPSearchTask *)self operation];

  if (operation)
  {
    operation2 = [(LDAPSearchTask *)self operation];
    ldap_operation_cancel();
  }

  v5.receiver = self;
  v5.super_class = LDAPSearchTask;
  [(LDAPTask *)&v5 disable];
}

- (id)_copySearchStringForQueryInput:(id)input
{
  v34 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = inputCopy;
  if (inputCopy && ([inputCopy isEqualToString:&stru_285AC75D8] & 1) == 0)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
  query = [(LDAPSearchTask *)self query];
  searchString = [query searchString];

  v31 = searchString;
  v5 = [(LDAPSearchTask *)self _copySearchStringForQueryInput:searchString];
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

  query2 = [(LDAPSearchTask *)self query];
  searchBase = [query2 searchBase];
  v13 = searchBase;
  if (searchBase)
  {
    v14 = searchBase;
  }

  else
  {
    v14 = &stru_285AC75D8;
  }

  v15 = v14;

  query3 = [(LDAPSearchTask *)self query];
  searchScope = [query3 searchScope];

  if (([searchScope isEqualToString:@"kLDAPScopeBase"] & 1) == 0)
  {
    [searchScope isEqualToString:@"kLDAPScopeOneLevel"];
  }

  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v10))
  {
    query4 = [(LDAPSearchTask *)self query];
    searchBase2 = [query4 searchBase];
    *buf = 138412546;
    v36 = searchBase2;
    v37 = 2112;
    v38 = searchScope;
    _os_log_impl(&dword_24857C000, v18, v10, "search base is %@, search scope is %@", buf, 0x16u);
  }

  v21 = _performQuery_attributes;
  query5 = [(LDAPSearchTask *)self query];
  includePhotos = [query5 includePhotos];

  v24 = v8;
  if ((includePhotos & 1) == 0)
  {
    v25 = _performQuery_attributesSansPhoto;

    v21 = v25;
  }

  ldConnection = [(LDAPTask *)self ldConnection];
  query6 = [(LDAPSearchTask *)self query];
  [query6 timeLimit];
  query7 = [(LDAPSearchTask *)self query];
  [query7 maxResults];
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

- (void)_appendKey:(id)key value:(id)value toSearchResultElement:(id)element
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  elementCopy = element;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v10, v11))
  {
    v14 = 138412546;
    v15 = keyCopy;
    v16 = 2112;
    v17 = valueCopy;
    _os_log_impl(&dword_24857C000, v10, v11, "Found key->value of %@->%@", &v14, 0x16u);
  }

  if ([keyCopy isEqualToString:@"givenname"])
  {
    [elementCopy setFirstName:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"sn"])
  {
    [elementCopy setLastName:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"cn"])
  {
    [elementCopy setDisplayName:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"mail"])
  {
    [elementCopy setEmailAddress:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"telephonenumber"])
  {
    [elementCopy setWorkPhone:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"facsimiletelephonenumber"])
  {
    [elementCopy setFaxPhone:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"o"])
  {
    [elementCopy setCompany:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"title"])
  {
    [elementCopy setTitle:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"buildingname"])
  {
    [elementCopy setBuildingName:valueCopy];
  }

  else if ([keyCopy isEqualToString:@"applefloor"])
  {
    [elementCopy setAppleFloor:valueCopy];
  }

  else
  {
    if ([keyCopy isEqualToString:@"street"])
    {
      ldapSanitizedAddress = [valueCopy ldapSanitizedAddress];
      [elementCopy setStreet:ldapSanitizedAddress];
    }

    else
    {
      if ([keyCopy isEqualToString:@"l"])
      {
        [elementCopy setCity:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"postalcode"])
      {
        [elementCopy setZip:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"c"])
      {
        [elementCopy setCountry:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"jpegphoto"])
      {
        [elementCopy setJpegPhoto:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"mobile"])
      {
        [elementCopy setMobilePhone:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"pager"])
      {
        [elementCopy setPagerNumber:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"labeleduri"])
      {
        [elementCopy setUri:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"imhandle"])
      {
        [elementCopy setImUsername:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"homephone"])
      {
        [elementCopy setHomePhone:valueCopy];
        goto LABEL_44;
      }

      if ([keyCopy isEqualToString:@"postaladdress"])
      {
        ldapSanitizedAddress = [valueCopy ldapSanitizedAddress];
        [elementCopy setPostalAddress:ldapSanitizedAddress];
      }

      else
      {
        if (![keyCopy isEqualToString:@"homepostaladdress"])
        {
          goto LABEL_44;
        }

        ldapSanitizedAddress = [valueCopy ldapSanitizedAddress];
        [elementCopy setHomePostalAddress:ldapSanitizedAddress];
      }
    }
  }

LABEL_44:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_promptForPasswordDueToError:(id)error
{
  errorCopy = error;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __47__LDAPSearchTask__promptForPasswordDueToError___block_invoke;
  v15 = &unk_278F1FC08;
  selfCopy = self;
  v17 = errorCopy;
  v5 = errorCopy;
  v6 = MEMORY[0x24C1D1EE0](&v12);
  v7 = [(LDAPTask *)self taskManager:v12];
  account = [v7 account];

  if (account)
  {
    taskManager = [(LDAPTask *)self taskManager];
    account2 = [taskManager account];
    v11 = dataaccess_get_global_queue();
    [account2 dropAssertionsAndRenewCredentialsInQueue:v11 withHandler:v6];
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
    taskManager = [(LDAPTask *)self taskManager];
    account = [taskManager account];
    shouldFailAllTasks = [account shouldFailAllTasks];

    if (shouldFailAllTasks)
    {

      [(LDAPSearchTask *)self _failImmediately];
    }

    else
    {
      ldConnection = [(LDAPTask *)self ldConnection];

      if (ldConnection)
      {
        ldConnection2 = [(LDAPTask *)self ldConnection];
        ldap_connection_disconnect();

        [(LDAPTask *)self setLdConnection:0];
      }

      [(LDAPTask *)self initializeConnection];
    }
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(LDAPTask *)selfCopy isFinished])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    [(LDAPTask *)selfCopy setIsFinished:1];
    objc_sync_exit(selfCopy);

    if ([errorCopy code] == 79)
    {
      [(LDAPSearchTask *)selfCopy _promptForPasswordDueToError:errorCopy];
    }

    else
    {
      dateConnectionWentOut = [(LDAPTask *)selfCopy dateConnectionWentOut];

      if (dateConnectionWentOut)
      {
        taskManager = [(LDAPTask *)selfCopy taskManager];
        account = [taskManager account];
        statusReport = [account statusReport];
        date = [MEMORY[0x277CBEAA8] date];
        dateConnectionWentOut2 = [(LDAPTask *)selfCopy dateConnectionWentOut];
        [date timeIntervalSinceDate:dateConnectionWentOut2];
        [statusReport noteTimeSpentInNetworking:?];

        [(LDAPTask *)selfCopy setDateConnectionWentOut:0];
      }

      ldConnection = [(LDAPTask *)selfCopy ldConnection];

      if (ldConnection)
      {
        ldConnection2 = [(LDAPTask *)selfCopy ldConnection];
        ldap_connection_disconnect();
      }

      delegate = [(LDAPTask *)selfCopy delegate];
      foundContacts = [(LDAPSearchTask *)selfCopy foundContacts];
      [delegate ldapSearchTask:selfCopy finishedWithError:errorCopy foundItems:foundContacts];

      v16.receiver = selfCopy;
      v16.super_class = LDAPSearchTask;
      [(LDAPTask *)&v16 finishWithError:errorCopy];
    }
  }
}

- (int)numDownloadedElements
{
  foundContacts = [(LDAPSearchTask *)self foundContacts];
  v3 = [foundContacts count];

  return v3;
}

- (id)daLevelErrorForLDAPError:(int)error
{
  if (error > 10000)
  {
    if ((error - 10001) < 3)
    {
      goto LABEL_12;
    }

    if (error == 10006 || error == 10004)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (error > 0x32)
  {
    goto LABEL_14;
  }

  if (((1 << error) & 0x7000000002180) == 0)
  {
    if (((1 << error) & 0x11) != 0)
    {
      v3 = 2;
      return [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v3 userInfo:0];
    }

    if (error == 3)
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