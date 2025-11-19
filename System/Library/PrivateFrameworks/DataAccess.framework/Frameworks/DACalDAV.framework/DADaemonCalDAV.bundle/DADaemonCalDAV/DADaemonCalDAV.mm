void sub_1950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_198C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained isMonitoring])
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [v2 account];
      v6 = [v5 accountDescription];
      v7 = [v2 account];
      v8 = [v7 publicDescription];
      v9 = 138412546;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_0, v3, v4, "Calendar database changed. Refreshing account  %@ (%{public}@)", &v9, 0x16u);
    }

    [v2 _probeIfNeededAndThenRefresh];
  }
}

void sub_1E50(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIsWaitingForPassword:0];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v4, v6))
    {
      v7 = [*(a1 + 32) account];
      v8 = [v7 accountDescription];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_0, v5, v6, "Account %@ can't figure out its principalPath, and we couldn't get a password from the user ", &v14, 0xCu);
    }

    v9 = [*(a1 + 32) account];
    v10 = [v9 mobileCalDAVAccount];
    [v10 syncEndedWithError:*(a1 + 40)];
  }

  else
  {
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, _CPLog_to_os_log_type[6]))
    {
      v12 = [*(a1 + 32) account];
      v13 = [v12 accountDescription];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_0, v5, v11, "Got a password from the user. Attempting autodiscovery again for %@", &v14, 0xCu);
    }

    v9 = [*(a1 + 32) account];
    [v9 discoverInitialPropertiesWithConsumer:*(a1 + 32)];
  }
}

void sub_21F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2220(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v2, v3, "reachability indicates that the network is reachable.  We're going to retry our folder sync.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained account];
  v6 = [v5 mobileCalDAVAccount];
  [v6 setRefreshReason:32];

  [WeakRetained _validateAndSync];
}

void sub_384C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Hack to keep %@ from getting released too early", &v5, 0xCu);
  }
}

void sub_3C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_3C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [v3 error];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [NSMutableArray alloc];
      v8 = [v4 readOnlyPrincipalDetails];
      v9 = [v8 count];
      v10 = [v4 readWritePrincipalDetails];
      v6 = [v7 initWithCapacity:{&v9[objc_msgSend(v10, "count")]}];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = [v4 readOnlyPrincipalDetails];
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [objc_opt_class() _grantedDelegateFromCalDAVDetails:*(*(&v27 + 1) + 8 * i) allowWrite:0];
            [v6 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = [v4 readWritePrincipalDetails];
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [objc_opt_class() _grantedDelegateFromCalDAVDetails:*(*(&v23 + 1) + 8 * j) allowWrite:1];
            [v6 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v19);
      }
    }

    [WeakRetained _finishedWithResults:v6 error:v5];
  }
}

void sub_4570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = v5;
  if (v4)
  {
    v7 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v5, v7))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_0, v6, v7, "Error fetching AppleAccount properties: %@", &v14, 0xCu);
    }
  }

  else
  {
    v8 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v8))
    {
      v9 = [*(a1 + 32) backingAccountInfo];
      v10 = [v9 calTopLevelAccount];
      v11 = [v10 dataclassProperties];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_0, v6, v8, "Updated account properties are %@", &v14, 0xCu);
    }

    v6 = sharedDAAccountStore();
    v12 = [*(a1 + 32) backingAccountInfo];
    v13 = [v12 calTopLevelAccount];
    [v6 saveVerifiedAccount:v13 withCompletionHandler:&stru_287F8];
  }
}

void sub_4718(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = @"NOT ";
    if (v3)
    {
      v6 = &stru_28C48;
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "Backing parent AppleAccount was %@saved successfully.", &v7, 0xCu);
  }
}

void sub_4964(id a1)
{
  qword_30C28 = [[AKAppleIDSession alloc] initWithIdentifier:@"CardDAViCloudDaemonAccount"];

  _objc_release_x1();
}

void sub_4F9C(uint64_t a1, int a2)
{
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    LOBYTE(v6) = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v6))
    {
      v7 = [*(a1 + 32) identifier];
      v9 = 138412290;
      v10 = v7;
      v8 = "Delegate with account ID %@ was successfully removed";
LABEL_6:
      _os_log_impl(&dword_0, v5, v6, v8, &v9, 0xCu);
    }
  }

  else
  {
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v4, _CPLog_to_os_log_type[3]))
    {
      v7 = [*(a1 + 32) identifier];
      v9 = 138412290;
      v10 = v7;
      v8 = "Delegate with account ID %@ failed to be removed";
      goto LABEL_6;
    }
  }
}

