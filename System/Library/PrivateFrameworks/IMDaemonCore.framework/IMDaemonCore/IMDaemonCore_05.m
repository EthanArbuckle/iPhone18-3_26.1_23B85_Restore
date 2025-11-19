void sub_22B66327C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B663188);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

IMDReplayController *sub_22B66336C()
{
  result = objc_alloc_init(IMDReplayController);
  qword_281421040 = result;
  return result;
}

void sub_22B663CD0(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B663D74;
    block[3] = &unk_278704F90;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

dispatch_workloop_t IMDCreateWorkloop(void *a1)
{
  v1 = [a1 UTF8String];

  return dispatch_workloop_create(v1);
}

void sub_22B667B7C(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Releasing replicated message %@", buf, 0xCu);
    }
  }

  v4 = +[IMPendingReplicatedMessageCache sharedCache];
  v5 = a1[4];
  v6 = [a1[5] service];
  v7 = [v6 internalName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B667D28;
  v9[3] = &unk_2787073C0;
  v10 = a1[4];
  v11 = a1[6];
  [v4 releasePendingMessageWithGUID:v5 serviceName:v7 chat:0 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B667D28(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Processing %@ after replicated message release", &v6, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B6681D8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B668164);
  }

  _Unwind_Resume(a1);
}

void sub_22B668224(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) guid];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "** Performing delayed replication for %@", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 40) replicationProxy];
  [v4 sendMessage:*(a1 + 32) toChat:*(a1 + 48) style:*(a1 + 56)];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B6690DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6690CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B669220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B669244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6692E8;
  v8[3] = &unk_278707410;
  v10 = *(a1 + 48);
  v9 = *(a1 + 32);
  result = [a2 enumerateKeysAndObjectsUsingBlock:v8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_22B6692E8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v7 isEqualToString:*MEMORY[0x277D19160]])
  {
    if (++*(*(*(a1 + 40) + 8) + 24) < 2uLL)
    {
      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Message body has more than one message part", &v13, 2u);
      }
    }

    v10 = [*(a1 + 32) replicationRequiredForMultipleMessageParts];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Message body has attribute %@", &v13, 0xCu);
      }
    }

    v10 = [*(a1 + 32) replicationRequiredForMessageBodyAttributeName:v7];
  }

  *(*(*(a1 + 48) + 8) + 24) = v10;
LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B66A028()
{
  qword_281421048 = objc_alloc_init(IMDCKSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B66A1C8(uint64_t a1)
{
  v2 = objc_alloc_init(IMDCKInitialMessageSyncController);
  v3 = qword_27D8CFFD8;
  qword_27D8CFFD8 = v2;

  v4 = qword_27D8CFFD8;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

uint64_t sub_22B66A474(uint64_t a1)
{
  v2 = objc_alloc_init(IMDCKInitialAttachmentSyncController);
  v3 = qword_27D8CFFF0;
  qword_27D8CFFF0 = v2;

  v4 = qword_27D8CFFF0;
  v5 = *(a1 + 32);

  return [v4 setDelegate:v5];
}

void sub_22B66A690(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B66A64CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B66A974(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      v17 = a2;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Account status is: %ld. Error: %@", &v16, 0x16u);
    }
  }

  if (*(a1 + 40) == 1)
  {
    if (a2 == 4)
    {
      v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v10 = [v9 isMessagesIniCloudVersion2];

      if (v10)
      {
        v11 = [*(a1 + 32) syncResumer];
        [v11 attemptToResumeSyncOnAccountUpdateIfAppropriate];
      }

      else
      {
        v12 = [MEMORY[0x277D1A990] sharedInstance];
        v13 = [v12 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A78]];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16) = 0;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Account status update, and we stopped syncing due to bad account status.", &v16, 2u);
            }
          }

          [*(a1 + 32) beginPeriodicSyncWithChecks:1 priority:*MEMORY[0x277D86348] reason:@"Account.update"];
        }
      }
    }

    else if (a2 == 1)
    {
      v7 = +[IMDCKRecordSaltManager sharedInstance];
      [v7 clearLocalSyncState];

      v8 = +[IMDAttachmentStore sharedInstance];
      [v8 markAllAttachmentsAsNotPurgeable];
    }

    [*(a1 + 32) _attemptToMigrateACAccountEnablementOnce];
  }

  else if (a2 == 4)
  {
    [*(a1 + 32) _attemptToEnableMiCByDefaultOnce];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B66B3D4(uint64_t a1, void *a2, void *a3)
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setIsFetchingExitForEnablement:0];
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7 < [*(a1 + 32) _maxRetryAttemptsToEnableMiCByDefault])
    {
      [*(a1 + 32) _retryIntervalToEnableMicByDefaultForAttempt:*(a1 + 40)];
      v9 = v8;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 40);
          *buf = 67109376;
          v22[0] = v11;
          LOWORD(v22[1]) = 2048;
          *(&v22[1] + 2) = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Enable MiC by default: failed to get exit record attempt %d, trying again in %0.02f seconds", buf, 0x12u);
        }
      }

      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      im_dispatch_after();
      goto LABEL_24;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        *buf = 67109120;
        v22[0] = v15;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Enable MiC by default: failed to get exit record attempt %d, done", buf, 8u);
      }
    }

LABEL_13:
    [*(a1 + 32) _setHasTriedToEnableMiCByDefault];
    goto LABEL_24;
  }

  v12 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v22 = v5;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Enable MiC by default: Exit record found with date %@, won't try again", buf, 0xCu);
      }
    }

    goto LABEL_13;
  }

  if (v12)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Enable MiC by default: All Checks Passed, Enabling!!", buf, 2u);
    }
  }

  v17 = [*(a1 + 32) ckUtilities];
  [v17 setCloudKitSyncingEnabled:1];

  [*(a1 + 32) _setHasTriedToEnableMiCByDefault];
LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B66B960()
{
  v0 = +[IMDCKUtilities sharedInstance];
  [v0 repairACAccountEnablementStatusIfNeeded];
}

void sub_22B66BFA8(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  v4 = [*(a1 + 32) isSyncing];
  v5 = [*(a1 + 32) syncState];
  v6 = [v5 lastSyncDate];

  v7 = [*(a1 + 32) ckUtilities];
  v8 = [v7 deviceConditionsAllowPeriodicSync];

  v9 = IMOSLoggingEnabled();
  if (((v4 | v3) & 1) != 0 || v6 || !v8)
  {
    if (v9)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (v4)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v20 = 138413058;
        v21 = v17;
        if (v3)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v22 = 2112;
        v23 = v18;
        v24 = 2112;
        if (v8)
        {
          v16 = @"YES";
        }

        v25 = v6;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not kicking off a sync on power and wifi isSyncing %@ isUnderFirstUnlock %@ lastSyncDate %@ deviceConditionsAllowSync %@", &v20, 0x2Au);
      }
    }
  }

  else
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v20 = 138413058;
        v21 = @"NO";
        v22 = 2112;
        v23 = @"NO";
        v24 = 2112;
        v25 = 0;
        v26 = 2112;
        v27 = @"YES";
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Kicking off a sync on power and wifi isSyncing %@ isUnderFirstUnlock %@ lastSyncDate %@ deviceConditionsAllowSync %@", &v20, 0x2Au);
      }
    }

    v11 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v12 = [v11 isMessagesIniCloudVersion2];

    if (v12)
    {
      v13 = *MEMORY[0x277D19A50];
      v14 = *MEMORY[0x277D19A68];
      if (IMGetDomainBoolForKeyWithDefaultValue())
      {
        [*(a1 + 32) beginPeriodicSyncWithActivity:0];
      }
    }

    else
    {
      [*(a1 + 32) beginPeriodicSyncWithChecks:1 priority:*MEMORY[0x277D86350] reason:@"postInitialSync"];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B66C61C()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Received key roll pending state did change event notification", v2, 2u);
    }
  }

  v1 = +[IMDCKUtilities sharedInstance];
  [v1 keyRollPendingStateDidChange];
}

void sub_22B66C6C8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Handling Backup State Did Change", &v13, 2u);
    }
  }

  v4 = a2;
  if (v4)
  {
    v5 = +[IMDCKBackupController sharedInstance];
    v6 = [v5 iCloudBackupEnabledSystemWide];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (v6)
        {
          v8 = @"YES";
        }

        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "System wide backup is enabled: %@", &v13, 0xCu);
      }
    }

    if ((v6 & 1) == 0)
    {
      v9 = [v4 exitManager];
      [v9 submitCloudKitMetricWithOperationGroupName:@"PCSBackupDisabledKeyroll"];

      v10 = [v4 exitManager];
      [v10 submitCloudKitMetricWithOperationGroupName:@"PCSBackupDisabledUserToggledKeyroll"];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We did not have an IMDCKSyncController when trying report _PCSBackupStateDidChange", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B66C908(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Handling Test Backup State Did Change", buf, 2u);
    }
  }

  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 exitManager];
    [v6 submitCloudKitMetricWithOperationGroupName:@"PCSBackupDisabledKeyroll"];

    v7 = [v5 exitManager];
    [v7 submitCloudKitMetricWithOperationGroupName:@"PCSBackupDisabledTestToggledKeyroll"];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We did not have an IMDCKSyncController when trying report _PCSTestBackupStateDidChange", v8, 2u);
    }
  }

LABEL_8:
}

void sub_22B66CA5C(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Handling Successful Keyroll from Backup", buf, 2u);
    }
  }

  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 exitManager];
    [v6 submitCloudKitMetricWithOperationGroupName:@"PCSBackupDisabledSuccessfulKeyroll"];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We did not have an IMDCKSyncController when trying report _PCSBackupStateKeyrollSuccessful", v7, 2u);
    }
  }

LABEL_8:
}

void sub_22B66CB8C(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Handling Pending Keyroll Notification", buf, 2u);
    }
  }

  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 exitManager];
    [v6 submitCloudKitMetricWithOperationGroupName:@"PCSPendingKeyroll"];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We did not have an IMDCKSyncController when trying report _PCSPendingKeyroll", v7, 2u);
    }
  }

LABEL_8:
}

void sub_22B66CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = a3;
      v18 = 2112;
      v19 = a5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Handling Identity/TLK keys available notification, name: %@, userInfo: %@", &v16, 0x16u);
    }
  }

  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isMessagesIniCloudVersion2];

  if (v9)
  {
    v10 = +[IMDCKSyncController sharedInstance];
    v11 = [v10 syncResumer];
    [v11 attemptToResumeSyncOnIdentityUpdateIfAppropriate];

LABEL_13:
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277D1A990] sharedInstance];
  v13 = [v12 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A88]];

  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Identity/TLK update, and we stopped sync due to missing TLKs.", &v16, 2u);
      }
    }

    v10 = +[IMDCKSyncController sharedInstance];
    [v10 beginPeriodicSyncWithChecks:1 priority:*MEMORY[0x277D86348] reason:@"Identity.update"];
    goto LABEL_13;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B66D1DC(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Registering CloudSync dependencies", &v32, 2u);
    }
  }

  v3 = [MEMORY[0x277D28688] configureWithDelegate:*(a1 + 32)];
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to configure IMDMessagesSyncCoordinator properly with error %@", &v32, 0xCu);
      }

LABEL_13:
    }
  }

  else
  {
    v5 = MEMORY[0x277D28688];
    v6 = [MEMORY[0x277D1AC70] sharedInstance];
    [v5 registerErrorAnalyzer:v6];

    v7 = MEMORY[0x277D28688];
    v8 = objc_alloc_init(_TtC12IMDaemonCore17IMDPreReqsChecker);
    [v7 registerPreReqsVerifier:v8];

    v9 = MEMORY[0x277D28688];
    v10 = objc_alloc_init(IMDCKSyncTokenStore);
    [v9 registerSyncTokenStore:v10];

    v11 = MEMORY[0x277D28688];
    v12 = [*(a1 + 32) syncState];
    [v11 registerSyncStateManager:v12];

    v13 = MEMORY[0x277D28688];
    v14 = +[IMDCKBackupControllerProxy sharedInstance];
    [v13 registerBackupController:v14];

    v15 = MEMORY[0x277D28688];
    v16 = +[IMDChatStore sharedInstance];
    [v15 registerStore:v16 asType:0];

    v17 = MEMORY[0x277D28688];
    v18 = +[IMDMessageStore sharedInstance];
    [v17 registerStore:v18 asType:1];

    v19 = MEMORY[0x277D28688];
    v20 = objc_alloc_init(IMDUpdateV1RecordStore);
    [v19 registerStore:v20 asType:3];

    v21 = MEMORY[0x277D28688];
    v22 = objc_alloc_init(IMDUpdateV2RecordStore);
    [v21 registerStore:v22 asType:4];

    v23 = MEMORY[0x277D28688];
    v24 = objc_alloc_init(IMDUpdateV3RecordStore);
    [v23 registerStore:v24 asType:5];

    v25 = MEMORY[0x277D28688];
    v26 = +[IMDAttachmentStore sharedInstance];
    [v25 registerStore:v26 asType:2];

    v27 = MEMORY[0x277D28688];
    v28 = objc_alloc_init(IMDRecoverableMessageStore);
    [v27 registerStore:v28 asType:6];

    v29 = MEMORY[0x277D28688];
    v30 = objc_alloc_init(IMDScheduledMessageStore);
    [v29 registerStore:v30 asType:7];

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Registered CloudSync dependencies", &v32, 2u);
      }

      goto LABEL_13;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22B66DA84(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Run a User-Initiated periodic sync", &v14, 2u);
      }
    }

    v8 = +[IMDCKUtilities sharedInstance];
    v9 = [v8 cloudKitSyncingEnabled];

    if (v9)
    {
      if (!xpc_activity_set_state(v3, 4) && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We did not set the state of a user-initiated xpc_activity to continue successfully for message syncing", &v14, 2u);
        }
      }

      v11 = +[IMDCKSyncController sharedInstance];
      [v11 beginPeriodicSyncWithActivity:v3];
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ignoring activity request to sync messages, as syncing is disabled", &v14, 2u);
      }
    }
  }

  else if (!state && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v14 = 136315138;
      v15 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Check-in for a periodic sync at priority %s", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B66ED04(uint64_t a1)
{
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isSystemLocked];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) reloadTimer];

    if (!v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting up a timer to reload the UI", buf, 2u);
        }
      }

      v6 = MEMORY[0x277CBEBB8];
      [*(a1 + 32) reloadTimeInterval];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_22B66EE60;
      v8[3] = &unk_2787074F8;
      v8[4] = *(a1 + 32);
      v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:?];
      [*(a1 + 32) setReloadTimer:v7];
    }
  }
}

void sub_22B66EE60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D1ACB8] sharedInstance];
  v5 = [v4 isSystemLocked];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Not Refreshing UI after time because device is locked", v9, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Refreshing UI after time because device is unlocked", buf, 2u);
      }
    }

    [*(a1 + 32) _refreshUIWhileSyncing];
  }
}

void sub_22B66F02C(uint64_t a1)
{
  v2 = [*(a1 + 32) reloadTimer];

  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Invalidating reload timer.", v8, 2u);
      }
    }

    v4 = [*(a1 + 32) reloadTimer];
    [v4 invalidate];

    [*(a1 + 32) setReloadTimer:0];
  }

  v5 = MEMORY[0x277D82BB8];
  v6 = +[IMDChatRegistry sharedInstance];
  [v5 cancelPreviousPerformRequestsWithTarget:v6 selector:sel_refreshUIWhileSyncing object:0];

  v7 = +[IMDChatRegistry sharedInstance];
  [v7 performSelector:sel_refreshUIWhileSyncing withObject:0 afterDelay:0.5];
}

void sub_22B66FD70()
{
  v0 = +[IMDChatRegistry sharedInstance];
  [v0 _forceReloadChats:1];
}

void sub_22B66FF9C(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Attachment metadata only sync succeeded", &v9, 2u);
      }

LABEL_9:
    }
  }

  else if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Attachment metadata only sync failed with error: %@", &v9, 0xCu);
    }

    goto LABEL_9;
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B670238(id *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Done deleteing chat with error %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    v5 = [a1[4] ckUtilities];
    [v5 reportErrorForSyncType:4 syncStep:@"ChatDeletionComplete" response:0 error:v3];
  }

  v6 = [a1[4] messageSyncController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6703EC;
  v8[3] = &unk_278704418;
  v8[4] = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  [v6 syncDeletedMessagesToCloudKitWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6703EC(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Done deleteing messages with error %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [*(a1 + 32) ckUtilities];
    [v6 reportErrorForSyncType:4 syncStep:@"MessageDeletionComplete" response:0 error:v4];
  }

  v7 = [*(a1 + 32) attachmentSyncController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B670590;
  v10[3] = &unk_278702EA0;
  v10[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v7 syncAttachmentDeletesToCloudKitWithActivity:v8 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B670590(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Done deleteing attachments with error %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [*(a1 + 32) ckUtilities];
    [v6 reportErrorForSyncType:4 syncStep:@"AttachmentDeletionComplete" response:0 error:v4];
  }

  v7 = [*(a1 + 32) recoverableMessageSyncController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B670730;
  v9[3] = &unk_278702EA0;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  [v7 syncRemovedRecoverableMessagesToCloudKitWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B670730(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v4 = [*(a1 + 32) ckUtilities];
    [v4 reportErrorForSyncType:4 syncStep:@"RecoverableMessageDeletionComplete" response:0 error:v6];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_22B6708E0(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D19A08];
  v8 = *MEMORY[0x277D199B8];
  v9 = IMGetCachedDomainValueForKey();
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Unable to check exit zone record Error: %@", &v19, 0xCu);
      }
    }

    goto LABEL_15;
  }

  if (v5 || *(a1 + 56) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (*(a1 + 56))
        {
          v12 = @"YES";
        }

        v19 = 138412546;
        v20 = v5;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Entered exit zone at %@. Aborting sync, downloading all attachments. {shouldDownloadAssets: %@}", &v19, 0x16u);
      }
    }

LABEL_14:
    [*(a1 + 32) _beginExitStateCleanupIfNeededWithActivity:*(a1 + 40)];
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v16 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v9;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "We are downgrading the security level, downgrade date %@. We can't download at this time. When the Identity is restored, we will kick sync appropriately", &v19, 0xCu);
      }
    }

    goto LABEL_14;
  }

  if (v16)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Not in exit state, continuing sync", &v19, 2u);
    }
  }

  v13 = 1;
