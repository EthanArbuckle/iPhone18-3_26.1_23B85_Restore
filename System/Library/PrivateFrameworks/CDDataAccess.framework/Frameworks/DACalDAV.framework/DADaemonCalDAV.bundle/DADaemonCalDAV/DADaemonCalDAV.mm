void sub_1758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1788(uint64_t a1)
{
  if ([*(a1 + 32) isMonitoring])
  {
    v2 = DALoggingwithCategory();
    v3 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v2, v3))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v2, v3, "__CalDatabaseChangedExternally", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reallyRefresh];
  }
}

void sub_1B60(uint64_t a1, uint64_t a2)
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
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_0, v5, v6, "Account %@ can't figure out its principalPath, and we couldn't get a password from the user ", &v12, 0xCu);
    }
  }

  else
  {
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, _CPLog_to_os_log_type[6]))
    {
      v10 = [*(a1 + 32) account];
      v11 = [v10 accountDescription];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_0, v5, v9, "Got a password from the user. Attempting autodiscovery again for %@", &v12, 0xCu);
    }

    v5 = [*(a1 + 32) account];
    [v5 discoverInitialPropertiesWithConsumer:*(a1 + 32)];
  }
}

void sub_1F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1F94(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "reachability indicates that the network is reachable.  We're going to retry our folder sync.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateAndSync];
}

void sub_2FC4(uint64_t a1, uint64_t a2, void *a3)
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
      v10 = [v9 parentAccount];
      v11 = [v10 dataclassProperties];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_0, v6, v8, "Updated account properties are %@", &v14, 0xCu);
    }

    v6 = sharedDAAccountStore();
    v12 = [*(a1 + 32) backingAccountInfo];
    v13 = [v12 parentAccount];
    [v6 saveVerifiedAccount:v13 withCompletionHandler:&stru_20528];
  }
}

void sub_316C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = @"NOT ";
    if (v3)
    {
      v6 = &stru_20990;
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "Backing parent AppleAccount was %@saved successfully.", &v7, 0xCu);
  }
}

void sub_33C8(id a1)
{
  qword_26A60 = [[AKAppleIDSession alloc] initWithIdentifier:@"CardDAViCloudDaemonAccount"];

  _objc_release_x1();
}

void sub_421C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Stupid hack to get %@ retained", &v5, 0xCu);
  }
}

void sub_520C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(*(a1 + 32) + 73) = 1;
    v4 = *(a1 + 32);
    if (v4[74])
    {

      [v4 _finishWithError:0];
    }

    else
    {

      [v4 _reallyPerformSearch];
    }
  }

  else
  {
    v5 = [NSError errorWithDomain:DAErrorDomain code:85 userInfo:0];
    [*(a1 + 32) _finishWithError:v5];
  }
}

void sub_55F0(uint64_t a1, void *a2)
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

void sub_599C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_59D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForTask:v2];
}

void sub_5B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_5F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_5F64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResponseForTask:v2];
}

