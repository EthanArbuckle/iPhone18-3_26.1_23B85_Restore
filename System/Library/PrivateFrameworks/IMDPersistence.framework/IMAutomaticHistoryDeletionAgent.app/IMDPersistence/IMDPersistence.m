void sub_100000CA8()
{
  v0 = dispatch_time(0, 15000000000);

  dispatch_after(v0, &_dispatch_main_q, &stru_1000082C8);
}

CFTypeRef sub_100000D04()
{
  pthread_mutex_lock(&stru_10000C1B8);
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  if (qword_10000C1F8)
  {
    Value = CFDictionaryGetValue(qword_10000C1F8, v0);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    qword_10000C1F8 = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v3 = getpwuid(v0)) != 0 && (pw_dir = v3->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(qword_10000C1F8, v0, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&stru_10000C1B8);
  v4 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", Value, @"com.apple.MobileSMS");

  return CFAutorelease(v4);
}

id sub_100000E1C()
{
  result = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"automatic-deletion-disabled"}];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t start()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "IMAutomaticHistoryDeletionAgent launched!", v4, 2u);
    }
  }

  v1 = +[IMMetricsCollector sharedInstance];
  [(IMMetricsCollector *)v1 trackEvent:IMMetricsCollectorEventDeletionAgentLaunched];
  notify_post([IMCloudKitLogDailyMetricsNotification cStringUsingEncoding:4]);
  IMRegisterSADAwareXPCActivity();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100008350);
  v2 = objc_autoreleasePoolPush();
  [+[NSRunLoop currentRunLoop](NSRunLoop run];
  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_100000F84(id a1, OS_xpc_object *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Reached iOS automatic deletion daily setup method", buf, 2u);
    }
  }

  if (xpc_activity_get_state(a2))
  {
    if (xpc_activity_set_state(a2, 4))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001128;
      block[3] = &unk_100008330;
      block[4] = a2;
      dispatch_async(&_dispatch_main_q, block);
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "Failed to set the state of xpc_activity to continue.";
        goto LABEL_13;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Handler invoked in check in state";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }
}

void sub_100001128(uint64_t a1)
{
  sub_1000011C4();
  v2 = dispatch_time(0, 15000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AA4;
  block[3] = &unk_100008330;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000011C4()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Reached iOS automatic deletion setup method", buf, 2u);
    }
  }

  if ([+[IMUnlockMonitor isUnderFirstDataProtectionLock] sharedInstance]
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Device under first data protection lock, returning early.", buf, 2u);
      }
    }

    return;
  }

  v2 = +[NSDate date];
  v3 = [[NSCalendar calendarWithIdentifier:?]fromDate:"components:fromDate:", 512, v2];
  v93 = [(NSDateComponents *)v3 weekday];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v2;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 2048;
      v99 = v93;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Should we cleans orphaned attachments? (date=%@) (weekdayComponents:%@) (Day:%ld)", buf, 0x20u);
    }
  }

  v5 = sub_100000D04();
  keyExistsAndHasValidFormat[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"TargetAttachmentCleanupDate", v5, keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing target date based on defaults", buf, 2u);
      }
    }
  }

  else
  {
    AppIntegerValue = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = AppIntegerValue;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Target date: %ld", buf, 0xCu);
    }
  }

  v8 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"automatic-deletion-disabled"}];
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_162;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_162;
    }

    *buf = 0;
    v10 = "Server returned that deletion was disabled, not deleting anything.";
    goto LABEL_161;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Reached iOS deletion method", buf, 2u);
    }
  }

  if (sub_100000D04())
  {
    v12 = [+[IMSyncedSettingsManager sharedManager](IMSyncedSettingsManager "sharedManager")];
    v13 = [+[IMSyncedSettingsManager sharedManager](IMSyncedSettingsManager "sharedManager")];
    if (v12 && [v12 intValue] >= 1)
    {
      [IMDMessageAutomaticHistoryDeletion deleteMessagesAndAttachmentsAfterDays:v12];
      v14 = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      v14 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v12 longValue];
        *buf = 134217984;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "not deleting messages older than %ld days", buf, 0xCu);
      }
    }

    else
    {
      v14 = 1;
    }

    if ([v13 intValue] >= 1)
    {
      v18 = [v13 intValue];
      if (v18 < [v12 intValue])
      {
        [IMDMessageAutomaticHistoryDeletion deleteAttachmentsAfterDays:v13];
LABEL_45:
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Notifying agent so that it can reload the chats.", buf, 2u);
          }
        }

        notify_post("com.apple.automatichistorydeletion.deleted");
        goto LABEL_49;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v13 longValue];
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "not deleting attachments older than %ld days", buf, 0xCu);
      }
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Could not find sms domain", buf, 2u);
    }
  }