LABEL_16:
  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v13, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B670FF0(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) attachmentSyncController];
    [v6 downloadAttachmentAssetsWithActivity:*(a1 + 40) restoringAttachments:1 completion:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Could not fetch salt due to error %@ aborting cleaning up MOC", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B6713C8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6712D0);
  }

  _Unwind_Resume(a1);
}

void sub_22B671600(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained syncStartDate];
  v7 = [v2 stringWithFormat:@"Started by %@, running since: %@:", v3, v5];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _autoBugCaptureWithSubType:@"LongRunningSync" debugDescription:v7];
}

void sub_22B671BA0(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Wrote sync date success to CloudKit %@ error %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B67233C(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "exitRecordDateWithCompletion in updateDowngradedDateIfNeeded failed with error: %@", buf, 0xCu);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }

  else
  {
    v9 = *MEMORY[0x277D19A08];
    v10 = *MEMORY[0x277D199C0];
    v11 = IMGetDomainBoolForKeyWithDefaultValue();
    v12 = [*(a1 + 32) ckUtilities];
    v13 = [v12 _primaryiCloudAccountSecurityLevel];

    if (v11 != (v13 == 4))
    {
      IMCloudKitSetEligibleToToggleMiCSwitch();
      IMSetDomainBoolForKey();
      v14 = *MEMORY[0x277D199B8];
      v15 = IMGetCachedDomainValueForKey();
      if (v13 == 4 || (v11 & 1) == 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CBEAA8] date];
      }

      if (([v15 isEqualToDate:v16] & 1) == 0)
      {
        IMSetDomainValueForKey();
      }
    }

    v17 = +[IMDCKUtilities sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B6725CC;
    v20[3] = &unk_278707598;
    v18 = *(a1 + 40);
    v21 = 0;
    v22 = v18;
    [v17 fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B6725CC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished updating security level with error: %@", &v8, 0xCu);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32));
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B672A44(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Finished checking for possible security level downgraded with error: %@. Broadcasting new state if needed.", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B672EAC(uint64_t a1)
{
  [*(a1 + 32) verifyAccountsMatchForMoc];
  v1 = *MEMORY[0x277D19A08];
  v2 = *MEMORY[0x277D19B90];

  return IMSetDomainBoolForKey();
}

void sub_22B675644(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6751ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B676BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B676BFC(uint64_t result, char a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

uint64_t sub_22B677154()
{
  qword_281421050 = objc_alloc_init(IMMessagesToTrack);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6772D0(uint64_t a1)
{
  v2 = [*(a1 + 32) recentMessageIDs];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) recentMessageIDs];
  v4 = [v3 count];
  v5 = [*(a1 + 32) maxNumberOfMessages];

  if (v4 > v5)
  {
    v6 = [*(a1 + 32) recentMessageIDs];
    [v6 removeObjectAtIndex:0];
  }
}

void sub_22B677470(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) recentMessageIDs];
  (*(v2 + 16))(v2, [v3 containsObject:*(a1 + 40)]);
}

id sub_22B6775C8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = qword_27D8D0008;
  v6 = qword_27D8D0008;
  if (!qword_27D8D0008)
  {
    sub_22B677814();
    v4[3] = objc_getClass("_DASScheduler");
    qword_27D8D0008 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_22B6776B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B677814()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_27D8D0000)
  {
    qword_27D8D0000 = _sl_dlopen();
  }

  result = qword_27D8D0000;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B6778E4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27D8D0000 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class sub_22B677958(uint64_t a1)
{
  sub_22B677814();
  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27D8D0008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22B678248(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B678060);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B67A764(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel__messageStoreCompletion_inputMessage_outputMessage_originalMessage_completionBlock_);
}

void sub_22B67B8F4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isTypingMessage] & 1) == 0 && (objc_msgSend(v3, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v3, "isRCSEncryptionTest") & 1) == 0)
  {
    v4 = +[IMDChatRegistry sharedInstance];
    [v4 addMessage:v3 toChat:*(a1 + 32)];

    v5 = +[IMDChatRegistry sharedInstance];
    [v5 updateStateForChat:*(a1 + 32) hintMessage:v3 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:0];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = +[IMDMessageStore sharedInstance];
    v7 = [v6 chatsForMessage:v3];

    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v10 = *v18;
      *&v9 = 138412546;
      v16 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (v12 != *(a1 + 32))
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = v16;
                v22 = v3;
                v23 = 2112;
                v24 = v12;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Removing message: %@   from chat: %@ due to send on different service", buf, 0x16u);
              }
            }

            v14 = +[IMDChatRegistry sharedInstance];
            [v14 removeMessage:v3 fromChat:v12];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B67BB4C(uint64_t a1, int a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = [v8 scheduleType];
    v11 = [v9 scheduleState] != 1 && objc_msgSend(v7, "scheduleState") != 2;
    if (v10 == 2 && !v11)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 32);
          *buf = 138412290;
          v26 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Updating lastScheduledMessageCreatedDate for sent scheduled message in chat: %@", buf, 0xCu);
        }
      }

      v14 = *(a1 + 32);
      v15 = [MEMORY[0x277CBEAA8] date];
      [v14 setLastScheduledMessageCreatedDate:v15];
    }

    v16 = (a1 + 32);
    v17 = [*(a1 + 40) broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(*(a1 + 32), "isBlackholed")}];
    v18 = [*(a1 + 48) accountID];
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = [*(a1 + 32) chatProperties];
    v22 = [*v16 groupID];
    v23 = [*v16 personCentricID];
    [v17 account:v18 chat:v19 style:v20 chatProperties:v21 groupID:v22 chatPersonCentricID:v23 messageReceived:v9];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B67CE74(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B67CD9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B67D9D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B67D864);
  }

  _Unwind_Resume(a1);
}

void sub_22B67EEDC(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 chats];

  v16 = v3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 lastMessage];
        v12 = [v11 guid];
        v13 = [v12 isEqualToString:v1];

        if (v13)
        {
          v14 = +[IMDChatRegistry sharedInstance];
          [v14 updateStateForChat:v9 hintMessage:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:0];
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B68277C(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 chats];

  v4 = [v3 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v4)
  {
    v5 = *v50;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v50 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v49 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 lastMessage];
      v10 = [v9 guid];
      v11 = [v10 isEqualToIgnoringCase:*(a1 + 32)];

      if (v11)
      {
        break;
      }

      objc_autoreleasePoolPop(v8);
      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = *&v7;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "   Found message from chat: %@", buf, 0xCu);
      }
    }

    [v7 lastMessage];
    v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    objc_autoreleasePoolPop(v8);

    if (v13 != 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = +[IMDMessageStore sharedInstance];
  [v14 messageWithGUID:*(a1 + 32)];
  v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

LABEL_16:
  if ([*&v13 isDelivered])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "   Message was already marked as delivered, ignoring", buf, 2u);
      }

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if ([*&v13 errorCode] != 43)
  {
    v17 = [*&v13 service];
    v18 = [*(a1 + 40) service];
    v19 = [v18 internalName];

    v16 = 0;
    if (v13 != 0.0 && v17 && v19)
    {
      if ([*(a1 + 40) messageServiceNamed:v19 canProcessMessagesFromServiceNamed:v17])
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = v13;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found old message for delivery receipt: %@", buf, 0xCu);
          }
        }

        if (![*&v13 isDelivered] || (objc_msgSend(*&v13, "timeDelivered"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = *(a1 + 32);
              *buf = 138412290;
              v54 = v25;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Received delivery receipt for message: %@", buf, 0xCu);
            }
          }

          sub_22B682FE0(*&v13, *(a1 + 48));
          [*&v13 setScheduleType:0];
          [*&v13 setScheduleState:0];
          v26 = [*&v13 time];
          v27 = [*&v13 timeDelivered];
          [v27 timeIntervalSinceDate:v26];
          v29 = v28;
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v54 = v29;
              _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Delivery receipt time was: %f", buf, 0xCu);
            }
          }

          if (v29 > 0.0)
          {
            v31 = [MEMORY[0x277D1AAA8] sharedInstance];
            v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
            [v31 trackEvent:*MEMORY[0x277D1A340] withStatistic:v32];

            v33 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
            v57 = *MEMORY[0x277D1A088];
            v58 = v33;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
            v35 = [MEMORY[0x277D1AAA8] sharedInstance];
            [v35 trackEvent:*MEMORY[0x277D1A108] withDictionary:v34];

            v36 = [MEMORY[0x277D1AB48] sharedInstance];
            [v36 logMessageDelivered:*(a1 + 32) deliveryDuration:v33 messageProtocol:v17];
          }

          if (![*&v13 errorCode])
          {
            v23 = @"NO";
LABEL_57:
            v39 = +[IMDMessageStore sharedInstance];
            v40 = [v39 storeMessage:*&v13 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:36873];

            v41 = [v40 guid];
            sub_22B67EEDC(v41);

            v16 = 1;
            v13 = *&v40;
            goto LABEL_58;
          }
        }

        else if (![*&v13 errorCode])
        {
          v16 = 0;
          v23 = @"NO";
LABEL_58:
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v54 = v13;
              v55 = 2112;
              v56 = v23;
              _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Updated message: %@  had error: %@", buf, 0x16u);
            }
          }

          v43 = [*(a1 + 40) isAwaitingStorageTimer];
          v44 = *(a1 + 40);
          if (v43)
          {
            v45 = [*&v13 guid];
            [v44 noteSuppressedMessageUpdate:v45];
          }

          else
          {
            v45 = [*(a1 + 40) broadcasterForChatListeners];
            v46 = [*(a1 + 56) accountID];
            [v45 account:v46 chat:0 style:0 messageUpdated:*&v13];
          }

          goto LABEL_66;
        }

        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = [*&v13 errorCode];
            *buf = 67109120;
            LODWORD(v54) = v38;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Message had error: %d", buf, 8u);
          }
        }

        [*&v13 setErrorCode:0];
        v23 = @"YES";
        goto LABEL_57;
      }

      v16 = 0;
    }

LABEL_66:

    goto LABEL_67;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "   Message was already marked as black holed, ignoring", buf, 2u);
    }

    goto LABEL_25;
  }

LABEL_26:
  v16 = 0;
LABEL_67:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_22B682FE0(void *a1, uint64_t a2)
{
  v4 = a1;
  if (a2)
  {
    [v4 setTimeDelivered:a2];
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v4 setTimeDelivered:v3];
  }

  [v4 setFlags:{objc_msgSend(v4, "flags") | 0x9000}];
}

void sub_22B683360(uint64_t a1, uint64_t a2)
{
  v12 = [*(a1 + 32) historyForMessagePart:a2];
  v3 = [v12 firstObject];
  v4 = [v3 messagePartText];

  v5 = [v4 attribute:*MEMORY[0x277D19160] atIndex:0 effectiveRange:0];
  v6 = *(a1 + 32);
  v7 = [v6 body];
  v8 = [v7 __im_messageTextByAddingMessagePart:v4 atIndex:{objc_msgSend(v5, "intValue")}];
  [v6 setBody:v8];

  v9 = [*(a1 + 32) translationsForMessagePart:{objc_msgSend(v5, "intValue")}];
  v10 = [v9 firstObject];

  v11 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:v10];
  [*(a1 + 32) addTranslation:v11 forMessagePart:{objc_msgSend(v5, "intValue")}];
}

void sub_22B683DB0(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  v3 = [v2 chatsForMessageGUID:*(a1 + 32)];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v30 = v5;
      v31 = 2112;
      v32 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
    }
  }

  if (![v3 count] && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Found no chats for messageID: %@", buf, 0xCu);
    }
  }

  v8 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v11 = *v25;
    *&v10 = 138412546;
    v20 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = *(a1 + 32);
              *buf = v20;
              v30 = v15;
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chat for messageID: %@, chat: %@", buf, 0x16u);
            }
          }

          [v13 tearDownToneNotificationSessionIfNeeded];
          dispatch_group_enter(v8);
          v17 = *(a1 + 32);
          v16 = *(a1 + 40);
          v18 = *(a1 + 48);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = sub_22B684828;
          v22[3] = &unk_278702FF0;
          v23 = v8;
          sub_22B684140(v16, v13, v17, 0, v18, v22);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if (*(a1 + 56))
  {
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], *(a1 + 56));
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B684140(void *a1, void *a2, void *a3, unsigned int a4, void *a5, void *a6)
{
  v85[1] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v64 = a2;
  v63 = a3;
  v66 = a5;
  v11 = a6;
  v12 = v11;
  v65 = v10;
  if (v10 && (v62 = v11, [v10 service], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsDatabase"), v13, v12 = v62, v14))
  {
    v15 = +[IMDMessageStore sharedInstance];
    v16 = [v64 guid];
    v85[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:1];
    v60 = [v15 markMessagesAsReadWithChatGUIDs:v17 upToGUID:v63 readDate:v66 fromMe:a4];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v84 = v60;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Found messages guids to mark as read: %@", buf, 0xCu);
      }
    }

    if ([v60 count])
    {
      v19 = +[IMDMessageStore sharedInstance];
      [v19 retractPostedNotificationsForMessageGUIDs:v60];

      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 messagesWithGUIDs:v60];

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = [v22 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v25)
      {
        v26 = *v77;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v77 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v76 + 1) + 8 * i);
            v29 = [v28 timeDelivered];
            v30 = v29 == 0;

            if (v30)
            {
              sub_22B682FE0(v28, v66);
            }

            v31 = [v28 timeRead];
            v32 = v31 == 0;

            if (v32)
            {
              v33 = v66;
              if (v66 && (v34 = v33, [v28 time], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "laterDate:", v34), v36 = objc_claimAutoreleasedReturnValue(), v34, v35, v36))
              {
                [v28 setTimeRead:v36];
              }

              else
              {
                v36 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
                [v28 setTimeRead:v36];
              }
            }

            if ([v28 errorCode])
            {
              [v28 setErrorCode:0];
            }

            v37 = [v28 timeRead];
            v38 = [v37 __im_nanosecondTimeInterval];

            if (v38 >= v24)
            {
              v39 = [v28 guid];

              v23 = v39;
              v24 = v38;
            }
          }

          v25 = [v22 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v25);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v40 = v22;
      v41 = [v40 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v41)
      {
        v42 = *v73;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v73 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = *(*(&v72 + 1) + 8 * j);
            v45 = +[IMDMessageStore sharedInstance];
            v46 = [v45 storeMessage:v44 forceReplace:0 modifyError:1 modifyFlags:0 flagMask:4096];
          }

          v41 = [v40 countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v41);
      }

      [v65 updateChatGUID:v63 withLastReadTimeStamp:v24 withLastSeenMessageGUID:v23 fromMe:a4 ^ 1];
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v40;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Notifying about messages: %@", buf, 0xCu);
        }
      }

      v48 = [v64 roomName];
      if ([v64 style] == 45)
      {
        v49 = 45;
      }

      else
      {
        v49 = 43;
      }

      buf[0] = v49;
      v71 = v48;
      [v65 _mapRoomChatToGroupChat:&v71 style:buf];
      v50 = v71;

      v51 = IMCreateSerializedItemsFromArray();
      if ([v65 isAwaitingStorageTimer])
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v52 = v40;
        v53 = [v52 countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (v53)
        {
          v54 = *v68;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v68 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = [*(*(&v67 + 1) + 8 * k) guid];
              [v65 noteSuppressedMessageUpdate:v56];
            }

            v53 = [v52 countByEnumeratingWithState:&v67 objects:v80 count:16];
          }

          while (v53);
        }
      }

      else
      {
        v52 = [v65 broadcasterForChatListeners];
        v57 = [v64 account];
        v58 = [v57 accountID];
        [v52 account:v58 chat:v50 style:buf[0] messagesUpdated:v51];
      }

      if (v62)
      {
        (v62[2])();
      }
    }

    else if (v62)
    {
      (v62[2])();
    }

    v12 = v62;
  }

  else if (v12)
  {
    v12[2](v12);
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B684830(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7] + 1;
  return MEMORY[0x2821F9670](a1[4], sel__didReceiveMessageReadForMessageID_date_attempts_completionBlock_);
}

