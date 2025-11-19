BOOL sub_1910(uint64_t a1, const void *a2, signed int a3, int a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = DALoggingwithCategory();
  v12 = v11;
  if (!a1)
  {
    v27 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v11, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, v27, "Couldn't get a store or database to clear AddressBook changes", buf, 2u);
    }

    goto LABEL_22;
  }

  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v13))
  {
    if (a4)
    {
      v14 = @"Group";
    }

    else
    {
      v14 = @"Person";
    }

    *buf = 138412802;
    v30 = v14;
    v31 = 1024;
    RecordID = ABRecordGetRecordID(a2);
    v33 = 1024;
    v34 = a3;
    _os_log_impl(&dword_0, v12, v13, "Clearing %@ changes in store %d to index %d", buf, 0x18u);
  }

  v15 = v10[2](v10, a1, a2);
  if (!v15)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_25;
  }

  v16 = v15;
  if (CFDictionaryGetCount(v15) >= 1 && (Value = CFDictionaryGetValue(v16, kABChangeHistoryChangeTableRowIDsKey), v18 = CFDictionaryGetValue(v16, kABChangeHistorySequenceNumbersKey), Value) && (v19 = v18, v20 = CFArrayGetCount(Value), v20 >= 1))
  {
    v21 = v20;
    Mutable = CFArrayCreateMutable(0, v20, 0);
    for (i = 0; i != v21; ++i)
    {
      CFArrayGetValueAtIndex(v19, i);
      ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
      if (ValueAtIndex <= a3)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }

    Count = CFArrayGetCount(Mutable);
    v26 = Count > 0;
    if (Count > 0)
    {
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v16);
LABEL_25:

  return v26;
}

const void *sub_1B9C(void *a1)
{
  v8[0] = kABChangeHistoryChangeTableRowIDsKey;
  v8[1] = kABChangeHistorySequenceNumbersKey;
  v8[2] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v8 count:3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  v6 = EntityChangesSinceSequenceNumberForClient;
  if (EntityChangesSinceSequenceNumberForClient)
  {
    CFRetain(EntityChangesSinceSequenceNumberForClient);
  }

  return v6;
}

const void *sub_1C64(void *a1)
{
  v8[0] = kABChangeHistoryChangeTableRowIDsKey;
  v8[1] = kABChangeHistorySequenceNumbersKey;
  v8[2] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v8 count:3];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  v6 = EntityChangesSinceSequenceNumberForClient;
  if (EntityChangesSinceSequenceNumberForClient)
  {
    CFRetain(EntityChangesSinceSequenceNumberForClient);
  }

  return v6;
}

void sub_343C(id a1)
{
  qword_46F20 = os_log_create("com.apple.dataaccess", "summary");

  _objc_release_x1();
}

id sub_3E90(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    return [v3 refreshFolderListRequireChangedFolders:0 isUserRequested:v4];
  }

  else
  {
    v6 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) account];
      v8 = [v7 accountDescription];
      v9 = [*(a1 + 32) account];
      v10 = [v9 publicDescription];
      v11 = 138412546;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Account %@ (%{public}@) isn't reachable. Deferring sync.", &v11, 0x16u);
    }

    return [*(a1 + 32) setSyncWhenReachable:1];
  }
}

void sub_44D4(uint64_t a1, uint64_t a2)
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
      v9 = [*(a1 + 40) publicDescription];
      v14 = 138412546;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_0, v5, v6, "Account %@ (%{public}@) can't figure out its principalPath, and we couldn't get a password from the user ", &v14, 0x16u);
    }
  }

  else
  {
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, _CPLog_to_os_log_type[6]))
    {
      v11 = [*(a1 + 32) account];
      v12 = [v11 accountDescription];
      v13 = [*(a1 + 40) publicDescription];
      v14 = 138412546;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_0, v5, v10, "Got a password from the user. Attempting autodiscovery again for account %@ (%{public}@)", &v14, 0x16u);
    }

    v5 = [*(a1 + 32) account];
    [v5 discoverInitialPropertiesWithConsumer:*(a1 + 32)];
  }
}

void sub_4844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4874(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) publicDescription];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_0, v2, v3, "reachability indicates that the network is reachable.  We're going to retry our folder sync with %{public}@.", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Network is now reachable; sync will occur", &v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _validateAndSync:0];
}