void sub_6318(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 errorItem];
  v5 = [v4 numberOfMatchesWithinLimits];

  if (!v5)
  {
    [v3 successfulPropertiesToValues];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_6B9C;
    v9 = v66[3] = &unk_20680;
    v67 = v9;
    v10 = objc_retainBlock(v66);
    v11 = objc_alloc_init(DAECalendarDirectorySearchResult);
    v12 = (v10[2])(v10, 3);
    v13 = [v12 payloadAsString];

    [v11 setDisplayName:v13];
    v14 = DALoggingwithCategory();
    type = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, type))
    {
      *buf = 138412290;
      v70 = v13;
      _os_log_impl(&dword_0, v14, type, "Encountered result with displayName: [%@]", buf, 0xCu);
    }

    v15 = (v10[2])(v10, 6);
    v60 = v9;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = v13;
        v16 = [v15 hrefs];
        if ([v16 count])
        {
          v56 = v11;
          v58 = v15;
          v51 = a1;
          v52 = v10;
          v53 = v3;
          v17 = objc_opt_new();
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v50 = v16;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v62 objects:v68 count:16];
          v20 = type;
          if (v19)
          {
            v21 = v19;
            v22 = *v63;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v63 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = [CalDAVCalendarUserAddressItemTranslator calDAVUserAddressForItem:*(*(&v62 + 1) + 8 * i), v50];
                [v17 addObject:v24];
                v25 = DALoggingwithCategory();
                if (os_log_type_enabled(v25, v20))
                {
                  v26 = [v24 address];
                  v27 = [v26 absoluteString];
                  *buf = 138412290;
                  v70 = v27;
                  _os_log_impl(&dword_0, v25, type, "Found calendar user address: [%@]", buf, 0xCu);

                  v20 = type;
                }
              }

              v21 = [v18 countByEnumeratingWithState:&v62 objects:v68 count:16];
            }

            while (v21);
          }

          v28 = [CalDAVCalendarUserAddress preferredAddress:v17];
          v11 = v56;
          [v56 setPreferredAddress:v28];

          v5 = 0;
          v3 = v53;
          a1 = v51;
          v10 = v52;
          v15 = v58;
          v16 = v50;
        }

        else
        {
          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, type))
          {
            *buf = 138412290;
            v70 = v15;
            _os_log_impl(&dword_0, v17, type, "No href items found for calendar-user-address-set: [%@]", buf, 0xCu);
          }
        }

        v13 = v54;
      }

      else
      {
        v57 = v11;
        v16 = DALoggingwithCategory();
        v29 = _CPLog_to_os_log_type[4];
        if (os_log_type_enabled(v16, v29))
        {
          v30 = objc_opt_class();
          *buf = 138412290;
          v70 = v30;
          v31 = v13;
          v32 = v30;
          _os_log_impl(&dword_0, v16, v29, "Unexpected parsing of calendar-user-address-set: %@", buf, 0xCu);

          v13 = v31;
        }

        v11 = v57;
      }
    }

    v33 = (v10[2])(v10, 5);
    v34 = [v33 payloadAsString];
    v35 = [v34 da_trimWhiteSpace];

    if (!v35)
    {
      goto LABEL_39;
    }

    v36 = DALoggingwithCategory();
    if (os_log_type_enabled(v36, type))
    {
      *buf = 138412290;
      v70 = v35;
      _os_log_impl(&dword_0, v36, type, "Calendar user type: [%@]", buf, 0xCu);
    }

    if ([v35 isEqualToString:@"INDIVIDUAL"])
    {
      v37 = 5;
      goto LABEL_38;
    }

    if ([v35 isEqualToString:@"ROOM"])
    {
      v37 = 6;
      goto LABEL_38;
    }

    if ([v35 isEqualToString:@"GROUP"])
    {
      v37 = 7;
      goto LABEL_38;
    }

    if ([v35 isEqualToString:@"RESOURCE"])
    {
      v37 = 8;
LABEL_38:
      v38 = a1[v37];
      if (v38)
      {
LABEL_59:
        [v38 addObject:{v11, v50}];

        goto LABEL_60;
      }

LABEL_39:
      v59 = v15;
      v39 = v13;
      v40 = (v10[2])(v10, 7);
      v41 = [v40 payloadAsString];
      v42 = [v41 da_trimWhiteSpace];

      v43 = DALoggingwithCategory();
      if (os_log_type_enabled(v43, type))
      {
        *buf = 138412290;
        v70 = v42;
        _os_log_impl(&dword_0, v43, type, "Record type: [%@]", buf, 0xCu);
      }

      if (v42)
      {
        if ([v42 isEqualToString:@"users"])
        {
          v44 = a1[5];
LABEL_50:
          v38 = v44;
LABEL_58:

          v13 = v39;
          v15 = v59;
          goto LABEL_59;
        }

        if ([v42 isEqualToString:@"locations"])
        {
          v44 = a1[6];
          goto LABEL_50;
        }

        if ([v42 isEqualToString:@"groups"])
        {
          v44 = a1[7];
          goto LABEL_50;
        }

        if ([v42 isEqualToString:@"resources"])
        {
          v44 = a1[8];
          goto LABEL_50;
        }

        v49 = DALoggingwithCategory();
        if (os_log_type_enabled(v49, type))
        {
          *buf = 138412290;
          v70 = v42;
          _os_log_impl(&dword_0, v49, type, "Unrecognized record type encountered during directory search: [%@]", buf, 0xCu);
        }
      }

      v38 = 0;
      goto LABEL_58;
    }

    v55 = v13;
    v45 = [v35 isEqualToString:@"UNKNOWN"];
    v46 = DALoggingwithCategory();
    v47 = os_log_type_enabled(v46, type);
    if (v45)
    {
      if (v47)
      {
        *buf = 138412290;
        v70 = v35;
        v48 = "Known calendar user type encountered but not handled: [%@]";
LABEL_63:
        _os_log_impl(&dword_0, v46, type, v48, buf, 0xCu);
      }
    }

    else if (v47)
    {
      *buf = 138412290;
      v70 = v35;
      v48 = "Unrecognized calendar user type encountered during directory search: [%@]";
      goto LABEL_63;
    }

    v13 = v55;
    goto LABEL_39;
  }

  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1[4] + 24);
    *buf = 134217984;
    v70 = v8;
    _os_log_impl(&dword_0, v6, v7, "Number of matches exceeded the limit of: [%lu]", buf, 0xCu);
  }

  *(a1[4] + 32) = 1;