LABEL_49:
  v22 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{1), "objectForKey:", @"recoverable-deletion-disabled"}];
  if (v22 && [v22 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Not deleting recoverable messages, disabled by server bag", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Deleting recoverable messages that have aged out of recovery window", buf, 2u);
      }
    }

    +[IMDMessageAutomaticHistoryDeletion deleteRecoverableMessagesEligibleForPermanentRemoval];
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Notifying daemon to reload chat registry", buf, 2u);
      }
    }

    notify_post("com.apple.automatichistorydeletion.deleted");
  }

  context = objc_autoreleasePoolPush();
  if (v93 == AppIntegerValue)
  {
    +[IMDMessageAutomaticHistoryDeletion cleanUpOrphanAttachments];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Not the target date, bailing", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "deleting stale ChatKit previews", buf, 2u);
    }
  }

  *keyExistsAndHasValidFormat = [IMSafeTemporaryDirectory() path];
  v111 = @"CKAnimatedImageMediaObjectPreview";
  v28 = [NSURL fileURLWithPathComponents:[NSArray arrayWithObjects:keyExistsAndHasValidFormat count:2]];
  v29 = +[NSFileManager defaultManager];
  v104 = NSURLNameKey;
  v105 = NSURLIsDirectoryKey;
  v30 = [(NSFileManager *)v29 enumeratorAtURL:v28 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 7, 0];
  for (i = [(NSDirectoryEnumerator *)v30 nextObject]; i; i = [(NSDirectoryEnumerator *)v30 nextObject])
  {
    v32 = objc_autoreleasePoolPush();
    v33 = [i path];
    v34 = [(NSDictionary *)[(NSFileManager *)v29 attributesOfItemAtPath:v33 error:0] objectForKey:NSFileCreationDate];
    v35 = v34;
    if (v34)
    {
      [v34 timeIntervalSinceNow];
      if (fabs(v36) > 3600.0)
      {
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = v35;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "ChatKit preview (%@) is too old (created %@), deleting.", buf, 0x16u);
          }
        }

        [(NSFileManager *)v29 removeItemAtPath:v33 error:0];
      }
    }

    objc_autoreleasePoolPop(v32);
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "deleting stale ChatKit bubble plugin previews", buf, 2u);
    }
  }

  v39 = [NSURL fileURLWithPath:@"/var/mobile/Library/Caches/com.apple.MobileSMS/Plugins/Snapshots"];
  v40 = +[NSFileManager defaultManager];
  *keyExistsAndHasValidFormat = NSURLNameKey;
  v111 = NSURLIsDirectoryKey;
  v41 = [(NSFileManager *)v40 enumeratorAtURL:v39 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 7, 0];
  for (j = [(NSDirectoryEnumerator *)v41 nextObject]; j; j = [(NSDirectoryEnumerator *)v41 nextObject])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = [j path];
    v45 = [(NSDictionary *)[(NSFileManager *)v40 attributesOfItemAtPath:v44 error:0] objectForKey:NSFileCreationDate];
    v46 = v45;
    if (v45)
    {
      [v45 timeIntervalSinceNow];
      if (fabs(v47) > 3600.0)
      {
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = v46;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "ChatKit preview (%@) is too old (created %@), deleting.", buf, 0x16u);
          }
        }

        [(NSFileManager *)v40 removeItemAtPath:v44 error:0];
      }
    }

    objc_autoreleasePoolPop(v43);
  }

  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Deleting previews older than last 200", buf, 2u);
    }
  }

  IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan();
  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Finished previews older than last 200", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Cleansing orphaned sticker transfer user info", buf, 2u);
    }
  }

  [IMStickerTransferInfoDirectoryURL() path];
  IMSharedHelperDeleteOrphanedStickerMMCSDownloadTokens();
  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Cleansing orphaned sticker attachments", buf, 2u);
    }
  }

  IMDCleanseOrphanedStickerAttachments();
  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Cleansing browser snapshot cache", buf, 2u);
    }
  }

  IMDCleanseBrowserSnapshots();
  objc_autoreleasePoolPop(context);
  v54 = [+[IDSServerBag sharedInstanceForBagType:](IDSServerBag sharedInstanceForBagType:{0), "objectForKey:", @"junk-deletion-disabled"}];
  if (v54 && [v54 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v56 = "Not deleting junk messages, disabled by server bag";
LABEL_144:
        v79 = v55;
        v80 = 2;
        goto LABEL_145;
      }
    }

    goto LABEL_153;
  }

  if (![+[IMFeatureFlags sharedFeatureFlags](IMFeatureFlags "sharedFeatureFlags")])
  {
    *keyExistsAndHasValidFormat = 0;
    v111 = keyExistsAndHasValidFormat;
    v112 = 0x2020000000;
    LOBYTE(v113) = 0;
    v67 = [NSPredicate predicateWithFormat:@"%K == %ld AND %K == %@", IMChatPropertyIsFiltered, 2, IMChatPropertyServiceName, IMServiceNameiMessage];
    v68 = +[IMDDatabase synchronousDatabase];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002D74;
    v99 = &unk_100008398;
    v100 = keyExistsAndHasValidFormat;
    [v68 fetchChatRecordsFilteredUsingPredicate:v67 sortedUsingDescriptors:0 limit:1 completionHandler:buf];
    length_low = LOBYTE(v111->length);
    _Block_object_dispose(keyExistsAndHasValidFormat, 8);
    v70 = +[IMDeviceUtilities supportsiMessageJunk];
    v71 = IMOSLoggingEnabled();
    if (((v70 | length_low) & 1) == 0)
    {
      if (!v71)
      {
        goto LABEL_153;
      }

      v81 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 138412546;
      *&buf[4] = @"NO";
      *&buf[12] = 2112;
      *&buf[14] = @"NO";
      v56 = "Not deleting junk messages, recipient is not Oscar eligible: %@ or junk chat exists: %@";
      v79 = v81;
      v80 = 22;
      goto LABEL_145;
    }

    if (!v71 || (v72 = OSLogHandleForIMFoundationCategory(), !os_log_type_enabled(v72, OS_LOG_TYPE_INFO)))
    {
LABEL_129:
      v75 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"startDeletingJunkMessagesFrom"];
      if (!v75)
      {
        [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:+[NSDate date], @"startDeletingJunkMessagesFrom"];
        goto LABEL_153;
      }

      v76 = [v75 compare:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", -9720000.0)}] == 1;
      v77 = IMOSLoggingEnabled();
      if (!v76)
      {
        if (v77)
        {
          v82 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Deleting junk messages that have aged out of recovery window", buf, 2u);
          }
        }

        [IMDMessageAutomaticHistoryDeletion deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:90];
        if (IMOSLoggingEnabled())
        {
          v83 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Notifying daemon to reload chat registry", buf, 2u);
          }
        }

        notify_post("com.apple.automatichistorydeletion.deleted");
        goto LABEL_153;
      }

      if (!v77)
      {
        goto LABEL_153;
      }

      v78 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        goto LABEL_153;
      }

      *buf = 134217984;
      *&buf[4] = 90;
      v56 = "The feature has been enabled for less than %ld days";
      v79 = v78;
      v80 = 12;