void sub_6298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_25620(a1);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = [v7 action];
  v9 = [v8 itemChangeType];

  if (v9 == &dword_0 + 1)
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v10 = [v7 action];
    v11 = *(a1 + 40);
    v12 = [v7 externalURL];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  else
  {
    v13 = [v7 action];
    v14 = [v13 itemChangeType];

    if (!v14)
    {
      v15 = [v7 action];
      v16 = *(a1 + 48);
      v17 = [v7 externalUUID];
      [v16 setObject:v15 forKeyedSubscript:v17];

      ++*(*(*(a1 + 72) + 8) + 24);
    }
  }

LABEL_7:
  v18 = *(*(*(a1 + 72) + 8) + 24);
  if (v18 <= 0xC7)
  {
    if (v18 >= 2)
    {
      if (CFAbsoluteTimeGetCurrent() - *(a1 + 88) > 5.0)
      {
        v19 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v19, v20))
        {
          LOWORD(v24.blocks_in_use) = 0;
          v21 = "Will avoid to block dataaccessd for too long during initial sync - slowing down pushes";
LABEL_15:
          _os_log_impl(&dword_0, v19, v20, v21, &v24, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      memset(&v24, 0, sizeof(v24));
      malloc_zone_statistics(0, &v24);
      if (v24.size_in_use - *(a1 + 96) > 0xA00000)
      {
        v19 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v19, v20))
        {
          LOWORD(v24.blocks_in_use) = 0;
          v21 = "Will avoid using too much memory during initial sync - slowing down pushes";
          goto LABEL_15;
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    v22 = 1;
    goto LABEL_19;
  }

LABEL_17:
  v22 = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_19:

  return v22;
}

void sub_8A6C(id a1)
{
  v1[0] = kABPersonFirstNameProperty;
  v1[1] = kABPersonMiddleNameProperty;
  v1[2] = kABPersonLastNameProperty;
  v1[3] = kABPersonSuffixProperty;
  v1[4] = kABPersonOrganizationProperty;
  qword_46F28 = CFArrayCreate(kCFAllocatorDefault, v1, 5, 0);
}

void sub_8D90(uint64_t a1, uint64_t a2, char a3)
{
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  v8 = os_log_type_enabled(v6, v7);
  if (a3)
  {
    if (v8)
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_0, v6, v7, "CardDAVAgent: locks granted for dataclasses %lx", &v10, 0xCu);
    }

    [*(a1 + 32) _reallySyncRequest:*(a1 + 40)];
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_0, v6, v7, "lock for %@ aborted", &v10, 0xCu);
    }
  }
}

id sub_9E58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _holdingDataClassLock_refreshPropertiesOfAllContactFoldersWithCompletion:v5];
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v6, v7, "refreshPropertiesOfAllContactFoldersWithCompletion: %@ failed to acquire data class lock, skipping container property update and aborting sync.", &v10, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void sub_A504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_A594(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [v7 error];

    if (!v9)
    {
      v11 = [*(a1 + 32) account];
      *(*(*(a1 + 48) + 8) + 24) |= [v11 applyRefreshedValuesFromPropFind:v7 toContainer:v8];
      goto LABEL_8;
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v10 = CoreDAVErrorDomain;
  v11 = [v7 error];
  v12 = [v11 domain];
  if (([v10 isEqualToString:v12] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [v7 error];
  v14 = [v13 code];

  if (v14 == &dword_0 + 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_9:
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 24) + 1;
  *(v15 + 24) = v16;
  if (v16 == *(a1 + 80))
  {
    if (+[DABehaviorOptions useContactsFramework])
    {
      v17 = objc_alloc_init(CNSaveRequest);
      [v8 updateSaveRequest:v17];
      v18 = [*(a1 + 32) databaseHelper];
      [v18 addSaveRequest:v17];

      v19 = [*(a1 + 32) databaseHelper];
      [v19 executeAllSaveRequests];
    }

    else
    {
      v17 = [*(a1 + 32) databaseHelper];
      [v17 abCloseDBAndSave:*(*(*(a1 + 48) + 8) + 24)];
    }

    v20 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v20 relinquishLocksForWaiter:*(a1 + 32) dataclasses:2 moreComing:0];

    v21 = *(*(*(a1 + 56) + 8) + 24);
    v22 = *(*(*(a1 + 64) + 8) + 24);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_A7DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(v2 + 16))(v2, v3, WeakRetained, *(a1 + 40));
}

void *sub_A9C8(void *result, int a2)
{
  if (a2)
  {
    v2 = result[4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_AA40;
    v3[3] = &unk_3CA30;
    v3[4] = v2;
    return [v2 refreshPropertiesOfAllContactFoldersWithCompletion:v3];
  }

  return result;
}

id *sub_AA40(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _syncAllContactFoldersWithRemoteChanges:1];
  }

  return result;
}

id *sub_AA54(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] _syncAllContactFoldersWithRemoteChanges:1];
  }

  return result;
}