void sub_22B684D2C(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  v27 = [v2 messageWithGUID:*(a1 + 32)];

  v3 = [v27 timeRead];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Dropping read receipt for message that is already marked read", buf, 2u);
      }
    }

    goto LABEL_32;
  }

  v5 = [v27 service];
  v6 = [*(a1 + 40) service];
  v26 = [v6 internalName];

  v7 = dispatch_group_create();
  if (!v27 || !v5 || !v26)
  {
LABEL_25:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable notify about message, no message found", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  if (![*(a1 + 40) messageServiceNamed:v26 canProcessMessagesFromServiceNamed:v5])
  {
    if (([*(a1 + 40) messageServiceNamed:v26 canProcessMessagesFromServiceNamed:v5] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = v5;
          v39 = 2112;
          v40 = v26;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Unable notify about message, message is on an incompatible service: %@ vs %@", buf, 0x16u);
        }
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  group = v7;
  v8 = +[IMDMessageStore sharedInstance];
  v9 = [v8 chatsForMessageGUID:*(a1 + 32)];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v10)
  {
    v30 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 32);
            *buf = 138412546;
            v38 = v14;
            v39 = 2112;
            v40 = v12;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found chat for messageID: %@   chat: %@", buf, 0x16u);
          }
        }

        if (v12)
        {
          dispatch_group_enter(group);
          v15 = a1;
          v16 = v5;
          v17 = a1;
          v18 = *(a1 + 32);
          v19 = *(a1 + 40);
          v15 += 4;
          v20 = v15[2];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_22B685210;
          v31[3] = &unk_278702FF0;
          v32 = group;
          v21 = v19;
          a1 = v17;
          v5 = v16;
          sub_22B684140(v21, v12, v18, 1u, v20, v31);
          v22 = [MEMORY[0x277D1AB48] sharedInstance];
          [v22 logMessageRead:*v15 messageProtocol:v16];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v10);
  }

  v7 = group;
LABEL_29:
  if (*(a1 + 56))
  {
    dispatch_group_notify(v7, MEMORY[0x277D85CD0], *(a1 + 56));
  }

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6857B8(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  v3 = [v2 chatsForMessageGUID:*(a1 + 32)];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
    }
  }

  v6 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if (v10)
        {
          dispatch_group_enter(v6);
          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13 = *(a1 + 48);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = sub_22B6862A8;
          v16[3] = &unk_278702FF0;
          v17 = v6;
          sub_22B685A28(v11, v10, v12, v13, v16);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if (*(a1 + 56))
  {
    dispatch_group_notify(v6, MEMORY[0x277D85CD0], *(a1 + 56));
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B685A28(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v62 = a2;
  v63 = a3;
  v61 = a4;
  v10 = a5;
  v11 = v10;
  v64 = v9;
  if (v9)
  {
    v60 = v10;
    v12 = [v9 service];
    v13 = [v12 supportsDatabase];

    v11 = v60;
    if (v13)
    {
      v14 = +[IMDMessageStore sharedInstance];
      v65 = [v14 messageWithGUID:v63];

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v65;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found message to mark as played: %@", buf, 0xCu);
        }
      }

      v16 = v65;
      if (!v65)
      {
        if (!v60)
        {
LABEL_64:

          v11 = v60;
          goto LABEL_65;
        }

        (v60[2])();
LABEL_63:
        v16 = v65;
        goto LABEL_64;
      }

      [v65 setFlags:{objc_msgSend(v65, "flags") | 0x400000}];
      v17 = v61;
      if (v17)
      {
        v18 = v17;
        v19 = [v65 time];
        v59 = [v19 laterDate:v18];
      }

      else
      {
        v59 = 0;
      }

      v20 = [v65 timeDelivered];
      v21 = v20 == 0;

      if (v21)
      {
        sub_22B682FE0(v65, v59);
      }

      v22 = [v65 timeRead];
      v23 = v22 == 0;

      if (v23)
      {
        if (v59)
        {
          [v65 setTimeRead:?];
        }

        else
        {
          v24 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          [v65 setTimeRead:v24];
        }
      }

      v25 = [v65 timePlayed];
      v26 = v25 == 0;

      if (v26)
      {
        if (v59)
        {
          [v65 setTimePlayed:?];
        }

        else
        {
          v27 = [MEMORY[0x277CBEAA8] date];
          [v65 setTimePlayed:v27];
        }
      }

      if ([v65 errorCode])
      {
        [v65 setErrorCode:0];
      }

      if (![v65 isExpirable] || (objc_msgSend(v65, "isFromMe") & 1) != 0 || objc_msgSend(v65, "expireState") > 0)
      {
        v56 = 0;
LABEL_31:
        v28 = +[IMDMessageStore sharedInstance];
        v29 = [v28 storeMessage:v65 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:4198400];

        v30 = +[IMDMessageStore sharedInstance];
        v31 = [v30 chatsForMessageGUID:v63];

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v73 = v31;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Found chats to mark as played: %@", buf, 0xCu);
          }
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v34)
        {
          v35 = *v68;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v68 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v67 + 1) + 8 * i);
              if (IMOSLoggingEnabled())
              {
                v38 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v73 = v37;
                  _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Updating chat: %@", buf, 0xCu);
                }
              }

              v39 = +[IMDChatRegistry sharedInstance];
              [v39 updateStateForChat:v37 hintMessage:0 shouldRebuildFailedMessageDate:0];
            }

            v34 = [v33 countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v34);
        }

        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v73 = v65;
            _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
          }
        }

        v41 = [v62 roomName];
        if ([v62 style] == 45)
        {
          v42 = 45;
        }

        else
        {
          v42 = 43;
        }

        buf[0] = v42;
        v66 = v41;
        [v64 _mapRoomChatToGroupChat:&v66 style:buf];
        v43 = v66;

        if ([v64 isAwaitingStorageTimer])
        {
          v44 = [v65 guid];
          [v64 noteSuppressedMessageUpdate:v44];
        }

        else
        {
          v44 = [v64 broadcasterForChatListeners];
          v45 = [v62 account];
          v46 = [v45 accountID];
          [v44 account:v46 chat:v43 style:buf[0] messageUpdated:v65];
        }

        if (v57)
        {
          v47 = [v65 guid];
          [v64 _updateExpireStateForMessageGUID:v47];
        }

        if (v58)
        {
          [v64 sendSavedReceiptForMessage:v65 toChatID:0 identifier:v43 style:buf[0]];
        }

        if (v60)
        {
          (v60[2])();
        }

        goto LABEL_63;
      }

      HIDWORD(v56) = IMMessageItemShouldAutomaticallySave();
      v49 = IMOSLoggingEnabled();
      if (HIDWORD(v56))
      {
        v50 = v65;
        if (!v49)
        {
          v53 = 3;
          goto LABEL_78;
        }

        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [v65 guid];
          *buf = 138412290;
          v73 = v52;
          _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Automatically saving received message played on linked device: %@", buf, 0xCu);
        }

        v53 = 3;
      }

      else
      {
        v50 = v65;
        if (!v49)
        {
          v53 = 1;
          goto LABEL_78;
        }

        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [v65 guid];
          *buf = 138412290;
          v73 = v55;
          _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Expire received message played on linked device: %@", buf, 0xCu);
        }

        v53 = 1;
      }

      v50 = v65;
LABEL_78:
      [v50 setExpireState:v53];
      LODWORD(v56) = HIDWORD(v56) ^ 1;
      goto LABEL_31;
    }
  }

  if (v11)
  {
    v11[2](v11);
  }

LABEL_65:

  v48 = *MEMORY[0x277D85DE8];
}

void sub_22B686238(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B686204);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B6862B0(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7] + 1;
  return MEMORY[0x2821F9670](a1[4], sel__didReceiveMessagePlayedForMessageID_date_attempts_completionBlock_);
}

void sub_22B6867AC(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = +[IMDMessageStore sharedInstance];
  v20 = [v2 messageWithGUID:*(a1 + 32)];

  v19 = [v20 service];
  v3 = [*(a1 + 40) service];
  v4 = [v3 internalName];

  v5 = dispatch_group_create();
  if (!v20 || !v19 || !v4)
  {
    goto LABEL_20;
  }

  if (![*(a1 + 40) messageServiceNamed:v4 canProcessMessagesFromServiceNamed:v19])
  {
    if (([*(a1 + 40) messageServiceNamed:v4 canProcessMessagesFromServiceNamed:v19] & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_24;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v19;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Unable notify about message, message is on an incompatible service: %@ vs %@", buf, 0x16u);
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_20:
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Unable notify about message, no message found", buf, 2u);
    }

    goto LABEL_23;
  }

  group = v5;
  v6 = +[IMDMessageStore sharedInstance];
  v7 = [v6 chatsForMessageGUID:*(a1 + 32)];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = *(a1 + 32);
            *buf = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found chat for messageID: %@   chat: %@", buf, 0x16u);
          }
        }

        if (v11)
        {
          dispatch_group_enter(group);
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = sub_22B686BC8;
          v23[3] = &unk_278702FF0;
          v24 = group;
          sub_22B685A28(v15, v11, v14, v16, v23);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v5 = group;
LABEL_24:
  if (*(a1 + 56))
  {
    dispatch_group_notify(v5, MEMORY[0x277D85CD0], *(a1 + 56));
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B686BD0(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7] + 1;
  return MEMORY[0x2821F9670](a1[4], sel__didReceiveMessagePlayedReceiptForMessageID_date_attempts_completionBlock_);
}

void sub_22B687370(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  v1 = +[IMDMessageStore sharedInstance];
  v2 = [v1 chatsForMessageGUID:*(a1 + 32)];

  if (![v2 count] && (*(a1 + 96) & 1) == 0)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = 43;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = 45;
    }

    v5 = [*(a1 + 40) chatForChatIdentifier:v3 style:v4 updatingAccount:1];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];

      v2 = v6;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v92 = v8;
      v93 = 2112;
      v94 = v2;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
    }
  }

  group = dispatch_group_create();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v2;
  v61 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v61)
  {
    v59 = *v81;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v81 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v80 + 1) + 8 * i);
        v11 = a1;
        if (*(a1 + 96) == 1)
        {
          dispatch_group_enter(group);
          v13 = *(a1 + 32);
          v12 = *(a1 + 40);
          v14 = *(a1 + 64);
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v77 = sub_22B687D24;
          v78 = &unk_278702FF0;
          v79 = group;
          v66 = v12;
          v58 = v10;
          v15 = v10;
          v63 = v13;
          v60 = v14;
          v16 = v76;
          v62 = v15;
          if (v15)
          {
            v57 = v16;
            if (v66 && ([v66 service], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "supportsDatabase"), v17, v18))
            {
              v19 = +[IMDMessageStore sharedInstance];
              v56 = [v19 messageWithGUID:v63];

              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v92 = v56;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found message to mark as saved: %@", buf, 0xCu);
                }
              }

              if (v56)
              {
                [v56 setExpireState:3];
                v21 = v60;
                if (v21)
                {
                  v22 = v21;
                  v23 = [v56 time];
                  v54 = [v23 laterDate:v22];
                }

                else
                {
                  v54 = 0;
                }

                v24 = [v56 timeDelivered];
                v25 = v24 == 0;

                if (v25)
                {
                  sub_22B682FE0(v56, v54);
                }

                v26 = [v56 timeRead];
                v27 = v26 == 0;

                if (v27)
                {
                  if (v54)
                  {
                    [v56 setTimeRead:?];
                  }

                  else
                  {
                    v28 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
                    [v56 setTimeRead:v28];
                  }
                }

                v29 = [v56 timePlayed];
                v30 = v29 == 0;

                if (v30)
                {
                  if (v54)
                  {
                    [v56 setTimePlayed:?];
                  }

                  else
                  {
                    v31 = [MEMORY[0x277CBEAA8] date];
                    [v56 setTimePlayed:v31];
                  }
                }

                if ([v56 errorCode])
                {
                  [v56 setErrorCode:0];
                }

                v32 = +[IMDMessageStore sharedInstance];
                v33 = [v32 storeMessage:v56 forceReplace:0 modifyError:1 modifyFlags:0 flagMask:4096];

                v34 = +[IMDMessageStore sharedInstance];
                v35 = [v34 chatsForMessageGUID:v63];

                if (IMOSLoggingEnabled())
                {
                  v36 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v92 = v35;
                    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Found chats to mark as saved: %@", buf, 0xCu);
                  }
                }

                v87 = 0u;
                v88 = 0u;
                v85 = 0u;
                v86 = 0u;
                v37 = v35;
                v38 = [v37 countByEnumeratingWithState:&v85 objects:buf count:16];
                if (v38)
                {
                  v39 = *v86;
                  do
                  {
                    for (j = 0; j != v38; ++j)
                    {
                      if (*v86 != v39)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v41 = *(*(&v85 + 1) + 8 * j);
                      if (IMOSLoggingEnabled())
                      {
                        v42 = OSLogHandleForIMFoundationCategory();
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                        {
                          *v90 = 138412290;
                          *&v90[4] = v41;
                          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Updating chat: %@", v90, 0xCu);
                        }
                      }

                      v43 = +[IMDChatRegistry sharedInstance];
                      [v43 updateStateForChat:v41 hintMessage:0 shouldRebuildFailedMessageDate:0];
                    }

                    v38 = [v37 countByEnumeratingWithState:&v85 objects:buf count:16];
                  }

                  while (v38);
                }

                if (IMOSLoggingEnabled())
                {
                  v44 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                  {
                    *v90 = 138412290;
                    *&v90[4] = v56;
                    _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Notifying about message: %@", v90, 0xCu);
                  }
                }

                v45 = [v62 roomName];
                if ([v62 style] == 45)
                {
                  v46 = 45;
                }

                else
                {
                  v46 = 43;
                }

                v84 = v46;
                *v90 = v45;
                [v66 _mapRoomChatToGroupChat:v90 style:&v84];
                v47 = *v90;

                if ([v66 isAwaitingStorageTimer])
                {
                  v48 = [v56 guid];
                  [v66 noteSuppressedMessageUpdate:v48];
                }

                else
                {
                  v48 = [v66 broadcasterForChatListeners];
                  v49 = [v62 account];
                  v50 = [v49 accountID];
                  [v48 account:v50 chat:v47 style:v84 messageUpdated:v56];
                }

                v77(v57);
              }

              else
              {
                v77(v57);
              }
            }

            else
            {
              v77(v57);
            }

            v16 = v57;
          }

          v11 = a1;
          v10 = v58;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B687D2C;
        block[3] = &unk_278707740;
        v68 = *(v11 + 32);
        v75 = *(v11 + 96);
        v69 = *(v11 + 56);
        v51 = *(v11 + 64);
        v74 = *(v11 + 88);
        v52 = *(v11 + 40);
        v70 = v51;
        v71 = v52;
        v72 = *(v11 + 72);
        v73 = v10;
        dispatch_group_async(group, MEMORY[0x277D85CD0], block);
      }

      v61 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v61);
  }

  if (*(a1 + 80))
  {
    dispatch_group_notify(group, MEMORY[0x277D85CD0], *(a1 + 80));
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_22B687D2C(uint64_t a1)
{
  v2 = +[IMDMessageStore sharedInstance];
  v7 = [v2 messageWithGUID:*(a1 + 32)];

  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D1AA50]) initWithSender:*(a1 + 40) time:*(a1 + 48) guid:0 type:5];
    [v3 setActionType:*(a1 + 80)];
    if ([v7 isFromMe])
    {
      [v3 setOtherHandle:0];
    }

    else
    {
      v4 = [v7 sender];
      [v3 setOtherHandle:v4];
    }

    [v3 setOriginalMessageGUID:*(a1 + 32)];
    [*(a1 + 56) _configureAccountInformationOnItem:v3 withAccount:*(a1 + 64)];
    v5 = [v7 balloonBundleID];
    [v3 setBalloonBundleID:v5];

    v6 = [v7 destinationCallerID];
    [v3 setDestinationCallerID:v6];

    [*(a1 + 56) _storeTranscriptItem:v3 inChat:*(a1 + 72) account:*(a1 + 64)];
  }
}

void sub_22B68A014(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x22B689610);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B68A224(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 73);
  return MEMORY[0x2821F9670](*(a1 + 32), sel_didSendMessage_forChat_style_account_forceDate_itemIsComingFromStorage_);
}

void sub_22B68BA80()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.imagent.CollaborationProcessing", v2);
  v1 = qword_27D8D0010;
  qword_27D8D0010 = v0;
}

id sub_22B68BD04(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[IMDFileTransferCenter sharedInstance];
  v4 = [v3 transferForGUID:v2];

  v5 = [v4 localURL];

  return v5;
}

void sub_22B68BD88(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ABC0] linkMetadataForPluginPayload:*(a1 + 32)];
  v3 = [v2 collaborationMetadata];

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 40) guid];
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Collaboration metadata detected in message %@, broadcasting to listeners", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B68BFBC;
    block[3] = &unk_278705900;
    v10 = *(a1 + 40);
    v6 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v13 = *(a1 + 56);
    v15 = *(a1 + 72);
    v14 = *(a1 + 64);
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) guid];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Collaboration metadata not detected in message %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B68BFBC(uint64_t a1)
{
  v6 = [*(a1 + 32) broadcasterForCollaborationListeners];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 56) accountID];
  [v6 didReceiveCollaborationMessage:v2 inChat:v3 style:v4 account:v5];
}