LABEL_60:
}

id sub_6B9C(uint64_t a1, uint64_t a2)
{
  v3 = [CalDAVPrincipalSearchSupport namespaceAndNameForWellKnownType:a2];
  v4 = [*(a1 + 32) objectForKey:v3];

  return v4;
}

void sub_7238(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Stupid hack to keep %@ from getting released too early", &v5, 0xCu);
  }
}

void sub_7EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7FBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7FD4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 daIsNotificationsCollection])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_804C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uuidString];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_80E4(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained error];
    v7 = [*(*(a1 + 40) + 32) accountID];
    v8 = *(a1 + 40);
    v9 = *(v8 + 24);
    v10 = *(v8 + 8);
    v14 = 138413314;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_0, v2, v3, "MobileCalDAVSharingResponse: Delete task at _deleteSharingInvitationWithUID finished with {url: %@, error: %@, accountID: %@, calendarID: %@, responseID: %@}", &v14, 0x34u);
  }

  v11 = [CalDAVCalendarPropertyRefreshOperation alloc];
  v12 = [*(*(a1 + 40) + 32) mainPrincipal];
  v13 = [v11 initWithPrincipal:v12];

  [v13 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setCurrentOperation:v13];
  [v13 refreshCalendarProperties];
}

void sub_86FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8724(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v2, v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    v6 = [v5 error];
    v12 = 138412546;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v2, v3, "MobileCalDAVSharingResponse: Reply to shared calendar invitation task group %@ finished with optional error %@", &v12, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 error];

  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = objc_loadWeakRetained((a1 + 48));
    v11 = [v10 error];
    [v9 finishWithError:v11];
  }

  else
  {
    [*(a1 + 32) _deleteSharingInvitationWithUID:*(a1 + 40)];
  }
}

void sub_8A88(uint64_t a1, uint64_t a2, int a3)
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

void sub_969C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Stupid hack to keep %@ from getting released too early", &v5, 0xCu);
  }
}

uint64_t sub_A2F8(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v2, v3))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v2, v3, "Cancel complete. Unregistering ourself as a gatekeeper waiter", v9, 2u);
  }

  v4 = *(a1 + 32);
  if (v4[50] == 1 || (v4[51] & 1) != 0 || (v4[52] & 1) != 0 || v4[53] == 1)
  {
    v4[50] = 0;
    *(*(a1 + 32) + 51) = 0;
    *(*(a1 + 32) + 52) = 0;
    *(*(a1 + 32) + 53) = 0;
    v5 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v5 unregisterWaiterForDataclassLocks:*(a1 + 32)];
  }

  v6 = +[DARefreshManager sharedManager];
  [v6 unregisterDelegate:*(a1 + 32)];

  v7 = +[DABabysitter sharedBabysitter];
  [v7 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVRefresh"];

  *(*(a1 + 32) + 48) = 1;
  return (*(*(a1 + 40) + 16))();
}