void sub_6298(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    *(v4 + 96) = 0;
    *(*(a1 + 32) + 97) = 1;
    v5 = *(a1 + 32);

    [v5 _reallySaveAttachmentDataToDatabase];
  }

  else
  {
    if (*(v4 + 96) == 1)
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v6, v7))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v6, v7, "The downloader's gatekeeper locks were aborted while it was waiting for a lock. Bummer.", v10, 2u);
      }

      v8 = *(a1 + 32);
      v9 = [NSError errorWithDomain:DAErrorDomain code:74 userInfo:0];
      [v8 _didFinishDownloadingWithError:v9];

      v4 = *(a1 + 32);
    }

    *(v4 + 96) = 0;
  }
}

void sub_6824(uint64_t a1, uint64_t a2, int a3)
{
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  v8 = os_log_type_enabled(v6, v7);
  if (a3)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, v7, "Acquired DBLock to download attachment.", buf, 2u);
    }

    [*(a1 + 32) _reallyBeginDownload];
    v6 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v6 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v6, v7, "Couldn't get a gatekeeper lock in order to download attachment.", v9, 2u);
  }
}

void sub_7600(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Hack to get %@ retained", &v5, 0xCu);
  }
}

void sub_94D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_0, v4, v5, "Calendar availability (free/busy) task complete: [%@].  Error: [%@]", &v13, 0x16u);
  }

  if (!v3)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 scheduleResponse];

    v9 = *(a1 + 32);
    v10 = [objc_opt_class() _parseResponse:v8 withAddresses:*(v9 + 32)];
    v11 = v10;
    if (v10 && [v10 count])
    {
      v12 = objc_loadWeakRetained((*(a1 + 32) + 40));
      [v12 calendarAvailabilityRequestReturnedResults:v11];
    }
  }

  [*(a1 + 32) _finishWithError:v3];
}

void sub_9EB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] <= 1)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = 134218242;
      v7 = 2;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_0, v4, v5, "Removing calendar directory search term because it is less than [%lu] characters in length: [%@]", &v6, 0x16u);
    }

    [*(a1 + 32) removeObject:v3];
  }
}

void sub_A280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_A2BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForTask:v2];
}

void sub_A470(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_A7AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForTask:v2];
}