uint64_t sub_22B68D14C(uint64_t a1)
{
  v2 = [*(a1 + 32) _storeMessage:*(a1 + 40) chatIdentifier:*(a1 + 48) localChat:*(a1 + 56) style:*(a1 + 104) account:*(a1 + 64) messagesToPostArray:*(a1 + 72)];
  *(*(*(a1 + 96) + 8) + 24) &= v2;
  result = [*(a1 + 40) addTelemetryMetricForKey:5];
  if (v2)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);

    return [v4 addObjectsFromArray:v5];
  }

  return result;
}

void sub_22B68D1CC(uint64_t a1)
{
  v2 = *(*(*(a1 + 96) + 8) + 24);
  (*(*(a1 + 88) + 16))();
  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "After received messages are saved, apply pending priority messages if needed.", buf, 2u);
      }
    }

    v4 = +[IMDFilteringController sharedInstance];
    [v4 applyPendingPriorityMessagesIfNeeded];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = [*(a1 + 64) chatIdentifier];
  [v5 storeMessages:v6 messagesToWithdraw:v7 messagesToPost:v8 chatIdentifier:v9 style:objc_msgSend(*(a1 + 64) account:"style") fromIDSID:{*(a1 + 72), *(a1 + 80)}];
}

void sub_22B68D464(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) _revokeSiblingMessagesForReplication:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 40) chatForChatIdentifier:*(a1 + 48) style:*(a1 + 88) updatingAccount:1];
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 updatedMessagesForMessages:*(a1 + 56)];

  if ([v5 count])
  {
    [*(a1 + 40) broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(v3, "isBlackholed")}];
    v6 = v32 = v5;
    v7 = [*(a1 + 64) accountID];
    v8 = [v3 chatIdentifier];
    v9 = [v3 style];
    v10 = [v3 chatProperties];
    v11 = [v3 groupID];
    [v3 personCentricID];
    v13 = v12 = v2;
    LOBYTE(v30) = 0;
    [v6 account:v7 chat:v8 style:v9 chatProperties:v10 groupID:v11 chatPersonCentricID:v13 messagesReceived:v32 removed:v12 messagesComingFromStorage:v30];

    v2 = v12;
    v5 = v32;
  }

  v33 = v2;
  v14 = [*(a1 + 40) _autoReplier];
  v31 = v3;
  [v14 processMessages:*(a1 + 72) inChat:v3 fromIDSID:*(a1 + 80)];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = *(a1 + 72);
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v17 = v5;
  v18 = v5;
  if (v16)
  {
    v19 = v16;
    v20 = *v35;
    v21 = *MEMORY[0x277D19730];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        v24 = [v23 balloonBundleID];
        v25 = [v24 isEqualToString:v21];

        if (v25)
        {
          [*(a1 + 40) _didReceivePotentialCollaborationMessage:v23 forChat:*(a1 + 48) style:*(a1 + 88) account:*(a1 + 64)];
        }
      }

      v17 = v18;
      v19 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  if (*(a1 + 88) == 45 && [*(a1 + 72) count])
  {
    v26 = [*(a1 + 72) firstObject];
    v27 = [v26 handle];

    v28 = +[IMDMessageStore sharedInstance];
    [v28 signalUnreadChangeForHandle:v27];

    v17 = v18;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_22B68DD58(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B68DD3CLL);
  }

  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 256), 8);
  _Block_object_dispose((v47 - 208), 8);
  _Unwind_Resume(exc_buf);
}

id sub_22B68DDEC(uint64_t a1, void *a2)
{
  v140[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v3 guid];
  v6 = [v4 messageWithGUID:v5];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412290;
      v131 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Found existing message: %@", buf, 0xCu);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v11 = [MEMORY[0x277D19230] sharedInstance];
  [v11 dateLastCallEnded];
  v129 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v129 == 0.0)
  {
    v13 = 14400.0;
  }

  else
  {
    [*&v129 timeIntervalSinceNow];
    v13 = 14400.0;
    if (fabs(v12) < 14400.0)
    {
      v13 = 28800.0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v131 = v129;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "Date last call ended: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v131 = v13;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEBUG, "Looking for a similar message %f seconds back", buf, 0xCu);
    }
  }

  v16 = +[IMDMessageStore sharedInstance];
  v17 = [*(a1 + 32) service];
  v18 = IMSingleObjectArray();
  v19 = [v3 guid];
  v20 = IMSingleObjectArray();
  v21 = [*(a1 + 40) participants];
  v22 = [v16 existingMessageSimilarToMessage:v3 skipServices:v18 skipGUIDs:v20 withinTimeInterval:v21 participants:v13];
  v23 = *(*(a1 + 88) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v25 = [v3 service];
    v26 = [v25 isEqualToString:*MEMORY[0x277D1A610]];

    if (v26)
    {
      v27 = +[IMDMessageStore sharedInstance];
      v28 = [v3 service];
      v29 = [v27 existingSOSMessageSimilarToMessage:v3 matchingService:v28 withinTimeInterval:v13];
      v30 = *(*(a1 + 96) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412290;
      v131 = v33;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEBUG, "Found similar message? %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _updateInputMessage:v3 forExistingMessage:*(*(*(a1 + 72) + 8) + 40)];
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412290;
        v131 = v35;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Bailing, we had a similar message: %@", buf, 0xCu);
      }
    }

    v36 = [*(*(*(a1 + 88) + 8) + 40) service];
    v37 = MEMORY[0x277D1A628];
    if ([v36 isEqualToString:*MEMORY[0x277D1A628]])
    {
      v38 = [*(a1 + 32) service];
      v39 = [v38 internalName];
      v40 = [v39 isEqualToString:*MEMORY[0x277D1A620]];
    }

    else
    {
      v40 = 0;
    }

    v41 = [*(*(*(a1 + 88) + 8) + 40) service];
    if ([v41 isEqualToString:*MEMORY[0x277D1A620]])
    {
      v42 = [*(a1 + 32) service];
      v43 = [v42 internalName];
      v44 = [v43 isEqualToString:*v37];
    }

    else
    {
      v44 = 0;
    }

    v45 = [*(*(*(a1 + 88) + 8) + 40) service];
    v46 = MEMORY[0x277D1A618];
    if ([v45 isEqualToString:*MEMORY[0x277D1A618]])
    {
      v47 = [*(a1 + 32) service];
      v48 = [v47 internalName];
      v49 = [v48 isEqualToString:*MEMORY[0x277D1A610]];
    }

    else
    {
      v49 = 0;
    }

    v50 = [*(*(*(a1 + 88) + 8) + 40) service];
    if ([v50 isEqualToString:*MEMORY[0x277D1A610]])
    {
      v51 = [*(a1 + 32) service];
      v52 = [v51 internalName];
      v53 = [v52 isEqualToString:*v46];
    }

    else
    {
      v53 = 0;
    }

    if ((v40 | v44 | v49 | v53))
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Ignoring existing message, will deduplicate using content association message", buf, 2u);
        }
      }

      goto LABEL_48;
    }

    v68 = [*(*(*(a1 + 88) + 8) + 40) service];
    if ([v68 isEqualToString:*MEMORY[0x277D1A620]])
    {
      v69 = [*(a1 + 32) service];
      v70 = [v69 internalName];
      v71 = [v70 isEqualToString:*MEMORY[0x277D1A610]];

      if (!v71)
      {
LABEL_113:
        v110 = +[IMDMessageStore sharedInstance];
        [v110 markMessageAsDeduplicated:*(*(*(a1 + 88) + 8) + 40)];

        v111 = objc_alloc_init(MEMORY[0x277CBEAA8]);
        v112 = MEMORY[0x277CCABB0];
        v113 = [*(*(*(a1 + 88) + 8) + 40) time];
        [v111 timeIntervalSinceDate:v113];
        v114 = [v112 numberWithDouble:?];

        v139 = *MEMORY[0x277D1A080];
        v140[0] = v114;
        v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:&v139 count:1];
        v116 = [MEMORY[0x277D1AAA8] sharedInstance];
        [v116 trackEvent:*MEMORY[0x277D1A100] withDictionary:v115];

        goto LABEL_114;
      }

      if (IMOSLoggingEnabled())
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Service was iMessage, downgrading to SMS", buf, 2u);
        }
      }

      [*(*(*(a1 + 88) + 8) + 40) setService:*MEMORY[0x277D1A610]];
      v73 = *(*(*(a1 + 88) + 8) + 40);
      v74 = [v3 account];
      [v73 setAccount:v74];

      v75 = *(*(*(a1 + 88) + 8) + 40);
      v76 = [v3 accountID];
      [v75 setAccountID:v76];

      v77 = +[IMDMessageStore sharedInstance];
      v68 = [v77 storeMessage:*(*(*(a1 + 88) + 8) + 40) forceReplace:1 modifyError:1 modifyFlags:1 flagMask:0x2000];

      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v68);
      if ([*(a1 + 32) isAwaitingStorageTimer])
      {
        v78 = *(a1 + 32);
        v79 = [*(*(*(a1 + 88) + 8) + 40) guid];
        [v78 noteSuppressedMessageUpdate:v79];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v105 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
          {
            [*(*(*(a1 + 88) + 8) + 40) guid];
            v106 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412290;
            v131 = v106;
            _os_log_impl(&dword_22B4CC000, v105, OS_LOG_TYPE_INFO, "Broadcasting service update for message with GUID %@ after suppression", buf, 0xCu);
          }
        }

        v79 = [*(a1 + 32) chatForChatIdentifier:*(a1 + 48) style:*(a1 + 104) updatingAccount:1];
        v107 = [*(a1 + 32) broadcasterForChatListeners];
        v108 = [*(a1 + 56) accountID];
        v109 = [v79 chatIdentifier];
        [v107 account:v108 chat:v109 style:objc_msgSend(v79 messageUpdated:{"style"), *(*(*(a1 + 88) + 8) + 40)}];
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    goto LABEL_113;
  }

LABEL_48:
  if ([v3 isSOS])
  {
    v55 = [MEMORY[0x277D1AAA8] sharedInstance];
    v137 = @"markedCritical";
    v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isCritical")}];
    v138 = v56;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    [v55 trackEvent:*MEMORY[0x277D1A228] withDictionary:v57];
  }

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v58 = [v3 isSOS];
    v59 = IMOSLoggingEnabled();
    if (v58)
    {
      if (v59)
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 138412290;
          v131 = v61;
          _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Incoming isSOS message found a matching stored non-isSOS message, tagging existing message; existingMessage: %@", buf, 0xCu);
        }
      }

      [*(*(*(a1 + 96) + 8) + 40) setIsSOS:{objc_msgSend(v3, "isSOS")}];
      [*(*(*(a1 + 96) + 8) + 40) setIsCritical:{objc_msgSend(v3, "isCritical")}];
      v62 = +[IMDMessageStore sharedInstance];
      v63 = [v62 storeMessage:*(*(*(a1 + 96) + 8) + 40) forceReplace:1 modifyError:1 modifyFlags:1 flagMask:0xC000002000];

      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v63);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      if (![*(*(*(a1 + 96) + 8) + 40) isCritical])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_104;
        }

        v66 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v84 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 138412290;
          v131 = v84;
          _os_log_impl(&dword_22B4CC000, v66, OS_LOG_TYPE_INFO, "Incoming isSOS message found a matching stored non-isSOS message; incoming message not marked critical (SOS only) -- NOT re-alerting; existingMessage: %@", buf, 0xCu);
        }

        goto LABEL_61;
      }

      v64 = [*(*(*(a1 + 96) + 8) + 40) isRead];
      v65 = IMOSLoggingEnabled();
      if (!v64)
      {
        if (v65)
        {
          v96 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            v97 = *(*(*(a1 + 96) + 8) + 40);
            *buf = 138412290;
            v131 = v97;
            _os_log_impl(&dword_22B4CC000, v96, OS_LOG_TYPE_INFO, "Incoming isSOS message found a matching stored non-isSOS message; incoming message marked critical, existing message unread -- RE-ALERTING; existingMessage: %@", buf, 0xCu);
          }
        }

        v98 = [*(*(*(a1 + 96) + 8) + 40) guid];
        v136 = v98;
        v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
        IMDNotificationsPostUrgentNotificationsForMessages();

        goto LABEL_104;
      }

      if (v65)
      {
        v66 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 138412290;
          v131 = v67;
          _os_log_impl(&dword_22B4CC000, v66, OS_LOG_TYPE_INFO, "Incoming isSOS message found a matching stored non-isSOS message; incoming message marked critical, but existing message already read -- NOT re-alerting; existingMessage: %@", buf, 0xCu);
        }

LABEL_61:
      }
    }

    else
    {
      if (!v59)
      {
LABEL_105:
        v100 = [MEMORY[0x277D1AAA8] sharedInstance];
        v134[0] = @"markedCritical";
        v101 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "isCritical")}];
        v134[1] = @"firstCopyMarkedSOS";
        v135[0] = v101;
        v102 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "isSOS") ^ 1}];
        v135[1] = v102;
        v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
        [v100 trackEvent:*MEMORY[0x277D1A220] withDictionary:v103];

        v104 = +[IMDMessageStore sharedInstance];
        [v104 markMessageAsDeduplicated:*(*(*(a1 + 96) + 8) + 40)];

LABEL_114:
        v117 = 0;
LABEL_115:
        v93 = v129;
        goto LABEL_116;
      }

      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v81 = *(*(*(a1 + 96) + 8) + 40);
        *buf = 138412290;
        v131 = v81;
        _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Incoming SOS message found a matching message already tagged isSOS, discarding incoming message; existingMessage: %@", buf, 0xCu);
      }
    }

LABEL_104:

    goto LABEL_105;
  }

  if (![*(*(*(a1 + 72) + 8) + 40) isFinished])
  {
    if (*(*(*(a1 + 72) + 8) + 40) && IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        [*(a1 + 64) guid];
        v83 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v131 = v83;
        _os_log_impl(&dword_22B4CC000, v82, OS_LOG_TYPE_INFO, "Allowing upgrade of unfinished message for %@", buf, 0xCu);
      }
    }

    goto LABEL_124;
  }

  if ([*(a1 + 32) isReplicating])
  {
    v80 = [*(a1 + 32) _canUpgradeExistingMessageItem:*(*(*(a1 + 72) + 8) + 40) replacementReplicatedMessageItem:*(a1 + 64)];
  }

  else
  {
    v80 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v85 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 64) guid];
      *&v86 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v87 = v86;
      v88 = @"NO";
      if (v80)
      {
        v88 = @"YES";
      }

      *buf = 138412546;
      v131 = *&v86;
      v132 = 2112;
      v133 = v88;
      _os_log_impl(&dword_22B4CC000, v85, OS_LOG_TYPE_INFO, "Found existing message, checking upgrade permissibility of %@ allowUpgrade: %@", buf, 0x16u);
    }
  }

  if (!v80)
  {
    if (IMOSLoggingEnabled())
    {
      v127 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v127, OS_LOG_TYPE_INFO, "*** Bailing, we already had a finished message for this in the database. ***", buf, 2u);
      }
    }

    goto LABEL_114;
  }

  v89 = +[IMDMessageStore sharedInstance];
  v90 = [*(*(*(a1 + 72) + 8) + 40) guid];
  v91 = [v89 wasMessageDeduplicatedWithGUID:v90];

  v92 = IMOSLoggingEnabled();
  if (!v91)
  {
    if (v92)
    {
      v120 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        [*(a1 + 64) guid];
        v121 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v131 = v121;
        _os_log_impl(&dword_22B4CC000, v120, OS_LOG_TYPE_INFO, "Allowing upgrade of finished message for %@", buf, 0xCu);
      }
    }

    v122 = +[IMDMessageStore sharedInstance];
    [v122 markMessageAsDeduplicated:*(*(*(a1 + 72) + 8) + 40)];

LABEL_124:
    LOBYTE(v128) = 0;
    [*(a1 + 32) registerChat:*(a1 + 48) style:*(a1 + 104) displayName:0 groupID:0 originalGroupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:0 account:*(a1 + 56) isBlackholed:v128];
    v123 = *(*(*(a1 + 72) + 8) + 40);
    if (v123)
    {
      v124 = [v123 isFromMe];
      if (v124 != [v3 isFromMe])
      {
        v125 = [MEMORY[0x277CCACA8] stringGUID];
        [v3 setGuid:v125];

        if (IMOSLoggingEnabled())
        {
          v126 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v126, OS_LOG_TYPE_INFO, "The input message disagrees with the from me attribute, creating a new message ID", buf, 2u);
          }
        }
      }
    }

    v117 = v3;
    goto LABEL_115;
  }

  v93 = v129;
  if (v92)
  {
    v94 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 64) guid];
      v95 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v131 = v95;
      _os_log_impl(&dword_22B4CC000, v94, OS_LOG_TYPE_INFO, "*** Bailing on replicated upgrade, message %@ was already deduplicated ***", buf, 0xCu);
    }

    goto LABEL_114;
  }

  v117 = 0;
LABEL_116:

  v118 = *MEMORY[0x277D85DE8];

  return v117;
}

