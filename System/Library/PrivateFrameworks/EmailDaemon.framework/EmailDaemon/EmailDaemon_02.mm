void sub_100097BDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_100098B34(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueId];
  v4 = [*(*(a1 + 32) + 128) uniqueId];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100098D4C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100099B2C(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (!v6 || (+[NSDate date](NSDate, "date"), v2 = objc_claimAutoreleasedReturnValue(), [v2 timeIntervalSinceDate:v6], v4 = v3, v2, v4 > 86400.0))
  {
    [*(a1 + 48) emptyTrash];
    v5 = +[NSDate date];
    [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

id sub_100099D1C()
{
  v0 = qword_100185AC8;
  if (!qword_100185AC8)
  {
    v4[0] = @"SwipeActionNone";
    v4[1] = @"SwipeActionRead";
    v5[0] = &off_1001635B0;
    v5[1] = &off_1001635C8;
    v4[2] = @"SwipeActionFlag";
    v4[3] = @"SwipeActionMove";
    v5[2] = &off_1001635E0;
    v5[3] = &off_1001635F8;
    v4[4] = @"SwipeActionTrash";
    v4[5] = @"SwipeActionArchive";
    v5[4] = &off_100163610;
    v5[5] = &off_100163628;
    v4[6] = @"SwipeActionAlternateDestructiveAction";
    v5[6] = &off_100163640;
    v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
    v2 = qword_100185AC8;
    qword_100185AC8 = v1;

    v0 = qword_100185AC8;
  }

  return v0;
}

void sub_100099F0C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10009A7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFUserNotificationCenterController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10009A940(uint64_t a1)
{
  v2 = [*(a1 + 32) vipReader];
  *(*(a1 + 32) + 24) = [v2 hasVIPs];

  v3 = [*(a1 + 32) conversationSubscriptionProvider];
  *(*(a1 + 32) + 25) = [v3 hasSubscribedConversations];

  v4 = *(a1 + 32);

  return [v4 nts_resetUserNotificationCenterTopics];
}

void sub_10009AB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10009AB8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_lock(WeakRetained + 2);
  v2 = *(WeakRetained + 20);
  os_unfair_lock_unlock(WeakRetained + 2);
  v3 = [WeakRetained _currentSettingsStringForSettingsByTopic:v2];
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKeyedSubscript:@"Notification Settings"];

  return v4;
}

void sub_10009B0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B118(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = MFUserAgent();
    [WeakRetained _updatePostingDelay:{objc_msgSend(v1, "isForeground")}];
  }
}

void sub_10009B374(id *a1)
{
  [*(a1[4] + 10) updateCutoffForMailboxesWithMessages:a1[5]];
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[5] ef_mapSelector:"ef_publicDescription"];
    v4 = [a1[6] ef_publicDescription];
    *buf = 138543618;
    v29 = v3;
    v30 = 2114;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notifyMessagesAdded=%{public}@, context=%{public}@", buf, 0x16u);
  }

  v5 = [a1[5] ef_compactMap:&stru_100159CD0];
  v6 = [a1[4] notificationAnalyticsLogger];
  [v6 messageAddedWithNotificationIDs:v5];

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [MFMessageResultsGenerator alloc];
  v27[0] = @"MSResultsKeyBodySummary";
  v27[1] = @"MSResultsKeySuppressionContexts";
  v9 = [NSArray arrayWithObjects:v27 count:2];
  v10 = [(MFMessageResultsGenerator *)v8 initWithKeys:v9 downloadIfNecessary:0];

  v11 = objc_alloc_init(CNContactStore);
  if ([a1[6] isRemindMe])
  {
    v12 = a1[5];
  }

  else
  {
    v12 = [*(a1[4] + 9) messagesNeedingNotification:a1[5]];
  }

  v13 = v12;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10009B748;
  v21[3] = &unk_100159CF8;
  v14 = v10;
  v22 = v14;
  v15 = a1[6];
  v16 = a1[4];
  v23 = v15;
  v24 = v16;
  v17 = v11;
  v25 = v17;
  v18 = v7;
  v26 = v18;
  v19 = [v13 ef_map:v21];
  if ([v19 count])
  {
    if ([a1[6] isRemindMe])
    {
      v20 = 1;
    }

    else if ([a1[6] isSummaryDownload])
    {
      v20 = [a1[4] willUseGeneratedSummaries] ^ 1;
    }

    else
    {
      v20 = 0;
    }

    [a1[4] handleDidFetchMessages:v18 postImmediately:v20];
  }
}

NSString *__cdecl sub_10009B718(id a1, MFLibraryMessage *a2)
{
  v2 = [(MFLibraryMessage *)a2 notificationID];

  return v2;
}

id sub_10009B748(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setMessage:v3];
  v4 = [*(a1 + 32) results];
  v5 = [v4 objectForKeyedSubscript:@"MSResultsKeyBodySummary"];
  v6 = [v4 objectForKeyedSubscript:@"MSResultsKeySuppressionContexts"];
  if ([*(a1 + 40) isRemindMe])
  {
    v7 = [MFNotificationMessage alloc];
    v8 = [*(a1 + 48) favoritesReader];
    v9 = [*(a1 + 48) vipReader];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) remindMeDate];
    v12 = [(MFNotificationMessage *)v7 initWithFavoritesReader:v8 vipReader:v9 libraryMessage:v3 contactStore:v10 remindMeDate:v11];
  }

  else
  {
    v13 = [MFNotificationMessage alloc];
    v8 = [*(a1 + 48) favoritesReader];
    v9 = [*(a1 + 48) vipReader];
    v12 = [(MFNotificationMessage *)v13 initWithFavoritesReader:v8 vipReader:v9 libraryMessage:v3 contactStore:*(a1 + 56) suppressionContexts:v6 summary:v5];
  }

  if (v12)
  {
    [*(a1 + 64) addObject:v12];
  }

  if (([*(a1 + 40) isSummaryDownload] & 1) == 0 && !objc_msgSend(v5, "length") && (objc_msgSend(*(a1 + 40), "isRemindMe") & 1) == 0)
  {
    [*(a1 + 48) requestSummaryForMessage:v3];
  }

  if (!v5)
  {
    v14 = MSUserNotificationsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 ef_publicDescription];
      v16 = [*(a1 + 40) isRemindMe];
      v18 = 138543618;
      v19 = v15;
      v20 = 1026;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No summary for message=%{public}@ isRemindMe=%{public}d", &v18, 0x12u);
    }
  }

  return v4;
}

NSString *__cdecl sub_10009BC5C(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

id sub_10009BC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 content];

  v6 = [v3 request];
  v7 = [v6 identifier];

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:MSUserNotificationContentKeyAccountReference];
  if (v9 && ([*(a1 + 32) containsObject:v9] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

BOOL sub_10009D118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if ([*(a1 + 40) containsObject:v3])
  {
    v5 = [v4 authorizationStatus] == 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_10009D1AC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) notificationID];
    [v8 removeObjectForKey:v3];
  }

  else
  {
    v3 = [*(a1 + 32) remindMeDate];
    v4 = [*(a1 + 32) libraryMessage];
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 libraryID]);
    v6 = [EFPair pairWithFirst:v3 second:v5];
    v7 = [*(a1 + 32) notificationID];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_10009D2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10009D318(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) notificationID];
    [v3 removeObject:v4];

    v5 = MSUserNotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) ef_publicDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing notification needing summary: %{public}@", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (*(a1 + 41) == 1)
  {
    v7 = [*(a1 + 32) notificationID];
    [v3 addObject:v7];

    v5 = MSUserNotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) ef_publicDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding notification needing summary: %{public}@", &v9, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_10009D74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v23 = v21;

  objc_destroyWeak(v20);
  objc_destroyWeak((v22 - 88));

  _Unwind_Resume(a1);
}

void sub_10009D7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = MSUserNotificationsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = [v6 content];
        v8 = [v7 topicIdentifiers];
        v9 = [v3 ef_publicDescription];
        v14 = 138543874;
        v15 = v6;
        v16 = 2114;
        v17 = v8;
        v18 = 2114;
        v19 = v9;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to add notification request: %{public}@ for topics: %{public}@ with error %{public}@", &v14, 0x20u);
      }
    }

    else
    {
      v10 = MSUserNotificationsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [v11 content];
        v13 = [v12 topicIdentifiers];
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully created notification request: %{public}@ for topics: %{public}@", &v14, 0x16u);
      }

      if (*(a1 + 56) == 1)
      {
        v5 = [WeakRetained notificationAnalyticsLogger];
        [v5 notificationWithSummaryPostedForNotificationID:*(a1 + 40)];
      }

      else
      {
        v5 = [WeakRetained notificationAnalyticsLogger];
        [v5 notificationWithoutSummaryPostedForNotificationID:*(a1 + 40)];
      }
    }
  }
}

void sub_10009DA5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = MSUserNotificationsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = [v6 content];
        v8 = [v7 topicIdentifiers];
        v9 = [v3 ef_publicDescription];
        v14 = 138543874;
        v15 = v6;
        v16 = 2114;
        v17 = v8;
        v18 = 2114;
        v19 = v9;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to replace notification request: %{public}@ for topics: %{public}@ with error %{public}@", &v14, 0x20u);
      }

      goto LABEL_9;
    }

    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v11 content];
      v13 = [v12 topicIdentifiers];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully replaced notification request: %{public}@ for topics: %{public}@", &v14, 0x16u);
    }

    if (*(a1 + 56) == 1)
    {
      v5 = [WeakRetained notificationAnalyticsLogger];
      [v5 notificationSummaryUpdatedForNotificationID:*(a1 + 40)];
LABEL_9:
    }
  }
}

void sub_10009DFC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D51F0(a1, v3, v4);
    }
  }

  else
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully set new NotificationCenter topics: %@", &v6, 0xCu);
    }
  }
}

UNNotificationTopicRequest *__cdecl sub_10009E108(id a1, MailAccount *a2)
{
  v2 = a2;
  v3 = [(MailAccount *)v2 uniqueID];
  v4 = [(MailAccount *)v2 displayName];
  v5 = [(MailAccount *)v2 displayName];
  v6 = [UNNotificationTopicRequest topicRequestWithIdentifier:v3 displayName:v4 priority:0 sortIdentifier:v5 supportedOptions:5 enabledOptions:1];

  return v6;
}

void sub_10009E740(uint64_t a1)
{
  [*(*(a1 + 32) + 80) updateCutoffForMailboxesWithMessages:*(a1 + 40)];
  v2 = [*(a1 + 48) objectForKey:MessageIsRead];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 48) objectForKey:MessageIsDeleted];
  v5 = [v4 BOOLValue];

  if ((v5 | v3))
  {
    v6 = objc_alloc_init(CNContactStore);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10009E998;
    v16 = &unk_100159EB8;
    v7 = *(a1 + 40);
    v17 = *(a1 + 32);
    v8 = v6;
    v18 = v8;
    v9 = [v7 ef_compactMap:&v13];
    v10 = [v9 ef_map:{&stru_100159EF8, v13, v14, v15, v16, v17}];
    if ([v10 count])
    {
      v11 = MSUserNotificationsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 count];
        *buf = 67109890;
        v20 = v3;
        v21 = 1024;
        v22 = v5;
        v23 = 2048;
        v24 = v12;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing notifications due to flag changes (Read:%d, Deleted:%d) for %lu messages: %@", buf, 0x22u);
      }

      [*(a1 + 32) removeNotificationsWithIdentifiers:v10];
    }
  }
}

MFNotificationMessage *sub_10009E998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MFNotificationMessage alloc];
  v5 = [*(a1 + 32) favoritesReader];
  v6 = [*(a1 + 32) vipReader];
  v7 = [(MFNotificationMessage *)v4 initWithFavoritesReader:v5 vipReader:v6 libraryMessage:v3 contactStore:*(a1 + 40) suppressionContexts:0 summary:0];

  return v7;
}

NSString *__cdecl sub_10009EA6C(id a1, MFNotificationMessage *a2)
{
  v2 = [(MFNotificationMessage *)a2 notificationID];

  return v2;
}

id sub_10009EC04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mf_externalReference];
  [*(a1 + 32) cancelSummaryRequestForMessageWithExternalReference:v4];
  v5 = [v3 notificationID];

  return v5;
}

void sub_10009ED90(uint64_t a1)
{
  v21 = [*(*(a1 + 32) + 104) deliveredNotifications];
  v22 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v21;
  v1 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v1)
  {
    v26 = *v31;
    v27 = MSUserNotificationCenterTopicVIP;
    v23 = MSUserNotificationContentKeySenderAddress;
    do
    {
      v2 = v1;
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v5 = MSUserNotificationsLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "notification: %@", buf, 0xCu);
        }

        v6 = [v4 request];
        v7 = [v6 content];

        v8 = [v7 topicIdentifiers];
        v9 = [v4 request];
        v10 = [v9 identifier];

        if ([v8 containsObject:v27])
        {
          v11 = [v7 userInfo];
          v12 = [v11 objectForKeyedSubscript:v23];
          v13 = [*(a1 + 32) vipReader];
          v14 = [v13 isVIPAddress:v12];

          if ((v14 & 1) == 0)
          {
            if ([v8 count] == 1)
            {
              [v22 addObject:v10];
            }

            else
            {
              v15 = [v4 request];
              v16 = [v15 content];
              v17 = [v16 mutableCopy];

              v18 = [[NSMutableSet alloc] initWithSet:v8];
              [v18 removeObject:v27];
              [v17 setTopicIdentifiers:v18];
              v19 = [*(a1 + 32) systemUserNotificationCenter];
              v28[0] = _NSConcreteStackBlock;
              v28[1] = 3221225472;
              v28[2] = sub_10009F230;
              v28[3] = &unk_100156918;
              v29 = v10;
              [v19 replaceContentForRequestWithIdentifier:v29 replacementContent:v17 completionHandler:v28];
            }
          }
        }
      }

      v1 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v1);
  }

  v20 = [*(a1 + 32) systemUserNotificationCenter];
  [v20 removeDeliveredNotificationsWithIdentifiers:v22];
}

void sub_10009F230(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D527C();
    }
  }

  else
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully replaced notification request due to VIP change: ID: %{public}@", &v7, 0xCu);
    }
  }
}

id sub_10009F638(uint64_t a1)
{
  [*(a1 + 32) nts_resetUserNotificationCenterTopics];
  v2 = *(a1 + 32);

  return [v2 nts_removeNotificationsForRemovedAccounts];
}

void sub_10009FB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10009FC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

void sub_10009FD70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_10009FD9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 summarizationSetting];
    os_unfair_lock_lock(WeakRetained + 3);
    BYTE2(WeakRetained[6]._os_unfair_lock_opaque) = v5 == 2;
    os_unfair_lock_unlock(WeakRetained + 3);
    v6 = MSUserNotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v5 == 2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notification summarization enabled: %{BOOL}d", v10, 8u);
    }

    v7 = [(os_unfair_lock_s *)WeakRetained willUseGeneratedSummaries];
    v8 = [(os_unfair_lock_s *)WeakRetained notificationAnalyticsLogger];
    [v8 setGeneratedSummarySupported:v7];

    v9 = MFUserAgent();
    -[os_unfair_lock_s _updatePostingDelay:](WeakRetained, "_updatePostingDelay:", [v9 isForeground]);
  }
}

void sub_10009FF18(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    objc_storeStrong(&v6[40], a2);
    v7 = *&v6[38]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v6 + 2);
    [(os_unfair_lock_s *)v6 _logCurrentSettings];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v12 + 1) + 8 * v11) userNotificationCenterSettingsDidChange:{v4, v12}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void sub_1000A0290(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) appendFormat:@"%@: Alerts: %ld, Alert Style: %ld, Lock Screen: %ld, Sounds: %ld, Badges: %ld\n", v6, objc_msgSend(v5, "alertSetting"), objc_msgSend(v5, "alertStyle"), objc_msgSend(v5, "lockScreenSetting"), objc_msgSend(v5, "soundSetting"), objc_msgSend(v5, "badgeSetting")];
}

void sub_1000A0B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Unwind_Resume(a1);
}

void sub_1000A0D7C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:MSUserNotificationCenterTopicVIP])
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "alertSetting")}];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "lockScreenSetting")}];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "soundSetting")}];
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "badgeSetting")}];
    v6 = *(a1 + 72);
LABEL_7:
    *(*(v6 + 8) + 24) = 1;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:MSUserNotificationCenterTopicNotifiedThreads])
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "alertSetting")}];
    *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "lockScreenSetting")}];
    *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "soundSetting")}];
    *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "badgeSetting")}];
    v6 = *(a1 + 112);
    goto LABEL_7;
  }

  if ([v7 isEqualToString:MSUserNotificationCenterTopicFavoriteMailboxes])
  {
    *(*(*(a1 + 120) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "alertSetting")}];
    *(*(*(a1 + 128) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "lockScreenSetting")}];
    *(*(*(a1 + 136) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "soundSetting")}];
    *(*(*(a1 + 144) + 8) + 24) = [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "badgeSetting")}];
    v6 = *(a1 + 152);
    goto LABEL_7;
  }

  ++*(*(*(a1 + 160) + 8) + 24);
  *(*(*(a1 + 168) + 8) + 24) += [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "alertSetting")}];
  *(*(*(a1 + 176) + 8) + 24) += [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "lockScreenSetting")}];
  *(*(*(a1 + 184) + 8) + 24) += [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "soundSetting")}];
  *(*(*(a1 + 192) + 8) + 24) += [*(a1 + 32) _settingIsEnabled:{objc_msgSend(v5, "badgeSetting")}];
LABEL_8:
}

void sub_1000A1BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1C54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifications needing summaries: %{public}@", &v5, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:*(a1 + 32)];
}

void sub_1000A1D40(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) mf_externalReference];
  v4 = [v5 objectForKey:v3];
  if (v4)
  {
    [v5 removeObjectForKey:v3];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v4 setObserver:0];
  }
}

void sub_1000A1EB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    if ([v3 conversationFlags] == 1)
    {
      v4 = MSUserNotificationsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 globalMessageID];
        v6 = [v3 conversationID];
        v7 = *(a1 + 48);
        *buf = 134349568;
        v20 = v5;
        v21 = 2050;
        v22 = v6;
        v23 = 2050;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating notified message for conversation ID change: %{public}lld. Conversation ID: %{public}lld. Old conversation ID: %{public}lld", buf, 0x20u);
      }

      v8 = [*(*(a1 + 40) + 104) deliveredNotifications];
      [v3 notificationID];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000A215C;
      v9 = v16 = &unk_100159FE8;
      v17 = v9;
      if (([v8 ef_any:&v13] & 1) == 0)
      {
        v10 = MSUserNotificationsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Post notification for Notified Thread due to conversation ID change: %{public}@", buf, 0xCu);
        }

        v11 = *(a1 + 40);
        v18 = v3;
        v12 = [NSArray arrayWithObjects:&v18 count:1, v13, v14, v15, v16];
        [v11 notifyMessagesAdded:v12 isSummaryDownload:0];
      }
    }
  }

  else
  {
    v3 = 0;
  }
}

id sub_1000A215C(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

NSString *__cdecl sub_1000A23B8(id a1, MFLibraryMessage *a2)
{
  v2 = [(MFLibraryMessage *)a2 notificationID];

  return v2;
}

void sub_1000A24CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A24F0(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 count] != 0;
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6[0] = 67240450;
    v6[1] = v5;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TriggerSummaryLoads=%{public}d, notificationsNeedingSummaries=%{public}@", v6, 0x12u);
  }
}

void sub_1000A27E4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 message];
  v5 = [v4 mf_externalReference];
  [v6 setObject:v3 forKey:v5];
}

void sub_1000A2AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_1000A2BEC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKey:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) _nts_invalidateClient:v3 summaryClientsByReference:v4];
  }
}

