void sub_10004C868(uint64_t a1)
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"oldFocus"];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"newFocus"];
  [*(a1 + 48) resetAccountsSynchronouslyOnMainThread];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MFFocusDidChangeNotification" object:*(a1 + 48) userInfo:v3];
}

void sub_10004C9E0(void *a1)
{
  v1 = a1;
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
}

void sub_10004D590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10004E0F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185790;
  qword_100185790 = v1;
}

void sub_10004E370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFApplicationShortcutProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10004EAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) specialMailboxFavoriteItem];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) specialMailboxFavoriteItem];
    v5 = [*(a1 + 32) specialMailboxFavoriteItem];
    v6 = [v5 badgeCountString];
    v7 = [EFPair pairWithFirst:v4 second:v6];
    [v3 addObject:v7];
  }

  v8 = [*(a1 + 32) mailboxFavoriteItem];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) mailboxFavoriteItem];
    v11 = [*(a1 + 32) mailboxFavoriteItem];
    v12 = [v11 badgeCountString];
    v13 = [EFPair pairWithFirst:v10 second:v12];
    [v9 addObject:v13];
  }

  v14 = [*(a1 + 32) fixedShortcutItems];
  v15 = [v14 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = *(a1 + 40);
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = *(a1 + 32);
        v22 = [v20 first];
        v23 = [v20 second];
        v24 = [v21 _applicationShortcutForFavoriteItem:v22 badgeCountString:v23];
        [v15 addObject:v24];
      }

      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [*(a1 + 32) setShortcutItems:v15];
}

void sub_10004EEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004EF18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateApplicationShortcuts];
}

void sub_10004F2C4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10004F960(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10004FADC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

NSString *__cdecl sub_10004FB14(id a1, SBSApplicationShortcutItem *a2)
{
  v2 = a2;
  v3 = [(SBSApplicationShortcutItem *)v2 localizedTitle];
  v4 = [(SBSApplicationShortcutItem *)v2 localizedSubtitle];
  v5 = v4;
  v6 = &stru_10015BEC8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [NSString stringWithFormat:@"Name: %@ Subtitle: %@", v3, v6];

  return v7;
}

void sub_1000500FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setBadgeCount:?];
  (*(*(a1 + 40) + 16))();
}

void sub_1000501FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

MailAccount *__cdecl sub_100050578(id a1, MFMailMessage *a2)
{
  v2 = [(MFMailMessage *)a2 account];

  return v2;
}

void sub_1000505A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 shouldArchiveByDefault])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = [v5 mailboxUidOfType:v7 createIfNeeded:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100050734;
  v15[3] = &unk_100157E70;
  v15[4] = v7;
  v9 = [v6 ef_filter:v15];
  v10 = v9;
  if (v8 && [v9 count])
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [v8 URL];
    v14 = [v11 moveMessages:v10 destinationMailboxURL:v13 userInitiated:0];
    [v12 addObjectsFromArray:v14];
  }
}

void sub_1000506E8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

BOOL sub_100050734(uint64_t a1, void *a2)
{
  v3 = [a2 mailbox];
  v4 = [v3 type] != *(a1 + 32);

  return v4;
}

void sub_100051420(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001857A8;
  qword_1001857A8 = v1;
}

uint64_t sub_1000516F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFBlockedSenderMessageRule log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) firstSender];
    v6 = [v5 emailAddressValue];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 ef_publicDescription];
    }

    else
    {
      v9 = [v5 stringValue];
      v8 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v9];
    }

    v11 = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot execute blocked sender rule on message. Reason: %{public}@, Sender: %{public}@", &v11, 0x16u);
  }

  return 0;
}

MailAccount *__cdecl sub_100051ABC(id a1, MFMailMessage *a2)
{
  v2 = [(MFMailMessage *)a2 account];

  return v2;
}

void sub_100051AEC(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = [a2 mailboxUidOfType:3 createIfNeeded:0];
  v6 = [v12 ef_filter:&stru_100157F20];
  v7 = v6;
  if (v5 && [v6 count])
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v5 URL];
    v11 = [v9 moveMessages:v7 destinationMailboxURL:v10 userInitiated:0];
    [v8 addObjectsFromArray:v11];
  }
}

BOOL sub_100051C14(id a1, MFMailMessage *a2)
{
  v2 = [(MFMailMessage *)a2 mailbox];
  v3 = [v2 type] != 3;

  return v3;
}

void sub_100051E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100051EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAccountChange];
}

void sub_100051F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFDaemonAccountsProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10005246C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _handleAccountChange];
}

void sub_100052584(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001857B8;
  qword_1001857B8 = v1;
}

void sub_1000527E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100052818(id a1)
{
  v1 = objc_alloc_init(MFDAutosave);
  v2 = qword_1001857C8;
  qword_1001857C8 = v1;
}

void sub_100052988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:MSAutosaveErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = +[MFDAutosave log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 ef_publicDescription];
      sub_1000D3C58(v11, &v12, v10);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

void sub_100052B98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = +[MFMailMessageLibrary defaultInstance];
    v9 = [NSArray arrayWithObject:v5];
    [v8 compactMessages:v9];

    v10 = +[MFDAutosave log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Successfully removed autosave. autosaveID=%@", &v16, 0xCu);
    }
  }

  else
  {
    v12 = [v6 domain];
    if ([v12 isEqualToString:MSAutosaveErrorDomain])
    {
      v13 = [v7 code];

      if (v13 == 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = +[MFDAutosave log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [v7 ef_publicDescription];
      sub_1000D3CA4(v14, v15, &v16, v10);
    }
  }

LABEL_11:
}

void sub_100052EA0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v17 = 1;
LABEL_12:
    v14 = 0;
    v18 = [NSError errorWithDomain:MSAutosaveErrorDomain code:v17 userInfo:0];
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 2;
    goto LABEL_12;
  }

  v2 = [NSURL URLWithString:*(a1 + 32)];
  v3 = [v2 mf_messageCriterion];
  if (!v3)
  {
    goto LABEL_13;
  }

  if (*(a1 + 48) == 1)
  {
    v4 = +[LocalAccount localAccount];
    v5 = [v4 transientDraftsFolder];
    v6 = [v5 criterion];

    v21[0] = v3;
    v21[1] = v6;
    v7 = [NSArray arrayWithObjects:v21 count:2];
    v8 = [MFMessageCriterion andCompoundCriterionWithCriteria:v7];

    v3 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v9 = +[LocalAccount localAccount];
  v10 = [v9 transientDraftsFolder];
  v11 = [v9 storeForMailboxUid:v10];

  v12 = [v11 library];
  v13 = [v12 messagesMatchingCriterion:v3 options:6297663];
  v14 = [v13 firstObject];

  if (v14)
  {
    v15 = +[MFDAutosave log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Retrieved autosaved message [%@]", &v19, 0xCu);
    }

    v16 = 0;
  }

  else
  {
LABEL_13:
    v16 = [NSError errorWithDomain:MSAutosaveErrorDomain code:2 userInfo:0];
    v14 = 0;
  }

  v18 = v16;
LABEL_15:
  (*(*(a1 + 40) + 16))();
}

void sub_1000532FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 messageData];
  if (!(v5 | v6))
  {
    v7 = [NSError errorWithDomain:MSAutosaveErrorDomain code:5 userInfo:0];
    v8 = +[MFDAutosave log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3D0C(a1, v8, v9, v10, v11, v12, v13, v14);
    }

    v5 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005385C(uint64_t a1)
{
  v2 = +[MFDAutosave log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v63 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting autosave... %@", buf, 0xCu);
  }

  v4 = +[LocalAccount localAccount];
  v5 = [v4 transientDraftsFolder];
  v6 = [v4 storeForMailboxUid:v5];

  [v6 openSynchronously];
  v7 = +[MFDAutosave log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v63 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Identifying previous autosaves... %@", buf, 0xCu);
  }

  v9 = [*(a1 + 40) mf_messageCriterion];
  v10 = *(a1 + 48);
  if (v10 && ([v10 isEqualToString:*(a1 + 56)] & 1) == 0)
  {
    v11 = [NSURL URLWithString:*(a1 + 48)];
    v12 = [v11 mf_messageCriterion];
    if (v12)
    {
      v13 = +[MFDAutosave log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 48);
        v15 = *(a1 + 32);
        *buf = 138412546;
        v63 = v14;
        v64 = 2112;
        v65 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Including any autosaves of oldID=%@. %@", buf, 0x16u);
      }

      v61[0] = v9;
      v61[1] = v12;
      v16 = [NSArray arrayWithObjects:v61 count:2];
      v17 = [MFMessageCriterion orCompoundCriterionWithCriteria:v16];

      v9 = v17;
    }

    else
    {
      v16 = +[MFDAutosave log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3E14(a1, v16, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  v60[0] = v9;
  v24 = [v6 mailbox];
  v25 = [v24 criterion];
  v60[1] = v25;
  v26 = [NSArray arrayWithObjects:v60 count:2];
  v27 = [MFMessageCriterion andCompoundCriterionWithCriteria:v26];

  v28 = +[LocalAccount localAccount];
  v29 = [v28 transientDraftsFolder];
  v30 = [v28 storeForMailboxUid:v29];

  v31 = [v30 library];
  v32 = [v31 messagesMatchingCriterion:v27 options:6297663];

  v33 = +[MFDAutosave log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [v32 count];
    v35 = *(a1 + 32);
    *buf = 134218242;
    v63 = v34;
    v64 = 2112;
    v65 = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Found %lu previous autosaves. %@", buf, 0x16u);
  }

  v36 = +[MFDAutosave log];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 32);
    *buf = 138412290;
    v63 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Adding new autosave to library... %@", buf, 0xCu);
  }

  v38 = +[MFMailMessageLibrary defaultInstance];
  v39 = [v38 messageChangeManager];

  v59 = *(a1 + 64);
  v40 = [NSArray arrayWithObjects:&v59 count:1];
  v41 = [v6 mailbox];
  v42 = [v41 URL];
  v43 = [v39 addNewMessages:v40 mailboxURL:v42 userInitiated:0];

  if ([v43 count])
  {
    v44 = *(a1 + 56);
    v45 = +[MFDAutosave log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 32);
      *buf = 138412290;
      v63 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Autosave added to library successfully. %@", buf, 0xCu);
    }

    if ([v32 count])
    {
      v47 = +[MFDAutosave log];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(a1 + 32);
        *buf = 138412290;
        v63 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Cleaning up old saves. %@", buf, 0xCu);
      }

      [v39 deleteMessages:v32];
    }

    v49 = +[MFDAutosave log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 32);
      *buf = 138412290;
      v63 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Autosave complete. %@", buf, 0xCu);
    }

    v51 = 0;
  }

  else
  {
    v52 = +[MFDAutosave log];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3E84(a1, v52, v53, v54, v55, v56, v57, v58);
    }

    v44 = 0;
    v51 = [NSError errorWithDomain:MSAutosaveErrorDomain code:4 userInfo:0];
  }

  [v6 close];
  (*(*(a1 + 80) + 16))();
  [*(a1 + 72) invalidate];
}

void sub_10005414C(uint64_t a1)
{
  v2 = +[MFDAutosave log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrieving idle autosave items...", buf, 2u);
  }

  v3 = +[LocalAccount localAccount];
  v4 = [v3 transientDraftsFolder];
  v5 = [v4 criterion];

  v6 = +[LocalAccount localAccount];
  v7 = [v6 transientDraftsFolder];
  v8 = [v6 storeForMailboxUid:v7];

  v9 = [v8 library];
  v10 = [v9 messagesMatchingCriterion:v5 options:6297663];

  if ([v10 count])
  {
    v11 = [v10 ef_partition:&stru_1001580B0];
    v12 = [v11 second];
    if ([v12 count])
    {
      v13 = +[MFMailMessageLibrary defaultInstance];
      v14 = [v13 messageChangeManager];

      [v14 deleteMessages:v12];
    }

    v15 = [v11 first];

    v16 = [*(a1 + 32) activeAutosaveSessions];
    v17 = [v16 allObjects];

    v18 = +[MFDAutosave log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *buf = 134217984;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Number of active autosave sessions: %lu", buf, 0xCu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10005464C;
    v24[3] = &unk_100158100;
    v20 = v17;
    v25 = v20;
    v21 = [v15 ef_compactMap:v24];
    v22 = +[MFDAutosave log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v21 count];
      *buf = 134217984;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found %lu autosave items in the transient drafts mailbox without active autosave sessions.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v15 = v10;
  }
}

BOOL sub_1000545C8(id a1, MFLibraryMessage *a2)
{
  v2 = a2;
  v3 = [(MFLibraryMessage *)v2 messageBodyIfAvailable];
  if (v3)
  {
    v4 = [(MFLibraryMessage *)v2 mf_documentReference];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10005464C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mf_documentReference];
  v5 = [v4 absoluteString];

  v6 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000547C0;
  v12[3] = &unk_1001580D8;
  v7 = v5;
  v13 = v7;
  if ([v6 ef_any:v12])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 subject];
    v10 = [v9 subjectString];

    v8 = [MSIdleAutosaveItem withAutosaveIdentifier:v7 subject:v10];
  }

  return v8;
}

id sub_1000547C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 autosaveIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_1000549BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [[MFDAutosaveSession alloc] initWithAutosaveIdentifier:*(a1 + 32)];
  v3 = [WeakRetained activeAutosaveSessions];
  [v3 addObject:v2];

  (*(*(a1 + 40) + 16))();
}

void sub_100054B14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100054BD0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001857D8;
  qword_1001857D8 = v1;
}

void sub_100054E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFDAutosaveSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100055210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

int64_t sub_10005524C(id a1, _MFDelayedNotification *a2, _MFDelayedNotification *a3)
{
  v4 = a2;
  v5 = a3;
  [(_MFDelayedNotification *)v4 submissionDate];
  v7 = v6;
  [(_MFDelayedNotification *)v5 submissionDate];
  v9 = -1;
  v10 = v4 > v5;
  if (v7 < v8)
  {
    v10 = -1;
  }

  if (v4 >= v5)
  {
    v9 = v10;
  }

  if (v7 <= v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void *sub_10005551C(void *result)
{
  if (*(result[4] + 32) != *(result + 5))
  {
    v1 = result;
    v2 = MSUserNotificationsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[5];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setting postingDelay to %.4fs", &v4, 0xCu);
    }

    *(v1[4] + 32) = v1[5];
    return [v1[4] _scheduleNextFireEvent];
  }

  return result;
}

double sub_10005569C(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100055724(uint64_t a1)
{
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "purging all pending delayed messages", v4, 2u);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  return [*(a1 + 32) _scheduleNextFireEvent];
}

void sub_10005583C(uint64_t a1)
{
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed Presenter: Removing pending messages by identifier", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100055A18;
  v7[3] = &unk_1001581B8;
  v8 = *(a1 + 40);
  v4 = [v3 indexesOfObjectsPassingTest:v7];
  if ([v4 count])
  {
    v5 = MSUserNotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) componentsJoinedByString:{@"', '"}];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delayed Presenter: Removing pending messages {'%@'}", buf, 0xCu);
    }

    [*(*(a1 + 32) + 40) removeObjectsAtIndexes:v4];
    [*(a1 + 32) _scheduleNextFireEvent];
  }
}

id sub_100055A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    [v3 invalidate];
  }

  return v6;
}

void sub_100055B34(uint64_t a1)
{
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed Presenter: Removing all pending notifications for accounts: %{public}@", buf, 0xCu);
  }

  v15 = objc_alloc_init(NSMutableIndexSet);
  v14 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = MSUserNotificationsLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delayed Presenter: Removing all pending notifications for account: %{public}@", buf, 0xCu);
        }

        v9 = *(*(a1 + 40) + 40);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100055EB4;
        v16[3] = &unk_1001581E0;
        v16[4] = v7;
        v17 = v14;
        v10 = [v9 indexesOfObjectsPassingTest:v16];
        [v15 addIndexes:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  if ([v15 count])
  {
    v11 = MSUserNotificationsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v14 componentsJoinedByString:{@"', '"}];
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Delayed Presenter: Removing pending messages {'%@'}", buf, 0xCu);
    }

    [*(*(a1 + 40) + 40) removeObjectsAtIndexes:v15];
    [*(a1 + 40) _scheduleNextFireEvent];
  }
}

id sub_100055EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 notificationMessage];
  v6 = [v5 accountID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v3 identifier];
    [v8 addObject:v9];

    [v3 invalidate];
  }

  return v7;
}