void sub_22B68F2F0(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [v3 setSkipIndexing:{objc_msgSend(*(a1 + 32), "skipIndexing")}];
  }

  v4 = [*(a1 + 40) chatForChatIdentifier:*(a1 + 48) style:*(a1 + 64)];
  if (([v3 isTypingMessage] & 1) == 0 && (objc_msgSend(v3, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v3, "isRCSEncryptionTest") & 1) == 0)
  {
    if (v3)
    {
      v5 = +[IMDChatRegistry sharedInstance];
      [v5 addMessage:v3 toChat:v4 reason:{objc_msgSend(*(a1 + 40), "_incomingMessageIndexReason")}];

      if ([v4 isDeletingIncomingMessages])
      {
        v6 = +[IMDChatRegistry sharedInstance];
        v7 = [v3 guid];
        v12[0] = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        v9 = [MEMORY[0x277CBEAA8] now];
        [v6 moveMessagesWithGUIDsToRecentlyDeleted:v8 deleteDate:v9];
      }
    }

    v10 = +[IMDChatRegistry sharedInstance];
    [v10 updateStateForChat:v4 hintMessage:v3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B68F4A4(uint64_t a1, int a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  if (([(__CFString *)v8 isTypingMessage]& 1) == 0 && ([(__CFString *)v8 isSuggestedActionResponse]& 1) == 0 && ([(__CFString *)v8 isRCSEncryptionTest]& 1) == 0 && ([(__CFString *)v8 flags]& 4) == 0)
  {
    v9 = [(__CFString *)v8 guid];
    v10 = _MessageGUIDToSignpostId();

    if (v10)
    {
      v11 = _iMessageTelemetryLogHandle();
      v12 = v11;
      if (v10 != -1 && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22B4CC000, v12, OS_SIGNPOST_INTERVAL_END, v10, "IncomingMessage", " enableTelemetry=YES ", buf, 2u);
      }

      v13 = [MEMORY[0x277D192C0] IMDaemonCoreMessageReceivedTimingCollection];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [v13 stopTimingForKey:v14];

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [v13 totalTimeForKey:v15];
      v17 = v16;

      if (v17 <= 0.0)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [(__CFString *)v8 guid];
            *buf = 138412290;
            v76 = v20;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "No timing information available for incoming message processing with guid %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v18 = [MEMORY[0x277D1A970] sharedInstance];
        [v18 postCoreAutomationNotificationIncomingMessageProcessedWithDuration:v17];
      }

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [v13 removeTimingForKey:v21];
    }
  }

  if (a2)
  {
    if (!v8)
    {
      v8 = v7;
      if (!v8)
      {
        v8 = *(a1 + 32);
      }
    }

    v22 = [*(a1 + 40) chatForChatIdentifier:*(a1 + 48) style:*(a1 + 80)];
    if (([(__CFString *)v7 isTypingMessage]& 1) != 0 || ([(__CFString *)v7 isFromMe]& 1) != 0)
    {
      goto LABEL_37;
    }

    v23 = [*(a1 + 40) service];
    if ([v23 supportsDatabase])
    {
      v24 = +[IMDDaemonPropertyManager sharedManager];
      v25 = [v24 valueOfPersistentProperty:*MEMORY[0x277D19320]];
      v26 = [v25 intValue] == 0;

      if (!v26)
      {
LABEL_35:
        [*(a1 + 40) trackTimeSensitiveContentInMessageItem:v8 chat:v22];
        v30 = [MEMORY[0x277D1ACB8] sharedInstance];
        v31 = [v30 isUnderFirstDataProtectionLock];

        if ((v31 & 1) == 0)
        {
          [*(a1 + 40) _checkMessageForENURL:v8];
        }

LABEL_37:
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v76 = v7;
            v77 = 2112;
            v78 = v8;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Stored message: %@     Actually stored: %@", buf, 0x16u);
          }
        }

        if ([(__CFString *)v8 containsRichLink])
        {
          v33 = [*(a1 + 32) syndicationRanges];
          v34 = v33 == 0;

          if (v34)
          {
            v35 = [*(a1 + 40) _isMessageSWYSpamMessage:v8 inChat:v22];
            v36 = *(a1 + 40);
            v73 = 0;
            v74 = 0;
            v37 = [v36 _shouldShowSWYQuickActionForMessage:v8 outAppName:&v74 outBundleID:&v73];
            v38 = v74;
            v39 = v73;
            if ((v35 | v37))
            {
              if (IMOSLoggingEnabled())
              {
                v40 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = @"NO";
                  if (v35)
                  {
                    v42 = @"YES";
                  }

                  else
                  {
                    v42 = @"NO";
                  }

                  *buf = 138412802;
                  v76 = v8;
                  v77 = 2112;
                  v78 = v42;
                  if (v37)
                  {
                    v41 = @"YES";
                  }

                  v79 = 2112;
                  v80 = v41;
                  _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Not donating to Message: %@ to CoreSpotlight. isSWYSpam %@, showQuickAction: %@", buf, 0x20u);
                }
              }

              [*(a1 + 40) _configureSyndicationRangesForMessage:v8 forChat:v22 withSyndicationStatus:2];
              [(__CFString *)v8 setWasDetectedAsSWYSpam:v35];
              [(__CFString *)v8 setSwyAppName:v38];
              [(__CFString *)v8 setSwyBundleID:v39];
              v43 = objc_alloc_init(IMDMessageStorageContext);
              [(IMDMessageStorageContext *)v43 setForceReplace:1];
              [(IMDMessageStorageContext *)v43 setUpdateMessageCache:1];
              [(IMDMessageStorageContext *)v43 setReindexMessage:1];
              [(IMDMessageStorageContext *)v43 setChat:v22];
              v44 = +[IMDMessageStore sharedInstance];
              v45 = [v44 storeMessage:v8 context:v43 didReplaceBlock:0];

              [(__CFString *)v8 addTelemetryMetricForKey:5];
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v8;
            _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Posting received message: %@", buf, 0xCu);
          }
        }

        if (*(a1 + 56))
        {
          [(__CFString *)v8 setConsumedSessionPayloads:?];
        }

        if ([v22 isDeletingIncomingMessages] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isAwaitingStorageTimer"))
        {
          v47 = *(a1 + 40);
          v48 = [(__CFString *)v8 guid];
          [v47 noteSuppressedMessageUpdate:v48];
        }

        else
        {
          [*(a1 + 64) addObject:v8];
        }

        if (*(a1 + 81) == 1)
        {
          v49 = *(a1 + 40);
          v50 = [*(a1 + 32) guid];
          [v49 _updateExpireStateForMessageGUID:v50];
        }

        if ([v22 state] == 4)
        {
          v51 = *(a1 + 40);
          v52 = [v22 chatIdentifier];
          [v51 didUpdateChatStatus:7 chat:v52 style:objc_msgSend(v22 account:{"style"), *(a1 + 72)}];
        }

        if (*(a1 + 82) == 1)
        {
          [*(a1 + 40) sendSavedReceiptForMessage:v8 toChatID:0 identifier:*(a1 + 48) style:*(a1 + 80)];
        }

        if ([(__CFString *)v7 isAssociatedMessageItem])
        {
          v53 = [(__CFString *)v7 associatedMessageType]& 0xFFFFFFFFFFFFFFF8;
          if (v53 == 3000 || v53 == 2000)
          {
            v54 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = [(__CFString *)v7 guid];
              v56 = [(__CFString *)v7 associatedMessageGUID];
              v57 = [(__CFString *)v7 sender];
              *buf = 138412802;
              v76 = v55;
              v77 = 2112;
              v78 = v56;
              v79 = 2112;
              v80 = v57;
              _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Replacing previous message acknowledgements with new acknowledgment for received message; sender: '%@':'%@':'%@'", buf, 0x20u);
            }

            v58 = +[IMDMessageStore sharedInstance];
            v59 = [(__CFString *)v7 guid];
            v60 = [(__CFString *)v7 associatedMessageGUID];
            v61 = [(__CFString *)v7 sender];
            v62 = [v58 replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:v59 associatedMessageGUID:v60 sender:v61];
          }
        }

        if ([(__CFString *)v7 isAssociatedMessageItem]&& [(__CFString *)v7 associatedMessageType]== 4000)
        {
          v63 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = [(__CFString *)v7 guid];
            v65 = [(__CFString *)v7 associatedMessageGUID];
            v66 = [(__CFString *)v7 sender];
            *buf = 138412802;
            v76 = v64;
            v77 = 2112;
            v78 = v65;
            v79 = 2112;
            v80 = v66;
            _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Replacing previous custom acknowledgements with new acknowledgment for received message; sender: '%@':'%@':'%@'", buf, 0x20u);
          }

          v67 = +[IMDMessageStore sharedInstance];
          v68 = [(__CFString *)v7 guid];
          v69 = [(__CFString *)v7 associatedMessageGUID];
          v70 = [(__CFString *)v7 sender];
          v71 = [v67 replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:v68 associatedMessageGUID:v69 sender:v70];
        }

        goto LABEL_83;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "  Ensuring the app is alive here", buf, 2u);
      }
    }

    v29 = +[IMDLocalDaemon sharedDaemon];
    [v29 launchListenerForCapability:*MEMORY[0x277D19358]];

    goto LABEL_35;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Message was not stored, ignoring", buf, 2u);
    }
  }

LABEL_83:

  v72 = *MEMORY[0x277D85DE8];
}

void sub_22B6902F0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6901A8);
  }

  _Unwind_Resume(a1);
}

void sub_22B690798(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isTypingMessage] & 1) == 0)
  {
    v3 = +[IMDChatRegistry sharedInstance];
    [v3 addMessage:v5 toChat:*(a1 + 32)];

    v4 = +[IMDChatRegistry sharedInstance];
    [v4 updateStateForChat:*(a1 + 32) hintMessage:0];
  }
}

void sub_22B690830(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    if (([v7 isEqual:v8] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updating invitation message after DB store: %@", buf, 0xCu);
        }
      }

      if (([*(a1 + 32) isAwaitingStorageTimer] & 1) == 0)
      {
        v10 = [*(a1 + 32) broadcasterForChatListeners];
        v11 = [*(a1 + 32) accountID];
        v12 = *(a1 + 40);
        v13 = *(a1 + 72);
        v14 = [*(a1 + 48) chatProperties];
        v15 = [*(a1 + 48) groupID];
        v16 = [*(a1 + 48) personCentricID];
        [v10 account:v11 chat:v12 style:v13 chatProperties:v14 groupID:v15 chatPersonCentricID:v16 messageReceived:v8];
      }
    }

    if (([*(a1 + 32) isAwaitingStorageTimer] & 1) == 0)
    {
      v17 = [*(a1 + 32) broadcasterForChatListeners];
      v18 = *(a1 + 56);
      v19 = *(a1 + 72);
      v20 = *(a1 + 40);
      v21 = [*(a1 + 48) chatProperties];
      [v17 account:v18 chat:v20 style:v19 chatProperties:v21 invitationReceived:v8];
    }

    if (*(a1 + 64))
    {
      v22 = [*(a1 + 32) broadcasterForChatListeners];
      [v22 account:*(a1 + 56) chat:*(a1 + 40) style:*(a1 + 72) chatProperties:0 updateProperties:*(a1 + 64)];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B691EA0(uint64_t a1)
{
  v12 = *(a1 + 32);
  HIDWORD(v11) = [*(a1 + 40) chatStatus];
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v13 = [*(a1 + 40) displayName];
  v4 = [*(a1 + 40) groupID];
  v5 = [*(a1 + 40) lastAddressedHandle];
  v6 = [*(a1 + 40) lastAddressedSIMID];
  v7 = [*(a1 + 40) handleInfo];
  v8 = [*(a1 + 40) account];
  v9 = [*(a1 + 40) category];
  v10 = [*(a1 + 40) extensionName];
  LOBYTE(v11) = [*(a1 + 40) isBlackholed];
  [v12 didUpdateChatStatus:HIDWORD(v11) chat:v3 style:v2 displayName:v13 groupID:v4 lastAddressedHandle:v5 lastAddressedSIMID:v6 handleInfo:v7 account:v8 category:v9 spamExtensionName:v10 isBlackholed:v11];
}

void sub_22B693FFC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B693F9CLL);
  }

  _Unwind_Resume(a1);
}

id sub_22B694078(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 CNContactID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 ID];
  }

  v6 = v5;

  return v6;
}

id sub_22B6940E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 CNContactID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 ID];
  }

  v6 = v5;

  return v6;
}

void sub_22B694464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 addItem:v3 toChat:*(a1 + 32)];

  v5 = +[IMDChatRegistry sharedInstance];
  [v5 updateStateForChat:*(a1 + 32) hintMessage:0];
}

void sub_22B6944F8(id *a1, int a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    if (!v8)
    {
      v9 = v7;
      if (!v9)
      {
        v9 = a1[4];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v7;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Stored item: %@     Actually stored: %@", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Posting received message: %@", buf, 0xCu);
      }
    }

    v12 = [a1[5] isAwaitingStorageTimer];
    v13 = a1[5];
    if (v12)
    {
      v14 = [v9 guid];
      [v13 noteSuppressedMessageUpdate:v14];
    }

    else
    {
      v16 = a1 + 6;
      v17 = [v13 broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(a1[6], "isBlackholed")}];
      v18 = [a1[7] accountID];
      v19 = [*v16 chatIdentifier];
      v20 = [*v16 style];
      v21 = [*v16 chatProperties];
      v22 = [*v16 groupID];
      v23 = [*v16 personCentricID];
      [v17 account:v18 chat:v19 style:v20 chatProperties:v21 groupID:v22 chatPersonCentricID:v23 messageReceived:v9];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Item was not stored, ignoring", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B69484C()
{
  result = MEMORY[0x231897B40](@"_CDSpotlightItemRecorder", @"CoreDuet");
  qword_27D8D0020 = result;
  return result;
}

void sub_22B694A10(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = @"NO";
      v10 = 138412802;
      if (a2)
      {
        v8 = @"YES";
      }

      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "done deleting searchable items with domain identifiers %@. success %@ error %@", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B694EA8(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [v8 objectForKey:*MEMORY[0x277D18E28]];
  v10 = [v8 objectForKey:*MEMORY[0x277D18E20]];
  v11 = [v10 unsignedLongLongValue];

  v12 = [v8 objectForKey:*MEMORY[0x277D18E30]];
  v13 = [v12 BOOLValue];

  if (v9)
  {
    v14 = [*(a1 + 32) _sharedAccountController];
    v15 = [v14 anySessionForServiceName:v9];

    if (!v15)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v7;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Chat: could not find a session to route message GUID: %@", buf, 0xCu);
        }
      }

      goto LABEL_35;
    }

    v16 = [*(a1 + 32) _sharedMessageStore];
    v17 = [v16 messageWithGUID:v7];

    if (!v17)
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v7;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Chat: Could not re-route missing message GUID: %@", buf, 0xCu);
        }
      }

      goto LABEL_34;
    }

    v18 = [*(a1 + 32) _sharedMessageStore];
    v36 = [v18 chatForMessage:v17];

    if (v36)
    {
      if (([v17 isSent] & 1) != 0 || objc_msgSend(v17, "errorCode"))
      {
        v19 = [v17 time];
        [v19 timeIntervalSinceNow];
        v21 = v20;

        [v17 setErrorCode:0];
        [v17 setFlags:{objc_msgSend(v17, "flags") & 0xFFFFFFFFFFFF4FFFLL}];
        [v17 setTime:0];
        [v17 setTimeRead:0];
        [v17 setTimeDelivered:0];
        [v17 setTimePlayed:0];
        [v17 setFlags:{objc_msgSend(v17, "flags") | v11}];
        if ((v11 & 0x80000) != 0)
        {
          v22 = [v17 service];
          [v17 setOriginalServiceName:v22];

          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [v17 service];
              *buf = 138412546;
              v46 = v24;
              v47 = 2112;
              v48 = v7;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Setting original service name to: %@ on downgraded message: %@", buf, 0x16u);
            }
          }
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_22B695530;
        aBlock[3] = &unk_2787079B8;
        v38 = v7;
        v25 = v36;
        v39 = v25;
        v40 = v9;
        v26 = v15;
        v44 = v13;
        v27 = *(a1 + 32);
        v41 = v26;
        v42 = v27;
        v43 = v21;
        v28 = _Block_copy(aBlock);
        v29 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v29 setForceReplace:1];
        [(IMDMessageStorageContext *)v29 setModifyError:1];
        [(IMDMessageStorageContext *)v29 setModifyFlags:1];
        [(IMDMessageStorageContext *)v29 setCalculateUnreadCount:1];
        [(IMDMessageStorageContext *)v29 setChat:v25];
        [*(a1 + 32) storeMessage:v17 context:v29 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v28];

        goto LABEL_33;
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [v17 guid];
          *buf = 138412290;
          v46 = v34;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Not routing message (%@) because it is not sent and has no error, not a candidate for routing", buf, 0xCu);
        }

LABEL_32:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v17;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", buf, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_33:

LABEL_34:
LABEL_35:

    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v46 = v7;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Chat: Got a missing service in routing dictionary for GUID (%@): %@", buf, 0x16u);
    }
  }

LABEL_36:

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22B6954BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B695458);
  }

  _Unwind_Resume(a1);
}