void sub_1000A2DC0(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = a2;
  v3 = [v12 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 message];
        v9 = [v8 account];
        v10 = [v9 uniqueID];
        v11 = [v10 isEqualToString:*(a1 + 32)];

        if (v11)
        {
          [*(a1 + 40) _nts_invalidateClient:v7 summaryClientsByReference:v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_1000A3024(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) mf_externalReference];
  [v4 removeObjectForKey:v3];
}

void sub_1000A31CC(uint64_t a1)
{
  v4 = [EFProcessTransaction transactionWithDescription:@"MFUserNotificationCenterController cleanup"];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:MailMessageLibraryDidFinishReconciliation object:0];

  v3 = [*(*(a1 + 32) + 104) deliveredNotifications];
  [*(a1 + 32) _performCleanupForNotifications:v3];
  [v4 invalidate];
}

uint64_t sub_1000A33C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A33D8(uint64_t a1)
{
  if (EFProtectedDataAvailable())
  {
    v2 = [NSSet alloc];
    v3 = [*(*(a1 + 32) + 104) deliveredNotifications];
    v4 = [v3 ef_map:&stru_10015A0C0];
    v5 = [v2 initWithArray:v4];

    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A369C;
    v15[3] = &unk_10015A0E8;
    v8 = v5;
    v16 = v8;
    v9 = v6;
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    v19 = *(a1 + 48);
    [v7 enumerateKeysAndObjectsUsingBlock:v15];
    v11 = *(*(a1 + 32) + 184);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A3AA4;
    v13[3] = &unk_100159DB0;
    v12 = v9;
    v14 = v12;
    [v11 performWhileLocked:v13];
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      [*(a1 + 32) handleDidFetchMessages:*(*(*(a1 + 48) + 8) + 40) postImmediately:1];
    }
  }

  else
  {
    v8 = MSUserNotificationsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not performing cleanup for RemindMe notifications. Protected data is not available.", buf, 2u);
    }
  }
}

id sub_1000A363C(id a1, UNNotification *a2)
{
  v2 = [(UNNotification *)a2 request];
  v3 = [v2 identifier];

  return v3;
}

void sub_1000A369C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = [*(a1 + 48) messagePersistence];
    v8 = [v6 second];
    v26 = v8;
    v9 = [NSArray arrayWithObjects:&v26 count:1];
    v10 = [v7 persistedMessagesForDatabaseIDs:v9 requireProtectedData:1 temporarilyUnavailableDatabaseIDs:0];

    if ([v10 count])
    {
      v11 = [MFNotificationMessage alloc];
      v12 = [*(a1 + 48) favoritesReader];
      v13 = [*(a1 + 48) vipReader];
      v14 = [v10 firstObject];
      v15 = MSSharedContactStore();
      v16 = [v6 first];
      v17 = [(MFNotificationMessage *)v11 initWithFavoritesReader:v12 vipReader:v13 libraryMessage:v14 contactStore:v15 remindMeDate:v16];

      v18 = [v17 summary];
      LODWORD(v13) = [v18 length] == 0;

      if (v13)
      {
        v21 = MSUserNotificationsLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [v6 second];
          objc_claimAutoreleasedReturnValue();
          sub_1000D5410();
        }
      }

      else
      {
        v19 = MSUserNotificationsLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v6 second];
          v22 = 138412546;
          v23 = v5;
          v24 = 2112;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating summary for RemindMe notification %@, message %@", &v22, 0x16u);
        }

        [*(*(*(a1 + 56) + 8) + 40) addObject:v17];
      }
    }

    else
    {
      v17 = MSUserNotificationsLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [v6 second];
        objc_claimAutoreleasedReturnValue();
        sub_1000D5460();
      }
    }
  }

  else
  {
    [*(a1 + 40) addObject:v5];
    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping update to notification %@", &v22, 0xCu);
    }
  }
}

void sub_1000A3B50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1000A3B7C(id a1, NSString *a2)
{
  v2 = [NSURL URLWithString:a2];
  v3 = [v2 mf_messageCriterion];

  return v3;
}

void sub_1000A429C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1000A42BC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1000A4CF0(uint64_t a1)
{
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) ef_publicDescription];
    sub_1000D55C4(v3, a1, &v5);
  }

  return [*(a1 + 48) requestSummaryWithClient:*(a1 + 40)];
}

uint64_t sub_1000A4E14(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

void sub_1000A518C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 activeAccounts];
  [v1 _nts_startObservingAccounts:?];
}

void sub_1000A5324(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[7] allKeys];
  [v1 _nts_stopObservingAccountWithIDs:?];
}

BOOL sub_1000A5600(id a1, MailAccount *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

void sub_1000A5888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000A58F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A5908(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000A59F0(uint64_t a1)
{
  v4 = [*(a1 + 32) userInfo];
  v2 = [v4 objectForKeyedSubscript:MailMessageStoreMessageKey];
  v3 = [*(a1 + 40) delegate];
  [v3 notificationCenterObserver:*(a1 + 40) messageAdded:v2];
}

void sub_1000A5B44(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 objectForKeyedSubscript:MailMessageStoreMessageKey];
  v3 = [v5 objectForKeyedSubscript:MailMessageStoreChangedFlagsKey];
  v4 = [*(a1 + 40) delegate];
  [v4 notificationCenterObserver:*(a1 + 40) messagesUpdated:v2 flags:v3];
}

void sub_1000A5CC8(uint64_t a1)
{
  v4 = [*(a1 + 32) userInfo];
  v2 = [v4 objectForKeyedSubscript:MailMessageStoreMessageKey];
  if ([v2 count])
  {
    v3 = [*(a1 + 40) delegate];
    [v3 notificationCenterObserver:*(a1 + 40) messagesDeleted:v2];
  }
}

void sub_1000A5E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 4);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  os_unfair_lock_unlock(v2 + 4);
  v21 = [*(a1 + 32) activeAccounts];
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 56) allKeys];
    *buf = 138412546;
    v29 = v21;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Observer: Accounts changed. Active accounts = %@. Currently observed accounts: %{public}@", buf, 0x16u);
  }

  v7 = [*(*(a1 + 32) + 56) allKeys];
  v8 = [v7 mutableCopy];

  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v21;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 uniqueID];
        [v8 removeObject:v15];
        v16 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v15];
        v17 = v16 == 0;

        if (v17)
        {
          v18 = v10;
        }

        else
        {
          v18 = v9;
        }

        [v18 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v19 = MSUserNotificationsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Observer: Removed Accounts: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _nts_stopObservingAccountWithIDs:v8];
  }

  if ([v9 count])
  {
    [*(a1 + 32) _nts_updateObservationWithAccounts:v9];
  }

  if ([v10 count])
  {
    [*(a1 + 32) _nts_startObservingAccounts:v10];
  }

  v20 = [*(a1 + 32) delegate];
  [v20 activeAccountsDidChangeForNotificationCenterObserver:*(a1 + 32)];
}

void sub_1000A639C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 _nts_updateObservationWithAccounts:v2];
}

id sub_1000A766C(uint64_t a1)
{
  result = [*(a1 + 32) _hasBeenUpgraded];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _verifyDatabaseAccessAndPerformUpgrade];
  }

  return result;
}

NSString *__cdecl sub_1000A7D88(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

id sub_1000A7DB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 notificationID];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v4];
    v6 = [*(a1 + 40) delegate];
    v5 = [v6 notificationRequestForNotificationMessage:v3 destinations:4];
  }

  return v5;
}

void sub_1000A7E88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5630(a1, v3, v4);
    }
  }

  else
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "UPGRADE: Successfully created notification request: %@", &v6, 0xCu);
    }
  }
}

void sub_1000A836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  _Block_object_dispose((v24 - 160), 8);

  _Unwind_Resume(a1);
}

id sub_1000A8420(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = +[MFMailMessageLibrary defaultInstance];
    v5 = [v4 messagesMatchingCriterion:v3 options:*(a1 + 48) range:0 success:{*(a1 + 40), *(*(a1 + 32) + 8) + 24}];

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v6 = v5;
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

  return v6;
}

MFNotificationMessage *sub_1000A851C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 libraryID];
    v6 = [v3 subject];
    v7 = [v6 length];
    v8 = [v3 senders];
    v9 = [v8 firstObject];
    v17 = 134219010;
    v18 = v3;
    v19 = 2112;
    v20 = v3;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = [v9 length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UPGRADE: account contain message = %p -> %@, messageID:%lli, subject:%lu, sender:%lu", &v17, 0x34u);
  }

  [*(a1 + 32) setMessage:v3];
  v10 = [*(a1 + 32) results];
  v11 = [v10 objectForKey:@"MSResultsKeyBodySummary"];
  v12 = [MFNotificationMessage alloc];
  v13 = [*(a1 + 40) favoritesReader];
  v14 = [*(a1 + 40) vipReader];
  v15 = [(MFNotificationMessage *)v12 initWithFavoritesReader:v13 vipReader:v14 libraryMessage:v3 contactStore:*(a1 + 48) suppressionContexts:0 summary:v11];

  return v15;
}

id sub_1000A8E58(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 uniqueID];
  if ([*(a1 + 32) containsObject:v6] == a3)
  {
    v8 = *(a1 + 40);
    v9 = [v8 favoritesReader];
    v7 = [v8 _criterionForObservedMailboxesInAccount:v5 favoritesReader:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000A8F2C(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

id sub_1000A8F68(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

MFMessageCriterion *__cdecl sub_1000A923C(id a1, NSString *a2)
{
  v2 = [NSURL URLWithString:a2];
  v3 = [v2 mf_messageCriterion];

  return v3;
}

MFMessageCriterion *__cdecl sub_1000A9494(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];
  v5 = [MFMessageCriterion alloc];
  [v3 timeIntervalSince1970];
  v7 = [NSString stringWithFormat:@"%lld", v6];
  v8 = [v5 initWithType:11 qualifier:6 expression:v7];

  v9 = [MFMessageCriterion alloc];
  [v4 timeIntervalSince1970];
  v11 = [NSString stringWithFormat:@"%lld", v10];
  v12 = [v9 initWithType:11 qualifier:5 expression:v11];

  v16[0] = v8;
  v16[1] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  return v14;
}

void sub_1000A9B0C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185AD0;
  qword_100185AD0 = v1;
}

void sub_1000A9FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000AA06C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AA084(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) topicIdentifiers];
  v8 = [v7 containsObject:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000AA1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1000AA2D0(uint64_t a1)
{
  v2 = [*(a1 + 32) autoFetchData];

  if (!v2)
  {
    v3 = objc_alloc_init(_MFMailNotificationSoundControllerAutoFetchData);
    [*(a1 + 32) setAutoFetchData:?];
  }
}

void sub_1000AA674(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 autoFetchData];
  [v1 _fetchJobCompleted:v2 autoFetchData:?];
}

void sub_1000AAAF4(uint64_t a1)
{
  v2 = [*(a1 + 32) autoFetchData];
  if (v2)
  {
    [*(a1 + 32) _fetchFinished:v2 timestamp:{objc_msgSend(v2, "fetchStart")}];
  }

  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) setAutoFetchData:0];
  [*(*(a1 + 32) + 8) unlock];
}

void sub_1000AAC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1000AACAC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"AutoFetchDontNotify"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1 + 40) + 40);
    v6 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v5 addObject:v6];

    v7 = *(a1 + 40);
    v8 = [v7 autoFetchPushCount] + 1;

    [v7 setAutoFetchPushCount:v8];
  }
}

void sub_1000AAE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1000AAEB0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"AutoFetchDontNotify"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = [*(*(a1 + 40) + 40) firstObject];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedLongLongValue];
      [*(*(a1 + 40) + 40) removeObjectAtIndex:0];
    }

    else
    {
      v8 = MSUserNotificationsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D598C(v8);
      }

      v7 = 0;
    }

    if ([*(a1 + 40) autoFetchPushCount])
    {
      v9 = objc_alloc_init(_MFMailNotificationSoundControllerAutoFetchData);
      [*(a1 + 40) _fetchJobCompleted:*(a1 + 32) autoFetchData:v9];
      [*(a1 + 40) _fetchFinished:v9 timestamp:v7];
    }

    [*(*(a1 + 40) + 8) lock];
    [*(a1 + 40) setAutoFetchPushCount:0];
    [*(*(a1 + 40) + 40) removeAllObjects];
    [*(*(a1 + 40) + 8) unlock];
  }
}

void sub_1000AB114(id a1)
{
  v1 = objc_alloc_init(MFUserProfileProvider_iOS);
  v2 = qword_100185AE8;
  qword_100185AE8 = v1;
}

void sub_1000AB394(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000AB428(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100185AF0;
  qword_100185AF0 = v1;

  v3 = +[UMUserManager sharedManager];
  [v3 registerUserSyncStakeholder:qword_100185AF0 withMachServiceName:@"com.apple.mailq.sync.xpc"];
}

void sub_1000ABC5C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185B00;
  qword_100185B00 = v1;
}

void sub_1000ABD80(uint64_t a1)
{
  v2 = [MFVIPSendersLibrary alloc];
  v5 = [*(a1 + 32) defaultMessageLibrary];
  v3 = [(MFVIPSendersLibrary *)v2 initWithLibrary:?];
  v4 = qword_100185B10;
  qword_100185B10 = v3;
}

void sub_1000AC2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFVIPSendersLibrary;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000AC30C(uint64_t a1)
{
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performSyncBlock:&v3];

  CFRelease(*(*(*(a1 + 32) + 8) + 24));
}

void sub_1000AC3C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  ABAddressBookUnregisterChangeCallback();
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 32) + 8) + 24);

  ABAddressBookUnregisterExternalChangeCallback(v5, sub_1000AC424, v4);
}

id *sub_1000AC56C(id *result)
{
  if (atomic_fetch_add_explicit(result[4] + 6, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    return [result[4] _checkForAddressBookChangesNeedingRevert:1];
  }

  return result;
}

void sub_1000AD59C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [*(a1 + 32) userProfileProvider];
  v36 = [v3 accountsEmailAddresses];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = *&v36;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "starting to/cc migration, email addresses: %@", buf, 0xCu);
  }

  v50 = 1;
  v32 = +[MFMailMessageLibrary defaultInstance];
  v5 = 0;
  v6 = 0;
  while ((v5 & 1) == 0 && (v50 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v35 = +[NSMutableDictionary dictionary];
    v7 = [v32 storedIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31"];
    v8 = [v7 longLongValue];

    v33 = [v32 orderedBatchOfMessagesEndingAtRowId:v8 limit:500 success:&v50];
    if (v50 != 1)
    {
      v26 = MFLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "failure during to/cc migration", buf, 2u);
      }

      goto LABEL_43;
    }

    if ([v33 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v33;
      v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v9)
      {
        v37 = *v47;
        do
        {
          v10 = 0;
          v38 = v9;
          do
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v46 + 1) + 8 * v10);
            v12 = [v11 libraryID];
            v13 = [v11 messageFlags];
            v14 = [v11 to];
            v15 = [v11 cc];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v16 = v36;
            v17 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
            v39 = v13;
            v40 = v10;
            v41 = v12;
            v18 = 0;
            v19 = 0;
            if (v17)
            {
              v20 = *v43;
              while (2)
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v43 != v20)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v22 = *(*(&v42 + 1) + 8 * i);
                  if (!v19 && v14 != 0)
                  {
                    v19 = [v14 mf_indexOfRecipientWithEmailAddress:*(*(&v42 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (!v18 && v15 != 0)
                  {
                    v18 = [v15 mf_indexOfRecipientWithEmailAddress:v22] != 0x7FFFFFFFFFFFFFFFLL;
                  }

                  if (v19 && v18)
                  {
                    LOBYTE(v18) = 1;
                    LOBYTE(v19) = 1;
                    goto LABEL_27;
                  }
                }

                v17 = [v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_27:

            v6 = v41;
            v23 = 0x8000000000;
            if (!v19 || (v39 & 0x8000000000) != 0)
            {
              v23 = 0;
            }

            if (v18 && (v39 & 0x10000000000) == 0)
            {
              v24 = v23 | 0x10000000000;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              v25 = [NSNumber numberWithUnsignedLongLong:?];
              [v35 setObject:v25 forKey:v11];
            }

            v10 = v40 + 1;
          }

          while ((v40 + 1) != v38);
          v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v9);
      }

      if ([v35 count])
      {
        [v32 updateFlagsForMessagesInPlace:v35 success:&v50];
      }

      if (v50 != 1)
      {
        goto LABEL_44;
      }

      if (v6)
      {
        v26 = [NSNumber numberWithLongLong:v6 - 1];
        [v32 setStoredIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31" value:v26];
LABEL_43:

LABEL_44:
        v5 = 0;
        goto LABEL_46;
      }
    }

    v5 = 1;
LABEL_46:

    objc_autoreleasePoolPop(context);
  }

  if (v5)
  {
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "done with to/cc migration, setting ToCcMigrationCompleted default", buf, 2u);
    }

    [v32 setStoredIntegerPropertyWithName:@"MaxRowIdForMigrationToVersion31" value:0];
    v28 = +[NSUserDefaults standardUserDefaults];
    [v28 setBool:1 forKey:@"ToCcMigrationCompleted"];
  }

  v29 = MFLogGeneral();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v54 = v30 - Current;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "to/cc migration took %f ms", buf, 0xCu);
  }
}

id sub_1000ADCA4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) count] || (result = objc_msgSend(*(*(a1 + 32) + 48), "count")) != 0)
  {
    result = [*(a1 + 32) _clearVIPSenderFlagForSenders:*(*(a1 + 32) + 56) retryFailedSenders:0];
    if (result)
    {
      result = [*(a1 + 32) _setVIPSenderFlagForSenders:*(*(a1 + 32) + 48) retryFailedSenders:0];
      if (result)
      {
        [*(*(a1 + 32) + 48) removeAllObjects];
        [*(*(a1 + 32) + 56) removeAllObjects];
        v3 = *(a1 + 32);

        return [v3 _removePendingVIPChanges];
      }
    }
  }

  return result;
}

id sub_1000ADEB4(uint64_t a1)
{
  [*(*(a1 + 32) + 56) unionSet:*(a1 + 40)];
  [*(*(a1 + 32) + 48) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _savePendingVIPChanges_nts];
}

id sub_1000AE070(uint64_t a1)
{
  [*(*(a1 + 32) + 56) minusSet:*(a1 + 40)];
  [*(*(a1 + 32) + 48) unionSet:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _savePendingVIPChanges_nts];
}

void sub_1000AE280(uint64_t a1)
{
  v2 = objc_alloc_init(EAEmailAddressSet);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) emailAddresses];
        [v2 unionSet:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _setVIPSenderFlagForSenders:v2 retryFailedSenders:1];
}

void sub_1000AE3EC(uint64_t a1)
{
  v2 = objc_alloc_init(EAEmailAddressSet);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) emailAddresses];
        [v2 unionSet:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _clearVIPSenderFlagForSenders:v2 retryFailedSenders:1];
}

void sub_1000AE880(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1000AED74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFXPCEndpointListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000AF258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000AF2E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [WeakRetained connection];
    v5 = [WeakRetained client];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#MailServices connection %@ for %@ was invalidated.", &v10, 0x16u);
  }

  v6 = [WeakRetained client];
  v7 = [v6 invalidationHandler];

  if (v7)
  {
    v7[2](v7);
  }

  v8 = [WeakRetained client];
  [v8 setInterruptionHandler:0];

  v9 = [WeakRetained client];
  [v9 setInvalidationHandler:0];

  [*(a1 + 32) removeClientInfo:WeakRetained];
}

void sub_1000AF4B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [WeakRetained connection];
    v5 = [WeakRetained client];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#MailServices connection %@ for %@ was interrupted.", &v10, 0x16u);
  }

  v6 = [WeakRetained client];
  v7 = [v6 interruptionHandler];

  if (v7)
  {
    v7[2](v7);
  }

  v8 = [WeakRetained client];
  [v8 setInterruptionHandler:0];

  v9 = [WeakRetained client];
  [v9 setInvalidationHandler:0];

  [*(a1 + 32) removeClientInfo:WeakRetained];
}

void sub_1000AF714(id a1)
{
  v1 = objc_alloc_init(MFXPCEndpointService);
  v2 = qword_100185B20;
  qword_100185B20 = v1;
}

