uint64_t sub_18C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 hasValidServerIntId] & 1) == 0)
  {
    sub_F4B8(v3);
  }

  if (([v4 hasValidServerIntId] & 1) == 0)
  {
    sub_F54C(v4);
  }

  v5 = [v3 serverIntId];
  v6 = [v4 serverIntId];
  if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = v5 > v6;
  }

  return v7;
}

void sub_4798(id a1)
{
  [NSKeyedUnarchiver setClass:objc_opt_class() forClassName:@"MessageFileWrapper"];
  v1 = NSHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Library/DataAccess/"];
  [MailAccount setGlobalPathForAccounts:v2];

  v3 = [NSSet setWithObject:kAccountDataclassNotes];
  [MailAccount setDataclassesConsideredActive:v3];

  [MFLibraryIMAPStore setHandlerForTemporaryUidToRemoteIDMapping:&stru_1C560];
  [MFIMAPOperationCache setShouldFlattenCacheOperations:1];
  v4 = +[MFInvocationQueue sharedInvocationQueue];
  v5 = +[NSDate distantFuture];
  [v5 timeIntervalSinceReferenceDate];
  [v4 setThreadRecycleTimeout:?];

  +[DAIMAPNotesUtils setUpMailLogging];
}

NSString *__cdecl sub_48CC(id a1, unsigned int a2)
{
  v2 = [[NSString alloc] initWithFormat:@"%ld", -a2];

  return v2;
}

void sub_640C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x634CLL);
  }

  JUMPOUT(0x6424);
}

void sub_642C(uint64_t a1)
{
  if (([*(a1 + 32) isShuttingDown] & 1) == 0)
  {
    v2 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v2 relinquishLocksForWaiter:*(a1 + 32) dataclasses:32 moreComing:0];
  }
}

void sub_68E0(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    [v4 _syncNotesFolderListInLockWithConsumer:v5 queue:v6];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_0, v8, v9, "Locks for dataclasses 0x%lxx were aborted.", &v10, 0xCu);
    }
  }
}

void sub_8858(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x8788);
  }

  JUMPOUT(0x8870);
}

int64_t sub_8878(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 modificationDate];
  v6 = [v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_9680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_969C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _validateAndSyncWithRemoteChanges:1];
}

id sub_986C(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _validateAndSyncWithRemoteChanges:0];
  }

  return result;
}

void sub_A4E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setIsWaitingForPassword:0];
  v6 = DALoggingwithCategory();
  v7 = v6;
  if (!a2)
  {
    v11 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v6, v11))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v7, v11, "Successfully renewed credentials for IMAPNotes.", &v12, 2u);
    }

    goto LABEL_9;
  }

  v8 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v6, v8))
  {
    v12 = 67109120;
    LODWORD(v13) = a2;
    _os_log_impl(&dword_0, v7, v8, "Failed to renew credentials for IMAPNotes. Result = %d", &v12, 8u);
  }

  if (v5)
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [v5 domain];
      v10 = [v5 code];
      v12 = 138543874;
      v13 = v9;
      v14 = 1024;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_0, v7, v8, "Renew error domain = %{public}@, code = %d, error = %@", &v12, 0x1Cu);
    }

LABEL_9:
  }
}

id sub_BAA4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[7];
  v8 = os_log_type_enabled(v6, v7);
  if (a3)
  {
    if (v8)
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_0, v6, v7, "DAIMAPNotesAgent: locks granted for dataclasses %lx", &v11, 0xCu);
    }

    return [*(a1 + 32) _syncInLockRequest:*(a1 + 40)];
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_0, v6, v7, "lock for %@ aborted", &v11, 0xCu);
    }

    return [*(a1 + 32) _notifyContentSyncFailed];
  }
}

id sub_CFD0(uint64_t a1)
{
  [*(a1 + 32) setAccountHasShutDown:1];
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v2, v3, "IMAP agent %@, IMAP Daemon account has completed shutdown. The accountHasShutDown is set to YES.", &v6, 0xCu);
  }

  return [*(a1 + 32) _callShutdownBlockIfAppropriate];
}

void sub_DF74(id a1)
{
  v1 = DAUserAgent();
  v2 = objc_msgSend(v1, "stringByReplacingOccurrencesOfString:withString:", CFSTR("("), CFSTR("\\("));
  v5 = [v2 stringByReplacingOccurrencesOfString:@"" withString:?], @"\\"));

  v3 = [[NSString alloc] initWithFormat:@"%@ (%@)", @"1.0", v5];
  v4 = qword_22238;
  qword_22238 = v3;
}