void sub_10005609C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000562C0;
  v11[3] = &unk_100158208;
  v12 = *(a1 + 40);
  v3 = [v2 ef_firstObjectPassingTest:v11];
  v4 = v3;
  if (v3)
  {
    [(_MFDelayedNotification *)v3 setNotificationMessage:*(a1 + 48)];
    v5 = MSUserNotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updated queued message for identifier '%@'", buf, 0xCu);
    }
  }

  else
  {
    v7 = [[_MFDelayedNotification alloc] initWithNotificationMessage:*(a1 + 48) identifier:*(a1 + 40) submissionDate:*(a1 + 56) context:*(a1 + 64)];
    v8 = [*(*(a1 + 32) + 40) ef_insertObject:v7 usingComparator:&stru_100158190 allowDuplicates:1];
    v9 = MSUserNotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412546;
      v14 = v10;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "enqueued '%@' at index %lu", buf, 0x16u);
    }

    [*(a1 + 32) _scheduleNextFireEvent];
    v4 = v7;
  }
}

id sub_1000562C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isProcessing])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 identifier];
    v4 = [v5 isEqual:*(a1 + 32)];
  }

  return v4;
}

void sub_1000563DC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056570;
  v7[3] = &unk_100158208;
  v8 = *(a1 + 40);
  v3 = [v2 ef_filter:v7];
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = [*(a1 + 40) count];
    *buf = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "found %lu messages to process immediately (out of %lu requested)", buf, 0x16u);
  }

  if ([v3 count])
  {
    [*(a1 + 32) _delegateProcessMessages:v3];
  }
}

uint64_t sub_100056570(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isProcessing] & 1) != 0 || (v4 = *(a1 + 32), objc_msgSend(v3, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "containsObject:", v5), v5, !v4))
  {
    v6 = 0;
  }

  else
  {
    [v3 process];
    v6 = 1;
  }

  return v6;
}

void sub_100056894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000568D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processSufficientlyDelayedMessages];
}

uint64_t sub_100056AE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isProcessing])
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 32);
  [v6 submissionDate];
  v8 = 1;
  if (v7 < v9)
  {
    *a4 = 1;
LABEL_4:
    v8 = 0;
  }

  return v8;
}

void sub_100056D04(uint64_t a1)
{
  v18 = [*(a1 + 32) delegate];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 40);
  v1 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v1)
  {
    v20 = *v23;
    v16 = MSUserNotificationContentKeyMissingSummary;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v22 + 1) + 8 * i);
        if (([v3 isInvalidated] & 1) == 0)
        {
          v4 = [v3 notificationMessage];
          v5 = [v3 context];
          v6 = [v18 delayedNotificationsPresenter:*(a1 + 32) userNotificationRequestForNotificationMessage:v4 context:v5];
          if ([v3 isInvalidated])
          {
            goto LABEL_18;
          }

          v7 = v6;
          if ([v5 isEqual:@"modify"])
          {
            v8 = [v7 content];
            v9 = [v8 userInfo];
            v10 = [v9 objectForKeyedSubscript:v16];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v10 BOOLValue];

              if (v11)
              {
                v12 = MSUserNotificationsLog();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  v13 = [v3 identifier];
                  sub_1000D3EF4(v13, buf, &v27, v12);
                }

LABEL_17:
                [v3 invalidate];
LABEL_18:

                continue;
              }

LABEL_16:
              [v18 delayedNotificationsPresenter:*(a1 + 32) handleUserNotificationRequest:v7 notificationMessage:v4 context:v5];
              goto LABEL_17;
            }
          }

          goto LABEL_16;
        }
      }

      v1 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v1);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057078;
  block[3] = &unk_100156400;
  block[4] = v14;
  dispatch_async(v15, block);
}

void sub_100057598(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001857E8;
  qword_1001857E8 = v1;
}

void sub_1000576BC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1001857F8;
  qword_1001857F8 = v1;
}

void sub_100057D94(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DE74;
  block[3] = &unk_100156400;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_100057E28(uint64_t a1)
{
  [*(a1 + 32) _freeSpaceStatusDidChange:0];
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = v2[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100057ECC;
    block[3] = &unk_100156400;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_100057F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFDeliveryQueue;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100057F74(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100185810;
  qword_100185810 = v1;
}

void sub_100058134(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 == 2)
  {
    v6 = +[MFDeliveryQueue log];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v11 = 0;
    v7 = "ignoring request to process queue: state is 'suspended'";
    v8 = &v11;
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    *(v2 + 56) |= 1u;
    v6 = +[MFDeliveryQueue log];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v10 = 0;
    v7 = "ignoring request to process queue: state is 'processing'";
    v8 = &v10;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_15;
  }

  if (v3)
  {
    return;
  }

  [v2 _updateCounts];
  v4 = *(a1 + 32);
  if (!*(v4 + 32))
  {
    v6 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "processQueue: queue is empty (no messages from active accounts)";
      v8 = buf;
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  *(v4 + 24) = 1;
  v9 = objc_alloc_init(DeliveryOptions);
  [(DeliveryOptions *)v9 setPlaySound:*(a1 + 40)];
  [(DeliveryOptions *)v9 setForceAll:*(a1 + 41)];
  [(DeliveryOptions *)v9 setIsUserRequested:*(a1 + 42)];
  v5 = [MFMonitoredInvocation mf_invocationWithSelector:"_processQueueWithOptions:" target:*(a1 + 32) object:v9];
  [*(*(a1 + 32) + 16) addInvocation:v5];
}

void sub_100058384(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  switch(v1)
  {
    case 2:
      v5 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ignoring suspend request, we are already suspended", v6, 2u);
      }

      break;
    case 1:
      v4 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "request suspending delivery queue", v7, 2u);
      }

      *(*(a1 + 32) + 56) |= 2u;
      break;
    case 0:
      v3 = +[MFDeliveryQueue log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "suspending delivery queue", buf, 2u);
      }

      *(*(a1 + 32) + 24) = 2;
      break;
  }
}

void sub_100058544(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 2 && *(v3 + 96))
  {
    v7 = v1;
    v8 = v2;
    v5 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resuming delivery queue", v6, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

void sub_1000597F8(uint64_t a1, uint64_t a2)
{
  if (!a2 && *(a1 + 32))
  {
    v3 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Delivery succeeded, will delete message from Outbox with outboxCopy: %@", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v7 = *(a1 + 32);
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 deleteMessages:v6 moveToTrash:0];
  }
}

double sub_100059D50(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = +[NSUserDefaults em_userDefaults];
  v2 = [v1 objectForKey:EMUserDefaultUndoSendDelayTime];

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

void sub_100059DF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10005A130;
  v19 = sub_10005A140;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005A148;
  v10[3] = &unk_100158380;
  v10[4] = &v15;
  v10[5] = &v11;
  sub_10005A1D0(WeakRetained, v10);
  [(os_unfair_lock_s *)WeakRetained notifyObserversOfDelayedMessagesDidChange:(v12[3] & 1) == 0];
  v3 = [(os_unfair_lock_s *)WeakRetained _outboxStore];
  if (v16[5] == *(a1 + 32))
  {
    v5 = [(os_unfair_lock_s *)WeakRetained _deliverSynchronously:*(a1 + 40) outboxCopy:*(a1 + 48)];
  }

  else
  {
    v23 = *(a1 + 48);
    v4 = [NSArray arrayWithObjects:&v23 count:1];
    [v3 deleteMessages:v4 moveToTrash:0];

    v5 = [[EMMessageDeliveryResult alloc] initWithStatus:4 error:0];
  }

  v6 = v5;
  v7 = +[MFPowerController sharedInstance];
  [v7 releaseAssertionWithIdentifier:@"com.apple.message.delivery"];

  if ([v6 status] == 9)
  {
    [*(a1 + 40) setRetryCount:{objc_msgSend(*(a1 + 40), "retryCount") + 1}];
    v8 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) retryCount];
      *buf = 134217984;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retry message delivery. Retry count: %ld", buf, 0xCu);
    }

    [(os_unfair_lock_s *)WeakRetained deliverAsynchronously:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_10005A0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10005A130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005A148(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ef_removeFirst];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 40) + 8) + 24) = [v6 ef_isEmpty];
}

void sub_10005A1D0(os_unfair_lock_s *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock(a1 + 13);
    v3 = [(os_unfair_lock_s *)a1 delayedMessages];
    v4[2](v4, v3);

    os_unfair_lock_unlock(a1 + 13);
  }
}

void sub_10005A258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 13);

  _Unwind_Resume(a1);
}

void sub_10005A4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10005A530(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ef_popElement];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 40) + 8) + 24) = [v6 ef_isEmpty];
}

void sub_10005AA2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10005AB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_10005B590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messagePersistence];
  v5 = [v4 deliveryInfoForMessage:v3];

  v6 = [EFPair pairWithFirst:v3 second:v5];

  return v6;
}

int64_t sub_10005B648(id a1, EFPair *a2, EFPair *a3)
{
  v4 = a3;
  v5 = [(EFPair *)a2 second];
  v6 = [(EFPair *)v4 second];
  v7 = [v5 messageSize];
  if (v7 >= [v6 messageSize])
  {
    v9 = [v5 messageSize];
    if (v9 <= [v6 messageSize])
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

MFLibraryMessage *__cdecl sub_10005B710(id a1, EFPair *a2)
{
  v2 = [(EFPair *)a2 first];

  return v2;
}

void sub_10005CAB8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [v2 deleteMessages:v3 moveToTrash:0];
  }
}

id sub_10005CC44(uint64_t a1)
{
  v2 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "processing queue did finish", v6, 2u);
  }

  v3 = *(a1 + 32);
  if ((*(v3 + 56) & 2) != 0)
  {
    *(v3 + 24) = 2;
    *(*(a1 + 32) + 56) &= ~2u;
  }

  else
  {
    *(v3 + 24) = 0;
  }

  result = [*(a1 + 32) _updateCounts];
  v5 = *(a1 + 32);
  if (*(v5 + 56))
  {
    *(v5 + 56) &= ~1u;
    return [*(a1 + 32) processQueue];
  }

  return result;
}

id sub_10005CDA0(uint64_t a1)
{
  v2 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "change in mail accounts detected: %@", &v5, 0xCu);
  }

  [*(a1 + 40) _updateCounts];
  return [*(a1 + 40) processQueue];
}

void sub_10005CEF8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:MailMessageStoreChangedFlagsKey];

  v4 = [v3 objectForKey:MessageIsDeleted];
  v5 = v4;
  if (*(*(a1 + 40) + 24) != 1 && v4 != 0)
  {
    v7 = +[MFDeliveryQueue log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "detected deleted flag change of outbox message(s), will updateCounts", v8, 2u);
    }

    [*(a1 + 40) _updateCounts];
  }
}

id sub_10005D080(uint64_t a1)
{
  v2 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "detected new outbox message(s)", v4, 2u);
  }

  return [*(a1 + 32) _updateCounts];
}

void sub_10005D1E4(uint64_t a1)
{
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:CPNetworkObserverReachable];
  if ([v3 BOOLValue])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(*(a1 + 32) + 56) = *(*(a1 + 32) + 56) & 0xFB | v4;

  v5 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(*(a1 + 32) + 56) >> 2) & 1;
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "detected change in network reachability: %d", v7, 8u);
  }
}

BOOL sub_10005D3FC(id a1, MFLibraryMessage *a2)
{
  v2 = [(MFLibraryMessage *)a2 mailbox];
  v3 = [v2 type] == 6;

  return v3;
}

id sub_10005D530(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);

  return [v3 numberOfPendingMessagesChanged:v4];
}

void sub_10005D670(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10005D77C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) numberOfPendingMessagesChanged:*(a1 + 40)];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10005D93C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) hasDelayedMessagesDidChange:*(a1 + 40)];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_10005DCEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) messagePersistence];
  v5 = [v4 deliveryInfoForMessage:v3];

  v6 = [NSString stringWithFormat:@"%@ -- %@", v3, v5];

  return v6;
}

void sub_10005DE74(uint64_t a1)
{
  v2 = +[MFDeliveryQueue log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "locale change detected", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10005DEF8(void *a1)
{
  v1 = a1;
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
  [v1 registerServiceClass:objc_opt_class()];
}

void sub_10005E8E4(uint64_t a1)
{
  v2 = objc_alloc_init(MailServicesComposeDelegate);
  [MFComposeTypeFactory setupWithCompositionModel:*(a1 + 32) delegate:v2];
  v3 = [MFComposeTypeFactory messageFromDelegate:v2 originatingBundleID:0 sourceAccountManagement:0];
  v4 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005EADC;
  v8[3] = &unk_100158528;
  v10 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v3 onScheduler:v4 addSuccessBlock:v8];

  v5 = +[EFScheduler mainThreadScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005EAF0;
  v6[3] = &unk_100158550;
  v7 = *(a1 + 40);
  [v3 onScheduler:v5 addFailureBlock:v6];
}

void sub_10005ED3C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = [MailAccount accountThatMessageIsFrom:v11 includingInactive:1];
    v7 = sub_10005EF34(v11, v6);

    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7342 userInfo:0];
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setMessageBody:0];
  }

  if (v7)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSSaveEmailResultKeyMessageID UTF8String], v10);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_10005EF34(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v15 = "mailMessage != nil";
    v16 = 220;
    goto LABEL_8;
  }

  if (!v4)
  {
    v15 = "account != nil";
    v16 = 221;
LABEL_8:
    __assert_rtn("_saveMailMessage", "MFDeliveryService.m", v16, v15);
  }

  [v3 markAsViewed];
  [v3 setMessageFlags:{objc_msgSend(v3, "messageFlags") | 0x40}];
  v6 = [v5 mailboxUidOfType:5 createIfNeeded:1];
  v7 = +[MFMailMessageLibrary defaultInstance];
  v8 = [v7 persistence];
  v9 = [v8 messageChangeManager];

  v17 = v3;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [v6 URL];
  v12 = [v9 addNewMessages:v10 mailboxURL:v11 userInitiated:1];

  v13 = [NSURL URLWithString:@"x-last-saved-message"];

  return v13;
}

void sub_10005F51C(uint64_t a1)
{
  v2 = sub_10005EF34(*(a1 + 32), *(a1 + 40));
  if (v2 && *(a1 + 48))
  {
    v3 = +[MSAutosave autosave];
    [v3 removeAutosavedMessageWithIdentifier:*(a1 + 48)];
  }
}

void sub_10005FFE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7336 userInfo:0];
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [MailAccount accountThatMessageIsFrom:v5 includingInactive:1];
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v18 = 0;
  v10 = sub_100060290(v5, v7, v8, v9, &v18);
  v11 = v18;
  if (v10)
  {
    v12 = [v6 composeType];
    if ((v12 - 4) < 2)
    {
      v13 = [v6 legacyMessage];
      [v13 markAsViewed];

      v14 = [v6 legacyMessage];
      [v14 markAsReplied];
LABEL_8:

      goto LABEL_9;
    }

    if (v12 == 6)
    {
      v15 = [v6 legacyMessage];
      [v15 markAsViewed];

      v14 = [v6 legacyMessage];
      [v14 markAsForwarded];
      goto LABEL_8;
    }
  }

LABEL_9:

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMessageBody:0];
  }

  if (v10)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v17 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSSendEmailResultKeyMessageID UTF8String], v17);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_100060290(void *a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (!v10)
  {
    __assert_rtn("_sendMailMessage", "MFDeliveryService.m", 476, "account != nil");
  }

  if ([v10 restrictedFromSendingExternally])
  {
    v12 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7334 userInfo:0];
    v13 = 0;
  }

  else
  {
    [v9 markAsViewed];
    v14 = +[MFDeliveryQueue sharedDeliveryQueue];
    v15 = [v14 append:v9];
    if (v15)
    {
      [v14 processQueueAndPlaySoundOnSuccess:a3 forceAll:0 isUserRequested:1];
      if (a4)
      {
        v16 = MFComposeLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 messageID];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping recents addition as message:<%@> is being delivered as HME", &buf, 0xCu);
        }
      }

      else
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v18 = qword_100185828;
        v27 = qword_100185828;
        if (!qword_100185828)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v29 = sub_100060AC0;
          v30 = &unk_100157290;
          v31 = &v24;
          sub_100060AC0(&buf);
          v18 = v25[3];
        }

        v19 = v18;
        _Block_object_dispose(&v24, 8);
        v16 = [v18 defaultInstance];
        v20 = [v9 headers];
        [v16 recordContactEventsForHeaders:v20 recentsDomain:kMFMobileMailBundleIdentifier];
      }

      v13 = [NSURL URLWithString:@"x-last-sent-message"];
      v12 = 0;
    }

    else
    {
      v12 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7333 userInfo:0];
      v13 = 0;
    }
  }

  if (a5)
  {
    if (v12 && v13 == 0)
    {
      v22 = v12;
      *a5 = v12;
    }
  }

  return v13;
}

void sub_10006058C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);

  _Unwind_Resume(a1);
}

Class sub_100060AC0(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_100185830)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_100060CE8;
    v7[4] = &unk_1001562E8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents";
    qword_100185830 = _sl_dlopen();
  }

  if (!qword_100185830)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreRecentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFDeliveryService.m" lineNumber:37 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCRRecentContactsLibraryClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFDeliveryService.m" lineNumber:38 description:{@"Unable to find class %s", "CRRecentContactsLibrary"}];