void sub_1000AFD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFXPCEndpointService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000AFFDC(id a1, MFXPCEndpointInfo *a2)
{
  v2 = a2;
  v3 = [(MFXPCEndpointInfo *)v2 existingListener:0];
  v4 = [v3 clients];
  v5 = [v4 arrayByApplyingSelector:"description"];

  if (v3)
  {
    if ([v5 count])
    {
      v6 = [v5 componentsJoinedByString:{@", \n\t\t"}];
      v7 = [NSString stringWithFormat:@"{\n\t\t%@\n\t}", v6];
    }

    else
    {
      v7 = &stru_10015BEC8;
    }

    v8 = [(MFXPCEndpointInfo *)v2 exportedInterface];
    v9 = [v8 protocol];
    v11 = NSStringFromProtocol(v9);
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ - <%@: %p> %ld clients %@", v11, objc_opt_class(), v3, [v5 count], v7);
  }

  else
  {
    v7 = [(MFXPCEndpointInfo *)v2 exportedInterface];
    v8 = [(__CFString *)v7 protocol];
    v9 = NSStringFromProtocol(v8);
    v10 = [NSString stringWithFormat:@"%@ - no active listener", v9];
  }

  return v10;
}

id sub_1000B0284(id a1, MFXPCEndpointInfo *a2)
{
  v2 = [(MFXPCEndpointInfo *)a2 existingListener:0];

  return v2;
}

id sub_1000B0444(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(*(a1 + 32)) initWithClient:v3];

  return v4;
}

id sub_1000B0784(void *a1)
{
  v1 = a1;
  v2 = [v1 ef_match];
  v3 = EMErrorDomain;
  if ((v2[2](v2, EMErrorDomain, 2048) & 1) != 0 || (v2[2](v2, v3, 2050) & 1) != 0 || v2[2](v2, v3, 2049))
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (!v5 || (sub_1000B0784(v5), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = +[NSBundle mainBundle];
      v6 = [v7 localizedStringForKey:@"MESSAGE_UNAVAILABLE" value:&stru_10015BEC8 table:@"Main"];
    }
  }

  else if ((v2[2](v2, MFMIMEErrorDomain, 2000000) & 1) != 0 || [v1 mf_isSMIMEError])
  {
    v6 = [v1 localizedDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000B0948(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSString stringWithFormat:@"%@://conversation/%lld", EMAppleMailURLScheme, a1];
    v2 = [NSURL URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000B09E8(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSURLComponents);
  [v2 setScheme:EMAppleMailURLScheme];
  [v2 setHost:@"document"];
  v3 = [NSString stringWithFormat:@"/%@", v1];
  [v2 setPath:v3];

  v4 = [v2 URL];

  return v4;
}

void sub_1000B0AA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000B0C30(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1000B0F50(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = qword_100185B30;
  qword_100185B30 = v1;
}

void sub_1000B14E8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185B40;
  qword_100185B40 = v1;
}

void sub_1000B160C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_100185B50;
  qword_100185B50 = v1;
}

void sub_1000B1838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B186C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[MFDeliveryQueue sharedDeliveryQueue];
    [v2 addObserver:v3];

    WeakRetained = v3;
  }
}

void sub_1000B1BF0(uint64_t a1)
{
  v2 = +[OutgoingMessageRepository_iOS signpostLog];
  spid = os_signpost_id_make_with_pointer(v2, *(a1 + 32));

  v3 = +[OutgoingMessageRepository_iOS signpostLog];
  v4 = v3;
  v5 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = *(a1 + 32);
    *buf = 134217984;
    v36 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EMAIL DELIVERY", "Begin Delivery Message : %p", buf, 0xCu);
  }

  v7 = +[MFDeliveryQueue sharedDeliveryQueue];
  v8 = [*(a1 + 32) messageData];
  v9 = +[MailAccount outboxMailboxUid];
  v10 = [MFMailMessage messageWithRFC822Data:v8 forMailboxUID:v9];

  v11 = +[OutgoingMessageRepository_iOS signpostLog];
  v12 = v11;
  if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [v10 messageIDHeaderHash];
    *buf = 138412290;
    v36 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EMAIL DELIVERY", "Set up for messages : %@", buf, 0xCu);
  }

  [v10 setMessageFlags:1];
  v14 = MFMailDropMailDeliveryUI_ptr;
  if (!*(a1 + 48))
  {
    v14 = MFOutgoingMessageDelivery_ptr;
  }

  v15 = [*v14 newWithMessage:{v10, spid}];
  [v15 setDelegate:v7];
  [v15 setIsUserRequested:1];
  [v15 setAction:{objc_msgSend(*(a1 + 32), "action")}];
  [v15 setShouldSign:{objc_msgSend(*(a1 + 32), "shouldSign")}];
  [v15 setShouldEncrypt:{objc_msgSend(*(a1 + 32), "shouldEncrypt")}];
  [v15 setConversationFlags:{+[EDConversationPersistence conversationFlagsForConversationNotificationLevel:](EDConversationPersistence, "conversationFlagsForConversationNotificationLevel:", objc_msgSend(*(a1 + 32), "conversationNotificationLevel"))}];
  v16 = [*(a1 + 32) originalMessageID];
  if (v16)
  {
    v17 = +[MFMailMessageLibrary defaultInstance];
    v18 = [v17 persistence];
    v19 = [v18 messagePersistence];

    v20 = [v19 libraryMessageForMessageObjectID:v16];
    [v15 setOriginalMessage:v20];
  }

  v21 = [v10 headers];
  v22 = [v21 firstSenderAddress];

  v23 = [MailAccount accountContainingEmailAddress:v22];
  [v15 setArchiveAccount:v23];
  v24 = sub_100059D50(v7);
  if (*(a1 + 49) == 1 && v24 > 0.0)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000B21B4;
    v31[3] = &unk_10015A658;
    v34 = spida;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    [v7 deliverAsynchronously:v15 completion:v31];

    v25 = v32;
  }

  else
  {
    v25 = [v7 deliverSynchronously:{v15, v24}];
    v26 = +[OutgoingMessageRepository_iOS signpostLog];
    v27 = v26;
    if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = *(a1 + 32);
      *buf = 134217984;
      v36 = v28;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, spida, "EMAIL DELIVERY", "End Delivery of Message : %p", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000B21B4(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[OutgoingMessageRepository_iOS signpostLog];
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 134217984;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "EMAIL DELIVERY", "End Delivery of Message : %p", &v8, 0xCu);
  }

  (*(a1[5] + 16))();
}

uint64_t sub_1000B2370(uint64_t a1)
{
  v2 = +[MFDeliveryQueue sharedDeliveryQueue];
  [v2 cancelLastDelayedMessage];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t sub_1000B25AC(uint64_t a1)
{
  v2 = +[MFDeliveryQueue sharedDeliveryQueue];
  v3 = [v2 numberOfPendingMessages];

  v4 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Outbox has %lu pending messages.", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000B278C(uint64_t a1)
{
  v2 = [MailAccount outboxMessageStore:1];
  v3 = [*(a1 + 32) representedObjectID];
  v4 = [MailAccount accountWithUniqueId:v3];
  if (v2)
  {
    v5 = [v2 hasMessageForAccount:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[OutgoingMessageRepository_iOS log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 ef_publicDescription];
    v8 = v7;
    v9 = @"does not have";
    if (v5)
    {
      v9 = @"has";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account:%@ %@ messages in Outbox", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000B2CDC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1000B2E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B2EA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[3] setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4 = [NSNumber numberWithUnsignedInteger:v5[4]];
    [v3 numberOfPendingMessagesChanged:v4];

    WeakRetained = v5;
  }
}

void sub_1000B3038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_1000B306C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[3] setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_1000B31AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1000B31D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[4] = *(a1 + 40);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [WeakRetained observers];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
          [v9 numberOfPendingMessagesChanged:v10];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

void sub_1000B343C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_1000B3464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasDelayedMessages:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [WeakRetained observers];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) hasDelayedMessagesDidChange:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1000B3C2C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id *sub_1000B41FC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v20 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = RemoteSearchOperation;
    v18 = objc_msgSendSuper2(&v21, "init");
    a1 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 5, a2);
      objc_storeStrong(a1 + 6, a3);
      objc_storeStrong(a1 + 7, a4);
      objc_storeStrong(a1 + 8, a5);
      objc_storeWeak(a1 + 9, v17);
      *(a1 + 9) = a7;
    }
  }

  return a1;
}

void sub_1000B49D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didGetResult:v3 searchContext:*(a1 + 32)];
}

void sub_1000B4A50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFailToGetResultWithError:v3 searchContext:*(a1 + 32)];
}

void sub_1000B4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000B4F68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 store];
  v8 = [v7 searchResultsWithRemoteIDs:v6 requiresBody:*(a1 + 48) inMailbox:v5];

  v9 = [v8 count];
  if (v9 != [v6 count])
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v11 = v11[7];
      }

      v12 = v11;
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[5];
      }

      v14 = v13;
      v15 = [v14 ef_publicDescription];
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      v22 = 138544130;
      v23 = v12;
      v24 = 2114;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Returning %@ messages from %@ remote IDs", &v22, 0x2Au);
    }
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 80);
    v20 = v19;
    if (v19)
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        LOBYTE(v21) = *(v21 + 9);
      }

      (*(v19 + 2))(v19, v8, v21 & 1);
    }
  }

  else
  {
    v20 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) += [v8 count];
}

void sub_1000B5764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SearchManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000B5964(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1000B5CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B5D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_1000B5E40(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1000B62EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v13 + v12));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B6A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _performRemoteSearchesWithMailboxes:a3 accountID:a2];
  [*(a1 + 40) addChild:? withPendingUnitCount:?];
}

void sub_1000B6D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000B6DFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained remoteSearchDidFindMessages:v5 inLocalIndex:a3];
}

void sub_1000B724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  objc_destroyWeak((v31 - 120));
  objc_destroyWeak((v31 - 112));

  _Unwind_Resume(a1);
}

void sub_1000B7370(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained remoteSearchDidFindMessages:v5 inLocalIndex:a3];
}

id sub_1000B73F4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000B7460(uint64_t a1)
{
  v2 = [*(a1 + 32) nextObject];
  if (v2)
  {
    *&v3 = 138412802;
    v10 = v3;
    do
    {
      v4 = [v2 store];
      v5 = [v4 canFetchSearchResults];

      if (v5)
      {
        break;
      }

      --*(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 40) setTotalUnitCount:?];
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        *buf = v10;
        v12 = v7;
        v13 = 2114;
        v14 = v8;
        v15 = 2112;
        v16 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager [%@-%{public}@] skipping unsearchable source %@", buf, 0x20u);
      }

      v2 = [*(a1 + 32) nextObject];
    }

    while (v2);
  }

  return v2;
}

id sub_1000B77B0(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];
  [v2 setUserInfoObject:&__kCFBooleanTrue forKey:@"SearchManagerDidStopSearchingEarlyKey"];

  v3 = *(a1 + 32);

  return [v3 cancel];
}

void sub_1000B832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B8360(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _passesSkeletonVerification:a2];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t sub_1000B8560(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 criterionType] == 33)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 doesMessageSatisfyCriterion:*(a1 + 32)];
  }

  return v4;
}

BOOL sub_1000B8640(id a1, MFMessageCriterion *a2)
{
  v2 = a2;
  v3 = [(MFMessageCriterion *)v2 criterionType];
  if (v3 > 0x29)
  {
    goto LABEL_7;
  }

  if (((1 << v3) & 0x30A08800E00) == 0)
  {
    if (v3 == 1)
    {
      v6 = [(MFMessageCriterion *)v2 criterionIdentifier];
      v4 = [ECMessageHeaderKeySubject isEqualToString:v6];

      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_4;
  }

  v4 = 1;
LABEL_4:

  return v4;
}

id sub_1000B89BC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 valueForKey:v3];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

BOOL sub_1000B8A64(int a1)
{
  v1 = dword_100184F38;
  if (dword_100184F38 < 0 || a1)
  {
    v2 = sub_1000B89BC(EMUserDefaultMutedThreadActionKey, EMUserDefaultMutedThreadActionMarkAsRead);
    dword_100184F38 = [EMUserDefaultMutedThreadActionMoveToArchiveOrDelete isEqual:v2];

    v1 = dword_100184F38;
  }

  return v1 != 0;
}

void sub_1000B9268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SuggestionsDataProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000B9814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 messageId];
  v5 = MFStringHashForMessageIDHeader();

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithLongLong:v5];
    [v6 setObject:v3 forKeyedSubscript:v7];

    v8 = *(a1 + 40);
    v9 = [v3 source];
    [v8 addObject:v9];

    v10 = [MFMessageCriterion alloc];
    v11 = [v3 messageId];
    v12 = [v10 initWithType:1 qualifier:3 expression:v11];

    [v12 setCriterionIdentifier:ECMessageHeaderKeyMessageID];
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v3 messageId];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#Warning could not create hash from message ID %@", &v16, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

void sub_1000B9A24(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([v9 messageFlags] & 2) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v9 account];
    v5 = [v4 uniqueID];
    LOBYTE(v3) = [v3 containsObject:v5];

    if (v3)
    {
      v6 = *(a1 + 40);
      v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 messageIDHash]);
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        [*(a1 + 48) setObject:v9 forKeyedSubscript:v8];
      }
    }
  }
}

void sub_1000B9C00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processBackgroundDownload];
}

void sub_1000BA0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA108(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
}

void sub_1000BA1B0(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BA288;
  v6[3] = &unk_100157940;
  v7 = a2;
  v3 = v7;
  v4 = objc_retainBlock(v6);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshLostMessagesUntilDeferred:v4];
}

void sub_1000BA310(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    dispatch_suspend(*(v1 + 16));
    *(*(a1 + 32) + 64) = 1;
  }
}

void sub_1000BA3C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64) == 1)
  {
    dispatch_resume(*(v1 + 16));
    *(*(a1 + 32) + 64) = 0;
  }
}

void sub_1000BA4AC(uint64_t a1)
{
  v2 = [*(a1 + 32) unconfirmedLostMessages];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v4 = +[EFPromise promise];
    v5 = *(*(a1 + 32) + 32);
    v6 = [v4 completionHandlerAdapter];
    [v5 messagesToRefreshWithCompletion:v6];

    v7 = [v4 future];
    v3 = [v7 resultWithTimeout:0 error:5.0];

    [*(a1 + 32) setLastUnconfirmedLostMessagesSearchTime:0.0];
    v8 = [v3 count];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v9 = [v3 ef_groupBy:&stru_10015AA20];
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = +[MFNetworkController sharedInstance];
  v15 = [v14 isFatPipe];

  if (v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = 20;
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000BA7CC;
  v23 = &unk_10015AA48;
  v17 = *(a1 + 40);
  v24 = *(a1 + 32);
  v27 = v17;
  v28 = v16;
  v18 = v10;
  v25 = v18;
  v19 = v11;
  v26 = v19;
  v29 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:&v20];
  [*(*(a1 + 32) + 32) reportMessagesFound:v18 lost:v19 withCompletion:{&stru_10015AA68, v20, v21, v22, v23, v24}];

LABEL_8:
}

NSCopying *__cdecl sub_1000BA79C(id a1, SGMailMessageKey *a2)
{
  v2 = [(SGMailMessageKey *)a2 source];

  return v2;
}

void sub_1000BA7CC(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v36 = a3;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v36, "count")}];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = v36;
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v6)
  {
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [v9 messageId];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setObject:v9 forKeyedSubscript:v10];
        }

        else
        {
          v11 = MFLogGeneral();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v12 = objc_opt_class();
            *buf = 138543362;
            v62 = v12;
            _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "See <rdar://problem/26633447> : MessageID should be a string, but is %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v6);
  }

  v13 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v34 = [MailAccount accountWithUniqueId:v35];
  [*(a1 + 32) lastUnconfirmedLostMessagesSearchTime];
  [v34 mailboxesForSuggestionsLostMessageSearchPriorToTime:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v14 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v14)
  {
    v38 = 0;
    v42 = *v52;
    v43 = 0;
LABEL_15:
    v15 = 0;
    v39 = v14;
    while (1)
    {
      if (*v52 != v42)
      {
        objc_enumerationMutation(obj);
      }

      if ((v44 = *(*(&v51 + 1) + 8 * v15), context = objc_autoreleasePoolPush(), (v16 = *(a1 + 56)) != 0) && ((*(v16 + 16))() & 1) != 0 || v43 >= *(a1 + 64))
      {
        v26 = 0;
        v38 = 1;
      }

      else
      {
        v40 = [v44 store];
        v17 = [v4 allKeys];
        v41 = [NSSet setWithArray:v17];

        v18 = [v40 messageIdRollCall:v41];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v20)
        {
          v21 = *v48;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v48 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v47 + 1) + 8 * j);
              v24 = [v4 objectForKeyedSubscript:v23];
              [v13 setObject:v24 forKeyedSubscript:v23];

              [v4 removeObjectForKey:v23];
            }

            v20 = [v19 countByEnumeratingWithState:&v47 objects:v59 count:16];
          }

          while (v20);
        }

        [v44 updateSuggestionsLostMessageSearchResultCount:{objc_msgSend(v19, "count")}];
        v25 = [v4 count];
        v26 = v25 != 0;
        v27 = v43;
        if (v25)
        {
          v27 = v43 + 1;
        }

        v43 = v27;
      }

      objc_autoreleasePoolPop(context);
      if (!v26)
      {
        break;
      }

      if (++v15 == v39)
      {
        v14 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v14)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  else
  {
    v38 = 0;
  }

  v28 = *(a1 + 40);
  v29 = [v13 allValues];
  [v28 addObjectsFromArray:v29];

  if (v38)
  {
    v30 = [v4 allValues];
    [*(a1 + 32) setUnconfirmedLostMessages:v30];

    [*(a1 + 32) lastUnconfirmedLostMessagesSearchTime];
    if (v31 == 0.0)
    {
      [*(a1 + 32) setLastUnconfirmedLostMessagesSearchTime:*(a1 + 72)];
    }
  }

  else
  {
    v32 = *(a1 + 48);
    v33 = [v4 allValues];
    [v32 addObjectsFromArray:v33];

    [*(a1 + 32) setLastUnconfirmedLostMessagesSearchTime:0.0];
    [*(a1 + 32) setUnconfirmedLostMessages:0];
  }
}

id sub_1000BB738(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(a1 + 32) + 16);
        v7 = [*(*(&v9 + 1) + 8 * i) identifier];
        CFDictionaryRemoveValue(v6, v7);
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 8) unlock];
}

void sub_1000BB8D8(uint64_t a1)
{
  v4 = +[NSNotificationCenter defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  [v4 postNotificationName:EMVIPsDidChangeNotification object:v2 userInfo:v3];
}

int64_t sub_1000BBC2C(id a1, EMVIP *a2, EMVIP *a3)
{
  v4 = a3;
  v5 = [(EMVIP *)a2 name];
  v6 = [(EMVIP *)v4 name];
  v7 = [v5 localizedCaseInsensitiveCompare:v6];

  return v7;
}

void sub_1000BBC9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000BC79C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185B70;
  qword_100185B70 = v1;
}