id sub_AB04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (!v3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_ABBC;
    v8[3] = &unk_3CA80;
    v8[4] = v2;
    v4 = sub_ABBC(v8);
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;

    v3 = *(*(a1 + 32) + 104);
  }

  return v3;
}

id sub_ABBC(uint64_t a1)
{
  v1 = [*(a1 + 32) account];
  v2 = [v1 backingAccountInfo];

  v3 = [v2 displayAccount];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 _cn_isPrimaryAccount]);

  return v4;
}

id sub_ACD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (!v3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_AD90;
    v8[3] = &unk_3CA80;
    v8[4] = v2;
    v4 = sub_AD90(v8);
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = v4;

    v3 = *(*(a1 + 32) + 112);
  }

  return v3;
}

id sub_AD90(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v3 = [v2 backingAccountInfo];

  v4 = sharedDAAccountStore();
  v5 = [v4 parentAccountForAccount:v3];
  v6 = [*(a1 + 32) account];
  v7 = [v6 accountID];

  if (v5)
  {
    v8 = [v5 aa_altDSID];
    if (v8)
    {
      v9 = +[CNFamilyCircle familyCircle];
      if (([v9 isSuccess]& 1) == 0)
      {
        v10 = DALoggingwithCategory();
        v11 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v10, v11))
        {
          v12 = [v9 error];
          *buf = 138543618;
          v23 = v7;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_0, v10, v11, "FamilyCircle lookup failed for account %{public}@ with error: %@. Returning assumption that account holder is not U18.", buf, 0x16u);
        }
      }

      v13 = [v9 value];
      v14 = [v13 members];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_B0DC;
      v20[3] = &unk_3CAD0;
      v21 = v8;
      v15 = [v14 _cn_firstObjectPassingTest:v20];
      if (v15)
      {
        v16 = [NSNumber numberWithBool:[CNFamilyMember isDelegateChildFamilyMember:v15]];
      }

      else
      {
        v16 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v9 = DALoggingwithCategory();
      v18 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_0, v9, v18, "Could not determine altDSID for account %{public}@. Returning assumption that account holder is not U18.", buf, 0xCu);
      }

      v16 = &__kCFBooleanFalse;
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v17))
    {
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&dword_0, v8, v17, "Could find parent ACAccount of CardDAV Account %{public}@", buf, 0xCu);
    }

    v16 = &__kCFBooleanFalse;
  }

  return v16;
}