void sub_22B695530(void *a1, uint64_t a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v50 = a4;
  v53 = a1;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[7];
      *buf = 138413314;
      v66 = v7;
      v67 = 2112;
      v68 = v50;
      v69 = 2112;
      *v70 = v8;
      *&v70[8] = 2112;
      *&v70[10] = v9;
      v71 = 2112;
      v72 = v10;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Re-routing message (guid:%@):%@   chat:%@   service:%@   session:%@", buf, 0x34u);
    }
  }

  v12 = a1[5];
  v11 = (a1 + 5);
  v52 = [v12 chatIdentifier];
  v51 = [*v11 style];
  v49 = [*v11 serviceName];
  v13 = +[IMDAccountController sharedInstance];
  v48 = [v13 anySessionForServiceName:v49];

  v46 = IMCopyAnyServiceGUIDForChat();
  v47 = [*(v53 + 7) chatForChatIdentifier:v52 style:v51 updatingAccount:1];
  if (v47)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v66 = v47;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Chat already exists for the other session, nothing to do here: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = [*(v53 + 5) participants];
    [0 addParticipants:v15];

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v66 = v49;
        v67 = 2112;
        v68 = v52;
        v69 = 1024;
        *v70 = v51;
        *&v70[4] = 2112;
        *&v70[6] = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No chat registered, creating on one on service %@  identifier: %@   style: %c  (Chat: %@)", buf, 0x26u);
      }
    }

    v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [*(v53 + 5) participants];
    v17 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v17)
    {
      v56 = *v59;
      v55 = *MEMORY[0x277D193A8];
      v18 = *MEMORY[0x277D192F8];
      v19 = *MEMORY[0x277D193C0];
      v20 = *MEMORY[0x277D193A0];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v59 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v58 + 1) + 8 * i);
          v23 = MEMORY[0x277CBEAC0];
          v24 = [v22 ID];
          v25 = [MEMORY[0x277CCABB0] numberWithInt:2];
          v26 = [v22 unformattedID];
          v27 = [v22 countryCode];
          v28 = [v23 dictionaryWithObjectsAndKeys:{v24, v55, v25, v18, v26, v19, v27, v20, 0}];
          [v57 addObject:v28];
        }

        v17 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v17);
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [*(v53 + 5) participants];
        *buf = 138412546;
        v66 = v57;
        v67 = 2112;
        v68 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Generated handle info: %@ for group chat: %@", buf, 0x16u);
      }
    }

    if (v48)
    {
      v31 = [v48 chatForChatIdentifier:v52 style:v51];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 lastAddressedLocalHandle];
        v34 = [v32 lastAddressedSIMID];
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [v32 guid];
            *buf = 138412802;
            v66 = v36;
            v67 = 2112;
            v68 = v33;
            v69 = 2112;
            *v70 = v34;
            _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Found original chat [%@], will use lastAddressedHandle %@ lastSIMID %@", buf, 0x20u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v66 = v52;
            _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "No iMessage chat found for chat identifier: %@", buf, 0xCu);
          }
        }

        v34 = 0;
        v33 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Chat: could not find iMessage session to find iMessage chat.", buf, 2u);
        }
      }

      v34 = 0;
      v33 = 0;
    }

    [*(v53 + 7) didJoinChat:v52 style:v51 displayName:0 groupID:0 lastAddressedHandle:v33 lastAddressedSIMID:v34 handleInfo:v57];
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(v53 + 7);
      *buf = 138412546;
      v66 = v40;
      v67 = 2112;
      v68 = v46;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Sending message to session: %@  chatGUID: %@", buf, 0x16u);
    }
  }

  [*(v53 + 7) sendMessage:v50 toChat:v52 style:v51];
  [v48 revokeSentMessage:v50 inChat:*(v53 + 5)];
  if (*(v53 + 80) == 1)
  {
    [*(v53 + 8) _markChatAsDowngraded:*(v53 + 5)];
    v62[0] = *MEMORY[0x277D1A098];
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:v53[9]];
    v62[1] = *MEMORY[0x277D1A2F8];
    v63[0] = v41;
    v63[1] = MEMORY[0x277CBEC28];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    v43 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v43 trackEvent:*MEMORY[0x277D1A110] withDictionary:v42];
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_22B695F98(uint64_t a1)
{
  v2 = [MEMORY[0x277D18E40] sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) _downgradableServiceNames];
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B696068;
  v7[3] = &unk_2787079E0;
  v7[4] = *(a1 + 48);
  [v2 requestRoutingForMessageGuid:v3 inChat:v4 downgradableServices:v5 error:v6 completionBlock:v7];
}

uint64_t sub_22B696068(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleRoutingWithDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);

    return [v6 _updateRoutingTimerWithInterval:a3];
  }

  return result;
}

uint64_t sub_22B696310(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleRoutingWithDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);

    return [v6 _updateRoutingTimerWithInterval:a3];
  }

  return result;
}

void sub_22B69662C(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [v8 objectForKey:*MEMORY[0x277D18E10]];
  v10 = [v9 longLongValue];

  v11 = [v8 objectForKey:*MEMORY[0x277D18E18]];
  v12 = [v11 BOOLValue];

  v13 = [*(a1 + 32) _sharedMessageStore];
  v14 = [v13 messageWithGUID:v7];

  if (v14)
  {
    v15 = [*(a1 + 32) _sharedMessageStore];
    v16 = [v15 chatForMessage:v14];

    if (v16)
    {
      if (v10 == 3)
      {
        v17 = v12;
      }

      else
      {
        v17 = 0;
      }

      if (v17 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v14 guid];
            *buf = 138412290;
            v33 = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Not deleting message (%@) because was already saved", buf, 0xCu);
          }

LABEL_23:
        }
      }

      else
      {
        if ([v14 expireState] <= v10)
        {
          [v14 setExpireState:v10];
          if (v12)
          {
            [*(a1 + 40) addObject:v7];
          }

          else
          {
            v22 = objc_alloc_init(IMDMessageStorageContext);
            [(IMDMessageStorageContext *)v22 setCalculateUnreadCount:1];
            [(IMDMessageStorageContext *)v22 setChat:v16];
            v23 = *(a1 + 32);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = sub_22B696A8C;
            v27[3] = &unk_278707A30;
            v28 = v7;
            v24 = v16;
            v25 = *(a1 + 32);
            v29 = v24;
            v30 = v25;
            v31 = v14;
            [v23 storeMessage:v31 context:v22 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v27];
          }

          goto LABEL_27;
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v21 = [v14 guid];
            *buf = 138412802;
            v33 = v21;
            v34 = 1024;
            v35 = [v14 expireState];
            v36 = 1024;
            v37 = v10;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Not expiring message (%@) because its expire state %d is already %d", buf, 0x18u);
          }

          goto LABEL_23;
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v14;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", buf, 0xCu);
      }

      goto LABEL_23;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Chat: Could not expire missing message GUID: %@", buf, 0xCu);
    }
  }

LABEL_28:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22B696A50(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B696A00);
  }

  _Unwind_Resume(a1);
}

void sub_22B696A8C(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v17 = 138413058;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Expire message (guid:%@):%@   chat:%@   session:%@", &v17, 0x2Au);
    }
  }

  if (a2)
  {
    v13 = [*(a1 + 48) broadcasterForChatListeners];
    v14 = [*(a1 + 56) accountID];
    v15 = [*(a1 + 40) chatIdentifier];
    [v13 account:v14 chat:v15 style:objc_msgSend(*(a1 + 40) messageUpdated:{"style"), v8}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B696CC8(uint64_t a1)
{
  v2 = [MEMORY[0x277D18E40] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B696D5C;
  v4[3] = &unk_2787079E0;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 requestExpireStateForMessageGuid:v3 completionBlock:v4];
}

uint64_t sub_22B696D5C(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleExpireStateDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);

    return [v6 _updateExpireStateTimerWithInterval:a3];
  }

  return result;
}

uint64_t sub_22B697118(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleExpireStateDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);
    v7 = 1.0;
    if (a3 >= 1.0)
    {
      v7 = a3;
    }

    return [v6 _updateExpireStateTimerWithInterval:v7];
  }

  return result;
}

void sub_22B6972BC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x277D18E38]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 account];
    [v7 didReceiveError:3 forMessageID:v9 forceError:1 account:v8];
  }
}

void sub_22B697414(uint64_t a1)
{
  v2 = [MEMORY[0x277D18E40] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6974A8;
  v4[3] = &unk_2787079E0;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 requestWatchdogForMessageGuid:v3 completionBlock:v4];
}

uint64_t sub_22B6974A8(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleWatchdogWithDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);

    return [v6 _updateWatchdogTimerWithInterval:a3];
  }

  return result;
}

uint64_t sub_22B697864(uint64_t a1, uint64_t a2, double a3)
{
  result = [*(a1 + 32) _handleWatchdogWithDictionary:a2];
  if (a3 > 0.0)
  {
    v6 = *(a1 + 32);

    return [v6 _updateWatchdogTimerWithInterval:a3];
  }

  return result;
}

void sub_22B6979FC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x277D1AA70]);
    v3 = [*(a1 + 40) accountID];
    v6 = [v2 initWithSender:v3 time:0 body:*(a1 + 32) attributes:0 fileTransferGUIDs:0 flags:69 error:0 guid:0 threadIdentifier:0];

    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) chatIdentifier];
    [v4 sendMessage:v6 toChat:v5 style:45];
  }
}

void sub_22B697B5C(uint64_t a1)
{
  if (IMSupportsUserNotifications())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Going to user user notifications to notify for urgent messages", buf, 2u);
      }
    }

    v3 = +[IMDAccountController sharedInstance];
    v4 = [v3 activeAliases];

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277D18E98]];
    v6 = *(a1 + 32);
    IMDNotificationsPostUrgentNotificationsForMessages();
  }

  else
  {
    v7 = [*(a1 + 40) broadcasterForNotificationsListeners];
    [v7 receivedUrgentRequestForMessages:*(a1 + 32)];
  }
}

void sub_22B697DAC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) guid];
  v4 = [*v2 chatIdentifier];
  v5 = [*v2 style];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v6 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v8 = *v17;
    *&v7 = 138412546;
    v14 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 guid];
            *buf = v14;
            v21 = v12;
            v22 = 2112;
            v23 = v3;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Auto Replier sending delivered quietly receipt for messageGuid %@ in chatGuid %@", buf, 0x16u);
          }
        }

        [*(a1 + 48) sendDeliveredQuietlyReceiptForMessage:v10 forIncomingMessageFromIDSID:*(a1 + 56) toChatGuid:v3 identifier:v4 style:v5 withWillSendToDestinationsHandler:{*(a1 + 64), v14}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B698070(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v3 = [a1[4] guid];
  v4 = [*v2 chatIdentifier];
  v5 = [*v2 style];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a1[5];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v8 = *v17;
    *&v7 = 138412546;
    v14 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 guid];
            *buf = v14;
            v21 = v12;
            v22 = 2112;
            v23 = v3;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Auto Replier sending notify recipient command for messageGuid %@ in chatGuid %@", buf, 0x16u);
          }
        }

        [a1[6] sendNotifyRecipientCommandForMessage:v10 toChatGuid:v3 identifier:v4 style:{v5, v14}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B698384(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Successfully consumed EN url, marking message as read: %@", buf, 0xCu);
      }
    }

    v5 = [*(a1 + 32) guid];
    if ([v5 length])
    {
      v6 = +[IMDMessageStore sharedInstance];
      v7 = [v6 chatsForMessageGUID:v5];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v9)
      {
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v23 = v5;
                v24 = 2112;
                v25 = v12;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found chat for messageID: %@   chat: %@", buf, 0x16u);
              }
            }

            if (v12)
            {
              v14 = *(a1 + 40);
              v15 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = sub_22B698668;
              v17[3] = &unk_278702FF0;
              v17[4] = v12;
              sub_22B684140(v14, v12, v5, 1u, v15, v17);
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v9);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B698668(uint64_t a1)
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 updateStateForChat:*(a1 + 32) hintMessage:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
}

void sub_22B698918(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v12 = a4;
    v6 = [v5 lastMessage];
    v7 = [v6 guid];
    v8 = [*(a1 + 40) guid];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = +[IMDChatRegistry sharedInstance];
      [v10 updateLastMessageForChat:*(a1 + 32) hintMessage:0];
    }

    v11 = [*(a1 + 48) broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(*(a1 + 32), "isBlackholed")}];
    [v11 account:*(a1 + 56) chat:*(a1 + 64) style:*(a1 + 80) messageUpdated:v12];

    (*(*(a1 + 72) + 16))();
  }
}

void sub_22B698C54(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a4;
    v7 = [v5 lastMessage];
    v8 = [v7 guid];
    v9 = [*(a1 + 40) guid];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = +[IMDChatRegistry sharedInstance];
      [v11 updateLastMessageForChat:*(a1 + 32) hintMessage:0];
    }

    v12 = [*(a1 + 48) broadcasterForChatListenersWithBlackholeStatus:{objc_msgSend(*(a1 + 32), "isBlackholed")}];
    [v12 account:*(a1 + 56) chat:*(a1 + 64) style:*(a1 + 72) messageUpdated:v6];
  }
}

void sub_22B69AD54(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B69ACD4);
  }

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B69B414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22B69B444(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B69B540;
  block[3] = &unk_278707B40;
  v6 = *(a1 + 56);
  v17 = a2;
  v15 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v16 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 80);
  v13 = v7;
  v18 = v8;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B69B540(uint64_t a1)
{
  if (*(a1 + 88) == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 32) setSpamDetectionSource:1];
    [*(a1 + 32) updateIsFiltered:2];
    *(*(*(a1 + 72) + 8) + 24) = 2;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 copy];
    v4 = *(*(a1 + 80) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v6 = *(*(*(a1 + 72) + 8) + 24);
    v7 = *(a1 + 96);
    v8 = *(*(*(a1 + 80) + 8) + 40);
    v9 = *(*(a1 + 48) + 16);

    return v9();
  }

  else
  {
    v11 = *(*(*(a1 + 80) + 8) + 40);
    v12 = *(*(a1 + 56) + 16);

    return v12();
  }
}

void sub_22B69B734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a6;
  v9 = a5;
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Executing NOOP command handler for command: %@", &v14, 0xCu);
  }

  v12 = [v9 service];

  [v12 sendAckForMessageWithContext:v8];
  v13 = *MEMORY[0x277D85DE8];
}

void *sub_22B69B828(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = *MEMORY[0x277D187F8];
  v3 = [v1 objectForKey:*MEMORY[0x277D187F8]];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v1 objectForKey:v2];
    v7 = [v5 stringWithFormat:@"<data of length %lu>", objc_msgSend(v6, "length")];

    [v1 setObject:v7 forKey:v2];
  }

  return v1;
}

uint64_t sub_22B69B924()
{
  qword_281420F38 = objc_alloc_init(IMDRelayPushHandler);

  return MEMORY[0x2821F96F8]();
}

void sub_22B69BC28()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:140];
  [v1 setObject:&unk_283F1AD08 forKey:v2];

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:141];
  [v1 setObject:&unk_283F1AD28 forKey:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:143];
  [v1 setObject:&unk_283F1AD48 forKey:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:144];
  [v1 setObject:&unk_283F1AD68 forKey:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:146];
  [v1 setObject:&unk_283F1AD88 forKey:v6];

  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 isReportJunkEverywhereEnabled];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:123];
    [v1 setObject:&unk_283F1ADA8 forKey:v9];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:101];
  [v1 setObject:&unk_283F1ADC8 forKey:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:147];
  [v1 setObject:&unk_283F1ADE8 forKey:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:102];
  [v1 setObject:&unk_283F1AE08 forKey:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:149];
  [v1 setObject:&unk_283F1AE28 forKey:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:142];
  [v1 setObject:&unk_283F1AE48 forKey:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:148];
  [v1 setObject:&unk_283F1AE68 forKey:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:181];
  [v1 setObject:&unk_283F1AE88 forKey:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:182];
  [v1 setObject:&unk_283F1AEA8 forKey:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:145];
  [v1 setObject:&unk_283F1AEC8 forKey:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:139];
  [v1 setObject:&unk_283F1AEE8 forKey:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:190];
  [v1 setObject:&unk_283F1AF08 forKey:v20];

  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  [v21 isPriorityMessagesEnabled];

  v22 = qword_281421340;
  qword_281421340 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_22B69BFBC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v29 = a6;
  v30 = a7;
  v33 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Using Block Incoming Message", buf, 2u);
    }
  }

  v18 = [v16 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v16 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v28 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v16 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v16 objectForKey:@"U"];
    goto LABEL_9;
  }

  v28 = 0;
  v23 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v16, qword_27D8CC860);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22B69C500;
  v34[3] = &unk_278707BD8;
  v35 = v14;
  v36 = v32;
  v37 = v16;
  v38 = v33;
  [v35 _calculateHandlersForMessage:v36 messageGUID:v24 fromIdentifier:v26 command:v15 completionBlock:v34];

  if (v28)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

id sub_22B69C444(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_22B7D8F0C();
      }
    }

    v6 = 0;
  }

  return v6;
}