LABEL_145:
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, v56, buf, v80);
      goto LABEL_153;
    }

    v73 = @"NO";
    if (v70)
    {
      v74 = @"YES";
    }

    else
    {
      v74 = @"NO";
    }

    if (length_low)
    {
      v73 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v74;
    *&buf[12] = 2112;
    *&buf[14] = v73;
    v65 = "Eligible for deletion: %@ - has one junk iMessage: %@";
    v66 = v72;
LABEL_128:
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, v65, buf, 0x16u);
    goto LABEL_129;
  }

  *keyExistsAndHasValidFormat = 0;
  v111 = keyExistsAndHasValidFormat;
  v112 = 0x2020000000;
  LOBYTE(v113) = 0;
  v57 = [NSPredicate predicateWithFormat:@"%K == %ld", IMChatPropertyIsFiltered, 2];
  v58 = +[IMDDatabase synchronousDatabase];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100002CCC;
  v99 = &unk_100008398;
  v100 = keyExistsAndHasValidFormat;
  [v58 fetchChatRecordsFilteredUsingPredicate:v57 sortedUsingDescriptors:0 limit:1 completionHandler:buf];
  LOBYTE(v57) = v111->length;
  _Block_object_dispose(keyExistsAndHasValidFormat, 8);
  if (v57)
  {
    v59 = +[IMNotificationSettings isSpamFilteringEnabled];
    v60 = +[IMNotificationSettings isTextMessageExtensionEnabled];
    v61 = IMOSLoggingEnabled();
    if (((v59 | v60) & 1) == 0)
    {
      if (v61)
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v56 = "Not eligible for deletion, spam and text message filtering turned off";
          goto LABEL_144;
        }
      }

      goto LABEL_153;
    }

    if (!v61)
    {
      goto LABEL_129;
    }

    v62 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      goto LABEL_129;
    }

    v63 = @"NO";
    if (v59)
    {
      v64 = @"YES";
    }

    else
    {
      v64 = @"NO";
    }

    if (v60)
    {
      v63 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v64;
    *&buf[12] = 2112;
    *&buf[14] = v63;
    v65 = "Eligible for deletion, spam %@ or text message filtering %@ turned on";
    v66 = v62;
    goto LABEL_128;
  }

  if (IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v56 = "Not deleting junk messages, no junk chat found";
      goto LABEL_144;
    }
  }