id sub_B0DC(uint64_t a1, void *a2)
{
  v3 = [a2 altDSID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_B52C(id a1)
{
  qword_46F40 = os_log_create("com.apple.dataaccess", "summary");

  _objc_release_x1();
}

id sub_CDA4(uint64_t a1)
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

void sub_F980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) folderURL];
  v8 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v7];

  v9 = [*(a1 + 40) contactsProvider];
  if (!v5)
  {
    v29 = v8;
    v15 = [NSArray arrayWithObjects:&v29 count:1];
    v11 = [v9 contactsWithExternalHREFs:v15 container:*(a1 + 48)];

    if ([v11 count])
    {
      v16 = [v11 firstObject];
      [*(a1 + 56) setObject:v16 forKeyedSubscript:v6];
    }

    else
    {
      v22 = [*(a1 + 40) groupsProvider];
      v28 = v8;
      v23 = [NSArray arrayWithObjects:&v28 count:1];
      v16 = [v22 groupsWithExternalHREFs:v23 container:*(a1 + 48)];

      if ([v16 count])
      {
        v24 = [v16 firstObject];
        [*(a1 + 72) setObject:v24 forKeyedSubscript:v6];
      }

      else
      {
        v24 = DALoggingwithCategory();
        v27 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v24, v27))
        {
          *buf = 138412290;
          v31 = v6;
          _os_log_impl(&dword_0, v24, v27, "For href %@ with no uuid, I can't find my local record", buf, 0xCu);
        }
      }
    }

    goto LABEL_20;
  }

  v35 = v5;
  v10 = [NSArray arrayWithObjects:&v35 count:1];
  v11 = [v9 contactsWithExternalUUIDs:v10 container:*(a1 + 48)];

  if (![v11 count])
  {
    v17 = [*(a1 + 40) groupsProvider];
    v34 = v5;
    v18 = [NSArray arrayWithObjects:&v34 count:1];
    v16 = [v17 groupsWithExternalUUIDs:v18 container:*(a1 + 48)];

    if ([v16 count])
    {
      v19 = [v16 firstObject];
      [v19 setExternalIdentifier:v8];

      v20 = [v16 firstObject];
      [*(a1 + 72) setObject:v20 forKeyedSubscript:v6];

      if (+[DABehaviorOptions useContactsFramework])
      {
        v21 = [v16 firstObject];
        [v21 updateSaveRequest:*(a1 + 64)];
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      v25 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138412546;
        v31 = v5;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_0, v25, v26, "For uuid %@, I have new href %@, but no local record", buf, 0x16u);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v12 = [v11 firstObject];
  [v12 setExternalIdentifier:v8];

  v13 = [v11 firstObject];
  [*(a1 + 56) setObject:v13 forKeyedSubscript:v6];

  if (+[DABehaviorOptions useContactsFramework])
  {
    v14 = [v11 firstObject];
    [v14 updateSaveRequest:*(a1 + 64)];
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_21:
}

void sub_FDB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 CDVIsHTTPStatusLineWithStatusCode:404])
  {
    v6 = [*(a1 + 32) folderURL];
    v7 = [v5 da_leastInfoStringRepresentationRelativeToParentURL:v6];

    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v8)
    {
      goto LABEL_3;
    }

    v10 = [*(a1 + 48) contactsProvider];
    v20 = v7;
    v11 = [NSArray arrayWithObjects:&v20 count:1];
    v12 = [v10 contactsWithExternalHREFs:v11 container:*(a1 + 56)];

    v9 = [v12 firstObject];

    if (v9)
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 72) objectForKeyedSubscript:v5];
    if (v8)
    {
LABEL_3:
      v9 = v8;
    }

    else
    {
      v13 = [*(a1 + 48) groupsProvider];
      v19 = v7;
      v14 = [NSArray arrayWithObjects:&v19 count:1];
      v15 = [v13 groupsWithExternalHREFs:v14 container:*(a1 + 56)];

      v9 = [v15 firstObject];

      if (!v9)
      {
        v9 = DALoggingwithCategory();
        v16 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v9, v16))
        {
          v17 = 138412290;
          v18 = v5;
          _os_log_impl(&dword_0, v9, v16, "For href %@, I have a 404, but no local record to de-href", &v17, 0xCu);
        }

        goto LABEL_8;
      }
    }

LABEL_5:
    [v9 setExternalIdentifier:0];
    if (+[DABehaviorOptions useContactsFramework])
    {
      [v9 updateSaveRequest:*(a1 + 64)];
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_8:
  }
}

void sub_10000(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _shouldBlacklistForErrorItem:v6])
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v7, v8))
    {
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_0, v7, v8, "Blacklisting UUID %{public}@ with error item:  %{public}@", &v15, 0x16u);
    }

    v9 = *(a1 + 40);
LABEL_9:
    [v9 addObject:v5];
    goto LABEL_10;
  }

  v10 = [v6 guardianRestricted];

  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[3];
  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_0, v11, v12, "Server rejected action for item with UUID %{public}@ because the target container is guardian restricted", &v15, 0xCu);
    }

    v9 = *(a1 + 48);
    goto LABEL_9;
  }

  if (v13)
  {
    v14 = [v6 extraChildItems];
    v15 = 138543874;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_0, v11, v12, "An error item was returned for UUID  %{public}@ but we are not blacklisting the associated record. Error: %{public}@ child items: %{public}@", &v15, 0x20u);
  }