void sub_BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_CC18(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    *(v4 + 50) = 0;
    *(*(a1 + 32) + 51) = 1;
    v5 = *(a1 + 32);

    [v5 _continueRefresh];
  }

  else
  {
    if (*(v4 + 50) == 1)
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v6, v7))
      {
        v8 = [*(a1 + 40) transactionId];
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_0, v6, v7, "Our gatekeeper locks were aborted while we were still waiting for a lock. What gives? txnID: %{public}@", &v16, 0xCu);
      }

      *(*(a1 + 32) + 50) = 0;
      v4 = *(a1 + 32);
    }

    *(v4 + 54) = 0;
    *(*(a1 + 32) + 55) = 0;
    *(*(a1 + 32) + 56) = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));

    if (WeakRetained)
    {
      v10 = DALoggingwithCategory();
      v11 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v10, v11))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_0, v10, v11, "Notifying consumer about our refresh completion", &v16, 2u);
      }

      v12 = objc_loadWeakRetained((*(a1 + 32) + 32));
      v13 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
      [v12 refreshDidCompleteWithError:v13];
    }

    v14 = +[DARefreshManager sharedManager];
    [v14 delegateDidCompleteRefresh:*(a1 + 32)];

    v15 = +[DABabysitter sharedBabysitter];
    [v15 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVRefresh"];
  }
}

void sub_D550(uint64_t a1, uint64_t a2, int a3)
{
  *(*(a1 + 32) + 52) = 0;
  v4 = *(a1 + 32);
  if (a3)
  {
    *(v4 + 53) = 1;
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    v6.receiver = *(a1 + 32);
    v6.super_class = MobileCalDAVDaemonAccount;
    objc_msgSendSuper2(&v6, "discoverInitialPropertiesWithConsumer:");
  }

  else
  {
    *(v4 + 52) = 0;
    v5 = +[DABabysitter sharedBabysitter];
    [v5 unregisterAccount:*(a1 + 32) forOperationWithName:@"CalDAVValidityCheck"];
  }
}

void sub_DA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DAB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelOptionsTimer];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 optionsProbe];
  v5 = [v4 error];
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:CoreDAVErrorDomain];
  if (!v7)
  {
LABEL_5:
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 optionsProbe];
    v14 = [v13 error];
    ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();

    v9 = v44;
    v8 = v45;
    v10 = v43;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 optionsProbe];
  v10 = [v9 error];
  if ([v10 code] != &dword_0 + 1)
  {
    v43 = v10;
    v44 = v9;
    v45 = v8;
    goto LABEL_5;
  }

  ShouldTurnOnReachability = 1;
LABEL_6:

LABEL_7:
  if (ShouldTurnOnReachability)
  {
    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v15, v16))
    {
      v17 = objc_loadWeakRetained((a1 + 32));
      v18 = [v17 accountDescription];
      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = [v19 host];
      v21 = objc_loadWeakRetained((a1 + 32));
      v22 = [v21 optionsProbe];
      v23 = [v22 error];
      *buf = 138412802;
      v47 = v18;
      v48 = 2112;
      v49 = v20;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_0, v15, v16, "Account %@ couldn't reach the server at %@: %@", buf, 0x20u);
    }

    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v24 shouldRegisterWithRefreshManager];

    if (v25)
    {
      v26 = objc_loadWeakRetained((a1 + 32));
      [v26 setShouldRegisterWithRefreshManager:0];

      v27 = objc_loadWeakRetained((a1 + 32));
      v28 = [v27 mainPrincipal];
      [v28 setShouldUpdatePushDelegate:1];

      v29 = +[DARefreshManager sharedManager];
      v30 = objc_loadWeakRetained((a1 + 32));
      [v29 registerDelegate:v30];
    }

    v31 = +[DARefreshManager sharedManager];
    v32 = objc_loadWeakRetained((a1 + 32));
    [v31 delegateDidCompleteRefresh:v32];

    v33 = objc_loadWeakRetained((a1 + 32));
    [v33 setOptionsProbe:0];

    v34 = objc_loadWeakRetained((a1 + 32));
    v35 = [v34 host];
    [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.probefailed", v35];
    ADClientAddValueForScalarKey();
  }

  else
  {
    v36 = objc_loadWeakRetained((a1 + 32));
    [v36 setOptionsProbe:0];

    v37 = DALoggingwithCategory();
    v38 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v37, v38))
    {
      v39 = objc_loadWeakRetained((a1 + 32));
      v40 = [v39 host];
      *buf = 138412290;
      v47 = v40;
      _os_log_impl(&dword_0, v37, v38, "We were able to reach the server at %@. Continuing with the refresh", buf, 0xCu);
    }

    ADClientAddValueForScalarKey();
    v34 = objc_loadWeakRetained((a1 + 32));
    [v34 _refresh];
  }

  v41 = +[DABabysitter sharedBabysitter];
  v42 = objc_loadWeakRetained((a1 + 32));
  [v41 unregisterAccount:v42 forOperationWithName:@"CalDAVProbe"];
}

void sub_EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (v3)
  {
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v4, v6))
    {
      v7 = [*(a1 + 32) remObjectID];
      v8 = *(a1 + 40);
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVDaemonAccount failed to save personID {remAccount: %{public}@, changeSource: %{public}@, saveError: %@}", &v15, 0x20u);
    }
  }

  else
  {
    v9 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v9))
    {
      v10 = [*(a1 + 32) remObjectID];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = [*(a1 + 64) base64EncodedStringWithOptions:0];
      v15 = 138544386;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_0, v5, v9, "MobileCalDAVDaemonAccount saved account personID {remAccount: %{public}@, changeSource: %{public}@, newPersonID: %@, oldPersonID: %@, salt: %@}", &v15, 0x34u);
    }
  }
}

void sub_F3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (v3)
  {
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v4, v6))
    {
      v7 = [*(a1 + 32) remObjectID];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v14 = 138544130;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "MobileCalDAVDaemonAccount failed to reset personID to nil {remAccount: %{public}@, changeSource: %{public}@, saltError: %{public}@, saveError: %@}";
LABEL_6:
      _os_log_impl(&dword_0, v5, v6, v10, &v14, 0x2Au);
    }
  }

  else
  {
    v6 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v6))
    {
      v7 = [*(a1 + 32) remObjectID];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = 138544130;
      v15 = v7;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v10 = "MobileCalDAVDaemonAccount has reset account personID to nil {remAccount: %{public}@, changeSource: %{public}@, saltError: %{public}@, oldPersonID: %@}";
      goto LABEL_6;
    }
  }
}

void sub_F8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F938(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v4);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained primaryCloudKitAccountPersonIDSaltChangeObserver];
    v8 = [v7 description];

    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 1024;
      LODWORD(v29) = [v6 isRefreshing];
      _os_log_impl(&dword_0, v9, v10, "MobileCalDAVDaemonAccount received a primary CK account personIDSalt change or initial value {observer: %{public}@, logTracingID: %{public}@, isRefreshing?: %d}", buf, 0x1Cu);
    }

    if ([v6 isRefreshing])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = sub_FCA0;
      v30 = sub_FCB0;
      v31 = 0;
      v12 = objc_loadWeakRetained((a1 + 56));
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_FCB8;
      v19[3] = &unk_20900;
      objc_copyWeak(&v26, (a1 + 56));
      v25 = buf;
      objc_copyWeak(v27, (a1 + 48));
      v13 = kRDCalDAVMobileAccountRefreshDidCompleteNotificationName;
      v20 = *(a1 + 32);
      v21 = v6;
      v14 = *(a1 + 40);
      v27[1] = *(a1 + 64);
      v22 = v14;
      v8 = v8;
      v23 = v8;
      v24 = v3;
      v15 = [v12 addObserverForName:v13 object:v6 queue:0 usingBlock:v19];
      v16 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v15;

      [v6 setRefreshDidCompleteObserver:*(*&buf[8] + 40)];
      objc_destroyWeak(v27);
      objc_destroyWeak(&v26);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      [v6 _rd_saveAccountPersonIDHashedWithSalt:v3 changeSource:v8];
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v17))
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_0, v8, v17, "MobileCalDAVDaemonAccount instance is no longer available upon our RDAccountPersonIDSaltObserver success handler is called {logTracingID: %{public}@}", buf, 0xCu);
    }
  }
}