void sub_AB60(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 errorItem];
  v5 = [v4 numberOfMatchesWithinLimits];

  if (!v5)
  {
    [v3 successfulPropertiesToValues];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_B498;
    v9 = v74[3] = &unk_28950;
    v75 = v9;
    v10 = objc_retainBlock(v74);
    v11 = objc_alloc_init(DAECalendarDirectorySearchResult);
    v12 = [CalDAVPrincipalResult resultFromResponse:v3];
    v13 = [v12 displayName];
    [v11 setDisplayName:v13];

    v14 = [v12 firstName];
    [v11 setFirstName:v14];

    v15 = [v12 lastName];
    [v11 setLastName:v15];

    v67 = v12;
    v16 = [v12 principalPath];
    [v11 setPrincipalPath:v16];

    v17 = DALoggingwithCategory();
    type = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v17, type))
    {
      v18 = [v11 displayName];
      *buf = 138412290;
      v78 = v18;
      _os_log_impl(&dword_0, v17, type, "Encountered result with displayName: [%@]", buf, 0xCu);
    }

    v19 = (v10[2])(v10, 6);
    v66 = v19;
    if (!v19)
    {
LABEL_31:
      v45 = (v10[2])(v10, 5);
      v46 = [v45 payloadAsString];
      v47 = [v46 da_trimWhiteSpace];

      if (!v47)
      {
        goto LABEL_43;
      }

      v48 = DALoggingwithCategory();
      if (os_log_type_enabled(v48, type))
      {
        *buf = 138412290;
        v78 = v47;
        _os_log_impl(&dword_0, v48, type, "Calendar user type: [%@]", buf, 0xCu);
      }

      if ([v47 isEqualToString:@"INDIVIDUAL"])
      {
        v49 = 5;
        goto LABEL_42;
      }

      if ([v47 isEqualToString:@"ROOM"])
      {
        v49 = 6;
        goto LABEL_42;
      }

      if ([v47 isEqualToString:@"GROUP"])
      {
        v49 = 7;
        goto LABEL_42;
      }

      if ([v47 isEqualToString:@"RESOURCE"])
      {
        v49 = 8;
LABEL_42:
        v50 = a1[v49];
        if (v50)
        {
LABEL_63:
          [v50 addObject:{v11, v61}];

          goto LABEL_64;
        }

LABEL_43:
        v51 = (v10[2])(v10, 7);
        v52 = [v51 payloadAsString];
        v53 = [v52 da_trimWhiteSpace];

        v54 = DALoggingwithCategory();
        if (os_log_type_enabled(v54, type))
        {
          *buf = 138412290;
          v78 = v53;
          _os_log_impl(&dword_0, v54, type, "Record type: [%@]", buf, 0xCu);
        }

        if (v53)
        {
          if ([v53 isEqualToString:@"users"])
          {
            v55 = a1[5];
LABEL_54:
            v50 = v55;
LABEL_62:

            goto LABEL_63;
          }

          if ([v53 isEqualToString:@"locations"])
          {
            v55 = a1[6];
            goto LABEL_54;
          }

          if ([v53 isEqualToString:@"groups"])
          {
            v55 = a1[7];
            goto LABEL_54;
          }

          if ([v53 isEqualToString:@"resources"])
          {
            v55 = a1[8];
            goto LABEL_54;
          }

          v60 = DALoggingwithCategory();
          if (os_log_type_enabled(v60, type))
          {
            *buf = 138412290;
            v78 = v53;
            _os_log_impl(&dword_0, v60, type, "Unrecognized record type encountered during directory search: [%@]", buf, 0xCu);
          }
        }

        v50 = 0;
        goto LABEL_62;
      }

      v56 = [v47 isEqualToString:@"UNKNOWN"];
      v57 = DALoggingwithCategory();
      v58 = os_log_type_enabled(v57, type);
      if (v56)
      {
        if (v58)
        {
          *buf = 138412290;
          v78 = v47;
          v59 = "Known calendar user type encountered but not handled: [%@]";
LABEL_67:
          _os_log_impl(&dword_0, v57, type, v59, buf, 0xCu);
        }
      }

      else if (v58)
      {
        *buf = 138412290;
        v78 = v47;
        v59 = "Unrecognized calendar user type encountered during directory search: [%@]";
        goto LABEL_67;
      }

      goto LABEL_43;
    }

    v20 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 hrefs];
      if ([v21 count])
      {
        v62 = a1;
        v63 = v11;
        v64 = v10;
        v65 = v3;
        v22 = objc_opt_new();
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v61 = v21;
        v23 = v21;
        v24 = v22;
        obj = v23;
        v25 = [v23 countByEnumeratingWithState:&v70 objects:v76 count:16];
        v26 = type;
        if (!v25)
        {
          goto LABEL_23;
        }

        v27 = v25;
        v28 = *v71;
        v29 = _CPLog_to_os_log_type[6];
        v30 = v22;
        while (1)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v71 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v70 + 1) + 8 * i);
            v33 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:v32, v61];
            if (v33)
            {
              [v24 addObject:v33];
              v34 = DALoggingwithCategory();
              if (!os_log_type_enabled(v34, v26))
              {
                goto LABEL_21;
              }

              v35 = [v33 address];
              v36 = [v35 absoluteString];
              *buf = 138412290;
              v78 = v36;
              _os_log_impl(&dword_0, v34, type, "Found calendar user address: [%@]", buf, 0xCu);

              v26 = type;
            }

            else
            {
              v34 = DALoggingwithCategory();
              if (!os_log_type_enabled(v34, v29))
              {
                goto LABEL_21;
              }

              v35 = [v32 payloadAsString];
              *buf = 138412290;
              v78 = v35;
              _os_log_impl(&dword_0, v34, v29, "Unable to parse user address: [%@]", buf, 0xCu);
            }

LABEL_21:
            v24 = v30;
          }

          v27 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
          if (!v27)
          {
LABEL_23:

            [CalDAVCalendarUserAddress preferredAddress:v24];
            v38 = v37 = v24;
            v11 = v63;
            [v63 setPreferredAddress:v38];

            v5 = 0;
            v3 = v65;
            v10 = v64;
            v39 = v61;
            a1 = v62;
            goto LABEL_29;
          }
        }
      }

      v39 = v21;
      v37 = DALoggingwithCategory();
      v41 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_29;
      }

      *buf = 138412290;
      v78 = v20;
      v43 = "No href items found for calendar-user-address-set: [%@]";
      v44 = v37;
    }

    else
    {
      v40 = DALoggingwithCategory();
      v41 = _CPLog_to_os_log_type[4];
      v39 = v40;
      if (!os_log_type_enabled(v40, v41))
      {
LABEL_30:

        goto LABEL_31;
      }

      v42 = objc_opt_class();
      *buf = 138412290;
      v78 = v42;
      v37 = v42;
      v43 = "Unexpected parsing of calendar-user-address-set: %@";
      v44 = v39;
    }

    _os_log_impl(&dword_0, v44, v41, v43, buf, 0xCu);