void sub_22B69C500(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v21)
  {
    v20 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v6 = *(a1 + 32);
          v5 = *(a1 + 40);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), qword_27D8CC858);
          v9 = objc_opt_class();
          v10 = sub_22B69C444(v9, *(a1 + 48), qword_27D8CC860);
          v11 = *(a1 + 56);
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"e");
          v14 = objc_opt_class();
          v15 = sub_22B69C444(v14, *(a1 + 48), @"H");
          [v4 handler:v6 incomingPlainTextMessage:v5 toIdentifier:v8 fromIdentifier:v10 fromToken:v11 timeStamp:v13 storageContext:v15];
        }

        else
        {
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = NSStringFromSelector(sel_handler_incomingPlainTextMessage_toIdentifier_fromIdentifier_fromToken_timeStamp_storageContext_);
            *buf = 138412546;
            v27 = v17;
            v28 = 2112;
            v29 = v4;
            _os_log_debug_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
          }
        }

        ++v3;
      }

      while (v21 != v3);
      v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B69C88C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v29 = a6;
  v30 = a7;
  v33 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayDownloadRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Using Block Incoming Downlaod Message", buf, 2u);
    }
  }

  v18 = [v16 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v16 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v28 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v16 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v16 objectForKey:@"U"];
    goto LABEL_9;
  }

  v28 = 0;
  v23 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v16, qword_27D8CC860);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22B69CD14;
  v34[3] = &unk_278707BD8;
  v35 = v14;
  v36 = v32;
  v37 = v16;
  v38 = v33;
  [v35 _calculateHandlersForMessage:v36 messageGUID:v24 fromIdentifier:v26 command:v15 completionBlock:v34];

  if (v28)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B69CD14(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v21)
  {
    v20 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v6 = *(a1 + 32);
          v5 = *(a1 + 40);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), qword_27D8CC858);
          v9 = objc_opt_class();
          v10 = sub_22B69C444(v9, *(a1 + 48), qword_27D8CC860);
          v11 = *(a1 + 56);
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"e");
          v14 = objc_opt_class();
          v15 = sub_22B69C444(v14, *(a1 + 48), @"H");
          [v4 handler:v6 incomingDownloadMessage:v5 toIdentifier:v8 fromIdentifier:v10 fromToken:v11 timeStamp:v13 storageContext:v15];
        }

        else
        {
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = NSStringFromSelector(sel_handler_incomingDownloadMessage_toIdentifier_fromIdentifier_fromToken_timeStamp_storageContext_);
            *buf = 138412546;
            v27 = v17;
            v28 = 2112;
            v29 = v4;
            _os_log_debug_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
          }
        }

        ++v3;
      }

      while (v21 != v3);
      v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B69D0A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v43 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v33 = a4;
  v17 = a5;
  v30 = a6;
  v31 = a7;
  v34 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v32 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelaySendRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v32, &state);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Using Block Outgoing Message", buf, 2u);
    }
  }

  v19 = [v17 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v21 = MEMORY[0x277CBEA90];
    v22 = [v17 objectForKey:@"U"];
    v23 = [v21 _IDSDataFromBase64String:v22];
LABEL_9:
    v24 = v23;
    v29 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v22 = [v17 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v17 objectForKey:@"U"];
    goto LABEL_9;
  }

  v29 = 0;
  v24 = 0;
LABEL_11:
  v25 = JWUUIDPushObjectToString();
  v26 = objc_opt_class();
  v27 = sub_22B69C444(v26, v17, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B69D530;
  v35[3] = &unk_278707C00;
  v36 = v15;
  v37 = v33;
  v38 = v17;
  v39 = v34;
  v40 = a9;
  [v36 _calculateHandlersForMessage:v37 messageGUID:v25 fromIdentifier:v27 command:v16 completionBlock:v35];

  if (v29)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22B69D530(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v32 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v32)
  {
    v31 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v36 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 40);
          v30 = *(a1 + 32);
          v5 = objc_opt_class();
          v35 = sub_22B69C444(v5, *(a1 + 48), qword_27D8CC858);
          v6 = objc_opt_class();
          v34 = sub_22B69C444(v6, *(a1 + 48), qword_27D8CC860);
          v28 = *(a1 + 56);
          v7 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v9 = MEMORY[0x277CBEA90];
            v10 = [*(a1 + 48) objectForKey:@"U"];
            v25 = [v9 _IDSDataFromBase64String:v10];
            v27 = v10;
            goto LABEL_14;
          }

          v12 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(a1 + 48) objectForKey:@"U"];
            v33 = v12;
LABEL_14:
            v13 = isKindOfClass ^ 1;
          }

          else
          {
            v13 = 0;
            v33 = v12;
          }

          v14 = JWUUIDPushObjectToString();
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 48), @"e");
          v17 = *(a1 + 64);
          v18 = objc_opt_class();
          v19 = sub_22B69C444(v18, *(a1 + 48), @"H");
          LOBYTE(v23) = v17;
          [v4 handler:v30 outgoingPlainTextMessage:v29 toIdentifier:v35 fromIdentifier:v34 fromToken:v28 messageGUID:v14 timeStamp:v16 isBeingReplayed:v23 storageContext:v19];

          if (v13)
          {
          }

          v20 = v33;
          if (isKindOfClass)
          {

            v20 = v27;
          }

          goto LABEL_21;
        }

        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(sel_handler_outgoingPlainTextMessage_toIdentifier_fromIdentifier_fromToken_messageGUID_timeStamp_isBeingReplayed_storageContext_);
          *buf = 138412546;
          v41 = v21;
          v42 = 2112;
          v43 = v4;
          _os_log_debug_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v3;
      }

      while (v32 != v3);
      v32 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v32);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B69D9EC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v43 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v33 = a4;
  v17 = a5;
  v30 = a6;
  v31 = a7;
  v34 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v32 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelaySendDownloadRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v32, &state);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Using Block Outgoing Download Message", buf, 2u);
    }
  }

  v19 = [v17 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v21 = MEMORY[0x277CBEA90];
    v22 = [v17 objectForKey:@"U"];
    v23 = [v21 _IDSDataFromBase64String:v22];
LABEL_9:
    v24 = v23;
    v29 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v22 = [v17 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v17 objectForKey:@"U"];
    goto LABEL_9;
  }

  v29 = 0;
  v24 = 0;
LABEL_11:
  v25 = JWUUIDPushObjectToString();
  v26 = objc_opt_class();
  v27 = sub_22B69C444(v26, v17, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B69DE7C;
  v35[3] = &unk_278707C00;
  v36 = v15;
  v37 = v33;
  v38 = v17;
  v39 = v34;
  v40 = a9;
  [v36 _calculateHandlersForMessage:v37 messageGUID:v25 fromIdentifier:v27 command:v16 completionBlock:v35];

  if (v29)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22B69DE7C(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v32 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v32)
  {
    v31 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v36 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 40);
          v30 = *(a1 + 32);
          v5 = objc_opt_class();
          v35 = sub_22B69C444(v5, *(a1 + 48), qword_27D8CC858);
          v6 = objc_opt_class();
          v34 = sub_22B69C444(v6, *(a1 + 48), qword_27D8CC860);
          v28 = *(a1 + 56);
          v7 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v9 = MEMORY[0x277CBEA90];
            v10 = [*(a1 + 48) objectForKey:@"U"];
            v25 = [v9 _IDSDataFromBase64String:v10];
            v27 = v10;
            goto LABEL_14;
          }

          v12 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(a1 + 48) objectForKey:@"U"];
            v33 = v12;
LABEL_14:
            v13 = isKindOfClass ^ 1;
          }

          else
          {
            v13 = 0;
            v33 = v12;
          }

          v14 = JWUUIDPushObjectToString();
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 48), @"e");
          v17 = *(a1 + 64);
          v18 = objc_opt_class();
          v19 = sub_22B69C444(v18, *(a1 + 48), @"H");
          LOWORD(v23) = v17;
          [v4 handler:v30 outgoingDownloadMessage:v29 toIdentifier:v35 fromIdentifier:v34 fromToken:v28 messageGUID:v14 timeStamp:v16 isBeingReplayed:v23 isInProxyMode:v19 storageContext:?];

          if (v13)
          {
          }

          v20 = v33;
          if (isKindOfClass)
          {

            v20 = v27;
          }

          goto LABEL_21;
        }

        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(sel_handler_outgoingDownloadMessage_toIdentifier_fromIdentifier_fromToken_messageGUID_timeStamp_isBeingReplayed_isInProxyMode_storageContext_);
          *buf = 138412546;
          v41 = v21;
          v42 = 2112;
          v43 = v4;
          _os_log_debug_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v3;
      }

      while (v32 != v3);
      v32 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v32);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B69E33C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v34 = a3;
  v35 = a4;
  v15 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v33 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelaySentReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v33, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block Message Sent Message", buf, 2u);
    }
  }

  v17 = [v35 objectForKeyedSubscript:IMDRelayMessageDictionaryInterworkedKey];
  v29 = [v17 BOOLValue];

  v18 = [v15 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v15 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v24 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v15 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v15 objectForKey:@"U"];
    goto LABEL_9;
  }

  v24 = 0;
  v23 = 0;
LABEL_11:
  v25 = JWUUIDPushObjectToString();
  v26 = objc_opt_class();
  v27 = sub_22B69C444(v26, v15, qword_27D8CC860);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22B69E780;
  v36[3] = &unk_278707C28;
  v37 = v14;
  v38 = v15;
  v39 = v29;
  [v37 _calculateHandlersForMessage:v35 messageGUID:v25 fromIdentifier:v27 command:v34 completionBlock:v36];

  if (v24)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x277D85DE8];
}

void sub_22B69E780(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a2;
  v30 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v30)
  {
    v29 = *v34;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v28 = *(a1 + 32);
          v32 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v6 = MEMORY[0x277CBEA90];
            v7 = [*(a1 + 40) objectForKey:@"U"];
            v24 = [v6 _IDSDataFromBase64String:v7];
            v26 = v7;
            goto LABEL_14;
          }

          v9 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [*(a1 + 40) objectForKey:@"U"];
            v31 = v9;
LABEL_14:
            v27 = isKindOfClass ^ 1;
          }

          else
          {
            v27 = 0;
            v31 = v9;
          }

          v10 = JWUUIDPushObjectToString();
          v11 = *(a1 + 48);
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 40), qword_27D8CC858);
          v14 = objc_opt_class();
          v15 = sub_22B69C444(v14, *(a1 + 40), qword_27D8CC860);
          v16 = objc_opt_class();
          v17 = sub_22B69C444(v16, *(a1 + 40), @"e");
          v18 = objc_opt_class();
          v19 = sub_22B69C444(v18, *(a1 + 40), @"H");
          [v4 handler:v28 messageIDSent:v10 wasInterworked:v11 toIdentifier:v13 fromIdentifier:v15 timeStamp:v17 storageContext:v19];

          if (v27)
          {
          }

          v20 = v31;
          if (isKindOfClass)
          {

            v20 = v26;
          }

          goto LABEL_21;
        }

        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(sel_handler_messageIDSent_wasInterworked_toIdentifier_fromIdentifier_timeStamp_storageContext_);
          *buf = 138412546;
          v38 = v21;
          v39 = 2112;
          v40 = v4;
          _os_log_debug_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v3;
      }

      while (v30 != v3);
      v30 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v30);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B69EC38(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v14 = a5;
  v28 = a6;
  v30 = a7;
  v31 = a8;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.ReportJunkToCarrier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using block to report junk to carrier", buf, 2u);
    }
  }

  v17 = [v14 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v14 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v14 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v14, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B69F048;
  v35[3] = &unk_278703068;
  v36 = v32;
  v37 = v14;
  [v36 _calculateHandlersForMessage:v34 messageGUID:v24 fromIdentifier:v26 command:v33 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B69F048(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a2;
  v25 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v25)
  {
    v24 = *v27;
    *&v4 = 138412802;
    v19 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = *(a1 + 32);
          v8 = [*(a1 + 40) objectForKey:{@"U", v19}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v10 = MEMORY[0x277CBEA90];
            v11 = [*(a1 + 40) objectForKey:@"U"];
            v21 = [v10 _IDSDataFromBase64String:v11];
            v23 = v11;
            goto LABEL_14;
          }

          v13 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [*(a1 + 40) objectForKey:@"U"];
            v2 = v13;
LABEL_14:
            v14 = isKindOfClass ^ 1;
          }

          else
          {
            v14 = 0;
            v2 = v13;
          }

          v15 = JWUUIDPushObjectToString();
          [v6 handler:v7 messageGUIDToReport:v15];

          if (v14)
          {
          }

          v16 = v2;
          if (isKindOfClass)
          {

            v16 = v23;
          }

          goto LABEL_21;
        }

        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v17 = NSStringFromSelector(sel_handler_messageGUIDToReport_);
          *buf = 138412546;
          v31 = v17;
          v32 = 2112;
          v33 = v6;
          _os_log_debug_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v5;
      }

      while (v25 != v5);
      v25 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v25);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B69F438(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v14 = a5;
  v28 = a6;
  v30 = a7;
  v31 = a8;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelaySentReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block Message Delivered Message", buf, 2u);
    }
  }

  v17 = [v14 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v14 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v14 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v14, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B69F848;
  v35[3] = &unk_278703068;
  v36 = v32;
  v37 = v14;
  [v36 _calculateHandlersForMessage:v34 messageGUID:v24 fromIdentifier:v26 command:v33 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B69F848(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a2;
  v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v31)
  {
    v30 = *v35;
    *&v3 = 138412802;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 32);
          v33 = [*(a1 + 40) objectForKey:{@"U", v24}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v7 = MEMORY[0x277CBEA90];
            v8 = [*(a1 + 40) objectForKey:@"U"];
            v26 = [v7 _IDSDataFromBase64String:v8];
            v28 = v8;
            goto LABEL_14;
          }

          v10 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [*(a1 + 40) objectForKey:@"U"];
            v32 = v10;
LABEL_14:
            v11 = isKindOfClass ^ 1;
          }

          else
          {
            v11 = 0;
            v32 = v10;
          }

          v12 = JWUUIDPushObjectToString();
          v13 = objc_opt_class();
          v14 = sub_22B69C444(v13, *(a1 + 40), qword_27D8CC858);
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 40), qword_27D8CC860);
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 40), @"e");
          v19 = objc_opt_class();
          v20 = sub_22B69C444(v19, *(a1 + 40), @"H");
          [v5 handler:v29 messageIDDelivered:v12 toIdentifier:v14 fromIdentifier:v16 timeStamp:v18 storageContext:v20];

          if (v11)
          {
          }

          v21 = v32;
          if (isKindOfClass)
          {

            v21 = v28;
          }

          goto LABEL_21;
        }

        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(sel_handler_messageIDDelivered_toIdentifier_fromIdentifier_timeStamp_storageContext_);
          *buf = 138412546;
          v39 = v22;
          v40 = 2112;
          v41 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v31 != v4);
      v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v31);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B69FCF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v14 = a5;
  v28 = a6;
  v30 = a7;
  v34 = a8;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayReadReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block Outgoing Read Reciept Message", buf, 2u);
    }
  }

  v17 = [v14 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v14 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v14 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v14, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B6A012C;
  v35[3] = &unk_278707BD8;
  v36 = v31;
  v37 = v14;
  v38 = v34;
  v39 = v33;
  [v36 _calculateHandlersForMessage:v39 messageGUID:v24 fromIdentifier:v26 command:v32 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A012C(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a2;
  v31 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v31)
  {
    v30 = *v36;
    do
    {
      v3 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v35 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 32);
          v33 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v5 = MEMORY[0x277CBEA90];
            v6 = [*(a1 + 40) objectForKey:@"U"];
            v25 = [v5 _IDSDataFromBase64String:v6];
            v27 = v6;
            goto LABEL_14;
          }

          v8 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(a1 + 40) objectForKey:@"U"];
            v32 = v8;
LABEL_14:
            v28 = isKindOfClass ^ 1;
          }

          else
          {
            v28 = 0;
            v32 = v8;
          }

          v9 = JWUUIDPushObjectToString();
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 40), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 40), qword_27D8CC858);
          v14 = objc_opt_class();
          v15 = sub_22B69C444(v14, *(a1 + 40), qword_27D8CC860);
          v16 = *(a1 + 48);
          v17 = [*(a1 + 56) objectForKey:IMDRelayMessageDictionaryForcedShowOnlyKey];
          v18 = objc_opt_class();
          v19 = sub_22B69C444(v18, *(a1 + 40), @"H");
          LOBYTE(v23) = v17 != 0;
          [v4 handler:v29 messageIDRead:v9 readByMe:1 timeStamp:v11 toIdentifier:v13 fromIdentifier:v15 fromToken:v16 reflectOnly:v23 storageContext:v19];

          if (v28)
          {
          }

          v20 = v32;
          if (isKindOfClass)
          {

            v20 = v27;
          }

          goto LABEL_21;
        }

        v7 = IMLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(sel_handler_messageIDRead_readByMe_timeStamp_toIdentifier_fromIdentifier_fromToken_reflectOnly_storageContext_);
          *buf = 138412546;
          v40 = v21;
          v41 = 2112;
          v42 = v4;
          _os_log_debug_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v3;
      }

      while (v31 != v3);
      v31 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v31);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B6A062C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v14 = a5;
  v28 = a6;
  v30 = a7;
  v34 = a8;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayReadReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block Incoming Read Reciept Message", buf, 2u);
    }
  }

  v17 = [v14 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v14 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v14 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v14, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B6A0A68;
  v35[3] = &unk_278707BD8;
  v36 = v31;
  v37 = v14;
  v38 = v34;
  v39 = v33;
  [v36 _calculateHandlersForMessage:v39 messageGUID:v24 fromIdentifier:v26 command:v32 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A0A68(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a2;
  v31 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v31)
  {
    v30 = *v36;
    do
    {
      v3 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v35 + 1) + 8 * v3);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 32);
          v33 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v5 = MEMORY[0x277CBEA90];
            v6 = [*(a1 + 40) objectForKey:@"U"];
            v25 = [v5 _IDSDataFromBase64String:v6];
            v27 = v6;
            goto LABEL_14;
          }

          v8 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(a1 + 40) objectForKey:@"U"];
            v32 = v8;