id sub_1000BCCF4(uint64_t a1, void *a2)
{
  v3 = [a2 clientConnection];
  v4 = EFBundleIdentifierForXPCConnection();
  v5 = [*(a1 + 32) applicationBundleID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_1000BCD68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

unint64_t sub_1000BD1B8()
{
  v2 = qword_100185BA0;
  if (!qword_100185BA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000BD318()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CurrentMessageToMigrate", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1001865D0 = v1;
  return result;
}

__int128 *sub_1000BD35C()
{
  if (qword_100185B80 != -1)
  {
    swift_once();
  }

  return &xmmword_1001865D0;
}

uint64_t sub_1000BD3BC()
{
  v0 = sub_1000BD35C();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t sub_1000BD400()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MessagesToRetryMigration", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1001865E0 = v1;
  return result;
}

__int128 *sub_1000BD444()
{
  if (qword_100185B88 != -1)
  {
    swift_once();
  }

  return &xmmword_1001865E0;
}

uint64_t sub_1000BD4A4()
{
  v0 = sub_1000BD444();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t sub_1000BD54C()
{
  v1 = type metadata accessor for Logger();
  sub_1000BD5F0(v1, qword_1001865F0);
  sub_1000BD68C(v1, qword_1001865F0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.email", 0xFuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FileProtectionClassMigrator", 0x1BuLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BD5F0(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_1000BD68C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1000BD6E4()
{
  if (qword_100185B98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000BD68C(v0, qword_1001865F0);
}

uint64_t sub_1000BD750@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BD6E4();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_1000BD830()
{
  v2 = (v0 + OBJC_IVAR___FileProtectionClassMigrator_task);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1000BD910(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___FileProtectionClassMigrator_task);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void *sub_1000BDA1C()
{
  v2 = *(v0 + OBJC_IVAR___FileProtectionClassMigrator_database);
  _objc_retain(v2);
  return v2;
}

void *sub_1000BDAD8()
{
  v2 = *(v0 + OBJC_IVAR___FileProtectionClassMigrator_messagePersistence);
  _objc_retain(v2);
  return v2;
}

void *sub_1000BDB94()
{
  v2 = *(v0 + OBJC_IVAR___FileProtectionClassMigrator_attachmentPersistenceManager);
  _objc_retain(v2);
  return v2;
}

void *sub_1000BDC50()
{
  v2 = *(v0 + OBJC_IVAR___FileProtectionClassMigrator_library);
  _objc_retain(v2);
  return v2;
}

void *sub_1000BDD0C()
{
  v2 = *(v0 + OBJC_IVAR___FileProtectionClassMigrator_cancelationToken);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1000BDDC8()
{
  v2 = (v0 + OBJC_IVAR___FileProtectionClassMigrator_databaseAssertion);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1000BDE98(uint64_t a1)
{
  swift_unknownObjectRetain();
  v4 = (v1 + OBJC_IVAR___FileProtectionClassMigrator_databaseAssertion);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_1000BDF18(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTask:a1 database:a2 messagePersistence:a3 attachmentPersistenceManager:a4 library:a5];
  _objc_release(a5);
  _objc_release(a4);
  _objc_release(a3);
  _objc_release(a2);
  _objc_release(a1);
  return v11;
}

char *sub_1000BDFD0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v27 = 0;
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  *OBJC_IVAR___FileProtectionClassMigrator_task = 0;
  *&v27[OBJC_IVAR___FileProtectionClassMigrator_databaseAssertion] = 0;
  _objc_retain(a1);
  v8 = &v27[OBJC_IVAR___FileProtectionClassMigrator_task];
  swift_beginAccess();
  v5 = *v8;
  *v8 = a1;
  _objc_release(v5);
  swift_endAccess();
  v9 = v27;
  _objc_retain(a2);
  *&v9[OBJC_IVAR___FileProtectionClassMigrator_database] = a2;
  v10 = v27;
  _objc_retain(a3);
  *&v10[OBJC_IVAR___FileProtectionClassMigrator_messagePersistence] = a3;
  v11 = v27;
  _objc_retain(a4);
  *&v11[OBJC_IVAR___FileProtectionClassMigrator_attachmentPersistenceManager] = a4;
  v12 = v27;
  _objc_retain(a5);
  *&v12[OBJC_IVAR___FileProtectionClassMigrator_library] = a5;
  v13 = v27;
  sub_1000BE28C();
  *&v13[OBJC_IVAR___FileProtectionClassMigrator_cancelationToken] = sub_1000BE2F0();
  v14 = &v27[OBJC_IVAR___FileProtectionClassMigrator_databaseAssertion];
  swift_beginAccess();
  v6 = *v14;
  *v14 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v21.receiver = v27;
  v21.super_class = FileProtectionClassMigrator;
  v20 = objc_msgSendSuper2(&v21, "init");
  _objc_retain(v20);
  v27 = v20;
  _objc_release(a5);
  _objc_release(a4);
  _objc_release(a3);
  _objc_release(a2);
  _objc_release(a1);
  _objc_release(v27);
  return v20;
}

unint64_t sub_1000BE28C()
{
  v2 = qword_100185098;
  if (!qword_100185098)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100185098);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000BE3CC()
{
  v177 = v202;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v180 = type metadata accessor for Logger();
  v181 = *(v180 - 8);
  v182 = v181;
  v1 = *(v181 + 64);
  __chkstk_darwin(v180 - 8);
  v183 = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v0;
  v185 = sub_1000BF518();
  v184 = HIBYTE(v185);
  v197 = HIBYTE(v185);
  v198 = v185;
  if ((v185 & 1) == 0)
  {
    sub_1000BF628();
    v176 = v178;
LABEL_42:
    result = v176;
    v62 = v176;
    v63 = v176;
    return result;
  }

  v3 = v179;
  v177[17] = 0;
  v174 = [v3 database];
  v196 = v177[17];
  v175 = [v174 requestProtectedDatabaseBackgroundProcessingForDuration:&v196 error:900.0];
  v172 = v175;
  v173 = v196;
  v4 = v196;
  v5 = v177[17];
  v177[17] = v173;

  if (v175)
  {
    v171 = v172;
    v170 = v172;
    [v179 setDatabaseAssertion:?];
    swift_unknownObjectRelease();
    v6 = [v179 task];
    v7 = v177;
    v177[16] = v6;
    if (v7[16])
    {
      v169 = v177[16];
      v8 = v169;
      sub_1000BF5F4(v206);
      v9 = v179;
      v10 = swift_allocObject();
      *(v10 + 16) = v179;
      v191 = sub_1000CDC40;
      v192 = v10;
      v186 = _NSConcreteStackBlock;
      v187 = 1107296256;
      v188 = 0;
      v189 = sub_1000BFAC8;
      v190 = &unk_10015AC78;
      v168 = _Block_copy(&v186);

      [v169 setExpirationHandler:v168];
      _Block_release(v168);
    }

    else
    {
      sub_1000BF5F4(v206);
    }

    v11 = v178;
    v12 = sub_1000BFB18();
    v165 = v11;
    v166 = v12;
    v167 = v11;
    if (v11)
    {
      v61 = v167;
    }

    else
    {
      if (v166)
      {
        v176 = v165;
        goto LABEL_42;
      }

      if (v184)
      {
        v13 = v183;
        v14 = sub_1000BD6E4();
        (*(v182 + 16))(v13, v14, v180);
        v164 = Logger.logObject.getter();
        v147 = v164;
        v163 = static os_log_type_t.default.getter();
        v148 = v163;
        v149 = 17;
        v154 = 7;
        v157 = swift_allocObject();
        v150 = v157;
        v151 = 32;
        *(v157 + 16) = 32;
        v15 = swift_allocObject();
        v16 = v151;
        v158 = v15;
        v152 = v15;
        *(v15 + 16) = 8;
        v153 = v16;
        v17 = swift_allocObject();
        v155 = v17;
        *(v17 + 16) = sub_1000BFC08;
        *(v17 + 24) = 0;
        v18 = swift_allocObject();
        v19 = v155;
        v161 = v18;
        v156 = v18;
        *(v18 + 16) = sub_1000CDBBC;
        *(v18 + 24) = v19;
        v162 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
        v159 = _allocateUninitializedArray<A>(_:)();
        v160 = v20;

        v21 = v157;
        v22 = v160;
        *v160 = sub_1000CDBB4;
        v22[1] = v21;

        v23 = v158;
        v24 = v160;
        v160[2] = sub_1000CDBB4;
        v24[3] = v23;

        v25 = v160;
        v26 = v161;
        v160[4] = sub_1000CDBC8;
        v25[5] = v26;
        sub_1000C9CFC();

        if (os_log_type_enabled(v164, v163))
        {
          v144 = v165;
          v139 = static UnsafeMutablePointer.allocate(capacity:)();
          v136 = v139;
          v137 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
          v140 = sub_1000CACDC(0);
          v138 = v140;
          v142 = 1;
          v141 = sub_1000CACDC(1);
          v195 = v139;
          v201 = v140;
          v200 = v141;
          v143 = &v195;
          sub_1000CAD30(2, &v195);
          sub_1000CAD30(v142, v143);
          v27 = v144;
          v193 = sub_1000CDBB4;
          v194 = v150;
          sub_1000CAD44(&v193, v143, &v201, &v200);
          v145 = v27;
          v146 = v27;
          if (v27)
          {
            v134 = 0;

            __break(1u);
          }

          else
          {
            v193 = sub_1000CDBB4;
            v194 = v152;
            sub_1000CAD44(&v193, &v195, &v201, &v200);
            v132 = 0;
            v133 = 0;
            v193 = sub_1000CDBC8;
            v194 = v156;
            sub_1000CAD44(&v193, &v195, &v201, &v200);
            v130 = 0;
            v131 = 0;
            _os_log_impl(&_mh_execute_header, v147, v148, "Continuing migration %s class C", v136, 0xCu);
            sub_1000CAD90(v138);
            sub_1000CAD90(v141);
            UnsafeMutablePointer.deallocate()();

            v135 = v130;
          }
        }

        else
        {

          v135 = v165;
        }

        v128 = v135;

        (*(v182 + 8))(v183, v180);
        v129 = v128;
      }

      else
      {
        if ((sub_1000BFD64() & 1) == 0)
        {
          v28 = [v179 database];
          v29 = v177;
          v127 = v28;
          v177[12] = 0;
          v29[13] = 0;
          v29[14] = 0;
          v29[15] = 0;
          if (v29[15])
          {
            v121 = v177[15];
            v124 = v205;
            sub_1000C0D2C(v205, v121);
            v119 = *(v121 - 8);
            v120 = v119;
            v30 = *(v119 + 64);
            v123 = v57;
            __chkstk_darwin(v57);
            v122 = v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v120 + 16))();
            v125 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v120 + 8))(v122, v121);
            sub_1000C0D98(v124);
            v126 = v125;
          }

          else
          {
            v126 = 0;
          }

          v117 = v126;
          v32 = sub_1000BD444();
          v114 = *v32;
          v115 = *(v32 + 1);

          v116 = String._bridgeToObjectiveC()();

          [v127 setValue:v117 forProperty:v116];

          swift_unknownObjectRelease();
          v33 = [v179 database];
          v34 = v177;
          v118 = v33;
          v177[8] = 0;
          v34[9] = 0;
          v34[10] = 0;
          v34[11] = 0;
          if (v34[11])
          {
            v108 = v177[11];
            v111 = v204;
            sub_1000C0D2C(v204, v108);
            v106 = *(v108 - 8);
            v107 = v106;
            v35 = *(v106 + 64);
            v110 = v57;
            __chkstk_darwin(v57);
            v109 = v57 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v107 + 16))();
            v112 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v107 + 8))(v109, v108);
            sub_1000C0D98(v111);
            v113 = v112;
          }

          else
          {
            v113 = 0;
          }

          v37 = v179;
          v104 = v113;
          v38 = sub_1000BD35C();
          v101 = *v38;
          v102 = *(v38 + 1);

          v103 = String._bridgeToObjectiveC()();

          [v118 setValue:v104 forProperty:v103];

          swift_unknownObjectRelease();
          v105 = [v37 messagePersistence];
          [v105 setMigrationIsComplete:1];

          sub_1000BF628();
          v176 = v165;
          goto LABEL_42;
        }

        v129 = v165;
      }

      v39 = v129;
      v40 = sub_1000BFB18();
      v98 = v39;
      v99 = v40;
      v100 = v39;
      if (v39)
      {
        v61 = v100;
      }

      else
      {
        if (v99)
        {
          v176 = v98;
          goto LABEL_42;
        }

        if (sub_1000C13B4())
        {
          v41 = v98;
          v42 = sub_1000C2C44();
          v95 = v41;
          v96 = v42;
          v97 = v41;
          if (!v41)
          {
            if (v96)
            {
              v43 = [v179 database];
              v44 = v177;
              v94 = v43;
              v177[4] = 0;
              v44[5] = 0;
              v44[6] = 0;
              v44[7] = 0;
              if (v44[7])
              {
                v88 = v177[7];
                v91 = v203;
                sub_1000C0D2C(v203, v88);
                v86 = *(v88 - 8);
                v87 = v86;
                v45 = *(v86 + 64);
                v90 = v57;
                __chkstk_darwin(v57);
                v89 = v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v87 + 16))();
                v92 = _bridgeAnythingToObjectiveC<A>(_:)();
                (*(v87 + 8))(v89, v88);
                sub_1000C0D98(v91);
                v93 = v92;
              }

              else
              {
                v93 = 0;
              }

              v84 = v93;
              v47 = sub_1000BD444();
              v81 = *v47;
              v82 = *(v47 + 1);

              v83 = String._bridgeToObjectiveC()();

              [v94 setValue:v84 forProperty:v83];

              swift_unknownObjectRelease();
              v48 = [v179 database];
              v49 = v177;
              v85 = v48;
              v202[0] = 0;
              v177[1] = 0;
              v49[2] = 0;
              v49[3] = 0;
              if (v49[3])
              {
                v75 = v177[3];
                v78 = v202;
                sub_1000C0D2C(v202, v75);
                v73 = *(v75 - 8);
                v74 = v73;
                v50 = *(v73 + 64);
                v77 = v57;
                __chkstk_darwin(v57);
                v76 = v57 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v74 + 16))();
                v79 = _bridgeAnythingToObjectiveC<A>(_:)();
                (*(v74 + 8))(v76, v75);
                sub_1000C0D98(v78);
                v80 = v79;
              }

              else
              {
                v80 = 0;
              }

              v52 = v179;
              v71 = v80;
              v53 = sub_1000BD35C();
              v68 = *v53;
              v69 = *(v53 + 1);

              v70 = String._bridgeToObjectiveC()();

              [v85 setValue:v71 forProperty:v70];

              swift_unknownObjectRelease();
              v72 = [v52 messagePersistence];
              [v72 setMigrationIsComplete:1];

              sub_1000BF628();
              v176 = v95;
            }

            else
            {
              v54 = v95;
              sub_1000C0E38();
              v66 = v54;
              v67 = v54;
              v176 = 0;
            }

            goto LABEL_42;
          }

          v61 = v97;
        }

        else
        {
          v55 = v98;
          sub_1000C0E38();
          v64 = v55;
          v65 = v55;
          if (!v55)
          {
            v176 = 0;
            goto LABEL_42;
          }

          v61 = v65;
        }
      }
    }
  }

  else
  {
    v58 = v177[17];
    v59 = _convertNSErrorToError(_:)();
    v60 = v59;

    swift_willThrow();
    v61 = v60;
  }

  return v57[1];
}

uint64_t sub_1000BF518()
{
  v6 = v0;
  v5 = 0;
  v2 = [v0 messagePersistence];
  v3 = [v2 messageFilesNeedProtectionClassMigration:&v5];
  _objc_release(v2);
  LOBYTE(v4) = v3;
  HIBYTE(v4) = v5;
  return v4;
}

id sub_1000BF628()
{
  v46 = 0;
  v45 = 0;
  v34 = 0;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = v37;
  v0 = *(v37 + 64);
  v1 = __chkstk_darwin(v35);
  v39 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  v40 = [v1 task];
  if (v40)
  {
    v33 = v40;
    v3 = v39;
    v26 = v40;
    v45 = v40;
    v4 = sub_1000BD6E4();
    (*(v38 + 16))(v3, v4, v36);
    v30 = Logger.logObject.getter();
    v27 = v30;
    v29 = static os_log_type_t.default.getter();
    v28 = v29;
    sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v31 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v30, v29))
    {
      v6 = v34;
      v17 = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = v17;
      v14 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v15 = 0;
      v18 = sub_1000CACDC(0);
      v16 = v18;
      v19 = sub_1000CACDC(v15);
      v44 = v17;
      v43 = v18;
      v42 = v19;
      v20 = 0;
      v21 = &v44;
      sub_1000CAD30(0, &v44);
      sub_1000CAD30(v20, v21);
      v41 = v31;
      v22 = &v9;
      __chkstk_darwin(&v9);
      v23 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v43;
      *(&v9 - 2) = &v42;
      v24 = sub_1000CDBD4(&qword_1001850B0, &qword_10013EDE8);
      sub_1000CDCDC();
      Sequence.forEach(_:)();
      v25 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v27, v28, "Completed migration", v13, 2u);
        v11 = 0;
        sub_1000CAD90(v16);
        sub_1000CAD90(v19);
        UnsafeMutablePointer.deallocate()();

        v12 = v25;
      }
    }

    else
    {

      v12 = v34;
    }

    v10 = v12;

    (*(v38 + 8))(v39, v36);
    [v26 setTaskCompleted];
    [v35 setTask:0];

    v32 = v10;
  }

  else
  {
    v32 = v34;
  }

  return sub_1000C4A08();
}

void sub_1000BFA6C(void *a1)
{
  v1 = [a1 cancelationToken];
  [v1 cancel];
  _objc_release(v1);
}

uint64_t sub_1000BFAC8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  v3(v1);
}

uint64_t sub_1000BFB18()
{
  v4 = [v0 cancelationToken];
  v5 = [v4 isCanceled];
  _objc_release(v4);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
    return v2 & 1;
  }

  sub_1000C0E38();
  if (!v3)
  {
    v2 = 1;
    return v2 & 1;
  }

  return v3 & 1;
}