LABEL_29:

    goto LABEL_30;
  }

  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1[4] + 24);
    *buf = 134217984;
    v78 = v8;
    _os_log_impl(&dword_0, v6, v7, "Number of matches exceeded the limit of: [%lu]", buf, 0xCu);
  }

  *(a1[4] + 32) = 1;
LABEL_64:
}

id sub_B498(uint64_t a1, uint64_t a2)
{
  v3 = [CalDAVPrincipalSearchSupport namespaceAndNameForWellKnownType:a2];
  v4 = [*(a1 + 32) objectForKey:v3];

  return v4;
}

void sub_BABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_BAF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    v3 = [v2 error];
    [WeakRetained _finishedWithError:v3];
  }
}

void sub_C19C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Hack to keep %@ from getting released too early", &v5, 0xCu);
  }
}

void sub_C7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_C804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 48));

    if (v4)
    {
      v5 = [WeakRetained error];
      if (!v5)
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v7 = 0;
          (*(v6 + 16))(v6, WeakRetained, &v7);
          v5 = v7;
        }

        else
        {
          v5 = 0;
        }
      }

      [v3 _finishWithError:v5];
    }
  }
}

id sub_C974(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CalDAVGetOfficeHoursTaskGroup alloc];
  v8 = [*(a1 + 32) taskManager];
  v9 = [v7 initWithAccountInfoProvider:v6 inboxURL:v5 taskManager:v8];

  return v9;
}

void sub_CA0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 calendarAvailability];
  if (v6 && ([CalDAVOfficeHour officeHoursFromICS:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;
    v10 = v7;
  }

  else
  {
    v11 = [v5 error];

    if (v11)
    {
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v12, v13))
      {
        v14 = [v5 accountInfoProvider];
        v15 = [v5 error];
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_0, v12, v13, "Error fetching office hours for account %@: %@", &v16, 0x16u);
      }

      if (a3)
      {
        *a3 = [NSError errorWithDomain:DAErrorDomain code:90 userInfo:0];
      }
    }
  }
}

id sub_CC50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (*(a1 + 32) && ([CalDAVOfficeHour icsFromOfficeHours:?], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [CalDAVSetOfficeHoursTaskGroup alloc];
    v12 = [*(a1 + 40) taskManager];
    v13 = [v11 initWithAccountInfoProvider:v7 inboxURL:v8 calendarAvailability:v10 taskManager:v12];
  }

  else if (a4)
  {
    [NSError errorWithDomain:DAErrorDomain code:91 userInfo:0];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_CF18(uint64_t a1)
{
  v3 = [*(a1 + 32) account];
  v2 = [*(a1 + 32) requestID];
  [v3 officeHoursRequestWithIDFinished:v2];
}

void sub_DB34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_DBA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForSearchTask:v2];
}

void sub_DC04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForTask:v2];
}

void sub_EB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EBC8(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained error];
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v2, v3, "Delete task at %@ finished with error %@", &v11, 0x16u);
  }

  v7 = [CalDAVCalendarPropertyRefreshOperation alloc];
  v8 = [*(*(a1 + 40) + 32) mobileCalDAVAccount];
  v9 = [v8 mainPrincipal];
  v10 = [v7 initWithPrincipal:v9];

  [v10 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setCurrentOperation:v10];
  [v10 refreshCalendarProperties];
}

void sub_EF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EF8C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    v6 = [v5 error];
    v16 = 138412546;
    v17 = WeakRetained;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_0, v2, v3, "Reply to shared calendar invitation task group %@ finished with error %@", &v16, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 error];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [v8 domain];
  if (([v9 isEqualToString:CoreDAVHTTPStatusErrorDomain] & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = [v8 code];

  if (v10 != &stru_158.nreloc)
  {
LABEL_8:
    v11 = [*(*(a1 + 32) + 32) dbHelper];
    v12 = [*(*(a1 + 32) + 32) accountID];
    [v11 calCloseDatabaseForAccountID:v12 save:0];

    v13 = *(a1 + 32);
    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 error];
    [v13 finishWithError:v15];

    goto LABEL_9;
  }

LABEL_6:
  [*(a1 + 32) _deleteSharingInvitationWithUID:*(a1 + 40)];
LABEL_9:
}