LABEL_10:
}

void sub_101F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _shouldBlacklistForErrorItem:v6])
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v7, v8))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_0, v7, v8, "Blacklisting HREF %@ with error item: %@", &v15, 0x16u);
    }

    v9 = *(a1 + 40);
LABEL_9:
    [v9 addObject:v5];
    goto LABEL_10;
  }

  v10 = [v6 guardianRestricted];

  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[3];
  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_0, v11, v12, "Server rejected action for item with HREF %{public}@ because the target container is guardian restricted", &v15, 0xCu);
    }

    v9 = *(a1 + 48);
    goto LABEL_9;
  }

  if (v13)
  {
    v14 = [v6 extraChildItems];
    v15 = 138543874;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_0, v11, v12, "An error item was returned for HREF %{public}@ but we are not blacklisting the associated record. Error: %{public}@ child items: %{public}@", &v15, 0x20u);
  }

LABEL_10:
}

void sub_12C70(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _reallySyncAddressBookURLsWithConsumer:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [v6 failedToRetrieveAddressBookURLsWithError:v7];

    v8 = +[DABabysitter sharedBabysitter];
    [v8 unregisterAccount:*(a1 + 32) forOperationWithName:@"CardDAVSyncABURLS"];
  }
}

void sub_1573C(id a1)
{
  qword_46F50 = os_log_create("com.apple.dataaccess", "CardDAV-actionsfinalizer");

  _objc_release_x1();
}

void sub_15FB4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_17E6C(const void *a1, int a2)
{
  result = ABPersonIsDowntimeWhitelisted();
  if ((result & 1) == 0 && a2)
  {
    result = ABRecordCopyValue(a1, kABPersonDowntimeWhitelistProperty);
    if (result)
    {
      v5 = result;
      v6 = [result isEqualToString:@"false"];
      CFRelease(v5);
      return v6;
    }
  }

  return result;
}

void sub_1A1A8(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v4 = ABRecordCopyValue(*(a1 + 64), a2);
    if (v4)
    {
      v5 = v4;
      Count = ABMultiValueGetCount(v4);
      if (Count < 1)
      {
        v14 = 0;
      }

      else
      {
        v7 = Count;
        v8 = 0;
        v9 = 0;
        type = _CPLog_to_os_log_type[7];
        while (1)
        {
          v10 = v5;
          v11 = ABMultiValueCopyValueAtIndex(v5, v9);
          if (kABPersonPhoneProperty == a2)
          {
            +[ABPredicate personPredicateWithPhoneLike:countryHint:addressBook:](ABPredicate, "personPredicateWithPhoneLike:countryHint:addressBook:", v11, 0, [*(a1 + 32) addressBook]);
          }

          else
          {
            [ABPredicate personPredicateWithValue:v11 comparison:0 forProperty:a2];
          }
          v12 = ;
          v28[0] = *(a1 + 40);
          v28[1] = v12;
          v13 = [NSArray arrayWithObjects:v28 count:2];
          v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];

          +[ABPredicate searchPeopleWithPredicate:sortOrder:inAddressBook:withDelegate:](ABPredicate, "searchPeopleWithPredicate:sortOrder:inAddressBook:withDelegate:", v14, 1, [*(a1 + 32) addressBook], *(a1 + 32));
          if (*(*(a1 + 32) + 32))
          {
            break;
          }

          ++v9;
          v8 = v14;
          v5 = v10;
          if (v7 == v9)
          {
            goto LABEL_18;
          }
        }

        v15 = DALoggingwithCategory();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          v17 = *(a1 + 48);
          RecordID = ABRecordGetRecordID(*(*(a1 + 32) + 32));
          *buf = 138412802;
          v23 = v14;
          v24 = 2112;
          v25 = v17;
          v16 = type;
          v26 = 1024;
          v27 = RecordID;
          _os_log_impl(&dword_0, v15, type, "Predicate %@ matched contact %@ with local id %d", buf, 0x1Cu);
        }

        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, v16))
        {
          v20 = ABPersonCopyLocalizedPropertyName(a2);
          *buf = 138412290;
          v23 = v20;
          _os_log_impl(&dword_0, v19, v16, "Found a last chance matching using %@", buf, 0xCu);
        }

        *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 32);
        *(*(a1 + 32) + 32) = 0;

        v5 = v10;
      }