uint64_t sub_1000BFC08()
{
  v5 = type metadata accessor for MailFeatureFlag();
  v3 = *(v5 - 8);
  v4 = v5 - 8;
  v2 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = &v1 - v2;
  (*(v3 + 104))(&v1 - v2, enum case for MailFeatureFlag.classCData(_:));
  v7 = MailFeatureFlag.isEnabled.getter();
  (*(v3 + 8))(v6, v5);
  if (v7)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TO", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FROM", 4uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_1000BFD64()
{
  v111 = 0;
  v128 = 0;
  v127 = 0;
  v100 = 0;
  v101 = type metadata accessor for Logger();
  v102 = *(v101 - 8);
  v103 = v102;
  v1 = *(v102 + 64);
  __chkstk_darwin(v101 - 8);
  v104 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v0;
  v3 = swift_allocObject();
  v4 = v105;
  v112 = v3;
  v106 = v3;
  v110 = v3 + 16;
  v107 = (v3 + 16);
  v127 = v3 + 16;
  v114 = &EMDatabaseIDUndefined;
  *(v3 + 16) = EMDatabaseIDUndefined;
  v109 = [v4 database];
  v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("initializeMigration()", 0x15uLL, 1);

  EDPersistenceDatabase.performRead(function:_:)();

  v113 = &v126;
  swift_beginAccess();
  v115 = *(v112 + 16);
  swift_endAccess();
  if (v115 == *v114)
  {

    v47 = 0;
    v48 = v100;
  }

  else
  {
    v5 = v104;
    v6 = sub_1000BD6E4();
    (*(v103 + 16))(v5, v6, v101);

    v99 = Logger.logObject.getter();
    v74 = v99;
    v98 = static os_log_type_t.default.getter();
    v75 = v98;
    v81 = 17;
    v86 = 7;
    v89 = swift_allocObject();
    v76 = v89;
    v77 = 32;
    *(v89 + 16) = 32;
    v7 = swift_allocObject();
    v8 = v77;
    v90 = v7;
    v78 = v7;
    v83 = 8;
    *(v7 + 16) = 8;
    v85 = v8;
    v9 = swift_allocObject();
    v79 = v9;
    *(v9 + 16) = sub_1000BFC08;
    *(v9 + 24) = 0;
    v10 = swift_allocObject();
    v11 = v79;
    v91 = v10;
    v80 = v10;
    *(v10 + 16) = sub_1000CDBBC;
    *(v10 + 24) = v11;
    v92 = swift_allocObject();
    v82 = v92;
    *(v92 + 16) = 0;
    v93 = swift_allocObject();
    v84 = v93;
    *(v93 + 16) = v83;
    v12 = swift_allocObject();
    v13 = v106;
    v87 = v12;
    *(v12 + 16) = sub_1000CDDE0;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v87;
    v96 = v14;
    v88 = v14;
    *(v14 + 16) = sub_1000CE228;
    *(v14 + 24) = v15;
    v97 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v94 = _allocateUninitializedArray<A>(_:)();
    v95 = v16;

    v17 = v89;
    v18 = v95;
    *v95 = sub_1000CDBB4;
    v18[1] = v17;

    v19 = v90;
    v20 = v95;
    v95[2] = sub_1000CDBB4;
    v20[3] = v19;

    v21 = v91;
    v22 = v95;
    v95[4] = sub_1000CDBC8;
    v22[5] = v21;

    v23 = v92;
    v24 = v95;
    v95[6] = sub_1000CDBB4;
    v24[7] = v23;

    v25 = v93;
    v26 = v95;
    v95[8] = sub_1000CDBB4;
    v26[9] = v25;

    v27 = v95;
    v28 = v96;
    v95[10] = sub_1000CE234;
    v27[11] = v28;
    sub_1000C9CFC();

    if (os_log_type_enabled(v99, v98))
    {
      v29 = v100;
      v67 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = v67;
      v65 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v68 = sub_1000CACDC(0);
      v66 = v68;
      v69 = sub_1000CACDC(1);
      v120 = v67;
      v119 = v68;
      v118 = v69;
      v70 = 2;
      v71 = &v120;
      sub_1000CAD30(2, &v120);
      sub_1000CAD30(v70, v71);
      v116 = sub_1000CDBB4;
      v117 = v76;
      sub_1000CAD44(&v116, v71, &v119, &v118);
      v72 = v29;
      v73 = v29;
      if (v29)
      {
        v62 = 0;

        __break(1u);
      }

      else
      {
        v116 = sub_1000CDBB4;
        v117 = v78;
        sub_1000CAD44(&v116, &v120, &v119, &v118);
        v60 = 0;
        v61 = 0;
        v116 = sub_1000CDBC8;
        v117 = v80;
        sub_1000CAD44(&v116, &v120, &v119, &v118);
        v58 = 0;
        v59 = 0;
        v116 = sub_1000CDBB4;
        v117 = v82;
        sub_1000CAD44(&v116, &v120, &v119, &v118);
        v56 = 0;
        v57 = 0;
        v116 = sub_1000CDBB4;
        v117 = v84;
        sub_1000CAD44(&v116, &v120, &v119, &v118);
        v54 = 0;
        v55 = 0;
        v116 = sub_1000CE234;
        v117 = v88;
        sub_1000CAD44(&v116, &v120, &v119, &v118);
        v52 = 0;
        v53 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Initializing new migration %s class C starting at global message ID %lld", v64, 0x16u);
        sub_1000CAD90(v66);
        sub_1000CAD90(v69);
        UnsafeMutablePointer.deallocate()();

        v63 = v52;
      }
    }

    else
    {
      v30 = v100;

      v63 = v30;
    }

    v50 = v63;

    (*(v103 + 8))(v104, v101);
    v51 = [v105 database];
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v49 = 0;
    v36 = 0;
    v31 = sub_1000BD444();
    v34[1] = *v31;
    v34[2] = *(v31 + 1);

    v35 = String._bridgeToObjectiveC()();

    v42 = &DaemonSnapshotInvalidator__metaData;
    [v51 setValue:v36 forProperty:v35];

    swift_unknownObjectRelease();
    v45 = [v105 database];
    v37 = 0;
    sub_1000CE320();
    v38 = &v121;
    swift_beginAccess();
    v39 = *v107;
    swift_endAccess();
    v44 = sub_1000C56D0(v39);
    v32 = sub_1000BD35C();
    v40 = *v32;
    v41 = *(v32 + 1);

    v43 = String._bridgeToObjectiveC()();

    [v45 v42[50].ivar_lyt];

    swift_unknownObjectRelease();
    v46 = [v105 messagePersistence];
    [v46 setMigrationIsComplete:0];

    v47 = 1;
    v48 = v50;
  }

  return v47 & 1;
}

void *sub_1000C0D2C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_1000C0D98(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_1000C0E38()
{
  v55 = 0;
  v54 = 0;
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  v48 = v47;
  v0 = *(v47 + 64);
  v1 = __chkstk_darwin(v45);
  v49 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  v50 = [v1 task];
  if (!v50)
  {
    v42 = v44;
LABEL_11:
    v15 = v42;
    sub_1000C4A08();
    result = v15;
    v16 = v15;
    return result;
  }

  v43 = v50;
  v3 = v49;
  v36 = v50;
  v54 = v50;
  v4 = sub_1000BD6E4();
  (*(v48 + 16))(v3, v4, v46);
  v40 = Logger.logObject.getter();
  v37 = v40;
  v39 = static os_log_type_t.default.getter();
  v38 = v39;
  sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v34 = v44;
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = v26;
    v23 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
    v24 = 0;
    v27 = sub_1000CACDC(0);
    v25 = v27;
    v28 = sub_1000CACDC(v24);
    v52 = v26;
    v57 = v27;
    v56 = v28;
    v29 = 0;
    v30 = &v52;
    sub_1000CAD30(0, &v52);
    sub_1000CAD30(v29, v30);
    v51 = v41;
    v31 = &v11;
    __chkstk_darwin(&v11);
    v32 = &v11 - 6;
    *(&v11 - 4) = v6;
    *(&v11 - 3) = &v57;
    *(&v11 - 2) = &v56;
    v33 = sub_1000CDBD4(&qword_1001850B0, &qword_10013EDE8);
    sub_1000CDCDC();
    v7 = v34;
    Sequence.forEach(_:)();
    v35 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v37, v38, "Expiring migration", v22, 2u);
      v20 = 0;
      sub_1000CAD90(v25);
      sub_1000CAD90(v28);
      UnsafeMutablePointer.deallocate()();

      v21 = v35;
    }
  }

  else
  {

    v21 = v44;
  }

  v17 = v21;

  (*(v48 + 8))(v49, v46);
  v58 = 0;
  v53 = 0;
  v19 = [v36 setTaskExpiredWithRetryAfter:&v53 error:900.0];
  v18 = v53;
  v8 = v53;
  v9 = v58;
  v58 = v18;

  if (v19)
  {
    [v45 setTask:0];

    v42 = v17;
    goto LABEL_11;
  }

  v12 = v58;
  v13 = _convertNSErrorToError(_:)();

  swift_willThrow();
  return v14;
}

uint64_t sub_1000C13B4()
{
  v245 = 0;
  v304 = 0;
  v244 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v286 = 0u;
  v285 = 0u;
  v283 = 0;
  v281 = 0;
  v280 = 0;
  v246 = type metadata accessor for Logger();
  v247 = *(v246 - 8);
  v248 = v247;
  v251 = *(v247 + 64);
  v0 = __chkstk_darwin(0);
  v253 = (v251 + 15) & 0xFFFFFFFFFFFFFFF0;
  v249 = v51 - v253;
  v1 = __chkstk_darwin(v0);
  v250 = v51 - v253;
  v2 = __chkstk_darwin(v1);
  v252 = v51 - v253;
  __chkstk_darwin(v2);
  v254 = v51 - v253;
  v256 = type metadata accessor for CharacterSet();
  v257 = *(v256 - 8);
  v258 = v257;
  v3 = *(v257 + 64);
  v4 = __chkstk_darwin(v255);
  v259 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = v4;
  v264 = [v4 database];
  v6 = sub_1000BD444();
  v260 = *v6;
  v261 = *(v6 + 1);

  v262 = String._bridgeToObjectiveC()();

  v265 = [v264 valueForProperty:v262];
  v263 = v265;

  if (v265)
  {
    v243 = v263;
    v242 = v263;
    v241 = v266;
    _bridgeAnyObjectToAny(_:)();
    sub_1000CE8BC(v241, &v301);
    swift_unknownObjectRelease();
  }

  else
  {
    v301 = 0uLL;
    v302 = 0uLL;
  }

  v303[1] = v302;
  v303[0] = v301;
  if (*(&v302 + 1))
  {
    if (swift_dynamicCast())
    {
      v239 = v266[4];
      v240 = v266[5];
    }

    else
    {
      v239 = 0;
      v240 = 0;
    }

    v237 = v239;
    v238 = v240;
  }

  else
  {
    sub_1000CE384(v303);
    v237 = 0;
    v238 = 0;
  }

  v235 = v238;
  v236 = v237;
  if (!v238)
  {
    v46 = v249;
    v47 = sub_1000BD6E4();
    (*(v248 + 16))(v46, v47, v246);
    v69 = Logger.logObject.getter();
    v66 = v69;
    v68 = static os_log_type_t.default.getter();
    v67 = v68;
    sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v70 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v69, v68))
    {
      v48 = v244;
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v53 = v57;
      v54 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v55 = 0;
      v58 = sub_1000CACDC(0);
      v56 = v58;
      v59 = sub_1000CACDC(v55);
      v300 = v57;
      v299 = v58;
      v298 = v59;
      v60 = 0;
      v61 = &v300;
      sub_1000CAD30(0, &v300);
      sub_1000CAD30(v60, v61);
      v297 = v70;
      v62 = v51;
      __chkstk_darwin(v51);
      v63 = &v51[-6];
      v51[-4] = v49;
      v51[-3] = &v299;
      v51[-2] = &v298;
      v64 = sub_1000CDBD4(&qword_1001850B0, &qword_10013EDE8);
      sub_1000CDCDC();
      Sequence.forEach(_:)();
      v65 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v66, v67, "No messages to retry", v53, 2u);
        v51[1] = 0;
        sub_1000CAD90(v56);
        sub_1000CAD90(v59);
        UnsafeMutablePointer.deallocate()();

        v52 = v65;
      }
    }

    else
    {

      v52 = v244;
    }

    v51[0] = v52;

    (*(v248 + 8))(v249, v246);
    v75 = 1;
    v76 = v51[0];
    return v75 & 1;
  }

  v233 = v236;
  v234 = v235;
  v7 = v244;
  v225 = v235;
  v224 = v236;
  v295 = v236;
  v296 = v235;
  v226 = swift_allocObject();
  v227 = (v226 + 16);
  v294 = v226 + 16;
  v293[1] = v224;
  v293[2] = v225;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1)._object;
  CharacterSet.init(charactersIn:)();

  sub_1000CE3C0();
  v229 = StringProtocol.components(separatedBy:)();
  (*(v258 + 8))(v259, v256);
  v293[0] = v229;
  v230 = sub_1000CDBD4(&qword_1001850D8, &qword_10013EDF0);
  sub_1000CE438();
  v8 = Sequence.compactMap<A>(_:)();
  v231 = v7;
  v232 = v8;
  if (!v7)
  {
    v9 = v254;
    v203 = v232;
    sub_1000CE4C0(v293);
    *v227 = v203;
    v10 = sub_1000BD6E4();
    v204 = *(v248 + 16);
    v205 = (v248 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v204(v9, v10, v246);

    v223 = Logger.logObject.getter();
    v206 = v223;
    v222 = static os_log_type_t.default.getter();
    v207 = v222;
    v208 = 17;
    v212 = 7;
    v216 = swift_allocObject();
    v209 = v216;
    *(v216 + 16) = 0;
    v217 = swift_allocObject();
    v210 = v217;
    *(v217 + 16) = 8;
    v211 = 32;
    v11 = swift_allocObject();
    v12 = v226;
    v213 = v11;
    *(v11 + 16) = sub_1000CE4EC;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v213;
    v220 = v13;
    v214 = v13;
    *(v13 + 16) = sub_1000CE6B4;
    *(v13 + 24) = v14;
    v221 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v215 = v221;
    v218 = _allocateUninitializedArray<A>(_:)();
    v219 = v15;

    v16 = v216;
    v17 = v219;
    *v219 = sub_1000CDBB4;
    v17[1] = v16;

    v18 = v217;
    v19 = v219;
    v219[2] = sub_1000CDBB4;
    v19[3] = v18;

    v20 = v219;
    v21 = v220;
    v219[4] = sub_1000CE6C0;
    v20[5] = v21;
    sub_1000C9CFC();

    if (os_log_type_enabled(v223, v222))
    {
      v22 = v231;
      v197 = static UnsafeMutablePointer.allocate(capacity:)();
      v193 = v197;
      v194 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v195 = 0;
      v198 = sub_1000CACDC(0);
      v196 = v198;
      v199 = sub_1000CACDC(v195);
      v271[0] = v197;
      v270 = v198;
      v269 = v199;
      v200 = v271;
      sub_1000CAD30(0, v271);
      sub_1000CAD30(1, v200);
      v267 = sub_1000CDBB4;
      v268 = v209;
      sub_1000CAD44(&v267, v200, &v270, &v269);
      v201 = v22;
      v202 = v22;
      if (v22)
      {
        v191 = 0;

        __break(1u);
      }

      else
      {
        v267 = sub_1000CDBB4;
        v268 = v210;
        sub_1000CAD44(&v267, v271, &v270, &v269);
        v189 = 0;
        v190 = 0;
        v267 = sub_1000CE6C0;
        v268 = v214;
        sub_1000CAD44(&v267, v271, &v270, &v269);
        v187 = 0;
        v188 = 0;
        _os_log_impl(&_mh_execute_header, v206, v207, "Retrying %ld messages", v193, 0xCu);
        v186 = 0;
        sub_1000CAD90(v196);
        sub_1000CAD90(v199);
        UnsafeMutablePointer.deallocate()();

        v192 = v187;
      }
    }

    else
    {
      v23 = v231;

      v192 = v23;
    }

    v184 = v192;

    v182 = *(v248 + 8);
    v183 = (v248 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v182(v254, v246);
    for (i = v184; ; i = v86)
    {
      v175 = i;
      v176 = &v292;
      swift_beginAccess();
      v180 = *v227;

      swift_endAccess();
      v291 = v180;
      v178 = sub_1000CDBD4(&qword_1001850F0, &qword_10013EDF8);
      v177 = v178;
      v179 = sub_1000CE7AC();
      v181 = Collection.isEmpty.getter();

      v24 = v255;
      if (v181)
      {
        v174 = 0;
      }

      else
      {
        v172 = [v255 cancelationToken];
        v173 = [v172 isCanceled];

        v174 = v173 ^ 1;
      }

      v171 = v174;

      if ((v171 & 1) == 0)
      {
        v136 = v175;
        goto LABEL_38;
      }

      v162 = &v288;
      v165 = 0;
      swift_beginAccess();
      v163 = *v227;

      swift_endAccess();
      v287 = v163;
      Collection.prefix(_:)();
      v168 = v289;
      v164 = v289;
      v169 = v290;
      v285 = v289;
      v286 = v290;
      v166 = ArraySlice.count.getter();
      v167 = &v284;
      swift_beginAccess();
      sub_1000CE834();
      RangeReplaceableCollection.removeFirst(_:)(v166);
      swift_endAccess();
      v170 = sub_1000C5800(v168, *(&v168 + 1), v169, *(&v169 + 1));
      v283 = v170;
      v282[3] = v170;
      v161 = (Collection.isEmpty.getter() & 1) != 0 ? 0 : EFProtectedDataAvailable() ^ 1;
      v159 = v164;
      v160 = v170;
      if (v161)
      {
        break;
      }

      v29 = v250;
      v30 = sub_1000BD6E4();
      v204(v29, v30, v246);

      v133 = Logger.logObject.getter();
      v118 = v133;
      v132 = static os_log_type_t.default.getter();
      v119 = v132;
      v120 = 17;
      v124 = 7;
      v127 = swift_allocObject();
      v121 = v127;
      *(v127 + 16) = 0;
      v128 = swift_allocObject();
      v122 = v128;
      *(v128 + 16) = 8;
      v123 = 32;
      v31 = swift_allocObject();
      v32 = v226;
      v125 = v31;
      *(v31 + 16) = sub_1000CE4EC;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v125;
      v131 = v33;
      v126 = v33;
      *(v33 + 16) = sub_1000CE6B4;
      *(v33 + 24) = v34;
      v129 = _allocateUninitializedArray<A>(_:)();
      v130 = v35;

      v36 = v127;
      v37 = v130;
      *v130 = sub_1000CDBB4;
      v37[1] = v36;

      v38 = v128;
      v39 = v130;
      v130[2] = sub_1000CDBB4;
      v39[3] = v38;

      v40 = v130;
      v41 = v131;
      v130[4] = sub_1000CE6C0;
      v40[5] = v41;
      sub_1000C9CFC();

      if (os_log_type_enabled(v133, v132))
      {
        v42 = v175;
        v109 = static UnsafeMutablePointer.allocate(capacity:)();
        v105 = v109;
        v106 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
        v107 = 0;
        v110 = sub_1000CACDC(0);
        v108 = v110;
        v111 = sub_1000CACDC(v107);
        v279 = v109;
        v278 = v110;
        v277 = v111;
        v112 = &v279;
        sub_1000CAD30(0, &v279);
        sub_1000CAD30(1, v112);
        v275 = sub_1000CDBB4;
        v276 = v121;
        sub_1000CAD44(&v275, v112, &v278, &v277);
        v113 = v42;
        v114 = v121;
        v115 = v122;
        v116 = v126;
        v117 = v42;
        if (v42)
        {
          v100 = v114;
          v101 = v115;
          v102 = v116;
          v103 = 0;
          v88 = v116;
          v87 = v115;

          __break(1u);
        }

        else
        {
          v275 = sub_1000CDBB4;
          v276 = v122;
          sub_1000CAD44(&v275, &v279, &v278, &v277);
          v95 = 0;
          v96 = v121;
          v97 = v122;
          v98 = v126;
          v99 = 0;
          v275 = sub_1000CE6C0;
          v276 = v126;
          sub_1000CAD44(&v275, &v279, &v278, &v277);
          v90 = 0;
          v91 = v121;
          v92 = v122;
          v93 = v126;
          v94 = 0;
          _os_log_impl(&_mh_execute_header, v118, v119, "%ld messages left to retry", v105, 0xCu);
          v89 = 0;
          sub_1000CAD90(v108);
          sub_1000CAD90(v111);
          UnsafeMutablePointer.deallocate()();

          v104 = v90;
        }
      }

      else
      {
        v43 = v175;

        v104 = v43;
      }

      v86 = v104;

      v182(v250, v246);
      v77 = v282;
      swift_beginAccess();
      v78 = *v227;

      swift_endAccess();
      v79 = sub_1000C6D14(v78);
      v85 = v44;

      v280 = v79;
      v281 = v85;
      v84 = [v255 database];

      v83 = String._bridgeToObjectiveC()();

      v45 = sub_1000BD444();
      v80 = *v45;
      v81 = *(v45 + 1);

      v82 = String._bridgeToObjectiveC()();

      [v84 setValue:v83 forProperty:v82];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    v25 = v252;
    v152 = v160;
    v153 = v159;
    v26 = sub_1000BD6E4();
    v204(v25, v26, v246);
    v157 = Logger.logObject.getter();
    v154 = v157;
    v156 = static os_log_type_t.default.getter();
    v155 = v156;
    v158 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v157, v156))
    {
      v27 = v175;
      v143 = static UnsafeMutablePointer.allocate(capacity:)();
      v139 = v143;
      v140 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v141 = 0;
      v144 = sub_1000CACDC(0);
      v142 = v144;
      v145 = sub_1000CACDC(v141);
      v274 = v143;
      v273 = v144;
      v272 = v145;
      v146 = 0;
      v147 = &v274;
      sub_1000CAD30(0, &v274);
      sub_1000CAD30(v146, v147);
      v271[1] = v158;
      v148 = v51;
      __chkstk_darwin(v51);
      v149 = &v51[-6];
      v51[-4] = v28;
      v51[-3] = &v273;
      v51[-2] = &v272;
      v150 = sub_1000CDBD4(&qword_1001850B0, &qword_10013EDE8);
      sub_1000CDCDC();
      Sequence.forEach(_:)();
      v151 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v154, v155, "Stopping retries, lost access to protected data", v139, 2u);
        v137 = 0;
        sub_1000CAD90(v142);
        sub_1000CAD90(v145);
        UnsafeMutablePointer.deallocate()();

        v138 = v151;
      }
    }

    else
    {

      v138 = v175;
    }

    v135 = v138;

    v182(v252, v246);
    v134 = [v255 cancelationToken];
    [v134 cancel];

    swift_unknownObjectRelease();
    v136 = v135;