LABEL_153:
  v84 = [+[NSUserDefaults messagesAppDomain](NSUserDefaults "messagesAppDomain")];
  v85 = IMOSLoggingEnabled();
  if ((v93 == AppIntegerValue) | v84 & 1)
  {
    if (v85)
    {
      v86 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "Running Missing Messages Metric Collection", buf, 2u);
      }
    }

    *keyExistsAndHasValidFormat = 0;
    v111 = keyExistsAndHasValidFormat;
    v112 = 0x3052000000;
    v113 = sub_100002E1C;
    v114 = sub_100002E2C;
    v115 = objc_alloc_init(IMMessagesWithoutChatsContext);
    v87 = dispatch_group_create();
    dispatch_group_enter(v87);
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x2020000000;
    v97[3] = -1;
    v88 = +[IMDDatabase synchronousDatabase];
    v104 = _NSConcreteStackBlock;
    v105 = 3221225472;
    v106 = sub_100002E38;
    v107 = &unk_1000083C0;
    v108 = v87;
    v109 = v97;
    [v88 fetchTotalMessageCountWithCompletionHandler:&v104];
    dispatch_group_enter(v87);
    v96[0] = 0;
    v96[1] = v96;
    v96[2] = 0x2020000000;
    v96[3] = -1;
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100002E4C;
    v95[3] = &unk_1000083C0;
    v95[4] = v87;
    v95[5] = v96;
    [+[IMDDatabase synchronousDatabase](IMDDatabase "synchronousDatabase")];
    v89 = [+[IMCloudKitHooks sharedInstance](IMCloudKitHooks isEnabled];
    [v111[1].info setMicEnabled:v89];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002E60;
    v99 = &unk_1000083E8;
    v102 = v97;
    v103 = v96;
    v100 = v87;
    v101 = keyExistsAndHasValidFormat;
    dispatch_group_notify(v87, &_dispatch_main_q, buf);
    _Block_object_dispose(v96, 8);
    _Block_object_dispose(v97, 8);
    _Block_object_dispose(keyExistsAndHasValidFormat, 8);
    goto LABEL_162;
  }

  if (v85)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Not Running Missing Messages Metric Collection";
LABEL_161:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
    }
  }

LABEL_162:
  v90 = objc_autoreleasePoolPush();
  if (IMOSLoggingEnabled())
  {
    v91 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Cleaning database", buf, 2u);
    }
  }

  +[IMDMessageAutomaticHistoryDeletion cleanDatabase];
  objc_autoreleasePoolPop(v90);
}

void sub_100002AA4(uint64_t a1)
{
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  v2 = IMOSLoggingEnabled();
  if (v1)
  {
    if (v2)
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v6 = 0;
        v4 = "Marked xpc_activity to done.";
        v5 = &v6;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }
  }

  else if (v2)
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Failed to set the state of xpc_activity to done.";
      v5 = buf;
      goto LABEL_8;
    }
  }
}

void sub_100002B98(id a1, OS_xpc_object *a2)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received iOS keep messages pref change notif,.", v4, 2u);
    }
  }

  sub_1000011C4();
  v3 = dispatch_time(0, 15000000000);
  dispatch_after(v3, &_dispatch_main_q, &stru_100008370);
}

void sub_100002C4C(id a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Exiting manually as we were launched as part of a darwin notification", v2, 2u);
    }
  }

  exit(0);
}

void sub_100002CCC(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found at least 1 junk chat", v4, 2u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100002D74(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found at least 1 iMessage junk chat", v4, 2u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100002E60(void *a1)
{
  [*(*(a1[5] + 8) + 40) setTotalMessagesCount:*(*(a1[6] + 8) + 24)];
  [*(*(a1[5] + 8) + 40) setMissingMessagesCount:*(*(a1[7] + 8) + 24)];
  [+[IMMetricsCollector sharedInstance](IMMetricsCollector trackMessagesWithoutChatsWithContext:"trackMessagesWithoutChatsWithContext:", *(*(a1[5] + 8) + 40)];

  *(*(a1[5] + 8) + 40) = 0;
  v2 = a1[4];

  dispatch_release(v2);
}