LABEL_10:
    __break(1u);
  }

  qword_100185828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100060CE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100185830 = result;
  return result;
}

void sub_100060D54(id a1)
{
  v1 = objc_alloc_init(MFDiskFreeSpaceMonitor);
  v2 = qword_100185840;
  qword_100185840 = v1;
}

void sub_10006135C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 _retrieveFreeSpaceStatus:&v7];
  v4 = v7;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    (*(v5 + 16))(v5, v3, v6);
  }
}

NSArray *__cdecl sub_100061A84(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 allMailboxUids];
  v3 = [v2 ef_map:&stru_100158650];

  return v3;
}

id sub_100061AEC(id a1, MFMailboxUid *a2)
{
  v2 = [(MFMailboxUid *)a2 fullPath];

  return v2;
}

uint64_t sub_100061B1C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = *a4;
  return result;
}

void sub_100061F14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100062148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v33 - 128), 8);
  _Block_object_dispose((v33 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000621B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:NSFileSize];
  v8 = [v7 integerValue];

  *(*(*(a1 + 32) + 8) + 24) += v8;
  if ([v11 rangeOfString:@"/Attachments/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v11 rangeOfString:@"/Messages/"];
    v10 = 48;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 56;
    }
  }

  else
  {
    v10 = 40;
  }

  *(*(*(a1 + v10) + 8) + 24) += v8;
}

void sub_10006236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062384(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:NSFileReferenceCount];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = [v7 fileSize];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += v6;
}

void sub_1000625B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062618(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 fileCreationDate];
  if ([v6 ef_isEarlierThanDate:*(a1 + 32)])
  {
    v7 = [v5 objectForKeyedSubscript:NSFileSize];
    *(*(*(a1 + 48) + 8) + 24) += [v7 longLongValue];

    [*(a1 + 40) removeItemAtPath:v8 error:0];
  }
}

void sub_1000627AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000627C4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:NSFileReferenceCount];
  v7 = [v6 integerValue];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 removeItemAtPath:v12 error:0];

  if (v7 == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = [v5 fileSize];
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += v11;
}

void sub_100062AC8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 fileModificationDate];
  v7 = [v6 ef_isEarlierThanDate:*(a1 + 32)];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100062BBC(id a1, NSFileManager *a2, NSString *a3, NSDictionary *a4, BOOL *a5)
{
  v7 = a2;
  v6 = a3;
  if ([(NSString *)v6 hasSuffix:@"/Messages"])
  {
    [(NSFileManager *)v7 removeItemAtPath:v6 error:0];
  }
}

void sub_100063318(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185848;
  qword_100185848 = v1;
}

id sub_100063434(id a1, MFXPCClient *a2)
{
  v2 = a2;
  v3 = [[MFDOpenCompose alloc] initWithClient:v2];

  return v3;
}

id sub_1000637E4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v3 = SBSCreateOpenApplicationService();
  v4 = [v3 canOpenApplication:kMFMobileMailBundleIdentifier reason:&v12];

  if ((v4 & 1) == 0)
  {
    v5 = FBSOpenApplicationErrorCodeToString();
    v6 = v5;
    v7 = @"Unknown";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v13 = NSUnderlyingErrorKey;
    v9 = FBSOpenApplicationErrorCreate();
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1, v8];
    *a2 = [NSError em_internalErrorWithReason:@"Cannot open application" userInfo:v10];
  }

  return v4;
}

id sub_10006396C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = +[NSXPCConnection currentConnection];
    v9 = EFBundleIdentifierForXPCConnection();
    [v6 setHostApplicationBundleIdentifier:v9];

    if (v7)
    {
      v10 = [MFDOpenComposeDelegateConfiguration alloc];
      v11 = [v6 autosaveIdentifier];
      v12 = v11;
      if (!v11)
      {
        v3 = +[NSUUID UUID];
        v12 = [v3 UUIDString];
      }

      v13 = [(MFDOpenComposeDelegateConfiguration *)v10 initWithIdentifier:v12 delegateEndpoint:v7 isEntitledDelegate:*(a1 + 16)];
      if (!v11)
      {
      }

      [*(a1 + 24) registerConfiguration:v13];
    }

    else
    {
      v13 = 0;
    }

    v28 = 0;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v28];
    v15 = v28;
    v16 = [NSUserActivity alloc];
    v17 = [v16 initWithActivityType:MSMailActivityHandoffTypeComposeWithStreams];
    v18 = [v6 autosaveIdentifier];
    v19 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
    [v17 setTargetContentIdentifier:v19];

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = v20;
    if (v14)
    {
      [v20 setObject:v14 forKeyedSubscript:kMSOpenMailComposeViewControllerContextKey];
    }

    else
    {
      v22 = +[MFDOpenCompose log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [v15 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1000D41F4();
      }
    }

    if (v13)
    {
      v23 = [(MFDOpenComposeDelegateConfiguration *)v13 identifier];
      [v21 setObject:v23 forKeyedSubscript:kMSOpenComposeDelegateIdentifierKey];
    }

    else
    {
      v23 = +[MFDOpenCompose log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Connection doesn't match criteria for entitled compose", buf, 2u);
      }
    }

    [v17 setUserInfo:v21];
    v24 = +[MFDOpenCompose log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v17 activityType];
      v26 = [v17 targetContentIdentifier];
      sub_1000D4238(v25, v26, buf, v24);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_100063DAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [NSMutableDictionary dictionaryWithCapacity:4];
    [v7 setObject:v5 forKeyedSubscript:&off_1001633D0];
    v8 = [*(a1 + 32) activityType];
    [v7 setObject:v8 forKeyedSubscript:&off_1001633E8];

    v9 = [*(a1 + 32) activityType];
    [v7 setObject:v9 forKeyedSubscript:&off_100163400];

    v10 = +[NSDate date];
    [v7 setObject:v10 forKeyedSubscript:&off_100163418];

    v11 = [[UIActivityContinuationAction alloc] initWithSettings:v7];
    v24[0] = SBSOpenApplicationLayoutRoleCenter;
    v23[0] = SBSOpenApplicationOptionKeyLayoutRole;
    v23[1] = FBSOpenApplicationOptionKeyActions;
    v22 = v11;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    v24[1] = v12;
    v23[2] = UISOpenApplicationOptionKeyTargetContentIdentifier;
    v13 = [*(a1 + 32) targetContentIdentifier];
    v24[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    v15 = [FBSOpenApplicationOptions optionsWithDictionary:v14];

    v16 = SBSCreateOpenApplicationService();
    v17 = kMFMobileMailBundleIdentifier;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100064148;
    v20[3] = &unk_100158800;
    v21 = *(a1 + 40);
    [v16 openApplication:v17 withOptions:v15 completion:v20];
  }

  else
  {
    v18 = +[MFDOpenCompose log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D42A8();
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, v6);
    }
  }
}

void sub_100064148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[MFDOpenCompose log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D42EC();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

uint64_t sub_100064258(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_1000642B4(id a1)
{
  v1 = [[MFDOpenComposeDelegateConfigurationStore alloc] _init];
  v2 = qword_100185858;
  qword_100185858 = v1;
}

void sub_1000643D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 4);

  _Unwind_Resume(a1);
}

void sub_10006447C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 4);

  _Unwind_Resume(a1);
}

void sub_100064740(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185868;
  qword_100185868 = v1;
}

id sub_100064850(id a1, MFXPCClient *a2)
{
  v2 = a2;
  v3 = [[MFDOpenComposeDelegateRequest alloc] initWithClient:v2];

  return v3;
}

id sub_100064B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(*(a1 + 32)) initWithClient:v3];

  return v4;
}

void sub_100064D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v17;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100064DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

void sub_100064F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFDSearch;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000651A0(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 type];
  v5 = [v3 criteria];
  v38 = v5;
  if (![_MSCriterionTypeComplex isEqualToString:v4])
  {
    if ([MSCriterionTypeReceivedDate isEqualToString:v4])
    {
      v21 = [v3 qualifier];
      if ([MSCriterionQualifierGreaterThan isEqualToString:v21])
      {
        v22 = 6;
LABEL_37:
        [v5 timeIntervalSince1970];
        v28 = v27;
        v29 = [MFMessageCriterion alloc];
        v30 = [NSString stringWithFormat:@"%llu", v28];
        v31 = [v29 initWithType:11 qualifier:v22 expression:v30];

        [v31 setDateUnits:0];
LABEL_38:

        goto LABEL_62;
      }

      if ([MSCriterionQualifierLessThan isEqualToString:v21])
      {
        v22 = 5;
        goto LABEL_37;
      }

LABEL_60:

      goto LABEL_61;
    }

    if ([MSCriterionTypeReadStatus isEqualToString:v4])
    {
      v23 = [v5 isEqualToString:MSCriterionExpressionRead];
      v24 = [MFMessageCriterion alloc];
      if (v23)
      {
        v25 = 3;
      }

      else
      {
        v25 = 7;
      }

      v26 = [v24 initWithType:27 qualifier:v25 expression:MessageIsRead];
    }

    else if ([MSCriterionTypeMessageReference isEqualToString:v4])
    {
      v26 = [v5 mf_messageCriterion];
    }

    else
    {
      if (![MSCriterionTypeConversationReference isEqualToString:v4])
      {
        if ([MSCriterionTypePredicateFormat isEqualToString:v4])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_61;
          }

          v21 = objc_alloc_init(MFMessageCriterionConverter);
          v32 = [v21 messageCriterionFromPredicateFormatString:v5];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_61;
          }

          v21 = [v3 qualifier];
          if ([MSCriterionQualifierContains isEqualToString:v21])
          {
            v33 = 0;
          }

          else
          {
            if (![MSCriterionQualifierDoesNotContain isEqualToString:v21])
            {
              goto LABEL_60;
            }

            v33 = 4;
          }

          if ([MSCriterionTypeSubject isEqualToString:v4])
          {
            v31 = [[MFMessageCriterion alloc] initWithType:1 qualifier:v33 expression:v5];
            [v31 setCriterionIdentifier:ECMessageHeaderKeySubject];
            goto LABEL_38;
          }

          if ([MSCriterionTypeSender isEqualToString:v4])
          {
            v35 = [MFMessageCriterion alloc];
            v36 = 35;
          }

          else
          {
            if ([MSCriterionTypeRecipient isEqualToString:v4])
            {
              v31 = [[MFMessageCriterion alloc] initWithType:1 qualifier:v33 expression:v5];
              [v31 setCriterionIdentifier:ECMessageHeaderKeyTo];
              goto LABEL_38;
            }

            if (![MSCriterionTypeAnyRecipient isEqualToString:v4])
            {
              v31 = 0;
              goto LABEL_38;
            }

            v35 = [MFMessageCriterion alloc];
            v36 = 9;
          }

          v32 = [v35 initWithType:v36 qualifier:v33 expression:v5];
        }

        v31 = v32;
        goto LABEL_38;
      }

      v26 = [v5 mf_conversationCriterion];
    }

    v31 = v26;
    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v8)
    {
      v9 = *v44;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = sub_1000651A0(*(*(&v43 + 1) + 8 * v10), 0);
        if (!v11)
        {
          break;
        }

        [v6 addObject:v11];

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v12 = [v6 count];
    if (v12 != [v7 count])
    {
      v31 = 0;
LABEL_52:

      goto LABEL_62;
    }

    v37 = [v3 qualifier];
    if (a2)
    {
      v13 = objc_alloc_init(NSMutableArray);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = +[MailAccount allActivePrimaryMailboxUids];
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v15)
      {
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [MFMessageCriterion criterionForMailbox:*(*(&v39 + 1) + 8 * i)];
            [v13 addObject:v18];
          }

          v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v15);
      }

      if ([v13 count])
      {
        v19 = [MFMessageCriterion orCompoundCriterionWithCriteria:v13];
        [v6 addObject:v19];
      }
    }

    if ([_MSCriterionQualifierAllRequired isEqualToString:v37])
    {
      v20 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];
    }

    else
    {
      if (![_MSCriterionQualifierNotAllRequired isEqualToString:v37])
      {
        v31 = 0;
        goto LABEL_51;
      }

      v20 = [MFMessageCriterion orCompoundCriterionWithCriteria:v6];
    }

    v31 = v20;
LABEL_51:

    goto LABEL_52;
  }

LABEL_61:
  v31 = 0;
LABEL_62:

  return v31;
}

void sub_100066778(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *v2;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(a1 + 40) + 64) setMessage:{*(*(&v9 + 1) + 8 * v7), v9}];
        v8 = [*(*(a1 + 40) + 64) copyResults];
        if (v8)
        {
          [v3 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 56) foundResults:v3 error:0];
}

void sub_100066AFC(id a1)
{
  v1 = [(MFXPCServer *)[MFDVIPServices alloc] initWithClient:0];
  v2 = qword_100185878;
  qword_100185878 = v1;
}

void sub_10006745C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

id sub_100067588(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067680;
  v9[3] = &unk_1001588D0;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndex:v6];
  }

  return v7;
}

id sub_100067680(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:kVIPEmailAddressesKey];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_1000676E0(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 sendersIfCached];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v27 messageFlags];
    v6 = [v27 dateSent];
    v7 = *(a1 + 32);
    v8 = v4;
    v9 = [v8 emailAddressValue];
    v10 = [v9 simpleAddress];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 stringValue];
    }

    v13 = v12;

    v14 = (*(v7 + 16))(v7, v13);

    if (v14)
    {
      if ((v5 & 1) == 0)
      {
        v15 = kVIPUnreadCountKey;
        v16 = [v14 objectForKeyedSubscript:kVIPUnreadCountKey];
        v17 = [v16 unsignedIntegerValue];

        v18 = [NSNumber numberWithUnsignedInteger:v17 + 1];
        [v14 setObject:v18 forKeyedSubscript:v15];
      }

      v19 = *(*(a1 + 40) + 8);
      v20 = *(v19 + 24);
      *(v19 + 24) = v20 + 1;
      if (v20 <= 0x31)
      {
        v21 = [v14 objectForKeyedSubscript:@"priv_totalMessageCount"];
        v22 = [v21 unsignedIntegerValue];

        v23 = [NSNumber numberWithUnsignedInteger:v22 + 1];
        [v14 setObject:v23 forKeyedSubscript:@"priv_totalMessageCount"];
      }

      v24 = [v14 objectForKeyedSubscript:@"priv_recentInteractionDate"];
      if (!v24 || ([v14 objectForKeyedSubscript:@"priv_recentInteractionDate"], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "compare:", v6), v25, v24, v26 == -1))
      {
        [v14 setObject:v6 forKeyedSubscript:@"priv_recentInteractionDate"];
      }
    }
  }
}

int64_t sub_1000679C4(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"priv_totalMessageCount"];
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"priv_totalMessageCount"];
  v8 = [v6 unsignedIntegerValue];
  if (v8 <= [v7 unsignedIntegerValue])
  {
    v10 = [v6 unsignedIntegerValue];
    if (v10 >= [v7 unsignedIntegerValue])
    {
      v11 = [(NSDictionary *)v4 objectForKeyedSubscript:@"priv_recentInteractionDate"];
      v12 = [(NSDictionary *)v5 objectForKeyedSubscript:@"priv_recentInteractionDate"];
      v9 = [v12 compare:v11];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_100067C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_100067FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFFetchProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100068134(id a1, MFActivityConditionBuilder *a2)
{
  v3 = a2;
  [(MFActivityConditionBuilder *)v3 setRequireWiFi:1];
  [(MFActivityConditionBuilder *)v3 setRequireExternalPower:1];
  [(MFActivityConditionBuilder *)v3 setRequireScreenLocked:1];
  LODWORD(v2) = 1050253722;
  [(MFActivityConditionBuilder *)v3 setMinBatteryLevel:v2];
  [(MFActivityConditionBuilder *)v3 setMaxThermalPressureLevel:1];
}

void sub_100069128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006915C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v4 BOOLValue] & 1) == 0)
  {
    [WeakRetained _cancelCurrentInvocations];
  }
}

void sub_100069418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100069548(uint64_t a1)
{
  --*(*(a1 + 32) + 56);
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [v2 finishedProcessing];
    dispatch_semaphore_signal(v3);
  }
}

BOOL sub_100069ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isStore] & 1) == 0 || (objc_msgSend(*(a1 + 32), "excludedMailboxTypes"), v4 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v3, "mailboxType")), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6) || objc_msgSend(v3, "isNotesMailboxUid") && (objc_msgSend(*(a1 + 40), "isSyncingNotes"))
  {
    v7 = 1;
  }

  else
  {
    v9 = +[MailPersistentStorage sharedStorage];
    v10 = [v3 URLString];
    v11 = [v9 fetchDateForSource:v10];

    if (v11)
    {
      v7 = [v11 compare:*(a1 + 48)] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_10006A2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 addObject:?];
}

id sub_10006A420(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URLString];
  v4 = [v2 fetchDateForSource:v3];

  return v4;
}