LABEL_38:
    v74 = v136;
    v71 = [v255 cancelationToken];
    v72 = [v71 isCanceled];

    v73 = v72 ^ 1;

    v75 = v73;
    v76 = v74;
    return v75 & 1;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1000C2C44()
{
  v312 = 0;
  v364 = 0;
  v363 = 0;
  v362 = 0;
  v350 = 0;
  v349 = 0;
  v344 = 0;
  v335 = 0;
  v334 = 0;
  v304 = type metadata accessor for Logger();
  v305 = *(v304 - 8);
  v306 = v305;
  v308 = *(v305 + 64);
  __chkstk_darwin(v304 - 8);
  v310 = (v308 + 15) & 0xFFFFFFFFFFFFFFF0;
  v307 = &v57 - v310;
  __chkstk_darwin(&v57 - v310);
  v309 = &v57 - v310;
  __chkstk_darwin(&v57 - v310);
  v311 = &v57 - v310;
  v364 = v0;
  v317 = &unk_10015AE18;
  v318 = 24;
  v316 = 7;
  v315 = swift_allocObject();
  v313 = v315;
  v314 = (v315 + 16);
  v363 = v315 + 16;
  *(v315 + 16) = _allocateUninitializedArray<A>(_:)();
  v1 = swift_allocObject();
  v2 = v319;
  v320 = v1;
  v321 = (v1 + 16);
  v362 = v1 + 16;
  v3 = sub_1000C6E48();
  v322 = v2;
  v323 = v3;
  v324 = v2;
  if (v2)
  {
    v59 = v324;
    swift_deallocUninitializedObject();

    v60 = v59;
    return 0;
  }

  *v321 = v323;
  for (i = 0; ; i = v74)
  {
    v295 = i;
    v296 = &v361;
    swift_beginAccess();
    v300 = *v321;

    swift_endAccess();
    v360 = v300;
    v298 = sub_1000CDBD4(&qword_1001850F0, &qword_10013EDF8);
    v297 = v298;
    v299 = sub_1000CE7AC();
    v301 = Collection.isEmpty.getter();

    v4 = v303;
    if (v301)
    {
      v294 = 0;
    }

    else
    {
      v292 = [v303 cancelationToken];
      v293 = [v292 isCanceled];

      v294 = v293 ^ 1;
    }

    v289 = v294;

    v290 = v297;
    v291 = v299;
    if ((v289 & 1) == 0)
    {
      v248 = v290;
      v249 = v291;
      v250 = v295;
      goto LABEL_34;
    }

    v279 = 32;
    v278 = &v353;
    v280 = 0;
    swift_beginAccess();
    v282 = *v321;

    swift_endAccess();
    v352 = v282;
    v281 = &v351;
    swift_beginAccess();
    swift_endAccess();
    v283 = Array.count.getter();

    Collection.prefix(_:)();
    v284 = v354;
    v288 = sub_1000C5800(v354, v355, v356, v357);
    v287 = v5;
    v285 = v288;
    v286 = v5;
    swift_unknownObjectRelease();
    v350 = v288;
    v349 = v287;
    v348 = v288;
    if (Collection.isEmpty.getter())
    {
      v195 = v295;
      goto LABEL_22;
    }

    v6 = EFProtectedDataAvailable();
    v275 = v285;
    v276 = v297;
    v277 = v299;
    if ((v6 & 1) == 0)
    {
      break;
    }

    v337[3] = v285;
    v228 = v337;
    swift_beginAccess();
    sub_1000CE8E0();
    Array.append<A>(contentsOf:)();
    v11 = v309;
    swift_endAccess();
    v12 = sub_1000BD6E4();
    (*(v306 + 16))(v11, v12, v304);

    v245 = Logger.logObject.getter();
    v229 = v245;
    v244 = static os_log_type_t.default.getter();
    v230 = v244;
    v231 = 17;
    v235 = 7;
    v238 = swift_allocObject();
    v232 = v238;
    *(v238 + 16) = 0;
    v239 = swift_allocObject();
    v233 = v239;
    *(v239 + 16) = 8;
    v234 = 32;
    v13 = swift_allocObject();
    v14 = v313;
    v236 = v13;
    *(v13 + 16) = sub_1000CE4EC;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v236;
    v242 = v15;
    v237 = v15;
    *(v15 + 16) = sub_1000CE6B4;
    *(v15 + 24) = v16;
    v243 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v240 = _allocateUninitializedArray<A>(_:)();
    v241 = v17;

    v18 = v238;
    v19 = v241;
    *v241 = sub_1000CDBB4;
    v19[1] = v18;

    v20 = v239;
    v21 = v241;
    v241[2] = sub_1000CDBB4;
    v21[3] = v20;

    v22 = v241;
    v23 = v242;
    v241[4] = sub_1000CE6C0;
    v22[5] = v23;
    sub_1000C9CFC();

    if (os_log_type_enabled(v245, v244))
    {
      v222 = v295;
      v218 = static UnsafeMutablePointer.allocate(capacity:)();
      v214 = v218;
      v215 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v216 = 0;
      v219 = sub_1000CACDC(0);
      v217 = v219;
      v220 = sub_1000CACDC(v216);
      v333 = v218;
      v332 = v219;
      v331 = v220;
      v221 = &v333;
      sub_1000CAD30(0, &v333);
      sub_1000CAD30(1, v221);
      v24 = v222;
      v329 = sub_1000CDBB4;
      v330 = v232;
      sub_1000CAD44(&v329, v221, &v332, &v331);
      v223 = v24;
      v224 = v232;
      v225 = v233;
      v226 = v237;
      v227 = v24;
      if (v24)
      {
        v209 = v224;
        v210 = v225;
        v211 = v226;
        v212 = 0;
        v197 = v226;
        v196 = v225;

        __break(1u);
      }

      else
      {
        v329 = sub_1000CDBB4;
        v330 = v233;
        sub_1000CAD44(&v329, &v333, &v332, &v331);
        v204 = 0;
        v205 = v232;
        v206 = v233;
        v207 = v237;
        v208 = 0;
        v329 = sub_1000CE6C0;
        v330 = v237;
        sub_1000CAD44(&v329, &v333, &v332, &v331);
        v199 = 0;
        v200 = v232;
        v201 = v233;
        v202 = v237;
        v203 = 0;
        _os_log_impl(&_mh_execute_header, v229, v230, "%ld failed messages to retry next time", v214, 0xCu);
        v198 = 0;
        sub_1000CAD90(v217);
        sub_1000CAD90(v220);
        UnsafeMutablePointer.deallocate()();

        v213 = v199;
      }
    }

    else
    {

      v213 = v295;
    }

    v194 = v213;

    (*(v306 + 8))(v309, v304);
    v185 = &v336;
    swift_beginAccess();
    v186 = *v314;

    swift_endAccess();
    v187 = sub_1000C6D14(v186);
    v193 = v25;

    v334 = v187;
    v335 = v193;
    v192 = [v303 database];

    v191 = String._bridgeToObjectiveC()();

    v26 = sub_1000BD444();
    v188 = *v26;
    v189 = *(v26 + 1);

    v190 = String._bridgeToObjectiveC()();

    [v192 setValue:v191 forProperty:v190];

    swift_unknownObjectRelease();

    v195 = v194;
LABEL_22:
    v183 = v195;
    v346 = v286;
    v345 = 1;
    result = max<A>(_:_:)();
    v28 = __OFSUB__(v347, 1);
    v184 = v347 - 1;
    if (v28)
    {
      __break(1u);
      return result;
    }

    v29 = v307;
    v344 = v184;
    v30 = sub_1000BD6E4();
    (*(v306 + 16))(v29, v30, v304);

    v168 = 7;
    v169 = swift_allocObject();
    *(v169 + 16) = v184;
    v182 = Logger.logObject.getter();
    v156 = v182;
    v181 = static os_log_type_t.default.getter();
    v157 = v181;
    v163 = 17;
    v172 = swift_allocObject();
    v158 = v172;
    v162 = 0;
    *(v172 + 16) = 0;
    v173 = swift_allocObject();
    v159 = v173;
    v165 = 8;
    *(v173 + 16) = 8;
    v167 = 32;
    v31 = swift_allocObject();
    v32 = v320;
    v160 = v31;
    *(v31 + 16) = sub_1000CE4EC;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v160;
    v174 = v33;
    v161 = v33;
    *(v33 + 16) = sub_1000CE6B4;
    *(v33 + 24) = v34;
    v175 = swift_allocObject();
    v164 = v175;
    *(v175 + 16) = v162;
    v176 = swift_allocObject();
    v166 = v176;
    *(v176 + 16) = v165;
    v35 = swift_allocObject();
    v36 = v169;
    v170 = v35;
    *(v35 + 16) = sub_1000CE8D8;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v170;
    v179 = v37;
    v171 = v37;
    *(v37 + 16) = sub_1000CE228;
    *(v37 + 24) = v38;
    v180 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v177 = _allocateUninitializedArray<A>(_:)();
    v178 = v39;

    v40 = v172;
    v41 = v178;
    *v178 = sub_1000CDBB4;
    v41[1] = v40;

    v42 = v173;
    v43 = v178;
    v178[2] = sub_1000CDBB4;
    v43[3] = v42;

    v44 = v174;
    v45 = v178;
    v178[4] = sub_1000CE6C0;
    v45[5] = v44;

    v46 = v175;
    v47 = v178;
    v178[6] = sub_1000CDBB4;
    v47[7] = v46;

    v48 = v176;
    v49 = v178;
    v178[8] = sub_1000CDBB4;
    v49[9] = v48;

    v50 = v178;
    v51 = v179;
    v178[10] = sub_1000CE234;
    v50[11] = v51;
    sub_1000C9CFC();

    if (os_log_type_enabled(v182, v181))
    {
      v147 = v183;
      v143 = static UnsafeMutablePointer.allocate(capacity:)();
      v139 = v143;
      v140 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v141 = 0;
      v144 = sub_1000CACDC(0);
      v142 = v144;
      v145 = sub_1000CACDC(v141);
      v342 = v143;
      v341 = v144;
      v340 = v145;
      v146 = &v342;
      sub_1000CAD30(0, &v342);
      sub_1000CAD30(2, v146);
      v52 = v147;
      v338 = sub_1000CDBB4;
      v339 = v158;
      sub_1000CAD44(&v338, v146, &v341, &v340);
      v148 = v52;
      v149 = v158;
      v150 = v159;
      v151 = v161;
      v152 = v164;
      v153 = v166;
      v154 = v171;
      v155 = v52;
      if (v52)
      {
        v131 = v149;
        v132 = v150;
        v133 = v151;
        v134 = v152;
        v135 = v153;
        v136 = v154;
        v137 = 0;
        v89 = v154;
        v88 = v153;
        v87 = v152;
        v86 = v151;
        v85 = v150;

        __break(1u);
      }

      else
      {
        v338 = sub_1000CDBB4;
        v339 = v159;
        sub_1000CAD44(&v338, &v342, &v341, &v340);
        v123 = 0;
        v124 = v158;
        v125 = v159;
        v126 = v161;
        v127 = v164;
        v128 = v166;
        v129 = v171;
        v130 = 0;
        v338 = sub_1000CE6C0;
        v339 = v161;
        sub_1000CAD44(&v338, &v342, &v341, &v340);
        v115 = 0;
        v116 = v158;
        v117 = v159;
        v118 = v161;
        v119 = v164;
        v120 = v166;
        v121 = v171;
        v122 = 0;
        v338 = sub_1000CDBB4;
        v339 = v164;
        sub_1000CAD44(&v338, &v342, &v341, &v340);
        v107 = 0;
        v108 = v158;
        v109 = v159;
        v110 = v161;
        v111 = v164;
        v112 = v166;
        v113 = v171;
        v114 = 0;
        v338 = sub_1000CDBB4;
        v339 = v166;
        sub_1000CAD44(&v338, &v342, &v341, &v340);
        v99 = 0;
        v100 = v158;
        v101 = v159;
        v102 = v161;
        v103 = v164;
        v104 = v166;
        v105 = v171;
        v106 = 0;
        v338 = sub_1000CE234;
        v339 = v171;
        sub_1000CAD44(&v338, &v342, &v341, &v340);
        v91 = 0;
        v92 = v158;
        v93 = v159;
        v94 = v161;
        v95 = v164;
        v96 = v166;
        v97 = v171;
        v98 = 0;
        _os_log_impl(&_mh_execute_header, v156, v157, "Migrated batch of %ld messages, next batch starting from %lld", v139, 0x16u);
        v90 = 0;
        sub_1000CAD90(v142);
        sub_1000CAD90(v145);
        UnsafeMutablePointer.deallocate()();

        v138 = v91;
      }
    }

    else
    {

      v138 = v183;
    }

    v80 = v138;

    (*(v306 + 8))(v307, v304);
    v79 = [v303 database];
    sub_1000CE320();
    v78 = sub_1000C56D0(v184);
    v53 = sub_1000BD35C();
    v75 = *v53;
    v76 = *(v53 + 1);

    v77 = String._bridgeToObjectiveC()();

    [v79 setValue:v78 forProperty:v77];

    swift_unknownObjectRelease();
    v54 = v80;
    v55 = sub_1000C6E48();
    v81 = v54;
    v82 = v55;
    v83 = v285;
    v84 = v54;
    if (v54)
    {
      v58 = v84;

      v60 = v58;
      return 0;
    }

    v72 = v82;
    v74 = 0;
    v73 = &v343;
    swift_beginAccess();
    v56 = *v321;
    *v321 = v72;

    swift_endAccess();
  }

  v7 = v311;
  v267 = v277;
  v268 = v276;
  v269 = v275;
  v8 = sub_1000BD6E4();
  (*(v306 + 16))(v7, v8, v304);
  v273 = Logger.logObject.getter();
  v270 = v273;
  v272 = static os_log_type_t.default.getter();
  v271 = v272;
  sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
  v274 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v273, v272))
  {
    v265 = v295;
    v257 = static UnsafeMutablePointer.allocate(capacity:)();
    v253 = v257;
    v254 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
    v255 = 0;
    v258 = sub_1000CACDC(0);
    v256 = v258;
    v259 = sub_1000CACDC(v255);
    v328 = v257;
    v327 = v258;
    v326 = v259;
    v260 = 0;
    v261 = &v328;
    sub_1000CAD30(0, &v328);
    sub_1000CAD30(v260, v261);
    v325 = v274;
    v262 = &v57;
    __chkstk_darwin(&v57);
    v263 = &v57 - 6;
    *(&v57 - 4) = v9;
    *(&v57 - 3) = &v327;
    *(&v57 - 2) = &v326;
    v264 = sub_1000CDBD4(&qword_1001850B0, &qword_10013EDE8);
    sub_1000CDCDC();
    v10 = v265;
    Sequence.forEach(_:)();
    v266 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v270, v271, "Stopping message migration, lost access to protected data", v253, 2u);
      v251 = 0;
      sub_1000CAD90(v256);
      sub_1000CAD90(v259);
      UnsafeMutablePointer.deallocate()();

      v252 = v266;
    }
  }

  else
  {

    v252 = v295;
  }

  v247 = v252;

  (*(v306 + 8))(v311, v304);
  v246 = [v303 cancelationToken];
  [v246 cancel];

  v248 = v268;
  v249 = v267;
  v250 = v247;
LABEL_34:
  v67 = v250;
  v68 = v249;
  v69 = v248;
  v70 = [v303 cancelationToken];
  v71 = [v70 isCanceled];

  if (v71)
  {
    v66 = 0;
  }

  else
  {
    v63 = &v359;
    swift_beginAccess();
    v64 = *v314;

    swift_endAccess();
    v358 = v64;
    v65 = Collection.isEmpty.getter();

    v66 = v65;
  }

  v61 = v66;
  v62 = v67;

  return v61 & 1;
}

id sub_1000C4A08()
{
  result = [v0 databaseAssertion];
  v2 = result;
  if (result)
  {
    swift_getObjectType();
    [v2 cancel];
    [v0 setDatabaseAssertion:0];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000C4AB4(void *a1, uint64_t a2)
{
  v65 = a1;
  v64 = a2;
  v63 = sub_1000D0514;
  v48 = sub_1000CEA1C;
  v49 = sub_1000CEA24;
  v50 = sub_1000CEA30;
  v51 = sub_1000CDBB4;
  v52 = sub_1000CDBB4;
  v53 = sub_1000CEA3C;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v73 = 0;
  v54 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v59 = v23 - v58;
  v84 = v2;
  v83 = v3 + 16;
  sub_1000D03A0();
  v61 = &EFSQLSchemaColumnNameRowID;
  v60 = EFSQLSchemaColumnNameRowID;
  _objc_retain(EFSQLSchemaColumnNameRowID);
  v4 = [objc_opt_self() messageGlobalDataTableName];
  v66 = sub_1000C549C(v60, v4);
  v82 = v66;
  v62 = *v61;
  _objc_retain(v62);
  [v66 orderByColumn:v62 ascending:0];
  _objc_release(v62);
  [v66 setLimit:1];
  v87 = 0;

  v80 = v63;
  v81 = v64;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = 0;
  v78 = sub_1000C55A0;
  v79 = &unk_10015B550;
  v68 = _Block_copy(&aBlock);

  v74 = v87;
  v69 = [v65 executeSelectStatement:v66 withBlock:v68 error:&v74];
  v67 = v74;
  _objc_retain(v74);
  v5 = v87;
  v87 = v67;
  _objc_release(v5);
  _Block_release(v68);
  if ((v69 & 1) == 0)
  {
    v31 = v87;
    v33 = _convertNSErrorToError(_:)();
    _objc_release(v31);
    swift_willThrow();
    v7 = v59;
    v32 = 0;
    swift_errorRetain();
    v73 = v33;
    v8 = sub_1000BD6E4();
    (*(v56 + 16))(v7, v8, v55);
    swift_errorRetain();
    v37 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    sub_1000C5650();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v34 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 64;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v9 = swift_allocObject();
    v10 = v35;
    v38 = v9;
    *(v9 + 16) = v48;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v38;
    v39 = v11;
    *(v11 + 16) = v49;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v39;
    v43 = v13;
    *(v13 + 16) = v50;
    *(v13 + 24) = v14;
    v45 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v42 = _allocateUninitializedArray<A>(_:)();
    v44 = v15;

    v16 = v40;
    v17 = v44;
    *v44 = v51;
    v17[1] = v16;

    v18 = v41;
    v19 = v44;
    v44[2] = v52;
    v19[3] = v18;

    v20 = v43;
    v21 = v44;
    v44[4] = v53;
    v21[5] = v20;
    sub_1000C9CFC();

    if (os_log_type_enabled(v46, v47))
    {
      v22 = v32;
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23[2] = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v25 = sub_1000CACDC(1);
      v26 = sub_1000CACDC(0);
      v27 = &v72;
      v72 = v24;
      v28 = &v86;
      v86 = v25;
      v29 = &v85;
      v85 = v26;
      sub_1000CAD30(2, &v72);
      sub_1000CAD30(1, v27);
      v70 = v51;
      v71 = v40;
      sub_1000CAD44(&v70, v27, v28, v29);
      v30 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v70 = v52;
        v71 = v41;
        sub_1000CAD44(&v70, &v72, &v86, &v85);
        v23[1] = 0;
        v70 = v53;
        v71 = v43;
        sub_1000CAD44(&v70, &v72, &v86, &v85);
        _os_log_impl(&_mh_execute_header, v46, v47, "Unable to find largest message ID to initialize migration: %@", v24, 0xCu);
        sub_1000CAD90(v25);
        sub_1000CAD90(v26);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v46);
    (*(v56 + 8))(v59, v55);
  }

  _objc_release(v66);
  return 1;
}

uint64_t sub_1000C54E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectAtIndexedSubscript:0];
  v7 = [v5 databaseIDValue];
  _objc_release(v5);
  swift_beginAccess();
  *(a4 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1000C55A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);

  _objc_retain(a2);
  v7(a2, a3, a4);
  _objc_release(a2);
}

uint64_t sub_1000C567C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t sub_1000C5710(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  sub_1000CE2A8();
  return FixedWidthInteger.init(_:)();
}

uint64_t sub_1000C5788(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);

  swift_endAccess();
  v4 = Array.count.getter();

  return v4;
}