LABEL_18:
      CFRelease(v5);
    }

    else
    {
      v14 = 0;
    }
  }
}

void sub_1B224(id a1)
{
  qword_46F60 = os_log_create("com.apple.dataaccess", "CardDAV-actions");

  _objc_release_x1();
}

void sub_1B2AC(id a1)
{
  qword_46F70 = os_log_create("com.apple.dataaccess", "summary");

  _objc_release_x1();
}

void sub_1B708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v17 = [v3 itemChangeType];
    v18 = 1024;
    v19 = [v3 changeId];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "discarding existing CONTACT DAAction of type: %ld change: %d", buf, 0x12u);
  }

  v6 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:*(a1 + 40)];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 changeId]);
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  [v6 setContactChangeIDs:v8];

  v9 = [*(a1 + 32) contactStore];
  v14 = 0;
  v10 = [v9 executeChangeHistoryClearRequest:v6 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_25944();
    }
  }
}

void sub_1B8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v17 = [v3 itemChangeType];
    v18 = 1024;
    v19 = [v3 changeId];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "discarding existing GROUP DAAction of type: %ld change: %d", buf, 0x12u);
  }

  v6 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:*(a1 + 40)];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 changeId]);
  v15 = v7;
  v8 = [NSArray arrayWithObjects:&v15 count:1];
  [v6 setGroupChangeIDs:v8];

  v9 = [*(a1 + 32) contactStore];
  v14 = 0;
  v10 = [v9 executeChangeHistoryClearRequest:v6 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_25944();
    }
  }
}

void sub_1C3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C418(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D544(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1D564(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1DFD8(id a1)
{
  qword_46F80 = os_log_create("com.apple.dataaccess", "summary");

  _objc_release_x1();
}

void sub_1F504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_0, v4, v5, "Delegate with account ID %@ cannot be saved, error %{public}@", &v7, 0x16u);
  }
}

void sub_1F5EC(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Delegate with account ID %@ can be saved", &v5, 0xCu);
  }
}

id sub_1F6BC(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 _cn_saveVerifiedAccount:*(a1 + 40)];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F7EC;
  v7[3] = &unk_3CDA8;
  v8 = *(a1 + 40);
  [v3 addFailureBlock:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1F8D4;
  v5[3] = &unk_3CDD0;
  v6 = *(a1 + 40);
  [v3 addSuccessBlock:v5];

  return v3;
}

void sub_1F7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_0, v4, v5, "Delegate with account ID %@ save failed, error %{public}@", &v7, 0x16u);
  }
}

void sub_1F8D4(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Delegate with account ID %@ saved", &v5, 0xCu);
  }
}

void sub_1FAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_0, v4, v5, "Delegate with account ID %@ failed to be removed, error %{public}@", &v7, 0x16u);
  }
}

void sub_1FBC8(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, v3, "Delegate with account ID %@ was successfully removed", &v5, 0xCu);
  }
}