void sub_10006A678(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = (*(*(a1 + 32) + 16))();
  *(*(a1 + 40) + 16 * a3) = a3;
  v7 = v6;
  if (!v6)
  {
    v7 = +[NSDate distantPast];
  }

  [v7 timeIntervalSinceReferenceDate];
  *(*(a1 + 40) + 16 * a3 + 8) = v8;
  if (!v6)
  {
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10006A778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 != v3;
  }
}

intptr_t sub_10006A950(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006AD20(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_100185898;
  qword_100185898 = v1;
}

void sub_10006B034(uint64_t a1, void *a2)
{
  v3 = a2;
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_30_MIN);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  LODWORD(a1) = *(a1 + 32);
  v4 = v3;
  v5 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
  if (!a1)
  {
    v5 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
  }

  v6 = v4;
  xpc_dictionary_set_BOOL(v4, *v5, 1);
}

void sub_10006B13C(uint64_t a1, void *a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006B280;
  v11[3] = &unk_100157208;
  v3 = a2;
  v12 = v3;
  v4 = objc_retainBlock(v11);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006B288;
  v8[3] = &unk_100158AF8;
  v5 = v3;
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v7 = objc_retainBlock(v8);
  [*(a1 + 32) runLibraryCompressionShouldDefer:v4 completion:v7];
}

void sub_10006B288(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (!xpc_activity_set_state(*(a1 + 32), 5))
    {
      v5 = +[MFLibraryCompressionActivityManager log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        state = xpc_activity_get_state(*(a1 + 32));
        sub_1000D44C8(v7, state, v5);
      }
    }

    if (a2)
    {
      [*(a1 + 40) _unregisterXPCActivity];
    }
  }
}

void sub_10006B408(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001858A8;
  qword_1001858A8 = v1;
}

uint64_t sub_10006BD10(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10006BF38(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id sub_10006C840()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1001858B8;
  v7 = qword_1001858B8;
  if (!qword_1001858B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10006CB54;
    v3[3] = &unk_100157290;
    v3[4] = &v4;
    sub_10006CB54(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10006C908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSString *__cdecl sub_10006CAFC(id a1, MFLibraryMessage *a2)
{
  v2 = [(MFLibraryMessage *)a2 nanoMessageId];

  return v2;
}

Class sub_10006CB54(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1001858C0)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10006CD7C;
    v7[4] = &unk_1001562E8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    qword_1001858C0 = _sl_dlopen();
  }

  if (!qword_1001858C0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFLibraryMessage+NanoServer.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NNMKMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getNNMKMessageClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFLibraryMessage+NanoServer.m" lineNumber:23 description:{@"Unable to find class %s", "NNMKMessage"}];

LABEL_10:
    __break(1u);
  }

  qword_1001858B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10006CD7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001858C0 = result;
  return result;
}

void sub_10006CE88(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001858C8;
  qword_1001858C8 = v1;
}

uint64_t sub_10006D0AC(uint64_t a1)
{
  v2 = [*(a1 + 32) detector];
  [v2 ignoreCommand:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_10006D228(uint64_t a1)
{
  v2 = [MFListUnsubscribeMessageGenerator_iOS deliveryForCommand:*(a1 + 32)];
  v3 = [v2 message];
  v4 = [EMOutgoingMessage alloc];
  v5 = [v3 messageData];
  v6 = [v4 initWithMessageData:v5];

  v7 = [*(a1 + 40) outgoingMessageRepository];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006D3BC;
  v10[3] = &unk_100158BB0;
  v9 = *(a1 + 32);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = *(a1 + 48);
  [v7 deliverMessage:v6 usingMailDrop:0 isCancelable:0 completion:v10];
}

void sub_10006D3BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 status];
  if (v4 > 9 || ((1 << v4) & 0x3B2) == 0)
  {
    v9 = [*(a1 + 32) detector];
    [v9 acceptCommand:*(a1 + 40)];
  }

  else
  {
    v6 = +[MFListUnsubscribeHandler_iOS log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 error];
      v11 = [v10 ef_publicDescription];
      v12 = 138543618;
      v13 = v11;
      v14 = 2048;
      v15 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error unsubscribing from mail: %{public}@, delivery status: %ld", &v12, 0x16u);
    }
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [v3 error];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_10006D6D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10006D700(id a1, EDAccount *a2)
{
  v2 = a2;
  if ([(EDAccount *)v2 conformsToProtocol:&OBJC_PROTOCOL___EDReceivingAccount])
  {
    v3 = [(EDAccount *)v2 emailAddresses];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10006D874(uint64_t a1)
{
  [*(a1 + 32) setMailAccounts:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 mailAccounts];
  v4 = [v2 _activeNonLocalAccountsWithMailAccounts:v3];
  [*(a1 + 32) setDisplayedAccounts:v4];

  [*(a1 + 32) setOrderedAccounts:0];
  [*(a1 + 32) setFocusedAccounts:0];
  v5 = [*(a1 + 48) focusedAccountIdentifiers];
  if ([v5 count])
  {
    v6 = [*(a1 + 32) displayedAccounts];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006D9FC;
    v8[3] = &unk_100157A08;
    v9 = v5;
    v7 = [v6 ef_filter:v8];
    [*(a1 + 32) setFocusedAccounts:v7];
  }

  [MailAccount performOnAccounts:*(a1 + 40) accountBlock:&stru_100158C18];
}

id sub_10006D9FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL sub_10006DA54(id a1, MailAccount *a2)
{
  v2 = a2;
  if ([(MailAccount *)v2 isActive])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(MailAccount *)v2 accountConduit];
    }

    v4 = [(MailAccount *)v2 resetSpecialMailboxesCanPostNotifications:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10006DC0C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10006E1AC(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

id sub_10006E240(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

uint64_t sub_10006E494(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [FavoriteItem itemForAccount:a2];
  v7 = [FavoriteItem itemForAccount:v5];
  v8 = *(a1 + 32);
  v9 = [v6 account];
  v10 = [v9 uniqueID];
  v11 = [v8 indexOfObject:v10];

  v12 = *(a1 + 32);
  v13 = [v7 account];
  v14 = [v13 uniqueID];
  v15 = [v12 indexOfObject:v14];

  if (v11 < v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = v11 > v15;
  }

  return v16;
}

BOOL sub_10006E640(id a1, MailAccount *a2)
{
  v2 = a2;
  [(MailAccount *)v2 uniqueIdForPersistentConnection];
  v3 = PCSettingsGetPollInterval() != -1;

  return v3;
}

void sub_10006E838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10006F210(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v5;
    v17 = 2048;
    v18 = [v5 messageSize];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Found message to download %@ of size: %lu", buf, 0x16u);
  }

  v7 = [[_MFMFMailboxMessageBodyProcessorLoaderClient alloc] initWithMessage:v5];
  v8 = [*(a1 + 32) messageBodyLoader];
  [v8 addSingleMessageClient:v7];

  v9 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)v7 future];
  v14 = 0;
  v10 = [v9 resultWithTimeout:&v14 error:300.0];
  v11 = v14;

  if (v11)
  {
    *a3 = 1;
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 ef_publicDescription];
      sub_1000D45F4(v5, v13, buf, v12);
    }
  }
}

void sub_10006F3A8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_10006F764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 ef_publicDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#MessageBodyProcessor Testing message %{public}@", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) _shouldTryToDownloadMessage:v3];
  return v6;
}

void sub_10006F86C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) _shouldContinueProcessing])
  {
    if ([*(a1 + 32) _shouldDownloadMessage:v6])
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) mailbox];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Should stop searching %@ because condition are no more met", &v9, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_10006FC18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10006FE30(id a1)
{
  v3[0] = @"displayName";
  v3[1] = @"relativePath";
  v4[0] = &stru_100158D50;
  v4[1] = &stru_100158D70;
  v3[2] = @"type";
  v3[3] = @"level";
  v4[2] = &stru_100158D90;
  v4[3] = &stru_100158DB0;
  v3[4] = @"pushState";
  v4[4] = &stru_100158DD0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_1001858D8;
  qword_1001858D8 = v1;
}

id sub_10006FF24(id a1, MFMailboxResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMailboxResultsGenerator *)a2 _displayName:a3];

  return v3;
}

id sub_10006FF54(id a1, MFMailboxResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMailboxResultsGenerator *)a2 _relativePath:a3];

  return v3;
}

id sub_10006FF84(id a1, MFMailboxResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMailboxResultsGenerator *)a2 _type:a3];

  return v3;
}

id sub_10006FFB4(id a1, MFMailboxResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMailboxResultsGenerator *)a2 _level:a3];

  return v3;
}

id sub_10006FFE4(id a1, MFMailboxResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMailboxResultsGenerator *)a2 _pushState:a3];

  return v3;
}

void sub_1000703D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000711A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 mf_sizeForDirectoryAtURL:v3 error:&v9];
  v6 = v9;

  if ((v5 & 0x8000000000000000) != 0)
  {
    if ([v6 code] != 2)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 ef_publicDescription];
        sub_1000D4670(v3, v8, buf, v7);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) += v5;
  }
}

void sub_100071384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMailPurgeableStorageMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000714FC(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
}

void sub_1000718F8(uint64_t a1)
{
  v2 = [*(a1 + 32) purgeableStorage];
  *(*(*(a1 + 40) + 8) + 24) = [v2 nonPurgeableSpace];
}

void sub_100071A3C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1001858F8;
  qword_1001858F8 = v1;
}

void sub_100071D50(uint64_t a1, void *a2)
{
  v3 = a2;
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_30_MIN);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  LODWORD(a1) = *(a1 + 32);
  v4 = v3;
  v5 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
  if (!a1)
  {
    v5 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
  }

  v6 = v4;
  xpc_dictionary_set_BOOL(v4, *v5, 1);
}

void sub_100071E58(uint64_t a1, void *a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100071F9C;
  v11[3] = &unk_100157208;
  v3 = a2;
  v12 = v3;
  v4 = objc_retainBlock(v11);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100071FA4;
  v8[3] = &unk_100158AF8;
  v5 = v3;
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v7 = objc_retainBlock(v8);
  [*(a1 + 32) runMarkLibraryPurgeableUpgraderShouldDefer:v4 completion:v7];
}

void sub_100071FA4(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  if (!xpc_activity_set_state(*(a1 + 32), v5))
  {
    v6 = +[MFMarkLibraryPurgeableActivityManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      state = xpc_activity_get_state(*(a1 + 32));
      sub_1000D4700(v8, state, v5, v6);
    }
  }

  if (a2)
  {
    [*(a1 + 40) _unregisterXPCActivity];
  }
}

void sub_100072134(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185908;
  qword_100185908 = v1;
}

uint64_t sub_100072A48(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100072CE4(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id sub_100073998(id a1, EDMessageActionProvider *a2)
{
  v2 = [(EDMessageActionProvider *)a2 ID];

  return v2;
}

void sub_100073CAC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185918;
  qword_100185918 = v1;
}

MailAccount *__cdecl sub_1000744C4(id a1, MFMailMessage *a2)
{
  v2 = [(MFMailMessage *)a2 account];

  return v2;
}

void sub_1000744F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) mailboxType];
  v7 = mailboxUIDTypeFromECMailboxType();
  v8 = [v5 mailboxUidOfType:v7 createIfNeeded:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007467C;
  v15[3] = &unk_100157E70;
  v15[4] = v7;
  v9 = [v6 ef_filter:v15];
  v10 = v9;
  if (v8 && [v9 count])
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = [v8 URL];
    v14 = [v11 moveMessages:v10 destinationMailboxURL:v13 userInitiated:0];
    [v12 addObjectsFromArray:v14];
  }
}

void sub_100074630(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

BOOL sub_10007467C(uint64_t a1, void *a2)
{
  v3 = [a2 mailbox];
  v4 = [v3 type] != *(a1 + 32);

  return v4;
}

void sub_1000746D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    [v3 changesReadTo:?];
  }

  if (*(a1 + 42) == 1)
  {
    [v3 changesFlaggedTo:1];
    [v3 changesFlagColorTo:*(a1 + 32)];
  }

  else if (*(a1 + 43) == 1)
  {
    [v3 changesFlaggedTo:0];
  }
}

BOOL sub_1000748FC(id a1, MEMessageAction *a2)
{
  v2 = [(MEMessageAction *)a2 destination];
  v3 = v2 != 0;

  return v3;
}

void sub_100074958(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

int64_t sub_100074974(id a1, MFMailboxUid *a2, MFMailboxUid *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[MailPersistentStorage sharedStorage];
  v7 = [(MFMailboxUid *)v4 URLString];
  v8 = [v6 bodyBackfillDateForSource:v7];

  v9 = +[MailPersistentStorage sharedStorage];
  v10 = [(MFMailboxUid *)v5 URLString];
  v11 = [v9 bodyBackfillDateForSource:v10];

  if (v8)
  {
    if (v11)
    {
      v12 = [v8 compare:v11];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

void sub_100074A6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100074C30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100074C74(id a1, MFActivityConditionBuilder *a2)
{
  v2 = a2;
  [(MFActivityConditionBuilder *)v2 setRequireExternalPower:1];
  [(MFActivityConditionBuilder *)v2 setRequireWiFi:1];
  [(MFActivityConditionBuilder *)v2 setRequireScreenLocked:1];
  [(MFActivityConditionBuilder *)v2 setMaxThermalPressureLevel:1];
}

BOOL sub_100075B18(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isStore] & 1) == 0 || (objc_msgSend(*(a1 + 32), "excludedMailboxTypes"), v4 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v3, "mailboxType")), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6) || objc_msgSend(v3, "isNotesMailboxUid") && (objc_msgSend(*(a1 + 40), "isSyncingNotes"))
  {
    v7 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) persistentStorage];
    v10 = [v3 URLString];
    v11 = [v9 bodyBackfillDateForSource:v10];

    if (v11)
    {
      v7 = [v11 compare:*(a1 + 48)] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_100075E8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_100075EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MFMessageCriterion alloc] initWithType:*(a1 + 32) qualifier:8 expression:v3];

  return v4;
}

void sub_10007606C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100076090(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{MFMessageHasAttachments, MFMessageConversationIsVIP, MFMessageConversationIsMuted, MessageIsJournaled, 0}];
  v3 = qword_100185940;
  qword_100185940 = v2;
}

id sub_100076110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 ef_publicDescription];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Warning Unsupported criterion during server-side searchability determination (failing transformation) : %@", &v24, 0xCu);
    }

    goto LABEL_16;
  }

  v7 = [v3 criterionType];
  v5 = [v4 expression];
  v8 = v4;
  v9 = v8;
  if (v7 <= 26)
  {
    if (v7 <= 22)
    {
      if ((v7 - 11) >= 2)
      {
        if (v7 != 1 && v7 != 9)
        {
          goto LABEL_31;
        }

LABEL_34:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_17;
      }

      [v5 doubleValue];
      v11 = [NSDate dateWithTimeIntervalSince1970:?];
      v12 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v13 = [v12 components:96 fromDate:v11];
      if ([v13 hour] || objc_msgSend(v13, "minute"))
      {

        v9 = 0;
      }

      *(*(*(a1 + 48) + 8) + 24) |= v9 != 0;

      goto LABEL_38;
    }

    if ((v7 - 23) < 2)
    {
LABEL_15:

LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    if (v7 == 26)
    {
      v14 = [v8 criteria];
      v15 = [v14 firstObject];
      v11 = [v15 mailServerSideCriterion];

      if (v11)
      {
        v16 = [MFMessageCriterion notCriterionWithCriterion:v11];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        v9 = v16;
      }

      else
      {

        v9 = 0;
      }

LABEL_38:

      goto LABEL_17;
    }

LABEL_31:
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 ef_publicDescription];
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#Warning unexpected criterion during server-side searchability determination (assuming YES) : %@", &v24, 0xCu);
    }

    goto LABEL_34;
  }

  if (v7 <= 0x31)
  {
    if (((1 << v7) & 0x348400000000) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v7) & 0x2400000000000) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_15;
    }

    if (v7 == 35)
    {
      goto LABEL_34;
    }
  }

  if (v7 == 27)
  {
    if ([MFMessageSenderIsVIP isEqualToString:v5])
    {
      v20 = +[VIPManager defaultInstance];
      v21 = [v20 allVIPEmailAddressesCriterion];

      v9 = v21;
    }

    else
    {
      if ([MFMessageToOrCcContainsAccountAddress isEqualToString:v5])
      {
        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:9];
      }

      else if ([MFMessageToContainsAccountAddress isEqualToString:v5])
      {
        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:40];
      }

      else
      {
        if (![MFMessageCcContainsAccountAddress isEqualToString:v5])
        {
          if ([qword_100185940 containsObject:v5])
          {

            v9 = 0;
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }

          goto LABEL_46;
        }

        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:41];
      }

      v23 = v22;

      v9 = v23;
    }