uint64_t sub_1000C5800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v168 = a1;
  v171 = a2;
  v169 = a3;
  v170 = a4;
  v166 = 0;
  v155 = sub_1000CE8D8;
  v156 = sub_1000CE228;
  v157 = sub_1000CEA1C;
  v158 = sub_1000CEA24;
  v159 = sub_1000CEA30;
  v160 = sub_1000CDBB4;
  v161 = sub_1000CDBB4;
  v162 = sub_1000CE234;
  v163 = sub_1000CDBB4;
  v164 = sub_1000CDBB4;
  v165 = sub_1000CEA3C;
  v200 = 0u;
  v201 = 0u;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  memset(__b, 0, sizeof(__b));
  v189 = 0;
  v167 = 0;
  v188 = 0;
  v181 = 0;
  v172 = 0;
  v173 = type metadata accessor for Logger();
  v174 = *(v173 - 8);
  v175 = v173 - 8;
  v176 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v177 = &v39 - v176;
  *&v200 = v5;
  *(&v200 + 1) = v6;
  *&v201 = v7;
  *(&v201 + 1) = v8;
  v199 = v4;
  v198 = _allocateUninitializedArray<A>(_:)();
  v197 = 0x7FFFFFFFFFFFFFFFLL;
  v179 = [v178 cancelationToken];
  v180 = [v179 isCanceled];
  _objc_release(v179);
  if (v180)
  {
    v133 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    swift_unknownObjectRetain();
    v192 = v168;
    v193 = v171;
    v194 = v169;
    v195 = v170;
    v151 = sub_1000CDBD4(&qword_100185118, &qword_10013EE08);
    sub_1000CE994();
    Collection<>.makeIterator()();
    v152 = 0x7FFFFFFFFFFFFFFFLL;
    v153 = 0x7FFFFFFFFFFFFFFFLL;
    for (i = v167; ; i = v136)
    {
      v146 = i;
      v147 = v153;
      v148 = v152;
      sub_1000CDBD4(&qword_100185128, &qword_10013EE10);
      IndexingIterator.next()();
      v149 = v190;
      v150 = v148;
      if (v191)
      {
        break;
      }

      v145 = v149;
      v9 = v146;
      v141 = v149;
      v189 = v149;
      v10 = sub_1000C703C(v149);
      v142 = v9;
      v143 = v10;
      v144 = v9;
      if (v9)
      {
        v104 = v144;
        v103 = 0;
        v105 = v103;
        v108 = v104;
        swift_errorRetain();
        v188 = v108;
        v106 = &v187;
        v187 = v141;
        sub_1000CDBD4(&qword_1001850F0, &qword_10013EDF8);
        Array.append(_:)();
        v12 = v177;
        v13 = sub_1000BD6E4();
        (*(v174 + 16))(v12, v13, v173);
        v107 = 24;
        v115 = 7;
        v109 = swift_allocObject();
        *(v109 + 16) = v141;
        swift_errorRetain();
        v113 = swift_allocObject();
        *(v113 + 16) = v108;
        sub_1000C5650();

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();
        v111 = 17;
        v118 = swift_allocObject();
        *(v118 + 16) = 0;
        v119 = swift_allocObject();
        v112 = 8;
        *(v119 + 16) = 8;
        v114 = 32;
        v14 = swift_allocObject();
        v15 = v109;
        v110 = v14;
        *(v14 + 16) = v155;
        *(v14 + 24) = v15;
        v16 = swift_allocObject();
        v17 = v110;
        v120 = v16;
        *(v16 + 16) = v156;
        *(v16 + 24) = v17;
        v121 = swift_allocObject();
        *(v121 + 16) = 64;
        v122 = swift_allocObject();
        *(v122 + 16) = v112;
        v18 = swift_allocObject();
        v19 = v113;
        v116 = v18;
        *(v18 + 16) = v157;
        *(v18 + 24) = v19;
        v20 = swift_allocObject();
        v21 = v116;
        v117 = v20;
        *(v20 + 16) = v158;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v117;
        v124 = v22;
        *(v22 + 16) = v159;
        *(v22 + 24) = v23;
        v126 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
        v123 = _allocateUninitializedArray<A>(_:)();
        v125 = v24;

        v25 = v118;
        v26 = v125;
        *v125 = v160;
        v26[1] = v25;

        v27 = v119;
        v28 = v125;
        v125[2] = v161;
        v28[3] = v27;

        v29 = v120;
        v30 = v125;
        v125[4] = v162;
        v30[5] = v29;

        v31 = v121;
        v32 = v125;
        v125[6] = v163;
        v32[7] = v31;

        v33 = v122;
        v34 = v125;
        v125[8] = v164;
        v34[9] = v33;

        v35 = v124;
        v36 = v125;
        v125[10] = v165;
        v36[11] = v35;
        sub_1000C9CFC();

        if (os_log_type_enabled(v127, v128))
        {
          v37 = v105;
          v89 = static UnsafeMutablePointer.allocate(capacity:)();
          v88 = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
          v90 = sub_1000CACDC(1);
          v91 = sub_1000CACDC(0);
          v93 = &v186;
          v186 = v89;
          v94 = &v185;
          v185 = v90;
          v95 = &v184;
          v184 = v91;
          v92 = 2;
          sub_1000CAD30(2, &v186);
          sub_1000CAD30(v92, v93);
          v182 = v160;
          v183 = v118;
          sub_1000CAD44(&v182, v93, v94, v95);
          v96 = v37;
          v97 = v118;
          v98 = v119;
          v99 = v120;
          v100 = v121;
          v101 = v122;
          v102 = v124;
          if (v37)
          {
            v81 = v97;
            v82 = v98;
            v83 = v99;
            v84 = v100;
            v85 = v101;
            v86 = v102;
            v45 = v102;
            v44 = v101;
            v43 = v100;
            v42 = v99;
            v41 = v98;

            __break(1u);
          }

          else
          {
            sub_1000CAD44(&v182, &v186, &v185, &v184);
            v74 = 0;
            v75 = v118;
            v76 = v119;
            v77 = v120;
            v78 = v121;
            v79 = v122;
            v80 = v124;
            sub_1000CAD44(&v182, &v186, &v185, &v184);
            v67 = 0;
            v68 = v118;
            v69 = v119;
            v70 = v120;
            v71 = v121;
            v72 = v122;
            v73 = v124;
            sub_1000CAD44(&v182, &v186, &v185, &v184);
            v60 = 0;
            v61 = v118;
            v62 = v119;
            v63 = v120;
            v64 = v121;
            v65 = v122;
            v66 = v124;
            sub_1000CAD44(&v182, &v186, &v185, &v184);
            v53 = 0;
            v54 = v118;
            v55 = v119;
            v56 = v120;
            v57 = v121;
            v58 = v122;
            v59 = v124;
            v182 = v165;
            v183 = v124;
            sub_1000CAD44(&v182, &v186, &v185, &v184);
            v46 = 0;
            v47 = v118;
            v48 = v119;
            v49 = v120;
            v50 = v121;
            v51 = v122;
            v52 = v124;
            _os_log_impl(&_mh_execute_header, v127, v128, "Failed to migrate %lld: %@", v89, 0x16u);
            sub_1000CAD90(v90);
            sub_1000CAD90(v91);
            UnsafeMutablePointer.deallocate()();

            v87 = v46;
          }
        }

        else
        {
          v38 = v105;

          v87 = v38;
        }

        v40 = v87;
        _objc_release(v127);
        (*(v174 + 8))(v177, v173);

        v137 = v40;
      }

      else
      {
        v138 = v143;
        v181 = v143;
        sub_1000C8710(v143);
        v139 = 0;
        v140 = 0;

        v137 = v139;
      }

      v136 = v137;
      if (v141 < v147)
      {
        v197 = v141;
        v134 = v141;
        v135 = v141;
      }

      else
      {
        v134 = v147;
        v135 = v147;
      }

      v152 = v134;
      v153 = v135;
    }

    v132 = v150;
    sub_1000CE968(__b);
    v133 = v132;
  }

  v130 = v133;
  v129 = &v198;
  v131 = v198;

  sub_1000CE4C0(v129);
  return v131;
}