void sub_F348(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v3[41] = 1;
    if (*(*(a1 + 32) + 42))
    {
      v4 = *(a1 + 32);

      [v4 finishWithError:0];
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);

      [v6 _reallyRespondToSharingRequestWithCreateReplyGroupBlock:v5];
    }
  }

  else
  {
    v7 = [NSError errorWithDomain:DAErrorDomain code:77 userInfo:0];
    [v3 finishWithError:v7];
  }
}

void sub_FCCC(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Hack to keep %@ from getting released too early", &v5, 0xCu);
  }
}

uint64_t sub_107E8(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v2, v3, "Cancel complete. Unregistering ourself as a gatekeeper waiter", v8, 2u);
  }

  v4 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v4 unregisterWaiterForDataclassLocks:*(a1 + 32)];

  v5 = +[DARefreshManager sharedManager];
  [v5 unregisterDelegate:*(a1 + 32)];

  v6 = +[DABabysitter sharedBabysitter];
  [v6 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVRefresh"];

  *(*(a1 + 32) + 24) = 1;
  return (*(*(a1 + 40) + 16))();
}

id sub_115A8(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:v3 == 0];
  [v2 setObject:v4 forKeyedSubscript:@"success"];

  if (v3)
  {
    v5 = [*(a1 + 32) domain];
    [v2 setObject:v5 forKeyedSubscript:@"errorDomain"];

    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
    [v2 setObject:v6 forKeyedSubscript:@"errorCode"];
  }

  return v2;
}

void sub_11698(uint64_t a1)
{
  if ([*(a1 + 32) safeToRefresh])
  {
    v2 = DALoggingwithCategory();
    v3 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v2, v3))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v2, v3, "Saving account properties to pick up on new subscribed calendars", v5, 2u);
    }

    v4 = [*(a1 + 32) backingAccount];
    [v4 saveAccountProperties];
  }
}

BOOL sub_127EC(int a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v4 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    result = ValueAtIndex != 0;
    if (ValueAtIndex)
    {
      break;
    }
  }

  while (v4 != v5++);
  return result;
}

id sub_12D68(uint64_t a1)
{
  v5 = @"host";
  v1 = [*(a1 + 32) backingAccount];
  v2 = [v1 host];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_13538(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    *(v4 + 26) = 0;
    *(*(a1 + 32) + 27) = 1;
    v5 = *(a1 + 32);

    [v5 _continueRefresh];
  }

  else
  {
    if (*(v4 + 26) == 1)
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, v7, "Our gatekeeper locks were aborted while we were still waiting for a lock. What gives?", buf, 2u);
      }

      *(*(a1 + 32) + 26) = 0;
      v4 = *(a1 + 32);
    }

    *(v4 + 30) = 0;
    *(*(a1 + 32) + 31) = 0;
    *(*(a1 + 32) + 32) = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

    if (WeakRetained)
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v9, v10))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v9, v10, "Notifying consumer about our refresh completion", v15, 2u);
      }

      v11 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v12 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
      [v11 refreshDidCompleteWithError:v12];
    }

    v13 = +[DARefreshManager sharedManager];
    [v13 delegateDidCompleteRefresh:*(a1 + 32)];

    v14 = +[DABabysitter sharedBabysitter];
    [v14 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVRefresh"];
  }
}

void sub_13D8C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    *(v4 + 29) = 1;
    objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    v6.receiver = *(a1 + 32);
    v6.super_class = MobileCalDAVDaemonAccount;
    objc_msgSendSuper2(&v6, "discoverInitialPropertiesWithConsumer:");
  }

  else
  {
    *(v4 + 28) = 0;
    v5 = +[DABabysitter sharedBabysitter];
    [v5 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVValidityCheck"];
  }
}