LABEL_46:
    v17 = v9 != 0;
    goto LABEL_47;
  }

  if (v7 != 33)
  {
    goto LABEL_31;
  }

  v17 = [v5 length]> 1;
LABEL_47:
  *(*(*(a1 + 48) + 8) + 24) |= v17;
LABEL_17:

  return v9;
}

id sub_100076720(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 criterionType] == 23)
  {
    v4 = [v3 expression];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return v3;
}

id sub_1000767B4(id a1, NSString *a2)
{
  v2 = [MailAccount mailboxUidFromActiveAccountsForURL:a2];

  return v2;
}

id sub_1000768BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 criterionType] == 34)
  {
    v4 = [v3 expression];
    v5 = [NSScanner scannerWithString:v4];
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    [v7 addCharactersInString:{@", "}];
    while (([v5 isAtEnd] & 1) == 0)
    {
      [v5 scanCharactersFromSet:v6 intoString:0];
      v9 = 0xAAAAAAAAAAAAAAAALL;
      if ([v5 scanLongLong:&v9])
      {
        [*(a1 + 32) addIndex:v9];
      }

      [v5 scanCharactersFromSet:v7 intoString:0];
    }
  }

  return v3;
}

void sub_100076AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessageResultsGenerator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100076BE0(id a1)
{
  v3[0] = @"MSResultsKeyAccountReference";
  v3[1] = @"MSResultsKeyBodySummary";
  v4[0] = &stru_1001590B0;
  v4[1] = &stru_1001590D0;
  v3[2] = @"MSResultsKeyConversationReference";
  v3[3] = @"MSResultsKeyDateReceived";
  v4[2] = &stru_1001590F0;
  v4[3] = &stru_100159110;
  v3[4] = @"MSResultsKeyDateSent";
  v3[5] = @"MSResultsKeyMailboxURL";
  v4[4] = &stru_100159130;
  v4[5] = &stru_100159150;
  v3[6] = @"MSResultsKeyMessageIDHash";
  v3[7] = @"MSResultsKeyMessageReference";
  v4[6] = &stru_100159170;
  v4[7] = &stru_100159190;
  v3[8] = @"MSResultsKeyOutgoing";
  v3[9] = @"MSResultsKeyRecievingAddresses";
  v4[8] = &stru_1001591B0;
  v4[9] = &stru_1001591D0;
  v3[10] = @"MSResultsKeyRecipientBcc";
  v3[11] = @"MSResultsKeyRecipientCc";
  v4[10] = &stru_1001591F0;
  v4[11] = &stru_100159210;
  v3[12] = @"MSResultsKeyRecipientTo";
  v3[13] = @"MSResultsKeySender";
  v4[12] = &stru_100159230;
  v4[13] = &stru_100159250;
  v3[14] = @"MSResultsKeyStatus";
  v3[15] = @"MSResultsKeySubject";
  v4[14] = &stru_100159270;
  v4[15] = &stru_100159290;
  v3[16] = @"MSResultsKeyBestAlternativePart";
  v3[17] = @"MSResultsKeyHeaderData";
  v4[16] = &stru_1001592B0;
  v4[17] = &stru_1001592D0;
  v3[18] = @"MSResultsKeyIsLocalDraft";
  v3[19] = @"_MSResultsKeyLibraryID";
  v4[18] = &stru_1001592F0;
  v4[19] = &stru_100159310;
  v3[20] = @"MSResultsKeyLocalMessageReference";
  v3[21] = @"_MSResultsKeyPredictiveModelSummary";
  v4[20] = &stru_100159330;
  v4[21] = &stru_100159350;
  v3[22] = @"MSResultsKeyPublisherBulletinID";
  v3[23] = @"MSResultsKeyRFC822Data";
  v4[22] = &stru_100159370;
  v4[23] = &stru_100159390;
  v3[24] = @"MSResultsKeySuppressionContexts";
  v3[25] = @"_MSResultsKeyMailboxType";
  v4[24] = &stru_1001593B0;
  v4[25] = &stru_1001593D0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:26];
  v2 = qword_100185950;
  qword_100185950 = v1;
}

id sub_100076ED0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _accountReference:a3];

  return v3;
}

id sub_100076F00(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _bodySummary:a3];

  return v3;
}

id sub_100076F30(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _conversationReference:a3];

  return v3;
}

id sub_100076F60(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _dateReceived:a3];

  return v3;
}

id sub_100076F90(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _dateSent:a3];

  return v3;
}

id sub_100076FC0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _mailboxURL:a3];

  return v3;
}

id sub_100076FF0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _messageIDHash:a3];

  return v3;
}

id sub_100077020(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _messageReference:a3];

  return v3;
}

id sub_100077050(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _outgoing:a3];

  return v3;
}

id sub_100077080(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _receivingAddresses:a3];

  return v3;
}

id sub_1000770B0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _recipientBcc:a3];

  return v3;
}

id sub_1000770E0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _recipientCc:a3];

  return v3;
}

id sub_100077110(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _recipientTo:a3];

  return v3;
}

id sub_100077140(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _sender:a3];

  return v3;
}

id sub_100077170(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _status:a3];

  return v3;
}

id sub_1000771A0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _subject:a3];

  return v3;
}

id sub_1000771D0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _bestAlternativePart:a3];

  return v3;
}

id sub_100077200(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _headerData:a3];

  return v3;
}

id sub_100077230(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _isLocalDraft:a3];

  return v3;
}

id sub_100077260(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _messageLibraryID:a3];

  return v3;
}

id sub_100077290(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _localMessageReference:a3];

  return v3;
}

id sub_1000772C0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _predictiveModelSummary:a3];

  return v3;
}

id sub_1000772F0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _publisherBulletinID:a3];

  return v3;
}

id sub_100077320(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _rfc822Data:a3];

  return v3;
}

id sub_100077350(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _suppressionContexts:a3];

  return v3;
}

id sub_100077380(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _mailboxType:a3];

  return v3;
}

id sub_1000773B0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _attachmentValueForKey:a3];

  return v3;
}

id sub_1000773E0(id a1, MFMessageResultsGenerator *a2, NSString *a3)
{
  v3 = [(MFMessageResultsGenerator *)a2 _headerValueForKey:a3];

  return v3;
}

void sub_100077A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100077AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100077AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = v3;
    v4 = [v3 content];
    v5 = [v4 count];
    if (v5)
    {
      v6 = 1;
      while (![0 length])
      {
        v7 = [v4 objectAtIndex:v6 - 1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 htmlData];
          v9 = [v7 preferredCharacterSet];
          MFEncodingForCharset();
          v10 = MFCreateStringWithData();
        }

        else
        {
          v10 = 0;
        }

        if (!v10 && v6++ < v5)
        {
          continue;
        }

        goto LABEL_13;
      }
    }

    v10 = 0;
LABEL_13:
    v12 = [ECMessageBodyParsingUtils snippetFromHTMLBody:v10 options:1 maxLength:1000 preservingQuotedForwardedContent:1];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v3 = v15;
  }
}

void sub_100078504(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_1000788FC(id a1, NSString *a2, MFAttachment *a3)
{
  v4 = a2;
  v5 = [(MFAttachment *)a3 mimeType];
  v6 = [(NSString *)v4 caseInsensitiveCompare:v5]== NSOrderedSame;

  return v6;
}

void sub_100078984(id a1)
{
  v3[0] = @"mimeType";
  v3[1] = @"utiType";
  v4[0] = &stru_100159478;
  v4[1] = &stru_100159498;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_100185960;
  qword_100185960 = v1;
}

void sub_100078E24(uint64_t a1)
{
  v1 = [*(a1 + 32) _knownAttachmentLimiterTests];
  v6 = [v1 allKeys];

  v2 = [v6 componentsJoinedByString:@"|"];
  v3 = [NSString stringWithFormat:@"%@\\[(%@)=([a-zA-Z0-9.-/]+)\\]", @"MSResultsKeyAttachments", v2];

  v4 = [[NSRegularExpression alloc] initWithPattern:v3 options:0 error:0];
  v5 = qword_100185970;
  qword_100185970 = v4;
}

void sub_100078EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100078F34(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v34 = a1;
  v7 = *(a1 + 32);
  v29 = v6;
  v8 = [v6 rangeAtIndex:1];
  v30 = [v7 substringWithRange:{v8, v9}];
  v28 = a4;
  v10 = *(v34 + 32);
  v11 = [v29 rangeAtIndex:2];
  v33 = [v10 substringWithRange:{v11, v12}];
  v13 = [*(v34 + 40) _testForAttachmentLimiterType:v30];
  if (v13)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(v34 + 48);
    v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v32 = *v36;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          if ((v13)[2](v13, v33, v16))
          {
            if (!*(*(*(v34 + 56) + 8) + 40))
            {
              v17 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(v34 + 48) count]);
              v18 = *(*(v34 + 56) + 8);
              v19 = *(v18 + 40);
              *(v18 + 40) = v17;
            }

            v20 = [v16 fileName];
            v21 = [v16 fetchLocalData];
            v22 = +[NSMutableDictionary dictionary];
            v23 = v22;
            if (v20)
            {
              [v22 setObject:v20 forKeyedSubscript:@"filename"];
            }

            if (v21)
            {
              [v23 setObject:v21 forKeyedSubscript:@"data"];
            }

            v24 = *(*(*(v34 + 56) + 8) + 40);
            v25 = [v16 part];
            v26 = [v25 partNumber];
            [v24 setObject:v23 forKey:v26];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v27 = MFLogGeneral();
    obj = v27;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Warning couldn't find a test for attachment limiter type '%@'", buf, 0xCu);
    }
  }

  *v28 = 1;
}

void sub_1000797C0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_100185980;
  qword_100185980 = v1;
}

void sub_1000799B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessageRuleLibraryHook;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10007A0EC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) messageChangeManager];
  [v7 performOperationOnMessages:v5 withMessageChangeManager:v6];
}

id sub_10007A3B4(uint64_t a1, void *a2)
{
  sub_1000B8A64(1);

  return [a2 _handleDefaultChanged:0];
}

void sub_10007A998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFNanoAccountHandler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10007B198(uint64_t a1)
{
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 notifyMobileMailAccountsChanged];

  [*(a1 + 32) _checkIfSettingsChanged];
  v2 = [*(a1 + 32) activeAccounts];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) syncProvider];
    [v3 addUpdateOrDeleteAccounts:v5];

    v2 = v5;
  }
}

void sub_10007B22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10007B2EC(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if ([v2 isEqualToString:@"kIncludeMailBoxesKey"])
  {
  }

  else
  {
    v3 = [*(a1 + 32) object];
    v4 = [v3 isEqualToString:NanoMailOrganizeByThreadKey];

    if (!v4)
    {
      return;
    }
  }

  v5 = *(a1 + 40);

  [v5 _checkIfSettingsChanged];
}

void sub_10007B3C0(id a1)
{
  v1 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v1 notifyMobileMailSwipeRightActionChanged];
}

void sub_10007B4AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10007B62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nano_mailbox];
  if ([v4 type] == 1)
  {
    v5 = [*(a1 + 32) displayName];
    [v4 setCustomName:v5];

    [v4 setFilterType:{objc_msgSend(*(a1 + 40), "inboxesFilterTypes")}];
    [v4 setSyncEnabled:1];
  }

  else
  {
    v6 = [v3 nano_displayName];
    [v4 setCustomName:v6];
  }

  v7 = [*(a1 + 40) selectedMailboxes];
  v8 = [v4 mailboxId];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [v4 setSyncEnabled:1];
    [v4 setFilterType:{objc_msgSend(v4, "filterType") | 1}];
  }

  return v4;
}

void sub_10007BC9C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"watchedMailboxes";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"MFNanoServerWatchedMailboxesDidChange" object:v4 userInfo:v5];
}

void sub_10007BDF4(uint64_t a1)
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  v3 = [v2 accountIdentities];

  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 setAccountIdentities:0];

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Received Darwin Notification Account Identity Available. Syncing to watch...", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [*(a1 + 32) syncProvider];
        [v11 syncStandaloneAccountIdentity:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) handleWatchAccountsUpdated];
  v12 = [*(a1 + 32) syncProvider];
  v13 = [v12 requestWatchAccounts];
}

void sub_10007C108(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano Received Darwin Notification Account Email Token Changed. Syncing to watch...", v5, 2u);
  }

  v3 = [*(a1 + 32) activeAccounts];
  if (v3)
  {
    v4 = [*(a1 + 32) syncProvider];
    [v4 addUpdateOrDeleteAccounts:v3];
  }

  [*(a1 + 32) handleWatchAccountsUpdated];
}

void sub_10007C4AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10007C7CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10007CBD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10007DE44(id a1)
{
  v1 = objc_alloc_init(MFNanoBridgeSettingsManager);
  v2 = qword_100185998;
  qword_100185998 = v1;
}

void sub_10007E004(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_10007EA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10007FB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10007FBAC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1001859C8;
  v9 = qword_1001859C8;
  if (!qword_1001859C8)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailLinesOfPreviewKey");
    qword_1001859C8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLinesOfPreviewKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10007FD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007FED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10007FF1C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1001859D8;
  v9 = qword_1001859D8;
  if (!qword_1001859D8)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailAskBeforeDeletingKey");
    qword_1001859D8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAskBeforeDeletingKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100080070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_10008028C()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1001859E8;
  v9 = qword_1001859E8;
  if (!qword_1001859E8)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailLoadRemoteImagesKey");
    qword_1001859E8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailLoadRemoteImagesKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000803E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000805B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000805FC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1001859F8;
  v9 = qword_1001859F8;
  if (!qword_1001859F8)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailOrganizeByThreadKey");
    qword_1001859F8 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailOrganizeByThreadKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100080750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080958()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185A08;
  v9 = qword_100185A08;
  if (!qword_100185A08)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailSwipeRightActionKey");
    qword_100185A08 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSwipeRightActionKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100080AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100080DD4()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185A18;
  v9 = qword_100185A18;
  if (!qword_100185A18)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailSignatureKey");
    qword_100185A18 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailSignatureKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100080F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000810FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100081144()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185A30;
  v9 = qword_100185A30;
  if (!qword_100185A30)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailAlwaysLoadContentDirectlyKey");
    qword_100185A30 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailAlwaysLoadContentDirectlyKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100081298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100081470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000814B8()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100185A40;
  v9 = qword_100185A40;
  if (!qword_100185A40)
  {
    v1 = sub_1000831E0();
    v7[3] = dlsym(v1, "NanoMailCloudNotificationsEnabledKey");
    qword_100185A40 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getNanoMailCloudNotificationsEnabledKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"MFNanoMailSoftLinking.h" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10008160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100081B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100081F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100082C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100082E38(uint64_t a1)
{
  sub_100082F1C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1001859A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:60 description:{@"Unable to find class %s", "NPSManager"}];

    __break(1u);
  }
}

void sub_100082F1C()
{
  v3[0] = 0;
  if (!qword_1001859B0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100083090;
    v3[4] = &unk_1001562E8;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/NanoPreferencesSync.framework/NanoPreferencesSync";
    qword_1001859B0 = _sl_dlopen();
  }

  if (!qword_1001859B0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFNanoBridgeSettingsManager.m" lineNumber:55 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100083090(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001859B0 = result;
  return result;
}

void sub_1000830FC(uint64_t a1)
{
  sub_1000831E0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKAccountIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1001859B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKAccountIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "NNMKAccountIdentity"}];

    __break(1u);
  }
}