void sub_2052C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [*(a1 + 32) databaseHelper];
    v5 = &cn_objectResultWithObjectLock_ptr;
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v6 = [*(a1 + 32) changeTrackingID];
      [v4 abOpenDBWithClientIdentifier:v6];
    }

    v7 = [*(a1 + 32) _copyABAccount:1];
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = [*(a1 + 32) containerProvider];
    v9 = [v7 externalIdentifier];
    v10 = [v8 allContainersForAccountWithExternalIdentifier:v9];

    if ([v10 count])
    {
      if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
      {
LABEL_28:

LABEL_29:
        v30 = +[DALocalDBGateKeeper sharedGateKeeper];
        [v30 relinquishLocksForWaiter:*(a1 + 32) dataclasses:2 moreComing:0];

        return;
      }

      v11 = 0;
    }

    else
    {
      v12 = [*(a1 + 32) containerProvider];
      v13 = [v12 allContainers];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v31 = v10;
        v32 = v4;
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            if ([v19 isLocal])
            {
              v20 = [*(a1 + 32) contactsProvider];
              v21 = [v20 contactsInContainer:v19];
              v22 = [v21 count];

              if (v22)
              {
                v23 = DALoggingwithCategory();
                v24 = _CPLog_to_os_log_type[6];
                if (os_log_type_enabled(v23, v24))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v23, v24, "Moving along the migration of local store into a CardDAV cocoon", buf, 2u);
                }

                [v19 setType:4];
                v25 = *(a1 + 32);
                v26 = [objc_opt_class() addressBookConstraintsPlistPath];
                [v19 setConstraintsPath:v26];

                v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 legacyIdentifier]);
                v28 = [v27 stringValue];
                [v19 setAccountIdentifier:v28];

                [v19 markAsDefault];
                v5 = &cn_objectResultWithObjectLock_ptr;
                v10 = v31;
                v4 = v32;
                if (+[DABehaviorOptions useContactsFramework])
                {
                  v29 = objc_alloc_init(CNSaveRequest);
                  [v19 updateSaveRequest:v29];
                  [v32 addSaveRequest:v29];
                }

                v11 = 1;
                goto LABEL_24;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v11 = 0;
        v10 = v31;
        v4 = v32;
        v5 = &cn_objectResultWithObjectLock_ptr;
      }

      else
      {
        v11 = 0;
      }

LABEL_24:

      if ([v5[206] useContactsFramework])
      {
        if (v11)
        {
          [v4 executeAllSaveRequests];
        }

        goto LABEL_28;
      }
    }

    [v4 abCloseDBAndSave:v11];
    goto LABEL_28;
  }
}

void sub_20CD8(uint64_t a1, uint64_t a2, void *a3)
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
    [v6 saveVerifiedAccount:v13 withCompletionHandler:&stru_3CE60];
  }
}

void sub_20E80(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = @"NOT ";
    if (v3)
    {
      v6 = &stru_3CFD8;
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_0, v4, v5, "Backing parent AppleAccount was %@saved successfully.", &v7, 0xCu);
  }
}

void sub_21B8C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 urlRequest];
  [v7 setValue:v5 forHTTPHeaderField:v6];
}

void sub_23254(id a1)
{
  qword_46F88 = [[AKAppleIDSession alloc] initWithIdentifier:@"CardDAViCloudDaemonAccount"];

  _objc_release_x1();
}

void sub_234BC(id a1)
{
  qword_46FA0 = os_log_create("com.apple.dataaccess", "CardDAV-actionshandler");

  _objc_release_x1();
}

void sub_23BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BFC(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 externalIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_24344(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[DAContactsContact alloc] initWithContact:v3];

  [v2 addObject:v4];
}

void sub_245F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24614(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2492C(id a1)
{
  qword_46FB0 = os_log_create("com.apple.dataaccess", "CardDAV-actions-initial");

  _objc_release_x1();
}

void sub_25620(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"CardDAVAgent.m" lineNumber:541 description:@"Actions data source called us after we told it to stop. Is it ignoring the block return value?"];
}

void sub_256B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CardDAVAgent.m" lineNumber:1253 description:{@"Attempted to queue a sync request for a folder with no folder id: %@", a3}];
}

void sub_259B0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identifier];
  sub_1D51C();
  v7 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Unexpected error fetching change history for %@ (error: %@)", v6, 0x16u);
}

void sub_25A54(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Odd, fetching change history for %@ resulted in truncated changes.  This should be very rare.", &v4, 0xCu);
}

void sub_25B24(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1D530(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1D544(&dword_0, v5, v6, "Unable to sync contact delete %@; externalID from tombstone nil");
}

void sub_25B80(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1D530(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  sub_1D544(&dword_0, v5, v6, "encourtered unsupported CONTACT CNChangeHistoryChangeType %ld");
}

void sub_25C3C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1D530(a1 a2)];
  *v3 = 134217984;
  *v2 = v4;
  sub_1D544(&dword_0, v5, v6, "encountered unsupported GROUP CNChangeHistoryChangeType %ld");
}

void sub_25CA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unexpected issue extracting changed item to classify action %@", &v2, 0xCu);
}

void sub_25D18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unexpected issue classifying action %@", &v2, 0xCu);
}