uint64_t sub_1000C6D14(uint64_t a1)
{
  v3[2] = 0;
  v3[3] = a1;
  v3[1] = a1;
  sub_1000CDBD4(&qword_1001850F0, &qword_10013EDF8);
  sub_1000CE8E0();
  v3[0] = Sequence.compactMap<A>(_:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(",", 1uLL, 1);
  sub_1000CDBD4(&qword_1001850D8, &qword_10013EDF0);
  sub_1000CEA48();
  v2 = BidirectionalCollection<>.joined(separator:)();

  sub_1000CE4C0(v3);
  return v2;
}

uint64_t sub_1000C6E48()
{
  v6[1] = 0;
  v6[0] = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = _allocateUninitializedArray<A>(_:)();
  v5 = [v3 database];
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nextBatchOfMessages()", 0x15uLL, 1);

  EDPersistenceDatabase.performRead(function:_:)();

  _objc_release(v5);
  swift_errorRetain();
  if (v6[0])
  {
    swift_willThrow();

    sub_1000CEADC(v6);
    return v2;
  }

  else
  {
    swift_beginAccess();
    v1 = *(v4 + 16);

    swift_endAccess();

    sub_1000CEADC(v6);
    return v1;
  }
}

uint64_t sub_1000C703C(uint64_t a1)
{
  v170 = a1;
  v140 = "Fatal error";
  v141 = "Unexpectedly found nil while unwrapping an Optional value";
  v142 = "maild/FileProtectionClassMigrator.swift";
  v143 = sub_1000C9D40;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v220 = 0;
  v219 = 0;
  v217 = 0;
  v216 = 0;
  v214 = 0;
  v213 = 0;
  v212[0] = 0;
  v212[1] = 0;
  v211[0] = 0;
  v210[0] = 0;
  v210[1] = 0;
  v207 = 0;
  v205 = 0;
  v203 = 0;
  v201 = 0;
  v202 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v193 = 0;
  v144 = type metadata accessor for URLResourceValues();
  v145 = *(v144 - 8);
  v146 = v144 - 8;
  v147 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v148 = &v30 - v147;
  v149 = (*(*(sub_1000CDBD4(&qword_100185138, &qword_10013EE18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v193);
  v150 = &v30 - v149;
  v151 = type metadata accessor for NSFastEnumerationIterator();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v193);
  v155 = &v30 - v154;
  v228 = &v30 - v154;
  v156 = type metadata accessor for URL();
  v157 = *(v156 - 8);
  v158 = v156 - 8;
  v166 = *(v157 + 64);
  v159 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v193);
  v160 = &v30 - v159;
  v161 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v162 = &v30 - v161;
  v163 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v164 = &v30 - v163;
  v227 = &v30 - v163;
  v165 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v167 = &v30 - v165;
  v168 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v169 = &v30 - v168;
  v226 = &v30 - v168;
  v225 = v6;
  v224 = v1;
  v179 = sub_1000CEB08();
  v7 = [objc_opt_self() allMailboxesScope];
  v171 = sub_1000C9CB4(v170, v7);
  v223 = v171;
  v184 = &selRef_mailboxScope;
  v176 = [v185 messagePersistence];
  v173 = _allocateUninitializedArray<A>(_:)();
  v172 = v8;
  _objc_retain(v171);
  v9 = v173;
  *v172 = v171;
  sub_1000C9CFC();
  v174 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v188 = 1;
  v177 = [v176 databaseIDsDictionaryForMessageObjectIDs:isa includingDisabledAccounts:1];
  _objc_release(isa);
  _objc_release(v176);
  v186 = sub_1000CE320();
  v180 = sub_1000CEB6C();
  v178 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v222 = v178;
  _objc_release(v177);
  v10 = Dictionary.keys.getter();
  v182 = &v221;
  v221 = v10;
  v181 = sub_1000CDBD4(&qword_100185150, &unk_10013EE20);
  sub_1000CEBEC();
  v187 = Array.init<A>(_:)();
  v220 = v187;
  v183 = _allocateUninitializedArray<A>(_:)();
  sub_1000CEC74();
  v219 = NSArray.init(arrayLiteral:)();
  v191 = [v185 v184[75]];

  v190 = Array._bridgeToObjectiveC()().super.isa;

  v218 = v219;
  v192 = [v191 persistedMessagesForDatabaseIDs:v190 requireProtectedData:v188 & 1 temporarilyUnavailableDatabaseIDs:&v218];
  v189 = v218;
  _objc_retain(v218);
  v11 = v219;
  v219 = v189;
  _objc_release(v11);
  _objc_release(v190);
  _objc_release(v191);
  v194 = sub_1000CDBD4(&qword_1001851C8, &qword_10013EE30);
  v195 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v217 = v195;
  _objc_release(v192);

  sub_1000CECD8();
  v196 = _arrayConditionalCast<A, B>(_:)();
  if (!v196)
  {
    goto LABEL_43;
  }

  v138 = v196;
  v133 = v196;
  v216 = v196;

  v136 = v219;
  _objc_retain(v219);
  v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v215 = v135;
  v134 = sub_1000CDBD4(&qword_1001851D8, &qword_10013EE38);
  sub_1000CEDB8();
  v137 = Collection.isEmpty.getter();

  _objc_release(v136);
  if ((v137 & 1) == 0)
  {
LABEL_43:

    sub_1000CED3C();
    v38 = swift_allocError();
    *v29 = 1;
    swift_willThrow();

    _objc_release(v219);

    _objc_release(v171);
    v39 = v38;
    return v37;
  }

  v127 = [objc_opt_self() defaultManager];
  v214 = v127;
  v128 = _allocateUninitializedArray<A>(_:)();
  v129 = sub_1000CEE40();
  v213 = Set.init(arrayLiteral:)();

  v211[1] = v133;
  v130 = sub_1000CDBD4(&qword_1001851F0, &qword_10013EE40);
  v131 = sub_1000CEEC0();
  Collection<>.makeIterator()();
  for (i = v139; ; i = v93)
  {
    v123 = i;
    v124 = sub_1000CDBD4(&qword_100185200, &qword_10013EE48);
    IndexingIterator.next()();
    v125 = v231;
    v126 = v124;
    if (!v231)
    {
      break;
    }

    v122 = v125;
    v110 = v125;
    v199 = v125;
    v111 = [v185 library];
    v114 = [v111 dataDirectoryURLForMessage:v110];
    _objc_release(v111);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = *(v157 + 32);
    v113 = v157 + 32;
    v112(v169, v167, v156);
    _objc_release(v114);
    v119 = 0;
    v115 = type metadata accessor for URLResourceKey();
    v116 = _allocateUninitializedArray<A>(_:)();
    sub_1000CF1DC(&NSURLIsRegularFileKey, v12);
    v13 = v116;
    sub_1000C9CFC();
    v120 = v13;
    type metadata accessor for DirectoryEnumerationOptions();
    v117 = 2;
    v14 = _allocateUninitializedArray<A>(_:)();
    v15 = v117;
    *v16 = 4;
    v16[1] = v15;
    sub_1000C9CFC();
    v118 = v14;
    sub_1000CF2B4();
    SetAlgebra<>.init(arrayLiteral:)();
    v121 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

    v198 = v121;
    _objc_retain(v121);
    if (v121)
    {
      v109 = v121;
      v107 = v121;
      v197 = v121;
      NSEnumerator.makeIterator()();
      for (j = v123; ; j = v105)
      {
        v106 = j;
        NSFastEnumerationIterator.next()();
        if (!v229)
        {
          (*(v152 + 8))(v155, v151);
          _objc_release(v107);
          _objc_release(v121);
          (*(v157 + 8))(v169, v156);
          _objc_release(v110);
          v93 = v106;
          goto LABEL_25;
        }

        if (swift_dynamicCast())
        {
          (*(v157 + 56))(v150, 0, 1, v156);
        }

        else
        {
          (*(v157 + 56))(v150, 1, 1, v156);
        }

        if ((*(v157 + 48))(v150, 1, v156) == 1)
        {
          sub_1000CF334(v150);
          v105 = v106;
        }

        else
        {
          v112(v164, v150, v156);
          v96 = _allocateUninitializedArray<A>(_:)();
          sub_1000CF1DC(&NSURLIsRegularFileKey, v17);
          v18 = v96;
          sub_1000C9CFC();
          v97 = v18;
          sub_1000CF3DC();
          v19 = Set.init(arrayLiteral:)();
          v20 = v106;
          v98 = v19;
          URL.resourceValues(forKeys:)();
          v99 = v20;
          v100 = v107;
          v101 = v110;
          v102 = v121;
          v103 = v98;
          v104 = v20;
          if (v20)
          {
            v36 = v104;
            v32 = v102;
            v35 = v101;
            v31 = v100;

            v34 = *(v157 + 8);
            v33 = v157 + 8;
            v34(v164, v156);
            (*(v152 + 8))(v155, v151);
            _objc_release(v31);
            _objc_release(v32);
            v34(v169, v156);
            _objc_release(v35);
            sub_1000CE4C0(v212);
            sub_1000CE4C0(&v213);
            _objc_release(v127);

            _objc_release(v219);

            _objc_release(v171);
            v39 = v36;
            return v37;
          }

          v95 = URLResourceValues.isRegularFile.getter();
          (*(v145 + 8))(v148, v144);
          if (v95 == 2)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v94 = v95;
          }

          if (v94)
          {
            (*(v157 + 16))(v162, v164, v156);
            sub_1000CDBD4(&qword_100185210, &qword_10013EE58);
            Set.insert(_:)();
            (*(v157 + 8))(v167, v156);
          }

          (*(v157 + 8))(v164, v156);
          v105 = v99;
        }
      }
    }

    _objc_release(0);
    (*(v157 + 8))(v169, v156);
    _objc_release(v110);
    v93 = v123;
LABEL_25:
    ;
  }

  v91 = v126;
  sub_1000CE4C0(v212);
  _allocateUninitializedArray<A>(_:)();
  v211[0] = Set.init(arrayLiteral:)();

  v209[1] = v133;
  Collection<>.makeIterator()();
  for (k = v123; ; k = v89)
  {
    v89 = k;
    IndexingIterator.next()();
    v90 = v230;
    if (!v230)
    {
      break;
    }

    v88 = v90;
    v84 = v90;
    v203 = v90;
    v86 = [v185 library];
    v85 = [v84 account];
    v87 = [v86 messageBasePathForAccount:?];
    _objc_release(v85);
    _objc_release(v86);
    if (v87)
    {
      v83 = v87;
      v78 = v87;
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v21;
      _objc_release(v78);
      v81 = v79;
      v82 = v80;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v76 = v82;
    v77 = v81;
    if (v82)
    {
      v74 = v77;
      v75 = v76;
      v72 = v76;
      v73 = v77;
      v201 = v77;
      v202 = v76;
      v200 = v167;
      URL.init(fileURLWithPath:)();
      (*(v157 + 16))(v160, v167, v156);
      sub_1000CDBD4(&qword_100185210, &qword_10013EE58);
      Set.insert(_:)();
      v71 = *(v157 + 8);
      v70 = v157 + 8;
      v71(v162, v156);
      v71(v167, v156);
    }

    _objc_release(v84);
  }

  sub_1000CE4C0(v210);
  v68 = [v185 attachmentPersistenceManager];
  v62 = sub_1000CDBD4(&qword_100185208, &qword_10013EE50);
  v63 = _allocateUninitializedArray<A>(_:)();
  v61 = v22;
  v23 = sub_1000C56D0(v170);
  *v61 = v23;
  v57 = v211[0];

  v59 = v209;
  v209[0] = v57;
  v58 = sub_1000CDBD4(&qword_100185210, &qword_10013EE58);
  v60 = sub_1000CEF48();
  v24 = Array.init<A>(_:)();
  v25 = v63;
  v61[1] = v24;
  sub_1000C9CFC();
  v64 = v25;
  v65 = sub_1000CDBD4(&qword_100185220, &qword_10013EE60);
  v66 = Dictionary.init(dictionaryLiteral:)();
  v67 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = [v68 attachmentURLsForGlobalMessageIDs:v67];
  _objc_release(v67);
  _objc_release(v68);
  if (v69)
  {
    v56 = v69;
    v53 = v69;
    sub_1000CF0E0();
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v53);
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v52 = v55;
  if (!v55)
  {
    v50 = v89;
LABEL_42:
    v40 = v50;
    v43 = &v213;
    v41 = v213;

    v208 = v41;
    v42 = Array.init<A>(_:)();
    sub_1000CE4C0(v211);
    sub_1000CE4C0(v43);
    _objc_release(v127);

    _objc_release(v219);

    _objc_release(v171);
    return v42;
  }

  v51 = v52;
  v46 = v52;
  v207 = v52;
  v206 = v52;
  v47 = sub_1000CDBD4(&qword_100185228, &qword_10013EE68);
  sub_1000CEFD0();
  v26 = v89;
  v27 = Sequence.compactMap<A>(_:)();
  v48 = v26;
  v49 = v27;
  if (!v26)
  {
    v45 = v49;
    v205 = v49;

    v44 = &v204;
    v204 = v45;
    sub_1000CF058();
    Set.formUnion<A>(_:)();

    v50 = v48;
    goto LABEL_42;
  }

  __break(1u);
  return v37;
}

uint64_t *sub_1000C8710(uint64_t a1)
{
  v41 = a1;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v42 = v50;
  v50[0] = 0;
  v50[1] = 0;
  v48 = 0;
  v46 = 0;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v36 = &v9 - v35;
  v37 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v35);
  v38 = &v9 - v37;
  v53 = &v9 - v37;
  v39 = (*(*(sub_1000CDBD4(&qword_100185138, &qword_10013EE18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v41);
  v40 = &v9 - v39;
  v52 = v3;
  v51 = v1;
  v56 = 0;

  v49 = v41;
  v43 = sub_1000CDBD4(&qword_100185220, &qword_10013EE60);
  sub_1000CF45C();
  Collection<>.makeIterator()();
  for (i = v44; ; i = v18)
  {
    v31 = i;
    sub_1000CDBD4(&qword_100185260, qword_10013EE70);
    IndexingIterator.next()();
    if ((*(v33 + 48))(v40, 1, v32) == 1)
    {
      break;
    }

    v4 = v36;
    (*(v33 + 32))(v38, v40, v32);
    v20 = 0;
    v55 = 0;
    (*(v33 + 16))(v4, v38, v32);
    URL._bridgeToObjectiveC()(v5);
    v27 = v6;
    v23 = sub_1000C9F44();
    v47[1] = v23;
    v22 = type metadata accessor for URLFileProtection();
    v21 = sub_1000CF57C();
    sub_1000CF5FC();
    v26 = _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
    _objc_release(v23);
    v25 = NSURLFileProtectionKey;
    _objc_retain(NSURLFileProtectionKey);
    v47[0] = v55;
    v30 = [v27 setResourceValue:v26 forKey:v25 error:v47];
    v24 = v47[0];
    _objc_retain(v47[0]);
    v7 = v55;
    v55 = v24;
    _objc_release(v7);
    _objc_release(v25);
    swift_unknownObjectRelease();
    _objc_release(v27);
    v28 = *(v33 + 8);
    v29 = v33 + 8;
    v28(v36, v32);
    if (v30)
    {
      v19 = v31;
    }

    else
    {
      v11 = v55;
      v13 = _convertNSErrorToError(_:)();
      _objc_release(v11);
      swift_willThrow();
      v12 = 0;
      swift_errorRetain();
      v46 = v13;
      v14 = v56;
      swift_errorRetain();
      v54 = v14;
      v10 = v14 == 0;
      v9 = v10;
      sub_1000CEADC(&v54);
      if (v9)
      {
        swift_errorRetain();
        v56 = v13;
      }

      v19 = v12;
    }

    v18 = v19;
    v28(v38, v32);
  }

  sub_1000CE4C0(v50);
  v17 = v56;
  swift_errorRetain();
  if (v17)
  {
    v16 = v17;
    v15 = v17;
    v48 = v17;
    swift_willThrow();
  }

  return sub_1000CEADC(&v56);
}

uint64_t sub_1000C8D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v8[1] = v2;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v4);

  sub_1000D0470(v8);
  result = String.init(stringInterpolation:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000C8EA0(void *a1, uint64_t a2, uint64_t *a3)
{
  v92 = a1;
  v91 = a2;
  v62 = a3;
  v90 = sub_1000D0404;
  v56 = sub_1000CEA1C;
  v57 = sub_1000CEA24;
  v58 = sub_1000CEA30;
  v59 = sub_1000CDBB4;
  v60 = sub_1000CDBB4;
  v61 = sub_1000CEA3C;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v100 = 0;
  v63 = 0;
  v64 = type metadata accessor for Logger();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v68 = v31 - v67;
  v113 = v3;
  v112 = v4 + 16;
  v111 = v5;
  v70 = sub_1000D03A0();
  v82 = &EFSQLSchemaColumnNameRowID;
  v69 = EFSQLSchemaColumnNameRowID;
  _objc_retain(EFSQLSchemaColumnNameRowID);
  v6 = [objc_opt_self() messageGlobalDataTableName];
  v93 = sub_1000C549C(v69, v6);
  v110 = v93;
  v71 = *v82;
  _objc_retain(v71);
  [v93 orderByColumn:v71 ascending:0];
  _objc_release(v71);
  [v93 setLimit:300];
  v73 = &EMUserDefaultSimulateDelayedFreeSpaceStatusTime_ptr;
  v72 = [objc_opt_self() propertiesValueColumnName];
  v7 = v73[56];
  v8 = [objc_opt_self() propertiesTableName];
  v86 = sub_1000C549C(v72, v8);
  v109 = v86;
  v81 = &EMUserDefaultSimulateDelayedFreeSpaceStatusTime_ptr;
  v74 = objc_opt_self();
  v9 = v73[56];
  v75 = [objc_opt_self() propertiesKeyColumnName];
  v83 = &DaemonSnapshotInvalidator__metaData;
  v79 = [v74 column:?];
  _objc_release(v75);
  v10 = sub_1000BD35C();
  v76 = *v10;
  v78 = *(v10 + 1);

  v77 = String._bridgeToObjectiveC()();
  v80 = [v79 equalTo:?];
  swift_unknownObjectRelease();

  _objc_release(v79);
  v88 = &DaemonSnapshotInvalidator__metaData;
  [v86 setWhere:v80];
  swift_unknownObjectRelease();
  v11 = v81[80];
  v84 = objc_opt_self();
  v85 = *v82;
  _objc_retain(v85);
  v87 = [v84 v83[47].ivar_lyt];
  _objc_release(v85);
  _objc_retain(v86);
  v89 = [v87 lessThanEqualTo:v86];
  swift_unknownObjectRelease();
  _objc_release(v87);
  [v93 v88[50].name];
  swift_unknownObjectRelease();
  v116 = 0;

  v107 = v90;
  v108 = v91;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = 0;
  v105 = sub_1000C55A0;
  v106 = &unk_10015B438;
  v95 = _Block_copy(&aBlock);

  v101 = v116;
  v96 = [v92 executeSelectStatement:v93 withBlock:v95 error:&v101];
  v94 = v101;
  _objc_retain(v101);
  v12 = v116;
  v116 = v94;
  _objc_release(v12);
  _Block_release(v95);
  if ((v96 & 1) == 0)
  {
    v39 = v116;
    v41 = _convertNSErrorToError(_:)();
    _objc_release(v39);
    swift_willThrow();
    v14 = v68;
    v40 = 0;
    swift_errorRetain();
    v100 = v41;
    v15 = sub_1000BD6E4();
    (*(v65 + 16))(v14, v15, v64);
    swift_errorRetain();
    v45 = 7;
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    sub_1000C5650();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v42 = 17;
    v48 = swift_allocObject();
    *(v48 + 16) = 64;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v44 = 32;
    v16 = swift_allocObject();
    v17 = v43;
    v46 = v16;
    *(v16 + 16) = v56;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v46;
    v47 = v18;
    *(v18 + 16) = v57;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v47;
    v51 = v20;
    *(v20 + 16) = v58;
    *(v20 + 24) = v21;
    v53 = sub_1000CDBD4(&qword_1001850A0, &qword_10013EDD8);
    v50 = _allocateUninitializedArray<A>(_:)();
    v52 = v22;

    v23 = v48;
    v24 = v52;
    *v52 = v59;
    v24[1] = v23;

    v25 = v49;
    v26 = v52;
    v52[2] = v60;
    v26[3] = v25;

    v27 = v51;
    v28 = v52;
    v52[4] = v61;
    v28[5] = v27;
    sub_1000C9CFC();

    if (os_log_type_enabled(v54, v55))
    {
      v29 = v40;
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31[1] = sub_1000CDBD4(&qword_1001850A8, &qword_10013EDE0);
      v33 = sub_1000CACDC(1);
      v34 = sub_1000CACDC(0);
      v35 = &v99;
      v99 = v32;
      v36 = &v115;
      v115 = v33;
      v37 = &v114;
      v114 = v34;
      sub_1000CAD30(2, &v99);
      sub_1000CAD30(1, v35);
      v97 = v59;
      v98 = v48;
      sub_1000CAD44(&v97, v35, v36, v37);
      v38 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v97 = v60;
        v98 = v49;
        sub_1000CAD44(&v97, &v99, &v115, &v114);
        v31[0] = 0;
        v97 = v61;
        v98 = v51;
        sub_1000CAD44(&v97, &v99, &v115, &v114);
        _os_log_impl(&_mh_execute_header, v54, v55, "Unable to select global message IDs to migrate: %@", v32, 0xCu);
        sub_1000CAD90(v33);
        sub_1000CAD90(v34);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v54);
    (*(v65 + 8))(v68, v64);
    swift_errorRetain();
    v30 = *v62;
    *v62 = v41;
  }

  _objc_release(v86);
  _objc_release(v93);
  return 1;
}

uint64_t sub_1000C9BD0(void *a1)
{
  v2 = [a1 objectAtIndexedSubscript:0];
  [v2 databaseIDValue];
  _objc_release(v2);
  swift_beginAccess();
  sub_1000CDBD4(&qword_1001850F0, &qword_10013EDF8);
  Array.append(_:)();
  return swift_endAccess();
}

void *sub_1000C9D40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a2;
  v11 = a1;
  v15 = 0;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v6 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = v4 - v9;
  v12 = (*(*(sub_1000CDBD4(&qword_100185138, &qword_10013EE18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v11);
  v13 = v4 - v12;
  v15 = *v2;
  v14 = [v15 url];
  if (v14)
  {
    v4[1] = v14;
    v4[0] = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v13, v10, v6);
    (*(v7 + 56))(v13, 0, 1, v6);
    _objc_release(v4[0]);
  }

  else
  {
    (*(v7 + 56))(v13, 1, 1, v6);
  }

  return sub_1000D0278(v13, v5);
}

NSURLFileProtectionType sub_1000C9F44()
{
  v12 = 0;
  v9 = type metadata accessor for MailFeatureFlag();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v10 = &v1 - v5;
  v12 = v6;
  (*(v7 + 104))(&v1 - v5, enum case for MailFeatureFlag.classCData(_:));
  v11 = MailFeatureFlag.isEnabled.getter();
  (*(v7 + 8))(v10, v9);
  if (v11)
  {
    v3 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
    _objc_retain(NSURLFileProtectionCompleteUntilFirstUserAuthentication);
    return v3;
  }

  else
  {
    v2 = NSURLFileProtectionComplete;
    _objc_retain(NSURLFileProtectionComplete);
    return v2;
  }
}

id sub_1000CA0D0(void *a1, void *a2)
{
  v6 = [v2 initWithResultColumn:? table:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

id sub_1000CA160(uint64_t a1, void *a2)
{
  v5 = [v2 initWithGlobalMessageID:a1 mailboxScope:?];
  _objc_release(a2);
  return v5;
}

uint64_t sub_1000CA1B4()
{
  sub_1000D0178();
  sub_1000CF5FC();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_1000CA1F0()
{
  sub_1000D0178();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_1000CA23C()
{
  sub_1000D0178();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_1000CA28C()
{
  sub_1000D0178();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000CA2D8()
{
  sub_1000D0080();
  sub_1000D0100();
  return OptionSet<>.init()();
}

uint64_t sub_1000CA4DC()
{
  sub_1000D0080();
  sub_1000D0100();
  return OptionSet<>.formUnion(_:)();
}

uint64_t sub_1000CA520()
{
  sub_1000D0080();
  sub_1000D0100();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t sub_1000CA564()
{
  sub_1000D0080();
  sub_1000D0100();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t sub_1000CA754()
{
  sub_1000CF57C();
  sub_1000CF5FC();
  return _SwiftNewtypeWrapper<>._bridgeToObjectiveC()();
}

uint64_t sub_1000CA790()
{
  sub_1000CF57C();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_1000CA7DC()
{
  sub_1000CF57C();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)() & 1;
}

uint64_t sub_1000CA82C()
{
  sub_1000CF57C();
  sub_1000CF5FC();
  return static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000CA904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  return result;
}

NSString sub_1000CA980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1000CA9B8();
  *a2 = result;
  return result;
}

NSString sub_1000CA9B8()
{

  v1 = String._bridgeToObjectiveC()();
  _objc_retain(v1);

  _objc_release(v1);
  return v1;
}

uint64_t sub_1000CAA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000CAA58(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000CAA58(void *a1)
{
  _objc_retain(a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(a1);
  return v3;
}

uint64_t sub_1000CAAB8()
{
  sub_1000D01F8();
  sub_1000CF57C();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000CAB04()
{
  sub_1000CF3DC();
  sub_1000D0178();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000CAB50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_7(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000CAB90@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_7(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000CACDC(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CAD30(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_1000CAD90(uint64_t a1)
{
  if (a1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    UnsafeMutablePointer.deallocate()();
  }
}

uint64_t sub_1000CAE30(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000CB15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_1000D049C;
        v16 = &v37;
        sub_1000CAE30(sub_1000D04B8, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000CB98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1000CBEA0(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  _objc_retain(v2);
  swift_unknownObjectRelease();
  return v2;
}

void *sub_1000CBF4C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1000CBFE8(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1000CBFE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1000CC18C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1000D0580(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000C0D98(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1000D0580(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000C0D98(v13);
  }

  return v11;
}

uint64_t sub_1000CC18C(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1000CC544(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1000CC6C0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1000CC544(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1000CC6C0(uint64_t a1, uint64_t a2)
{
  v7 = sub_1000CC77C(a1, a2);
  sub_1000CDBD4(&qword_100185328, &unk_10013F4D0);
  inited = swift_initStackObject();
  v3 = sub_1000CCF8C(inited, 1);
  *v4 = 0;
  sub_1000CCFD8();
  sub_1000CD00C(v3);

  v8 = sub_1000CD3B4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1000CC77C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1000CD8D4();
  }

  v10 = sub_1000CD3CC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return sub_1000CD8D4();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1000CD510(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1000CD510(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  sub_1000D0470(v17);
  return v10;
}

uint64_t sub_1000CCF8C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1000CD00C(uint64_t a1)
{
  v20 = sub_1000CD3B4(a1);
  v2 = sub_1000CD3B4(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_1000CD904(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1000CDA70(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  sub_1000CD510((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_1000CBF18();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1000CD3CC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1000CDBD4(&qword_100185328, &unk_10013F4D0);
    v5 = swift_allocObject();

    if (sub_1000D05E4())
    {
      v3 = sub_1000D05F0(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_1000CD510(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000CD660(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = String.UTF8View._foreignIndex(_:offsetBy:)();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_1000CD904(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1000CD3CC(v4, v6);
  if (v7)
  {
    sub_1000CDA78((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1000CD510((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1000CDA78(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1000CDBA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000CDBD4(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_1000CDC48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1000CDCDC()
{
  v2 = qword_1001850B8;
  if (!qword_1001850B8)
  {
    sub_1000CDD64(&qword_1001850B0, &qword_10013EDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000CDD64(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_1000CDDE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    sub_1000CE024(v10, sub_1000D04E4, v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1000CE024@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1000CE1EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000CE234(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_1000CE2A8();

  return sub_1000CDDE8(a1, a2, a3, v8, v9, &type metadata for Int64, v4);
}

unint64_t sub_1000CE2A8()
{
  v2 = qword_1001850C0;
  if (!qword_1001850C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CE320()
{
  v2 = qword_1001850C8;
  if (!qword_1001850C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1001850C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1000CE384(uint64_t *a1)
{
  if (a1[3])
  {
    sub_1000C0D98(a1);
  }

  return a1;
}

unint64_t sub_1000CE3C0()
{
  v2 = qword_1001850D0;
  if (!qword_1001850D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CE438()
{
  v2 = qword_1001850E0;
  if (!qword_1001850E0)
  {
    sub_1000CDD64(&qword_1001850D8, &qword_10013EDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1000CE4C0(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void sub_1000CE4F4(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  _objc_retain(v8);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    _objc_retain(v8);
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_1000CE678@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000CE6C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_1000CE734();

  return sub_1000CDDE8(a1, a2, a3, v8, v9, &type metadata for Int, v4);
}

unint64_t sub_1000CE734()
{
  v2 = qword_1001850E8;
  if (!qword_1001850E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CE7AC()
{
  v2 = qword_1001850F8;
  if (!qword_1001850F8)
  {
    sub_1000CDD64(&qword_1001850F0, &qword_10013EDF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001850F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CE834()
{
  v2 = qword_100185100;
  if (!qword_100185100)
  {
    sub_1000CDD64(&qword_1001850F0, &qword_10013EDF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185100);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1000CE8BC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1000CE8E0()
{
  v2 = qword_100185108;
  if (!qword_100185108)
  {
    sub_1000CDD64(&qword_1001850F0, &qword_10013EDF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185108);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1000CE968(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_1000CE994()
{
  v2 = qword_100185120;
  if (!qword_100185120)
  {
    sub_1000CDD64(&qword_100185118, &qword_10013EE08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000CEA1C()
{
  result = *(v0 + 16);
  sub_1000C5628();
  return result;
}

unint64_t sub_1000CEA48()
{
  v2 = qword_100185130;
  if (!qword_100185130)
  {
    sub_1000CDD64(&qword_1001850D8, &qword_10013EDF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185130);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1000CEADC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1000CEB08()
{
  v2 = qword_100185140;
  if (!qword_100185140)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100185140);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000CEB6C()
{
  v2 = qword_100185148;
  if (!qword_100185148)
  {
    sub_1000CE320();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEBEC()
{
  v2 = qword_100185158;
  if (!qword_100185158)
  {
    sub_1000CDD64(&qword_100185150, &unk_10013EE20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEC74()
{
  v2 = qword_100185160;
  if (!qword_100185160)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100185160);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000CECD8()
{
  v2 = qword_1001851D0;
  if (!qword_1001851D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1001851D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000CED3C()
{
  v2 = qword_100185BA8;
  if (!qword_100185BA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185BA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEDB8()
{
  v2 = qword_1001851E0;
  if (!qword_1001851E0)
  {
    sub_1000CDD64(&qword_1001851D8, &qword_10013EE38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001851E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEE40()
{
  v2 = qword_1001851E8;
  if (!qword_1001851E8)
  {
    type metadata accessor for URL();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001851E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEEC0()
{
  v2 = qword_1001851F8;
  if (!qword_1001851F8)
  {
    sub_1000CDD64(&qword_1001851F0, &qword_10013EE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1001851F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEF48()
{
  v2 = qword_100185218;
  if (!qword_100185218)
  {
    sub_1000CDD64(&qword_100185210, &qword_10013EE58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CEFD0()
{
  v2 = qword_100185230;
  if (!qword_100185230)
  {
    sub_1000CDD64(&qword_100185228, &qword_10013EE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CF058()
{
  v2 = qword_100185238;
  if (!qword_100185238)
  {
    sub_1000CDD64(&qword_100185220, &qword_10013EE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100185238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000CF0E0()
{
  v2 = qword_100185240;
  if (!qword_100185240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100185240);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for URLResourceKey()
{
  v4 = qword_1001852B0;
  if (!qword_1001852B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1001852B0);
      return v1;
    }
  }

  return v4;
}

void *sub_1000CF1DC(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for DirectoryEnumerationOptions()
{
  v4 = qword_1001852A8;
  if (!qword_1001852A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1001852A8);
      return v1;
    }
  }

  return v4;
}