void *sub_1000831E0()
{
  v4[0] = 0;
  if (!qword_1001859C0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100083358;
    v4[4] = &unk_1001562E8;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    qword_1001859C0 = _sl_dlopen();
  }

  v0 = qword_1001859C0;
  if (!qword_1001859C0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:13 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100083358(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001859C0 = result;
  return result;
}

void *sub_1000833C4(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailLinesOfPreviewKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083414(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultLinesOfPreview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083464(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailAskBeforeDeletingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000834B4(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultAskBeforeDeleting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083504(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailLoadRemoteImagesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083554(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultLoadRemoteImages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000835A4(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailOrganizeByThreadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001859F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000835F4(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultOrganizeByThread");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083644(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailSwipeRightActionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083694(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultSwipeRightAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000836E4(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailSignatureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100083734(uint64_t a1)
{
  sub_1000831E0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKSyncProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100185A20 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNNMKSyncProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoMailSoftLinking.h" lineNumber:27 description:{@"Unable to find class %s", "NNMKSyncProvider"}];

    __break(1u);
  }
}

void *sub_100083818(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultSignatureLocalizationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083868(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailAlwaysLoadContentDirectlyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000838B8(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultAlwaysLoadContentDirectly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083908(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailCloudNotificationsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100083958(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultCloudNotificationsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000839A8(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailPrivacyProtectionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000839F8(uint64_t a1)
{
  v2 = sub_1000831E0();
  result = dlsym(v2, "NanoMailDefaultAccountUidKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100185A58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100083A48(uint64_t a1)
{
  sub_100082F1C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSDomainAccessor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100185A60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getNPSDomainAccessorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFNanoBridgeSettingsManager.m" lineNumber:57 description:{@"Unable to find class %s", "NPSDomainAccessor"}];

    __break(1u);
  }
}

void sub_100083D6C(uint64_t a1)
{
  [*(*(a1 + 32) + 32) start];
  v2 = [[NNMKSyncProvider alloc] initWithDelegate:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(a1 + 32) _addObservers];
  v5 = [[MFNanoAccountHandler alloc] initWithExecutionQueue:*(*(a1 + 32) + 8) syncProvider:*(*(a1 + 32) + 16)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;
}

void sub_100084044(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10008416C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_100084220(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) activeAccounts];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  [*(*(a1 + 32) + 16) replyWithAccounts:v3];
}

void sub_1000845C0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano Loading first messages (count: %d)", buf, 8u);
    }

    v4 = +[MFNanoBridgeSettingsManager sharedInstance];
    v5 = [v4 organizeByThread];

    [*(a1 + 40) _fetchForMailboxes:*(a1 + 32) growFetchWindow:0];
    *buf = 0;
    v25 = buf;
    v26 = 0x2020000000;
    v27 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000848DC;
    v20[3] = &unk_1001595D0;
    v6 = *(a1 + 48);
    v22 = buf;
    v23 = v6;
    v15 = *(a1 + 32);
    v7 = v15.i64[0];
    v21 = vextq_s8(v15, v15, 8uLL);
    v8 = objc_retainBlock(v20);
    v9 = (v8[2])();
    v10 = v9;
    if ((v25[24] & 1) != 0 || ![v9 count])
    {
      v14 = [*(a1 + 40) _filteredMessagesArrayFromLibraryMessages:v10 syncedMailboxes:{*(a1 + 32), *&v15}];
      [*(*(a1 + 40) + 16) replyWithFirstMessages:v14 includesProtectedMessages:1 mailboxes:*(a1 + 32) organizedByThread:v5];
    }

    else
    {
      [*(*(a1 + 40) + 16) reportWillDownloadFirstMessages];
      v11 = *(a1 + 40);
      v12 = [MFLibraryMessage nanoMessageIdsForMailMessages:v10];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100084900;
      v17[3] = &unk_1001595F8;
      v16 = *(a1 + 32);
      v13 = v16.i64[0];
      v18 = vextq_s8(v16, v16, 8uLL);
      v19 = v5;
      [v11 _loadFullMesssagesForMessageIds:v12 messagesAlreadyLoadedByMessageId:0 libraryMessagesRetrievalBlock:v8 callback:v17];
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_1000849C8(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano Loading requested messages (count: %d)", buf, 8u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100084CA8;
  v19[3] = &unk_100159620;
  v15 = *(a1 + 32);
  v4 = v15.i64[0];
  v20 = vextq_s8(v15, v15, 8uLL);
  v21 = buf;
  v5 = objc_retainBlock(v19);
  v6 = (v5[2])();
  v7 = v6;
  if ((v23[24] & 1) != 0 || ![v6 count])
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) mailboxes];
    v12 = [v13 _filteredMessagesArrayFromLibraryMessages:v7 syncedMailboxes:v14];

    [*(a1 + 32) setHasProtectedMessages:1];
    [*(*(a1 + 40) + 16) replyWithMoreMessages:v12 context:*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MFLibraryMessage nanoMessageIdsForMailMessages:v7];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100084D88;
    v16[3] = &unk_100159648;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v17 = v10;
    v18 = v11;
    [v8 _loadFullMesssagesForMessageIds:v9 messagesAlreadyLoadedByMessageId:0 libraryMessagesRetrievalBlock:v5 callback:v16];

    v12 = v17;
  }

  _Block_object_dispose(buf, 8);
}

id sub_100084CA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) beforeDate];
  v4 = [*(a1 + 40) count];
  v5 = [*(a1 + 40) conversationId];
  v6 = *(*(a1 + 48) + 8);
  v7 = [*(a1 + 40) mailboxes];
  v8 = [v2 _libraryMessagesReceivedBefore:v3 count:v4 inConversationWithId:v5 protectedDataAvailable:v6 + 24 limitDateReceived:0 syncedMailboxes:v7];

  return v8;
}

void sub_100084D88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setHasProtectedMessages:a3];
  [*(*(a1 + 40) + 16) replyWithMoreMessages:v5 context:*(a1 + 32)];
}

void sub_100084EAC(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano Attempting to resend message (count: %d)", buf, 8u);
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x2020000000;
  v19 = -86;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100085164;
  v13[3] = &unk_100159670;
  v14 = *(a1 + 32);
  v15 = buf;
  v4 = objc_retainBlock(v13);
  v5 = (v4[2])();
  v6 = v5;
  if ((v17[24] & 1) != 0 || ![v5 count])
  {
    v9 = *(a1 + 40);
    v10 = [v9[2] syncedMailboxes];
    v11 = [v9 _filteredMessagesArrayFromLibraryMessages:v6 syncedMailboxes:v10];

    [*(*(a1 + 40) + 16) replyWithMessagesToResend:v11 includesProtectedMessages:1];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MFLibraryMessage nanoMessageIdsForMailMessages:v6];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000851D8;
    v12[3] = &unk_100159698;
    v12[4] = *(a1 + 40);
    [v7 _loadFullMesssagesForMessageIds:v8 messagesAlreadyLoadedByMessageId:0 libraryMessagesRetrievalBlock:v4 callback:v12];
  }

  _Block_object_dispose(buf, 8);
}

void sub_1000850F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100085164(uint64_t a1)
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  v3 = [v2 libraryMessagesForMessageIds:*(a1 + 32) protectedDataAvailable:*(*(a1 + 40) + 8) + 24];

  return v3;
}

void sub_100085298(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -86;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000854AC;
  v10[3] = &unk_100159670;
  v11 = *(a1 + 32);
  v12 = &v13;
  v2 = objc_retainBlock(v10);
  v3 = (v2[2])();
  v4 = v3;
  if ((v14[3] & 1) != 0 || ![v3 count])
  {
    v7 = *(a1 + 40);
    v8 = [v7[2] syncedMailboxes];
    v6 = [v7 _filteredMessagesArrayFromLibraryMessages:v4 syncedMailboxes:v8];

    [*(*(a1 + 40) + 16) replyWithMessagesToSendAsFetchResponse:v6 includesProtectedMessages:1];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [MFLibraryMessage nanoMessageIdsForMailMessages:v4];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100085520;
    v9[3] = &unk_100159698;
    v9[4] = *(a1 + 40);
    [v5 _loadFullMesssagesForMessageIds:v6 messagesAlreadyLoadedByMessageId:0 libraryMessagesRetrievalBlock:v2 callback:v9];
  }

  _Block_object_dispose(&v13, 8);
}

void sub_10008545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000854AC(uint64_t a1)
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  v3 = [v2 libraryMessagesForMessageIds:*(a1 + 32) protectedDataAvailable:*(*(a1 + 40) + 8) + 24];

  return v3;
}

void sub_1000855E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3 = [*(v1 + 64) accountWithId:*(a1 + 40)];
  [v2 replyWithAccountToResend:?];
}

id sub_1000857C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 attemptToCancelFullMessageLoadForMessageIds:v3];

  return [*(a1 + 32) _cancelLoadingContentForLibraryMessageId:*(a1 + 40)];
}

void sub_1000858E4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        [*(*(a1 + 32) + 32) cancelAllPendingOperations];
        [*(a1 + 32) _cancelLoadingContentForLibraryMessageId:v6];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_100085B9C(uint64_t a1)
{
  v2 = [*(a1 + 32) ef_map:&stru_100159700];
  [*(*(a1 + 40) + 80) addObjectsFromArray:?];
  [*(a1 + 40) _fetchForMailboxes:*(a1 + 32) growFetchWindow:0];
}

NSString *__cdecl sub_100085C20(id a1, NNMKMailbox *a2)
{
  v2 = [(NNMKMailbox *)a2 mailboxId];

  return v2;
}

void sub_100085CFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[VIPManager defaultInstance];
  v3 = [v4 sortedVIPs];
  [v2 _updateVIPList:v3 requestContext:*(a1 + 40)];
}

void sub_100085E80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100085F50;
  v4[3] = &unk_100158358;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 sendMessage:v2 progressHandler:v4];
}

void sub_100085F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) composedMessageId];
  [v3 replyWithMessageSendingProgress:a2 forComposedMessageId:?];
}

void sub_100086050(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MFNanoServerRequestWatchAccountReauthenticationNotification" object:0];
}

void sub_100086224(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isPaired])
  {
    log = [*(a1 + 40) userInfo];
    v2 = [log objectForKey:MailMessageStoreMessageKey];
    v3 = *(a1 + 32);
    v4 = [v3[2] syncedMailboxes];
    v5 = [v3 _filteredMessagesArrayFromLibraryMessages:v2 syncedMailboxes:v4];

    if ([v5 count])
    {
      [*(*(a1 + 32) + 16) addMessages:v5];
    }
  }

  else
  {
    loga = MFLogGeneral();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) userInfo];
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "#Nano Messages added notification ignored. Not paired. %{public}@", buf, 0xCu);
    }
  }
}

void sub_1000864A4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isPaired])
  {
    oslog = [*(a1 + 40) userInfo];
    v2 = [oslog objectForKey:MailMessageStoreMessageKey];
    v19 = [oslog objectForKey:MailMessageStoreChangedFlagsKey];
    v3 = [oslog objectForKey:@"oldFlagsByMessage"];
    if (v3)
    {
      v4 = [v2 mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v21 + 1) + 8 * i);
            v10 = [v3 objectForKeyedSubscript:v9];

            if (v10)
            {
              v11 = [v3 objectForKeyedSubscript:v9];
              v12 = +[MFLibraryMessage nnmkMailItemStatusFromMFMessageFlags:conversationFlags:](MFLibraryMessage, "nnmkMailItemStatusFromMFMessageFlags:conversationFlags:", [v11 unsignedLongLongValue], 0);

              if (+[MFLibraryMessage nnmkMailItemStatusFromMFMessageFlags:conversationFlags:](MFLibraryMessage, "nnmkMailItemStatusFromMFMessageFlags:conversationFlags:", [v9 messageFlags], 0) == v12)
              {
                [v4 removeObject:v9];
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v4 = v2;
    }

    v14 = [v19 objectForKey:MessageIsDeleted];
    v15 = [v14 BOOLValue];
    v16 = *(a1 + 32);
    if (v15)
    {
      [*(a1 + 32) _messagesCompacted:*(a1 + 40)];
    }

    else
    {
      v17 = [v16[2] syncedMailboxes];
      v18 = [v16 _filteredMessagesArrayFromLibraryMessages:v4 syncedMailboxes:v17];

      if ([v18 count])
      {
        [*(*(a1 + 32) + 16) updateMessagesStatus:v18];
      }
    }
  }

  else
  {
    oslog = MFLogGeneral();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 40) userInfo];
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "#Nano Message flags changed notification ignored. Not paired. %{public}@", buf, 0xCu);
    }
  }
}

void sub_100086924(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isPaired])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:EDConversationFlagsChangedConversationIDKey];
    v4 = [v3 longLongValue];

    v5 = EFStringWithInt64();
    v6 = [v2 objectForKeyedSubscript:EDConversationFlagsKey];
    v7 = [v6 unsignedLongLongValue];

    v8 = [v2 objectForKeyedSubscript:EDConversationFlagsOldFlags];
    v9 = [v8 unsignedLongLongValue];

    if ((v7 & 1) != (v9 & 1))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v10 = [*(*(a1 + 32) + 16) syncedMailboxes];
      v11 = [v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v11)
      {
        v12 = *v38;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (([*(*(&v37 + 1) + 8 * v13) filterType] & 0x20) != 0)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        if ((v7 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_19;
        }

        [MFMessageCriterion criterionForConversationID:v4];
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = -86;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100086E98;
        v15 = v30[3] = &unk_100159670;
        v31 = v15;
        v32 = &v33;
        v16 = objc_retainBlock(v30);
        v17 = (v16[2])();
        v18 = v17;
        if ((v34[3] & 1) != 0 || ![v17 count])
        {
          v23 = *(a1 + 32);
          v24 = [v23[2] syncedMailboxes];
          v25 = [v23 _filteredMessagesArrayFromLibraryMessages:v18 syncedMailboxes:v24];

          v26 = MFLogGeneral();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v25 count];
            *buf = 67109120;
            v42 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#Nano Syncing existing messages for important thread (count: %d)", buf, 8u);
          }

          [*(*(a1 + 32) + 16) updateConversationId:v5 notify:1 messages:v25];
        }

        else
        {
          v19 = MFLogGeneral();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v18 count];
            *buf = 67109120;
            v42 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#Nano Missing messages for important thread. Attempting to load (count: %d)", buf, 8u);
          }

          v21 = *(a1 + 32);
          v22 = [MFLibraryMessage nanoMessageIdsForMailMessages:v18];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100086F10;
          v28[3] = &unk_100159648;
          v28[4] = *(a1 + 32);
          v29 = v5;
          [v21 _loadFullMesssagesForMessageIds:v22 messagesAlreadyLoadedByMessageId:0 libraryMessagesRetrievalBlock:v16 callback:v28];
        }

        _Block_object_dispose(&v33, 8);
      }

      else
      {
LABEL_11:

        v14 = v7;
LABEL_19:
        [*(*(a1 + 32) + 16) updateConversationId:v5 notify:v14 & 1 messages:0];
      }
    }

    if (((v7 >> 2) & 1) != ((v9 >> 2) & 1))
    {
      [*(*(a1 + 32) + 16) updateConversationId:v5 mute:?];
    }
  }
}

void sub_100086DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100086E98(uint64_t a1)
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  v3 = [v2 loadLibraryMessagesFromLibraryMatchingCriterion:*(a1 + 32) count:10 protectedDataAvailable:*(*(a1 + 40) + 8) + 24];

  return v3;
}

void sub_100086FD0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isPaired])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:MailMessageStoreMessageKey];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100087184;
    v6[3] = &unk_100159748;
    v6[4] = *(a1 + 32);
    v4 = [v3 ef_compactMap:v6];
    if ([v4 count])
    {
      [*(*(a1 + 32) + 16) deleteMessagesWithIds:v4];
    }
  }

  else
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) userInfo];
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#Nano Messages compacted notification ignored. Not paired. %{public}@", buf, 0xCu);
    }
  }
}

id sub_100087184(uint64_t a1, void *a2)
{
  v3 = [a2 mf_externalReference];
  v4 = [v3 absoluteString];

  [*(*(a1 + 32) + 24) removeObjectForKey:v4];

  return v4;
}

void sub_1000872B8(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 allVIPs];
  v4 = [v3 allObjects];

  [*(a1 + 40) _updateVIPList:v4 requestContext:0];
}

void sub_10008766C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"AutoFetchJobAccount"];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"AutoFetchJobMailboxUid"];

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AutoFetchError"];

  v8 = [v5 nano_mailboxId];
  if (![*(*(a1 + 40) + 80) containsObject:v8])
  {
    goto LABEL_14;
  }

  if (!v3)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4CD0(v10);
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D4C8C(v10);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 nano_mailboxId];
      v12 = 138543874;
      v13 = v3;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Nano Fetch for account failed (accountId: %{public}@, mailbox: %{public}@, error: %{public}@)", &v12, 0x20u);
    }
  }

  [*(*(a1 + 40) + 80) removeObject:v8];
  [*(*(a1 + 40) + 16) notifyFetchCompletedForMailboxId:v8 error:v7];
LABEL_14:
}

void sub_100087DF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v9 = [*(a1 + 40) messageId];
  v3 = [v2 objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 16) isPaired];

    if (v4)
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);

      [v5 addMessageContent:v6 forMessage:v7 loadedProtected:v8];
    }
  }

  else
  {
  }
}

void sub_10008812C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v10 = [*(a1 + 40) messageId];
  v3 = [v2 objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 16) isPaired];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) messageId];
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = v7;
    [v5 addImageAttachment:v6 forMessageId:? contentId:? loadedProtected:?];
  }
}

void sub_10008843C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v10 = [*(a1 + 40) messageId];
  v3 = [v2 objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 16) isPaired];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) messageId];
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = v7;
    [v5 addAttachmentData:v6 forMessageId:? contentId:? loadedProtected:?];
  }
}

void sub_10008866C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v6 = [*(a1 + 40) messageId];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);
    v7 = [v4 messageId];
    [v5 removeObjectForKey:?];
  }
}

void sub_100088860(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v7 = [*(a1 + 40) messageId];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    v8 = [*(a1 + 40) messageId];
    [v4 removeObjectForKey:?];

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 16);
    v9 = [v5 messageId];
    [v6 reportMessageContentDownloadFailureForMessageId:?];
  }
}