void sub_14404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1442C(uint64_t a1)
{
  v5 = @"host";
  v1 = [*(a1 + 32) backingAccount];
  v2 = [v1 host];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_144EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancelOptionsTimer];

  v47 = a1;
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 optionsProbe];
  v7 = [v6 error];
  v8 = [v7 domain];
  v9 = [v8 isEqualToString:CoreDAVErrorDomain];
  if (v9 && (v44 = objc_loadWeakRetained((a1 + 40)), [v44 optionsProbe], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "error"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "code") == &dword_0 + 1))
  {
    ShouldTurnOnReachability = 1;
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 optionsProbe];
    v12 = [v11 error];
    ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();

    if (!v9)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  if (ShouldTurnOnReachability)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v13, v14))
    {
      v15 = objc_loadWeakRetained((v47 + 40));
      v45 = [v15 backingAccount];
      v16 = [v45 accountDescription];
      v41 = objc_loadWeakRetained((v47 + 40));
      v17 = [v41 backingAccount];
      v43 = [v17 publicDescription];
      v18 = objc_loadWeakRetained((v47 + 40));
      v19 = [v18 backingAccount];
      v42 = [v19 host];
      v20 = objc_loadWeakRetained((v47 + 40));
      v21 = [v20 optionsProbe];
      v22 = [v21 error];
      *buf = 138413058;
      v51 = v16;
      v52 = 2114;
      v53 = v43;
      v54 = 2112;
      v55 = v42;
      v56 = 2112;
      v57 = v22;
      _os_log_impl(&dword_0, v13, v14, "Account %@ (%{public}@) couldn't reach the server at %@: %@", buf, 0x2Au);
    }

    v23 = objc_loadWeakRetained((v47 + 40));
    v24 = [v23 shouldRegisterWithRefreshManager];

    if (v24)
    {
      v25 = objc_loadWeakRetained((v47 + 40));
      [v25 setShouldRegisterWithRefreshManager:0];

      v26 = objc_loadWeakRetained((v47 + 40));
      v27 = [v26 mainPrincipal];
      [v27 setShouldUpdatePushDelegate:1];

      v28 = +[DARefreshManager sharedManager];
      v29 = objc_loadWeakRetained((v47 + 40));
      [v28 registerDelegate:v29];
    }

    v30 = +[DARefreshManager sharedManager];
    v31 = objc_loadWeakRetained((v47 + 40));
    [v30 delegateDidCompleteRefresh:v31];
  }

  v32 = objc_loadWeakRetained((v47 + 40));
  [v32 setOptionsProbe:0];

  v49 = ShouldTurnOnReachability ^ 1;
  objc_copyWeak(&v48, (v47 + 40));
  AnalyticsSendEventLazy();
  if (ShouldTurnOnReachability)
  {
    *(*(v47 + 32) + 32) = 0;
  }

  else
  {
    v33 = DALoggingwithCategory();
    v34 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v33, v34))
    {
      v35 = objc_loadWeakRetained((v47 + 40));
      v36 = [v35 backingAccount];
      v37 = [v36 host];
      *buf = 138412290;
      v51 = v37;
      _os_log_impl(&dword_0, v33, v34, "We were able to reach the server at %@. Continuing with the refresh", buf, 0xCu);
    }

    v38 = objc_loadWeakRetained((v47 + 40));
    [v38 _refresh];
  }

  v39 = +[DABabysitter sharedBabysitter];
  v40 = objc_loadWeakRetained((v47 + 40));
  [v39 unregisterAccount:v40 forOperationWithName:@"CalDAVProbe"];

  objc_destroyWeak(&v48);
}

id sub_14A74(uint64_t a1)
{
  v8[0] = @"success";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[1] = @"host";
  v9[0] = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backingAccount];
  v5 = [v4 host];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

void sub_15D34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVGrantedDelegatesListRequest.m" lineNumber:53 description:@"Should be finished before we dealloc"];
}

void sub_15DBC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDADaemonAccount.m" lineNumber:106 description:@"Expected an ACAccount"];
}

void sub_15E30()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_15E9C()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_15F08()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_15F74()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_15FE0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVCalendarAvailabilityRequest.m" lineNumber:72 description:@"Should be finished before we dealloc"];
}

void sub_16054(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDirectorySearch.m" lineNumber:80 description:@"Should be finished before we dealloc"];
}

void sub_160C8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVUpdateGrantedDelegatePermissionRequest.m" lineNumber:54 description:@"Should be finished before we dealloc"];
}

void sub_1613C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVGroupExpansion.m" lineNumber:98 description:@"Should be finished before we dealloc"];
}

void sub_161B0()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1621C()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_16288()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_162F4()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_16360()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_163CC()
{
  sub_8100();
  v1 = +[NSAssertionHandler currentHandler];
  sub_810C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}