void sub_FC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 88));
  objc_destroyWeak((v15 + 80));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_FCA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_FCB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained removeObserver:*(*(*(a1 + 72) + 8) + 40)];

  v3 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v3);

  v4 = objc_loadWeakRetained((a1 + 88));
  if (v4)
  {
    if ([*(a1 + 40) isRefreshing])
    {
      sub_10758(a1);
    }

    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVDaemonAccount(RefreshDidComplete) now actually handling the received primary CK account personIDSalt change or initial value {observer: %{public}@, logTracingID: %{public}@}", &v12, 0x16u);
    }

    [v4 _rd_saveAccountPersonIDHashedWithSalt:*(a1 + 64) changeSource:*(a1 + 56)];
    [v4 setRefreshDidCompleteObserver:0];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_0, v9, v10, "MobileCalDAVDaemonAccount instance is no longer available when received refreshDidComplete after waiting for it at RDAccountPersonIDSaltObserver success handler {logTracingID: %{public}@}", &v12, 0xCu);
    }
  }
}

void sub_FE68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dataaccess_get_global_queue();
  dispatch_assert_queue_V2(v4);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained primaryCloudKitAccountPersonIDSaltChangeObserver];
    v8 = [v7 description];

    if (([*(a1 + 40) rd_isPersonIDSaltInitiallyNilError:v3] & 1) == 0)
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v9, v10))
      {
        v13 = 138543618;
        v14 = v8;
        v15 = 2114;
        v16 = v3;
        _os_log_impl(&dword_0, v9, v10, "MobileCalDAVDaemonAccount received a primary CK account personIDSalt error {observer: %{public}@, saltError: %{public}@}", &v13, 0x16u);
      }

      [v6 _rd_resetAccountPersonIDWithError:v3 changeSource:v8];
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v11))
    {
      v12 = *(a1 + 32);
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_0, v8, v11, "MobileCalDAVDaemonAccount instance is no longer available upon our RDAccountPersonIDSaltObserver error handler is called {logTracingID: %{public}@}", &v13, 0xCu);
    }
  }
}

void sub_10158()
{
  sub_4CAC();
  v0 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_101B4()
{
  sub_4CAC();
  v0 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10210()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1027C()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_102E8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDirectorySearch.m" lineNumber:80 description:@"Should be finished before we dealloc"];
}

void sub_1035C()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_103C8()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10434()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_104A0()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1050C()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10578()
{
  sub_4CAC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4CB8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_105E4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDaemonAccount.m" lineNumber:1117 description:{@"Invalid parameter not satisfying: %@", @"salt.length"}];
}

void sub_10660(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDaemonAccount.m" lineNumber:1149 description:{@"Invalid parameter not satisfying: %@", @"salt.length"}];
}

void sub_106DC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVDaemonAccount.m" lineNumber:1184 description:{@"Invalid parameter not satisfying: %@", @"saltError != nil"}];
}

void sub_10758(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 96) object:*(a1 + 48) file:@"MobileCalDAVDaemonAccount.m" lineNumber:1247 description:{@"Invalid parameter not satisfying: %@", @"!strongSelf.isRefreshing"}];
}