void sub_100088D68(uint64_t a1, void *a2, unsigned int a3)
{
  v31 = a2;
  v5 = [NSMutableDictionary dictionaryWithDictionary:?];
  v6 = v5;
  v28 = a3;
  if (*(a1 + 32))
  {
    [v5 addEntriesFromDictionary:?];
  }

  v40 = -86;
  v7 = +[MFMailMessageLibrary defaultInstance];
  v8 = [v31 allKeys];
  v30 = a1;
  v29 = [v7 libraryMessagesForMessageIds:v8 protectedDataAvailable:&v40];

  v9 = [v6 allKeys];
  v32 = [v9 mutableCopy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v29;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v12)
  {
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v15 nanoMessageId];
        v17 = [v6 objectForKeyedSubscript:v16];

        if (v17)
        {
          v18 = [v17 messageId];
          [v32 removeObject:v18];

          [v17 setStatus:{+[MFLibraryMessage nnmkMailItemStatusFromMFMessageFlags:conversationFlags:](MFLibraryMessage, "nnmkMailItemStatusFromMFMessageFlags:conversationFlags:", objc_msgSend(v15, "messageFlags"), objc_msgSend(v15, "conversationFlags"))}];
        }

        else
        {
          if (!v11)
          {
            v11 = +[NSMutableDictionary dictionary];
          }

          v19 = [v15 nanoMessageId];
          [v11 setObject:v15 forKeyedSubscript:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v12);
  }

  [v6 removeObjectsForKeys:v32];
  [v11 removeObjectsForKeys:v32];
  if ([v11 count])
  {
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v11 count];
      *buf = 67109120;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#Nano Missing %d messages. Attempting to load.", buf, 8u);
    }

    v22 = *(v30 + 40);
    v23 = [v11 allValues];
    v24 = [MFLibraryMessage nanoMessageIdsForMailMessages:v23];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100089258;
    v33[3] = &unk_100159798;
    v25 = *(v30 + 48);
    v34 = *(v30 + 56);
    v35 = v28;
    [v22 _loadFullMesssagesForMessageIds:v24 messagesAlreadyLoadedByMessageId:v6 libraryMessagesRetrievalBlock:v25 callback:v33];

    v26 = v34;
  }

  else
  {
    v27 = *(v30 + 56);
    v26 = [v6 allValues];
    (*(v27 + 16))(v27, v26, v28);
  }
}

id sub_1000892B0(id a1, NNMKMessage *a2)
{
  v2 = [(NNMKMessage *)a2 messageId];

  return v2;
}

id sub_1000897D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 nanoMessage];
  if ([*(*(a1 + 32) + 16) isMessageOkForSyncedMailboxes:v5])
  {
    v6 = v5;
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 messageId];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#Nano Dropping message because it does not belong to synced mailboxes. %{public}@", &v10, 0xCu);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

id sub_100089A40(id a1, NNMKMailbox *a2)
{
  v2 = [(NNMKMailbox *)a2 url];
  v3 = [v2 absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];

  return v4;
}

BOOL sub_100089AD4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100089BD0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MobileMail.NanoServer.ContentLoader", v3);
  v2 = qword_100185A68;
  qword_100185A68 = v1;
}

void sub_100089DF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100089FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089FFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _networkStatusChanged];
}

void sub_10008A0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFNanoServerFullMessageLoader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10008A258(uint64_t a1)
{
  [*(a1 + 32) resetExponentialBackoff];
  v2 = [[MFNanoServerFullMessageLoaderBatchRequest alloc] initWithMessageIds:*(a1 + 40) completion:*(a1 + 48)];
  v3 = [*(a1 + 32) requests];
  [v3 addObject:v2];

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) count];
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Batch request scheduled - message count: %ld - request: %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) _dispatchOperation];
}

void sub_10008A450(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) requests];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v7 = *(a1 + 40);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v8)
        {
          v9 = *v12;
          do
          {
            v10 = 0;
            do
            {
              if (*v12 != v9)
              {
                objc_enumerationMutation(v7);
              }

              [v6 cancelRequestForMessageId:*(*(&v11 + 1) + 8 * v10)];
              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v7 countByEnumeratingWithState:&v11 objects:v19 count:16];
          }

          while (v8);
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [v2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v3);
  }
}

void sub_10008A69C(uint64_t a1)
{
  v2 = [*(a1 + 32) requests];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) operationQueue];
  [v3 cancelAllOperations];
}

void sub_10008B214(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 nanoMessageWithHeaders:a3];
  v6 = *(a1 + 32);
  v7 = [v8 nanoMessageId];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void sub_10008B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10008B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008B564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B5A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008B5BC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) requests];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 dequeueAllMessageIds];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        if ([*(*(*(a1 + 40) + 8) + 40) count])
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10008B810(uint64_t a1)
{
  v2 = [*(a1 + 32) failedMessageIdsByRequest];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = [*(a1 + 32) failedMessageIdsByRequest];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

    v3 = v4;
  }

  [v3 addObjectsFromArray:*(a1 + 48)];
  v6 = *(a1 + 32);
  if ((*(v6 + 10) & 1) == 0)
  {
    *(v6 + 10) = 1;
    [*(a1 + 32) _exponentialBackoff];
    v8 = v7;
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Scheduling retry in %f seconds", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v10 = dispatch_time(0, (v8 * 1000000000.0));
    v11 = [*(a1 + 32) privateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008BA4C;
    block[3] = &unk_1001567F0;
    objc_copyWeak(&v13, buf);
    dispatch_after(v10, v11, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void sub_10008BA4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [WeakRetained failedMessageIdsByRequest];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = *v17;
    *&v5 = 134218242;
    v15 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [WeakRetained failedMessageIdsByRequest];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 count];
          *buf = v15;
          v21 = v12;
          v22 = 2114;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Enqueueing request to retry - message count: %ld - request: %{public}@", buf, 0x16u);
        }

        v13 = [v10 allObjects];
        [WeakRetained _enqueueMessageIds:v13 forRequest:v8];

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v14 = [WeakRetained failedMessageIdsByRequest];
  [v14 removeAllObjects];

  [WeakRetained setIsRetryScheduled:0];
}

void sub_10008BDC8(uint64_t a1, __n128 a2)
{
  v3 = 0;
  v4 = 0;
  a2.n128_u64[0] = 134218242;
  v14 = a2;
  while (1)
  {
    v5 = [*(a1 + 32) requests];
    v6 = v3 < [v5 count];

    if (!v6)
    {
      break;
    }

    v7 = [*(a1 + 32) requests];
    v8 = [v7 objectAtIndexedSubscript:v3];

    [v8 addResults:*(a1 + 40) isProtectedMessage:*(a1 + 56)];
    [v8 cancelRequestForMessageIds:*(a1 + 48)];
    if ([v8 isRequestCompleted])
    {
      v9 = [*(a1 + 32) callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008C07C;
      block[3] = &unk_100156400;
      v16 = v8;
      dispatch_async(v9, block);

      if (!v4)
      {
        v4 = objc_alloc_init(NSMutableIndexSet);
      }

      [v4 addIndex:v3];
      v10 = v16;
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 results];
        v12 = [v11 count];
        *buf = v14.n128_u32[0];
        v18 = v12;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Request not completed - message count: %ld - request: %@", buf, 0x16u);
      }
    }

    ++v3;
  }

  if (v4)
  {
    v13 = [*(a1 + 32) requests];
    [v13 removeObjectsAtIndexes:v4];
  }
}

void sub_10008C07C(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) results];
    v4 = [v3 count];
    v5 = *(a1 + 32);
    v8 = 134218242;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano MFNanoServerFullMessageLoader: Request completed - message count: %ld - request: %@", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) completionBlock];
  v7 = [*(a1 + 32) results];
  (v6)[2](v6, v7, [*(a1 + 32) resultIncludesProtectedMessages]);
}

void sub_10008C2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 40));

  _Unwind_Resume(a1);
}

void sub_10008C2FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    [WeakRetained _processPendingRequests];
  }
}

id sub_10008C6C4(uint64_t a1)
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  *(*(a1 + 32) + 8) = [v2 protectedDataAvailability] == 0;

  v3 = *(a1 + 32);

  return [v3 _suspendOrResumeOperationQueue];
}

void sub_10008D424(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_100185A78;
  qword_100185A78 = v1;

  [qword_100185A78 setName:@"com.apple.MFNanoServerMessageContentLoader.database"];
  [qword_100185A78 setMaxConcurrentOperationCount:3];
  [qword_100185A78 setQualityOfService:17];
  v3 = objc_alloc_init(NSOperationQueue);
  v4 = qword_100185A80;
  qword_100185A80 = v3;

  [qword_100185A80 setName:@"com.apple.MFNanoServerMessageContentLoader.parsing"];
  [qword_100185A80 setMaxConcurrentOperationCount:3];
  [qword_100185A80 setQualityOfService:17];
  v5 = objc_alloc_init(NSOperationQueue);
  v6 = qword_100185A88;
  qword_100185A88 = v5;

  [qword_100185A88 setName:@"com.apple.MFNanoServerMessageContentLoader.attachments"];
  [qword_100185A88 setMaxConcurrentOperationCount:1];
  v7 = qword_100185A88;

  [v7 setQualityOfService:17];
}

void sub_10008D580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFNanoServerMessageContentLoader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10008DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10008DAC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008DADC(uint64_t a1)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  if (([v6 isCancelled] & 1) == 0)
  {
    v4 = [*(a1 + 32) _attemptToLoadLibraryMessageWithContentFromDatabase];
    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 _parseContentFromMessageAndNotifyDelegate:v4 loadedProtected:1];
    }

    else
    {
      [v5 _downloadContent];
    }
  }
}

void sub_10008DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10008E000(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  if (([v2 isCancelled] & 1) == 0)
  {
    v5 = objc_alloc_init(MFNanoServerMessageContentParser);
    [*(*(a1 + 32) + 64) addObject:v5];
    if (v5)
    {
      v6 = dispatch_semaphore_create(0);
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v5);
    v7 = *(a1 + 40);
    [*(*(a1 + 32) + 40) screenWidth];
    v9 = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008E364;
    v15[3] = &unk_100159990;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v16 = *(a1 + 40);
    v20 = *(a1 + 56);
    v10 = v6;
    v17 = v10;
    [(MFNanoServerMessageContentParser *)v5 parseMessage:v7 maxImageWidth:v15 completionBlock:v9];
    if (v10)
    {
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 40) nanoMessageId];
        *buf = 138543362;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#Nano Waiting for parse to finished. Holding on so no other request in enqueued until this is finished. %{public}@", buf, 0xCu);
      }

      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) nanoMessageId];
        *buf = 138543362;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#Nano Received signal, parse finished. %{public}@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void sub_10008E2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);

  _Unwind_Resume(a1);
}

void sub_10008E364(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained[8] removeObject:v10];
  if (v13)
  {
    v11 = [MessageBodyLoader copySummaryForMessage:*(a1 + 32) downloadIfNecessary:1];
    v12 = [*(a1 + 32) nanoMessage];
    [v12 setPreview:v11];
    [WeakRetained _notifyDelegateThatReceivedMailContent:v13 forMessage:v12 loadedProtected:*(a1 + 64)];
    if ([v8 count])
    {
      [WeakRetained _startLoadingAttachments:v8 messageBody:v7 loadedProtected:*(a1 + 64)];
    }

    else
    {
      [WeakRetained _notifyDelegateDidFinish];
    }
  }

  else
  {
    [WeakRetained _notifyDelegateOfFailure];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10008E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

void sub_10008E7A4(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  if (([v2 isCancelled] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) mf_lastPartNumber];
    v7 = [v5 partWithNumber:v6];

    v8 = [*(a1 + 48) _attachmentForURL:*(a1 + 40) mimePart:v7];
    v25 = 0;
    v9 = [v8 fetchDataSynchronously:&v25];
    v10 = v25;
    if (v10)
    {
      [*(a1 + 48) _notifyDelegateOfFailure];
    }

    else if ([v9 length])
    {
      if ([v8 isImageFile])
      {
        v28 = @"downloadedImageSize";
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 length]);
        v29 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        [MFPowerController powerlog:@"NanoServer" eventData:v12];

        v13 = +[NSMutableData data];
        [*(*(a1 + 48) + 40) screenWidth];
        v15 = v14;
        [*(*(a1 + 48) + 40) screenScale];
        v17 = v15 * v16;
        *&v17 = v17;
        [NNMKImageUtility scaleImageFromData:v9 destinationData:v13 maxWidth:v17];
        v18 = *(a1 + 48);
        v19 = [v8 contentID];
        [v18 _notifyDelegateThatReceivedAttachment:v13 forContentId:v19 loadedProtected:*(a1 + 72)];
      }

      else
      {
        v26 = @"downloadedAttachmentSize";
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 length]);
        v27 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [MFPowerController powerlog:@"NanoServer" eventData:v21];

        v22 = *(a1 + 48);
        v13 = [v8 contentID];
        [v22 _notifyDelegateThatReceivedAttachment:v9 forContentId:v13 loadedProtected:*(a1 + 72)];
      }
    }

    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 24) - 1;
    *(v23 + 24) = v24;
    if (!v24)
    {
      [*(a1 + 48) _notifyDelegateDidFinish];
    }
  }
}

id sub_10008ED34(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return [*(*(a1 + 32) + 16) messageContentLoader:? receivedMailContent:? forMessage:? loadedProtected:?];
}

id sub_10008EE18(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return [*(*(a1 + 32) + 16) messageContentLoader:? receivedImageAttachment:? contentId:? loadedProtected:?];
}

id sub_10008EEFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return [*(*(a1 + 32) + 16) messageContentLoader:? receivedAttachmentData:? contentId:? loadedProtected:?];
}

void sub_10008F160(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10008F42C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_10008F648(void *a1)
{
  (*(a1[5] + 16))();
  [*(a1[4] + 56) lock];
  [*(a1[4] + 48) removeObject:*(*(a1[6] + 8) + 40)];
  [*(a1[4] + 56) unlock];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_10008F7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFNanoServerMessageContentParser;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10008FA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10008FA88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 ef_publicDescription];
      sub_1000D4FA4(v9, v31, v8);
    }
  }

  v10 = *(a1 + 56);
  v27 = 0;
  v28 = 0;
  v11 = [WeakRetained parseMessageWithLoadingContextEvent:v5 maxImageWidth:&v28 messageBody:&v27 attachmentURLsToLoad:v10];
  v12 = v28;
  v13 = v27;
  if (*(a1 + 32))
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 ef_publicDescription];
      *buf = 138543362;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#Nano Downloading Html Content for Message. %{public}@", buf, 0xCu);
    }

    v16 = WeakRetained[3];
    v17 = *(a1 + 32);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10008FD6C;
    v22 = &unk_100159A30;
    v23 = v11;
    v26 = *(a1 + 40);
    v24 = v12;
    v25 = v13;
    v18 = [v16 dataTaskWithURL:v17 completionHandler:&v19];
    [v18 resume];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10008FD6C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) messageId];
      objc_claimAutoreleasedReturnValue();
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000D4FFC();
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) setHtmlContentData:v7];
    }
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void sub_100090D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  *(v26 - 128) = 0;

  _Unwind_Resume(a1);
}

void sub_1000913BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100091718(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100185A98;
  qword_100185A98 = v1;
}

void sub_100091C80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100091E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFNanoServerMessageContentURLProtocol;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100092128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100092194(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained client];
  v5 = [v9 response];
  [v4 URLProtocol:WeakRetained didReceiveResponse:v5 cacheStoragePolicy:2];

  v6 = [WeakRetained client];
  v7 = [v9 data];
  [v6 URLProtocol:WeakRetained didLoadData:v7];

  v8 = [WeakRetained client];
  [v8 URLProtocolDidFinishLoading:WeakRetained];
}

void sub_1000922BC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained client];
  [v4 URLProtocol:WeakRetained didFailWithError:v5];
}

void sub_100092688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000926B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didLoadContentEvent:v6 error:v5];
}