LABEL_14:
            v28 = isKindOfClass ^ 1;
          }

          else
          {
            v28 = 0;
            v32 = v8;
          }

          v9 = JWUUIDPushObjectToString();
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 40), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 40), qword_27D8CC858);
          v14 = objc_opt_class();
          v15 = sub_22B69C444(v14, *(a1 + 40), qword_27D8CC860);
          v16 = *(a1 + 48);
          v17 = [*(a1 + 56) objectForKey:IMDRelayMessageDictionaryForcedShowOnlyKey];
          v18 = objc_opt_class();
          v19 = sub_22B69C444(v18, *(a1 + 40), @"H");
          LOBYTE(v23) = v17 != 0;
          [v4 handler:v29 messageIDRead:v9 readByMe:0 timeStamp:v11 toIdentifier:v13 fromIdentifier:v15 fromToken:v16 reflectOnly:v23 storageContext:v19];

          if (v28)
          {
          }

          v20 = v32;
          if (isKindOfClass)
          {

            v20 = v27;
          }

          goto LABEL_21;
        }

        v7 = IMLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v21 = NSStringFromSelector(sel_handler_messageIDRead_readByMe_timeStamp_toIdentifier_fromIdentifier_fromToken_reflectOnly_storageContext_);
          *buf = 138412546;
          v40 = v21;
          v41 = 2112;
          v42 = v4;
          _os_log_debug_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v3;
      }

      while (v31 != v3);
      v31 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v31);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B6A0F68(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v14 = a5;
  v28 = a6;
  v30 = a7;
  v31 = a8;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayFailure", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block Message Failures Message", buf, 2u);
    }
  }

  v17 = [v14 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v14 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v14 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v14, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B6A1378;
  v35[3] = &unk_278703068;
  v36 = v32;
  v37 = v14;
  [v36 _calculateHandlersForMessage:v34 messageGUID:v24 fromIdentifier:v26 command:v33 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A1378(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a2;
  v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v31)
  {
    v30 = *v35;
    *&v3 = 138412802;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v29 = *(a1 + 32);
          v33 = [*(a1 + 40) objectForKey:{@"U", v24}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v7 = MEMORY[0x277CBEA90];
            v8 = [*(a1 + 40) objectForKey:@"U"];
            v26 = [v7 _IDSDataFromBase64String:v8];
            v28 = v8;
            goto LABEL_14;
          }

          v10 = [*(a1 + 40) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [*(a1 + 40) objectForKey:@"U"];
            v32 = v10;
LABEL_14:
            v11 = isKindOfClass ^ 1;
          }

          else
          {
            v11 = 0;
            v32 = v10;
          }

          v12 = JWUUIDPushObjectToString();
          v13 = objc_opt_class();
          v14 = sub_22B69C444(v13, *(a1 + 40), qword_27D8CC858);
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 40), qword_27D8CC860);
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 40), @"e");
          v19 = objc_opt_class();
          v20 = sub_22B69C444(v19, *(a1 + 40), @"H");
          [v5 handler:v29 messageIDSendFailure:v12 toIdentifier:v14 fromIdentifier:v16 timeStamp:v18 storageContext:v20];

          if (v11)
          {
          }

          v21 = v32;
          if (isKindOfClass)
          {

            v21 = v28;
          }

          goto LABEL_21;
        }

        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(sel_handler_messageIDSendFailure_toIdentifier_fromIdentifier_timeStamp_storageContext_);
          *buf = 138412546;
          v39 = v22;
          v40 = 2112;
          v41 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v31 != v4);
      v31 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v31);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6A1820(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v29 = a6;
  v30 = a7;
  v33 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayPinCode", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Using Block Incomming Display Pin Code ", buf, 2u);
    }
  }

  v18 = [v16 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v16 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v28 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v16 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v16 objectForKey:@"U"];
    goto LABEL_9;
  }

  v28 = 0;
  v23 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v16, qword_27D8CC860);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22B6A1CA8;
  v34[3] = &unk_278707BD8;
  v35 = v14;
  v36 = v32;
  v37 = v16;
  v38 = v33;
  [v35 _calculateHandlersForMessage:v36 messageGUID:v24 fromIdentifier:v26 command:v15 completionBlock:v34];

  if (v28)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A1CA8(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v33)
  {
    v32 = *v37;
    *&v3 = 138412802;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v30 = *(a1 + 40);
          v31 = *(a1 + 32);
          v6 = objc_opt_class();
          v35 = sub_22B69C444(v6, *(a1 + 48), qword_27D8CC858);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), qword_27D8CC860);
          v29 = *(a1 + 56);
          v9 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v11 = MEMORY[0x277CBEA90];
            v12 = [*(a1 + 48) objectForKey:@"U"];
            v26 = [v11 _IDSDataFromBase64String:v12];
            v28 = v12;
            goto LABEL_14;
          }

          v14 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [*(a1 + 48) objectForKey:@"U"];
            v34 = v14;
LABEL_14:
            v15 = isKindOfClass ^ 1;
          }

          else
          {
            v15 = 0;
            v34 = v14;
          }

          v16 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 48), @"e");
          v19 = objc_opt_class();
          v20 = sub_22B69C444(v19, *(a1 + 48), @"H");
          [v5 handler:v31 incomingDisplayPinCode:v30 toIdentifier:v35 fromIdentifier:v8 fromToken:v29 messageGUID:v16 timeStamp:v18 storageContext:{v20, v24}];

          if (v15)
          {
          }

          v21 = v34;
          if (isKindOfClass)
          {

            v21 = v28;
          }

          goto LABEL_21;
        }

        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(sel_handler_incomingDisplayPinCode_toIdentifier_fromIdentifier_fromToken_messageGUID_timeStamp_storageContext_);
          *buf = 138412546;
          v41 = v22;
          v42 = 2112;
          v43 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v33 != v4);
      v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v33);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6A2158(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v29 = a6;
  v30 = a7;
  v33 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayEnrollRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Using Block Incomming Enroll Me Request", buf, 2u);
    }
  }

  v18 = [v16 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v16 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v28 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v16 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v16 objectForKey:@"U"];
    goto LABEL_9;
  }

  v28 = 0;
  v23 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v16, qword_27D8CC860);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22B6A25E0;
  v34[3] = &unk_278707BD8;
  v35 = v14;
  v36 = v32;
  v37 = v16;
  v38 = v33;
  [v35 _calculateHandlersForMessage:v36 messageGUID:v24 fromIdentifier:v26 command:v15 completionBlock:v34];

  if (v28)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A25E0(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v33)
  {
    v32 = *v37;
    *&v3 = 138412802;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v30 = *(a1 + 40);
          v31 = *(a1 + 32);
          v6 = objc_opt_class();
          v35 = sub_22B69C444(v6, *(a1 + 48), qword_27D8CC858);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), qword_27D8CC860);
          v29 = *(a1 + 56);
          v9 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v11 = MEMORY[0x277CBEA90];
            v12 = [*(a1 + 48) objectForKey:@"U"];
            v26 = [v11 _IDSDataFromBase64String:v12];
            v28 = v12;
            goto LABEL_14;
          }

          v14 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [*(a1 + 48) objectForKey:@"U"];
            v34 = v14;
LABEL_14:
            v15 = isKindOfClass ^ 1;
          }

          else
          {
            v15 = 0;
            v34 = v14;
          }

          v16 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 48), @"e");
          v19 = objc_opt_class();
          v20 = sub_22B69C444(v19, *(a1 + 48), @"H");
          [v5 handler:v31 incomingEnrollMeRequest:v30 toIdentifier:v35 fromIdentifier:v8 fromToken:v29 messageGUID:v16 timeStamp:v18 storageContext:{v20, v24}];

          if (v15)
          {
          }

          v21 = v34;
          if (isKindOfClass)
          {

            v21 = v28;
          }

          goto LABEL_21;
        }

        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(sel_handler_incomingEnrollMeRequest_toIdentifier_fromIdentifier_fromToken_messageGUID_timeStamp_storageContext_);
          *buf = 138412546;
          v41 = v22;
          v42 = 2112;
          v43 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v33 != v4);
      v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v33);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6A2A90(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v36 = a6;
  v39 = a7;
  v40 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayDeleteRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v37, &state);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "_handleDeleteCommand: %@", buf, 0xCu);
    }
  }

  v19 = [v17 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v21 = MEMORY[0x277CBEA90];
    v22 = [v17 objectForKey:@"U"];
    v23 = [v21 _IDSDataFromBase64String:v22];
LABEL_9:
    v24 = v23;
    v35 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v22 = [v17 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v17 objectForKey:@"U"];
    goto LABEL_9;
  }

  v35 = 0;
  v24 = 0;
LABEL_11:
  v38 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v17, qword_27D8CC860);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_22B6A2F24;
  v41[3] = &unk_278707C50;
  v27 = v24;
  v42 = v14;
  v28 = v16;
  v29 = v22;
  v30 = v19;
  v31 = v16;
  v32 = v14;
  v33 = v28;
  v43 = v28;
  v44 = v17;
  v45 = v40;
  v46 = v39;
  [v42 _calculateHandlersForMessage:v33 messageGUID:v38 fromIdentifier:v26 command:v15 completionBlock:v41];

  if (v35)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22B6A2F24(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a2;
  v27 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v27)
  {
    v26 = *v30;
    *&v3 = 138412802;
    v22 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v24 = *(a1 + 40);
          v25 = *(a1 + 32);
          v6 = objc_opt_class();
          v28 = sub_22B69C444(v6, *(a1 + 48), @"tP");
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), @"sP");
          v9 = *(a1 + 56);
          v10 = *(a1 + 64);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"e");
          v13 = objc_opt_class();
          v14 = sub_22B69C444(v13, *(a1 + 48), @"D");
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 48), @"Dc");
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 48), @"H");
          [v5 handler:v25 deleteCommand:v24 toIdentifier:v28 fromIdentifier:v8 fromToken:v9 fromIDSID:v10 timeStamp:v12 needsDeliveryReceipt:v14 deliveryContext:v16 storageContext:{v18, v22}];
        }

        else
        {
          v19 = IMLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = NSStringFromSelector(sel_handler_deleteCommand_toIdentifier_fromIdentifier_fromToken_fromIDSID_timeStamp_needsDeliveryReceipt_deliveryContext_storageContext_);
            *buf = 138412546;
            v34 = v20;
            v35 = 2112;
            v36 = v5;
            _os_log_debug_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
          }
        }

        ++v4;
      }

      while (v27 != v4);
      v27 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v27);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22B6A3308(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v36 = a6;
  v39 = a7;
  v40 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayDeleteRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v37, &state);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "_handleRecoverCommand: %@", buf, 0xCu);
    }
  }

  v19 = [v17 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v21 = MEMORY[0x277CBEA90];
    v22 = [v17 objectForKey:@"U"];
    v23 = [v21 _IDSDataFromBase64String:v22];
LABEL_9:
    v24 = v23;
    v35 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v22 = [v17 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v17 objectForKey:@"U"];
    goto LABEL_9;
  }

  v35 = 0;
  v24 = 0;
LABEL_11:
  v38 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v17, qword_27D8CC860);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_22B6A379C;
  v41[3] = &unk_278707C50;
  v27 = v24;
  v42 = v14;
  v28 = v16;
  v29 = v22;
  v30 = v19;
  v31 = v16;
  v32 = v14;
  v33 = v28;
  v43 = v28;
  v44 = v17;
  v45 = v40;
  v46 = v39;
  [v42 _calculateHandlersForMessage:v33 messageGUID:v38 fromIdentifier:v26 command:v15 completionBlock:v41];

  if (v35)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22B6A379C(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a2;
  v27 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v27)
  {
    v26 = *v30;
    *&v3 = 138412802;
    v22 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v24 = *(a1 + 40);
          v25 = *(a1 + 32);
          v6 = objc_opt_class();
          v28 = sub_22B69C444(v6, *(a1 + 48), @"tP");
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), @"sP");
          v9 = *(a1 + 56);
          v10 = *(a1 + 64);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"e");
          v13 = objc_opt_class();
          v14 = sub_22B69C444(v13, *(a1 + 48), @"D");
          v15 = objc_opt_class();
          v16 = sub_22B69C444(v15, *(a1 + 48), @"Dc");
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 48), @"H");
          [v5 handler:v25 recoverCommand:v24 toIdentifier:v28 fromIdentifier:v8 fromToken:v9 fromIDSID:v10 timeStamp:v12 needsDeliveryReceipt:v14 deliveryContext:v16 storageContext:{v18, v22}];
        }

        else
        {
          v19 = IMLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = NSStringFromSelector(sel_handler_recoverCommand_toIdentifier_fromIdentifier_fromToken_fromIDSID_timeStamp_needsDeliveryReceipt_deliveryContext_storageContext_);
            *buf = 138412546;
            v34 = v20;
            v35 = 2112;
            v36 = v5;
            _os_log_debug_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
          }
        }

        ++v4;
      }

      while (v27 != v4);
      v27 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v27);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22B6A3B80(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v32 = a4;
  v16 = a5;
  v29 = a6;
  v30 = a7;
  v33 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayPinCodeApproval", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Using Block Incomming pin Code Approval Response", buf, 2u);
    }
  }

  v18 = [v16 objectForKey:@"U"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v20 = MEMORY[0x277CBEA90];
    v21 = [v16 objectForKey:@"U"];
    v22 = [v20 _IDSDataFromBase64String:v21];
LABEL_9:
    v23 = v22;
    v28 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v21 = [v16 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v16 objectForKey:@"U"];
    goto LABEL_9;
  }

  v28 = 0;
  v23 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v16, qword_27D8CC860);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22B6A4008;
  v34[3] = &unk_278707BD8;
  v35 = v14;
  v36 = v32;
  v37 = v16;
  v38 = v33;
  [v35 _calculateHandlersForMessage:v36 messageGUID:v24 fromIdentifier:v26 command:v15 completionBlock:v34];

  if (v28)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6A4008(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v33)
  {
    v32 = *v37;
    *&v3 = 138412802;
    v24 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v30 = *(a1 + 40);
          v31 = *(a1 + 32);
          v6 = objc_opt_class();
          v35 = sub_22B69C444(v6, *(a1 + 48), qword_27D8CC858);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 48), qword_27D8CC860);
          v29 = *(a1 + 56);
          v9 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v11 = MEMORY[0x277CBEA90];
            v12 = [*(a1 + 48) objectForKey:@"U"];
            v26 = [v11 _IDSDataFromBase64String:v12];
            v28 = v12;
            goto LABEL_14;
          }

          v14 = [*(a1 + 48) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [*(a1 + 48) objectForKey:@"U"];
            v34 = v14;
LABEL_14:
            v15 = isKindOfClass ^ 1;
          }

          else
          {
            v15 = 0;
            v34 = v14;
          }

          v16 = JWUUIDPushObjectToString();
          v17 = objc_opt_class();
          v18 = sub_22B69C444(v17, *(a1 + 48), @"e");
          v19 = objc_opt_class();
          v20 = sub_22B69C444(v19, *(a1 + 48), @"H");
          [v5 handler:v31 incomingResponseForApproval:v30 toIdentifier:v35 fromIdentifier:v8 fromToken:v29 messageGUID:v16 timeStamp:v18 storageContext:{v20, v24}];

          if (v15)
          {
          }

          v21 = v34;
          if (isKindOfClass)
          {

            v21 = v28;
          }

          goto LABEL_21;
        }

        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v22 = NSStringFromSelector(sel_handler_incomingResponseForApproval_toIdentifier_fromIdentifier_fromToken_messageGUID_timeStamp_storageContext_);
          *buf = 138412546;
          v41 = v22;
          v42 = 2112;
          v43 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v33 != v4);
      v33 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v33);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6A44B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v32 = a3;
  v33 = a4;
  v15 = a5;
  v28 = a6;
  v30 = a7;
  v34 = a8;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelaySMSFilteringSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v31, &state);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Using Block SMS Filtering Settings", buf, 2u);
    }
  }

  v17 = [v15 objectForKey:{@"U", v28}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = MEMORY[0x277CBEA90];
    v20 = [v15 objectForKey:@"U"];
    v21 = [v19 _IDSDataFromBase64String:v20];
LABEL_9:
    v22 = v21;
    v23 = isKindOfClass ^ 1;
    goto LABEL_11;
  }

  v20 = [v15 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v15 objectForKey:@"U"];
    goto LABEL_9;
  }

  v23 = 0;
  v22 = 0;
LABEL_11:
  v24 = JWUUIDPushObjectToString();
  v25 = objc_opt_class();
  v26 = sub_22B69C444(v25, v15, qword_27D8CC860);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22B6A48F8;
  v35[3] = &unk_278707C78;
  v36 = v14;
  v37 = v33;
  v38 = v34;
  [v36 _calculateHandlersForMessage:v37 messageGUID:v24 fromIdentifier:v26 command:v32 completionBlock:v35];

  if (v23)
  {
  }

  if (isKindOfClass)
  {
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x277D85DE8];
}