void sub_EBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_EC14(id a1)
{
  v1 = [&stru_1C738 copy];
  v2 = [DATrafficLogFilename filenameWithBasename:@"IMAPNotesTraffic"];
  v3 = qword_22248;
  qword_22248 = v2;

  v9[0] = kDACPLoggingCustomLogDirectoryKey;
  v10[0] = DACustomLogDirectory();
  v10[1] = qword_22248;
  v9[1] = kDACPLoggingCustomLogNameKey;
  v9[2] = kDACPLoggingCustomMaxConsoleLevelKey;
  v10[2] = &off_1CF38;
  v10[3] = @"DALogLevel";
  v9[3] = kDACPLoggingCustomLogFileLevelDefaultsKeyKey;
  v9[4] = kDACPLoggingEnableNewlinesKey;
  v10[4] = kCFBooleanFalse;
  v9[5] = kDACPLoggingCustomCreateLogFormatBlock;
  v4 = objc_retainBlock(v1);
  v10[5] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];

  v6 = [DABehaviorOptions DAManagedDefaultForKey:@"DALogLevel"];

  if (!v6 && +[DABehaviorOptions isAppleInternalInstall])
  {
    v7 = [v5 mutableCopy];
    [v7 setObject:&off_1CF50 forKeyedSubscript:kDACPLoggingCustomMaxLogFileLevelKey];

    v5 = v7;
  }

  v8 = qword_22248;
  [NSArray arrayWithObjects:&v8 count:1];
  DACPLoggingAddCustomLogFile();
}

uint64_t sub_EDF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_EE10(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_F1A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  +[MFInvocationQueue flushAllInvocationQueues];
  objc_autoreleasePoolPop(v2);
  if (*(a1 + 32))
  {
    v3 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();

    objc_autoreleasePoolPop(v3);
  }
}

void sub_F374()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F3E0()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F44C()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F4B8(uint64_t a1)
{
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"NSInteger _sortNotesByServerId(__strong id, __strong id, void *)"];
  [v3 handleFailureInFunction:v2 file:@"IMAPNotesLibrary.m" lineNumber:38 description:{@"We pulled out a note with an invalid remote id (note %@)", a1}];
}

void sub_F54C(uint64_t a1)
{
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"NSInteger _sortNotesByServerId(__strong id, __strong id, void *)"];
  [v3 handleFailureInFunction:v2 file:@"IMAPNotesLibrary.m" lineNumber:39 description:{@"We pulled out a note with an invalid remote id (note %@)", a1}];
}

void sub_F5E0()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F64C()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F6B8()
{
  sub_4674();
  v0 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F714()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F780()
{
  sub_4674();
  v0 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F7DC(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[IMAPNotesLibrary addMessages:withMailbox:fetchBodies:newMessagesByOldMessage:remoteIDs:setFlags:clearFlags:messageFlagsForMessages:copyFiles:addPOPUIDs:dataSectionsByMessage:]"];
  [v2 handleFailureInFunction:v3 file:@"IMAPNotesLibrary.m" lineNumber:267 description:{@"We pulled out a note with an invalid remote id (note %@)", a1}];
}

void sub_F868()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F8D4()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F940()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_F9AC()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_FA18()
{
  sub_4674();
  v1 = +[NSAssertionHandler currentHandler];
  sub_4668();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_FA98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesDaemonAccount.m" lineNumber:731 description:{@"IMAP Daemon Account outstanding invocation count went negative.  Fix yer bug.  Self %@", a2}];
}

void sub_FB0C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesDaemonAccount.m" lineNumber:740 description:{@"IMAP Notes account got confused, has callCallback = YES, but a NULL callback"}];
}

void sub_FB70(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesDaemonAccount.m" lineNumber:749 description:{@"Who's asking me to shut down, while I'm in the process of shutting down?!.  Self %@", a2}];
}

void sub_FBE0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesAgent.m" lineNumber:344 description:{@"IMAP Agent outstanding invocation count went negative.  Fix yer bug.  Self %@", a2}];
}

void sub_FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesAgent.m" lineNumber:530 description:{@"You cannot have preset actions on a Notes folder sync request.  Sorry.  Request %@", a3}];
}

void sub_FCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesAgent.m" lineNumber:539 description:{@"Attempted to queue a sync request for a folder with no folder id: %@", a3}];
}

void sub_FD3C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAIMAPNotesAgent.m" lineNumber:689 description:{@"Who's asking me to shut down, while I'm in the process of shutting down?!.  Self %@", a2}];
}