void sub_100092E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void sub_10009300C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 dataUsingEncoding:4];
  [v3 appendData:v4];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_100093F14(uint64_t a1)
{
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100094810;
  v65 = sub_100094820;
  v66 = 0;
  if ([*(a1 + 32) sendingType] != 1)
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) referenceMessageId];
    v5 = [v11 _libraryMessageForMessageId:v12];

    v13 = [v5 mailbox];
    v14 = [v13 account];
    v15 = [v14 storeForMailboxUid:v13];
    if (v15)
    {
      [v5 setMessageStore:v15];
    }

    else
    {
      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 ef_publicDescription];
        *buf = 138543362;
        v69 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#Warning #Nano failed to find a store for message %{public}@, things may behave unexpectedly", buf, 0xCu);
      }
    }

    if (!v5)
    {
      v8 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v8 = [[MFNanoMailReplyWorkaround alloc] initWithLibraryMessage:v5];
    if ([*(a1 + 32) sendingType] == 2)
    {
      v18 = [[_MFMailCompositionContext alloc] initReplyToMessage:0 legacyMessage:v5];
    }

    else if ([*(a1 + 32) sendingType] == 3)
    {
      v18 = [[_MFMailCompositionContext alloc] initReplyAllToMessage:0 legacyMessage:v5];
    }

    else
    {
      if ([*(a1 + 32) sendingType] != 4)
      {
LABEL_26:
        v23 = [MFMessageLoadingContext alloc];
        v24 = sub_100027C70();
        v25 = [v24 defaultAttachmentManager];
        v26 = [v23 initWithMessage:v5 attachmentManager:v25];

        v27 = +[EFScheduler immediateScheduler];
        [v26 load:0 scheduler:v27];

        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100094828;
        v57[3] = &unk_100159B20;
        v60 = &v61;
        v58 = *(a1 + 32);
        v59 = *(a1 + 48);
        v28 = [v26 addLoadObserver:v57];

        goto LABEL_27;
      }

      v18 = [[_MFMailCompositionContext alloc] initForwardOfMessage:0 legacyMessage:v5];
    }

    v22 = v62[5];
    v62[5] = v18;

    goto LABEL_26;
  }

  v2 = [[_MFMailCompositionContext alloc] initWithComposeType:0];
  v3 = v62[5];
  v62[5] = v2;

  v4 = [*(a1 + 32) accountId];
  v5 = [MailAccount accountWithUniqueId:v4];

  v6 = [v5 defaultEmailAddress];
  v7 = v6;
  if (!v6)
  {
    v7 = [v5 firstEmailAddress];
  }

  [v62[5] setPreferredSendingEmailAddress:v7];
  if (!v6)
  {
  }

  v8 = [*(a1 + 32) accountId];
  if (v8)
  {
    v9 = [v62[5] preferredSendingEmailAddress];
    v10 = v9 == 0;

    if (v10)
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [*(a1 + 32) accountId];
        v21 = [*(a1 + 32) composedMessageId];
        sub_1000D50C4(v20, v21, buf, v19);
      }

      (*(*(a1 + 48) + 16))();
      v8 = 0;
      goto LABEL_37;
    }

    v8 = 0;
  }

LABEL_28:

  if (!v62[5])
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_39;
  }

  v29 = [*(a1 + 32) to];
  [v62[5] setToRecipients:v29];

  v30 = [*(a1 + 32) cc];
  [v62[5] setCcRecipients:v30];

  v31 = [*(a1 + 32) subject];
  [v62[5] setSubject:v31];

  [v62[5] setLoadRest:1];
  v32 = [*(a1 + 32) includeAttachments];
  [v62[5] setIncludeAttachments:v32];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = [*(a1 + 32) attachments];
  v34 = [v33 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v34)
  {
    v35 = *v54;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v53 + 1) + 8 * i);
        v38 = v62[5];
        v39 = [v37 data];
        v40 = [v37 mimeType];
        v41 = [v37 fileName];
        v42 = [v38 addAttachmentData:v39 mimeType:v40 fileName:v41];
      }

      v34 = [v33 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v34);
  }

  v43 = v62[5];
  v44 = [*(a1 + 32) body];
  [v43 setMessageBody:v44 isHTML:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094BB8;
  block[3] = &unk_100159BC0;
  v8 = v8;
  v52 = &v61;
  v45 = *(a1 + 40);
  v46 = *(a1 + 48);
  v48 = v8;
  v49 = v45;
  v51 = v46;
  v50 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  v5 = v48;
LABEL_37:

LABEL_39:
  _Block_object_dispose(&v61, 8);
}

void sub_100094658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100094810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100094828(uint64_t a1, void *a2)
{
  v21 = a2;
  obj = [v21 content];
  if (obj)
  {
    v2 = [v21 context];
    [*(*(*(a1 + 48) + 8) + 40) setLoadingContext:v2];

    if ([*(a1 + 32) includeAttachments])
    {
      if ([obj count] == 1)
      {
        v3 = [obj lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v5 = [obj lastObject];
          v6 = [v5 attachmentsInDocument];

          obj = v6;
        }
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = obj;
      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v11 = +[MFAttachmentManager allManagers];
              v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                v13 = *v25;
                do
                {
                  v14 = 0;
                  do
                  {
                    if (*v25 != v13)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v15 = [*(*(&v24 + 1) + 8 * v14) attachmentForTextAttachment:v10 error:0];
                    v16 = v15;
                    if (v15)
                    {
                      v17 = [v15 fetchDataSynchronously:0];
                      v18 = [v10 fileWrapperForcingDownload:1];
                    }

                    v14 = v14 + 1;
                  }

                  while (v12 != v14);
                  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
                }

                while (v12);
              }
            }

            v9 = v9 + 1;
          }

          while (v9 != v7);
          v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v7);
      }
    }

    [*(*(*(a1 + 48) + 8) + 40) setOriginalContent:obj];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    obj = 0;
  }
}

void sub_100094BB8(uint64_t a1)
{
  v2 = objc_alloc_init(MFNanoServerMessageSenderComposeDelegate);
  [(MFNanoServerMessageSenderComposeDelegate *)v2 setReplyWorkaround:*(a1 + 32)];
  [(MFNanoServerMessageSenderComposeDelegate *)v2 setCompositionContext:*(*(*(a1 + 64) + 8) + 40)];
  -[MFNanoServerMessageSenderComposeDelegate setIncludesAttachments:](v2, "setIncludesAttachments:", [*(*(*(a1 + 64) + 8) + 40) includeAttachments]);
  v3 = *(*(a1 + 40) + 40);
  v4 = [*(*(*(a1 + 64) + 8) + 40) contextID];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094D98;
  v10[3] = &unk_100159B98;
  v10[4] = *(a1 + 40);
  v9 = *(a1 + 56);
  v5 = v9;
  v12 = v9;
  v11 = *(a1 + 48);
  [(MFNanoServerMessageSenderComposeDelegate *)v2 setAttachmentConfigCompletion:v10];
  [MFComposeTypeFactory setupWithCompositionModel:*(*(*(a1 + 64) + 8) + 40) delegate:v2];
  v6 = [*(a1 + 48) attachments];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(MFNanoServerMessageSenderComposeDelegate *)v2 attachmentConfigCompletion];
    v8[2]();
  }
}

void sub_100094D98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(*(*(a1 + 56) + 8) + 40) contextID];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *(*(a1 + 32) + 40);
  v6 = [*(*(*(a1 + 56) + 8) + 40) contextID];
  [v5 setObject:0 forKeyedSubscript:v6];

  v7 = [MFComposeTypeFactory messageFromDelegate:v4 originatingBundleID:0 sourceAccountManagement:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100094F98;
  v13[3] = &unk_100159B48;
  v13[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v14 = v8;
  v15 = v9;
  [v7 addSuccessBlock:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000951A4;
  v10[3] = &unk_100159B70;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v7 addFailureBlock:v10];
}

void sub_100094F98(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _sendComposedMessage:?];
  [*(*(a1 + 32) + 24) addObject:v3];
  v4 = *(*(a1 + 40) + 16);
  if (!v3)
  {
    v4();
    goto LABEL_15;
  }

  v4();
  v5 = [*(*(*(a1 + 48) + 8) + 40) composeType];
  if ((v5 - 4) >= 2)
  {
    if (v5 != 6)
    {
      goto LABEL_8;
    }

    v8 = [*(*(*(a1 + 48) + 8) + 40) legacyMessage];
    [v8 markAsViewed];

    v7 = [*(*(*(a1 + 48) + 8) + 40) legacyMessage];
    [v7 markAsForwarded];
  }

  else
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) legacyMessage];
    [v6 markAsViewed];

    v7 = [*(*(*(a1 + 48) + 8) + 40) legacyMessage];
    [v7 markAsReplied];
  }

LABEL_8:
  v9 = dispatch_time(0, 30000000000);
  v10 = *(a1 + 32);
  while (!dispatch_semaphore_wait(*(v10 + 16), v9))
  {
    v11 = [*(*(a1 + 32) + 32) objectForKey:v3];
    v10 = *(a1 + 32);
    if (v11)
    {
      [*(v10 + 32) removeObjectForKey:v3];
      if ([v11 BOOLValue])
      {
        v12 = 0x7FFFFFFFLL;
      }

      else
      {
        v12 = -1;
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v12);

      break;
    }
  }

LABEL_15:
  [v13 setMessageBody:0];
}

void sub_1000951A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) accountId];
    v6 = [*(a1 + 32) composedMessageId];
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Nano Unable to send composed message. Account Id: %{public}@, ComposedMessageId: %{public}@, error: %{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000954F4(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@://%lld", @"x-last-sent-message", [v9 libraryID]);
  v6 = [NSURL URLWithString:v5];

  if ([*(*(a1 + 32) + 24) containsObject:v6])
  {
    [*(*(a1 + 32) + 24) removeObject:v6];
    v7 = *(*(a1 + 32) + 32);
    v8 = [NSNumber numberWithBool:a3];
    [v7 setObject:v8 forKey:v6];
  }
}

void sub_100095850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1000959D0(uint64_t a1)
{
  v5 = objc_alloc_init(MFNanoServerMessageSenderComposeDelegate);
  [(MFNanoServerMessageSenderComposeDelegate *)v5 setCompositionContext:*(a1 + 32)];
  -[MFNanoServerMessageSenderComposeDelegate setIncludesAttachments:](v5, "setIncludesAttachments:", [*(a1 + 32) includeAttachments]);
  [MFComposeTypeFactory setupWithCompositionModel:*(a1 + 32) delegate:v5];
  v2 = [MFComposeTypeFactory messageFromDelegate:v5 originatingBundleID:0 sourceAccountManagement:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100095B2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class sub_1000966FC(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_100185AC0)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_100096924;
    v7[4] = &unk_1001562E8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents";
    qword_100185AC0 = _sl_dlopen();
  }

  if (!qword_100185AC0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreRecentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFNanoServerMessageSender.m" lineNumber:34 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCRRecentContactsLibraryClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFNanoServerMessageSender.m" lineNumber:35 description:{@"Unable to find class %s", "CRRecentContactsLibrary"}];

LABEL_10:
    __break(1u);
  }

  qword_100185AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100096924(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100185AC0 = result;
  return result;
}

void sub_100096AA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v59 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v57 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*v2 count]);
  v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v56 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v55 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
  v63 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  v61 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  v62 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 32) count]);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v3 = [*(a1 + 32) allKeys];
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v4)
  {
    v5 = *v69;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v69 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v68 + 1) + 8 * i);
        v8 = [*(a1 + 40) _libraryMessageForMessageId:v7];
        v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v10 = [v9 unsignedIntegerValue];

        if (v8)
        {
          v11 = [v8 mailbox];
          v12 = [v11 store];
          [v8 setMessageStore:v12];
          if ([*(a1 + 40) _status:v10 containsState:8] && (v13 = objc_msgSend(v8, "messageFlags"), v14 = v59, (v13 & 0x10) == 0) || (objc_msgSend(*(a1 + 40), "_status:containsState:", v10, 8) & 1) == 0 && (v15 = objc_msgSend(v8, "messageFlags"), v14 = v57, (v15 & 0x10) != 0))
          {
            [v14 addObject:v8];
          }

          if ([*(a1 + 40) _status:v10 containsState:1] & 1) == 0 && (v16 = objc_msgSend(v8, "messageFlags"), v17 = v58, (v16 & 1) == 0) || objc_msgSend(*(a1 + 40), "_status:containsState:", v10, 1) && (v18 = objc_msgSend(v8, "messageFlags"), v17 = v56, (v18))
          {
            [v17 addObject:v8];
          }

          if ([*(a1 + 40) _status:v10 containsState:256] && (objc_msgSend(v8, "messageFlags") & 0x200000) == 0)
          {
            [v55 addObject:v8];
          }

          if ([*(a1 + 40) _status:v10 containsState:1024])
          {
            v19 = [v12 mailbox];
            v20 = [v63 objectForKeyedSubscript:v19];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
            }

            v27 = v22;

            [v27 addObject:v8];
            v28 = [v12 mailbox];
            [v63 setObject:v27 forKeyedSubscript:v28];

            v29 = [v12 mailbox];
            [v62 setObject:v12 forKeyedSubscript:v29];
            goto LABEL_30;
          }

          if ([*(a1 + 40) _status:v10 containsState:512])
          {
            v23 = [v12 mailbox];
            v24 = [v61 objectForKeyedSubscript:v23];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(a1 + 32) count]);
            }

            v27 = v26;

            [v27 addObject:v8];
            v30 = [v12 mailbox];
            [v61 setObject:v27 forKeyedSubscript:v30];

            v29 = [v12 mailbox];
            [v62 setObject:v12 forKeyedSubscript:v29];
LABEL_30:
          }
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v4);
  }

  v31 = +[MailChangeManager sharedChangeManager];
  [v31 pause];
  if ([v59 count])
  {
    v32 = [MCSFlagChange alloc];
    v33 = [NSSet setWithObject:MFMessageIsFlagged];
    v34 = [(MCSFlagChange *)v32 initWithFlagsToSet:v33 flagsToClear:0 reason:0];

    [*(a1 + 40) _addOperation:v34 withMessages:v59 toChangeManager:v31];
  }

  if ([v57 count])
  {
    v35 = [MCSFlagChange alloc];
    v36 = [NSSet setWithObject:MFMessageIsFlagged];
    v37 = [(MCSFlagChange *)v35 initWithFlagsToSet:0 flagsToClear:v36 reason:0];

    [*(a1 + 40) _addOperation:v37 withMessages:v57 toChangeManager:v31];
  }

  if ([v58 count])
  {
    v38 = [MCSFlagChange alloc];
    v39 = [NSSet setWithObject:MessageIsRead];
    v40 = [(MCSFlagChange *)v38 initWithFlagsToSet:v39 flagsToClear:0 reason:0];

    [*(a1 + 40) _addOperation:v40 withMessages:v58 toChangeManager:v31];
  }

  if ([v56 count])
  {
    v41 = [MCSFlagChange alloc];
    v42 = [NSSet setWithObject:MessageIsRead];
    v43 = [(MCSFlagChange *)v41 initWithFlagsToSet:0 flagsToClear:v42 reason:0];

    [*(a1 + 40) _addOperation:v43 withMessages:v56 toChangeManager:v31];
  }

  if ([v55 count])
  {
    v44 = objc_alloc_init(MCSJunk);
    [*(a1 + 40) _addOperation:v44 withMessages:v55 toChangeManager:v31];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v45 = [v62 allKeys];
  v46 = [v45 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v46)
  {
    v47 = *v65;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(v45);
        }

        v49 = *(*(&v64 + 1) + 8 * j);
        v50 = [v62 objectForKeyedSubscript:v49];
        v51 = [v63 objectForKeyedSubscript:v49];
        if ([v51 count])
        {
          v52 = [[MCSArchive alloc] initWithStore:v50];
          [*(a1 + 40) _addOperation:v52 withMessages:v51 toChangeManager:v31];
        }

        v53 = [v61 objectForKeyedSubscript:v49];
        if ([v53 count])
        {
          v54 = [[MCSDelete alloc] initWithStore:v50];
          [*(a1 + 40) _addOperation:v54 withMessages:v53 toChangeManager:v31];
        }
      }

      v46 = [v45 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v46);
  }

  [v31 resume];
}

void sub_10009761C(uint64_t a1)
{
  v2 = [*(a1 + 32) url];

  if (v2)
  {
    v3 = [*(a1 + 32) url];
    v4 = [v3 absoluteString];
    v5 = [MailAccount mailboxUidFromActiveAccountsForURL:v4];

    if (v5)
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) mailboxId];
        v8 = *(a1 + 40);
        *buf = 138543618;
        v19 = v7;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Nano Moving messages to new mailbox. MailboxId: %{public}@, MessageIds: %{public}@", buf, 0x16u);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10009797C;
      v17[3] = &unk_100159C88;
      v9 = *(a1 + 40);
      v17[4] = *(a1 + 48);
      v10 = [v9 ef_compactMap:v17];
      v11 = [[NSSet alloc] initWithArray:v10];
      v12 = +[MailChangeManager sharedChangeManager];
      [v12 pause];
      v13 = [[MCSTransfer alloc] initWithDestination:v5 markAsRead:0];
      [*(a1 + 48) _addOperation:v13 withMessages:v11 toChangeManager:v12];
      [v12 resume];
    }

    else
    {
      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 32) url];
        *buf = 138543362;
        v19 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#Nano Invalid mailbox url. Unable to move. URL: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) mailboxId];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Missing mailbox url. Unable to move. Id: %{public}@", buf, 0xCu);
    }
  }
}

id sub_10009797C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _libraryMessageForMessageId:v3];
  if (!v4)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Nano Invalid message id. Unable to move message. Id: %{public}@", &v7, 0xCu);
    }
  }

  return v4;
}

void sub_100097B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}