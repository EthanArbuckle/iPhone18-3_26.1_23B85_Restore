void sub_1E461BC2C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = _Block_copy(*(a1 + 32));
  if (v5)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }

    (v5)[2](v5, v6);
  }
}

void sub_1E461BD8C(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) containerIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) containerIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 40)), v4, v3, (v5 & 1) == 0))
  {
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) containerIdentifier];
      v10 = *(a1 + 40);
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - containerIdentifer changed from: %{public}@ to: %{public}@", buf, 0x16u);
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v11 = MEMORY[0x1E695B888];
      v12 = [*(a1 + 32) containerIdentifier];
      v13 = [v11 containerWithIdentifier:v12];

      [*(a1 + 32) p_unsubscribeToContainer:v13];
    }

    [*(a1 + 32) setHasSubscription:0];
    [*(a1 + 32) setServerChangeToken:0];
    [*(a1 + 32) setContainerIdentifier:0];
    [*(a1 + 32) p_scheduleArchiveWithCompletion:&unk_1F5E61FA8];
    v14 = _Block_copy(*(a1 + 48));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 1);
    }

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = _Block_copy(*(a1 + 48));
    if (v6)
    {
      v17 = v6;
      (*(v6 + 2))(v6, 0);
      v6 = v17;
    }

    v7 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E461BF9C()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (willAttachToContainer)", v1, 2u);
  }
}

void sub_1E461C1B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = BDSCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706510();
    }

    v12 = _Block_copy(*(a1 + 64));
    v8 = v12;
    if (v12)
    {
      (v12[2].isa)(v12, 0, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 32) accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E461C32C;
    block[3] = &unk_1E875A380;
    v14 = *(a1 + 40);
    v15 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v20 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    dispatch_async(v8, block);
  }
}

void sub_1E461C32C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - user recordID: %{public}@ database:%{public}@", &v13, 0x20u);
  }

  objc_storeStrong((*(a1 + 56) + 16), *(a1 + 48));
  objc_storeStrong((*(a1 + 56) + 24), *(a1 + 32));
  *(*(a1 + 56) + 13) = 0;
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v6 copy];
  v8 = *(a1 + 56);
  v9 = *(v8 + 80);
  *(v8 + 80) = v7;

  objc_storeStrong((*(a1 + 56) + 88), *(a1 + 40));
  [*(a1 + 56) p_scheduleArchiveWithCompletion:&unk_1F5E61FC8];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 56) p_subscribeWithCompletion:*(a1 + 64)];
  }

  v10 = _Block_copy(*(a1 + 72));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E461C4B0()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (connectUserTo)", v1, 2u);
  }
}

void sub_1E461C660(uint64_t a1)
{
  v2 = [[BDSOSTransaction alloc] initWithTransactionName:"attachToZone"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E461C7C8;
  aBlock[3] = &unk_1E875A3D0;
  v14 = v2;
  v15 = *(a1 + 48);
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = [*(a1 + 32) accessQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E461C828;
  v9[3] = &unk_1E8759CE0;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v8, v9);
}

void sub_1E461C7C8(uint64_t a1)
{
  [*(a1 + 32) endTransaction];
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1E461C828(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v26 = v3;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 1. attachToZones Creating Record Zones - zones:%@", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E461CA3C;
  v23[3] = &unk_1E875A3F8;
  v7 = v5;
  v24 = v7;
  [v6 enumerateObjectsUsingBlock:v23];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 112);
  *(v12 + 112) = v11;

  v14 = *(a1 + 32);
  v15 = [v14 desiredRecordZoneIDs];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E461CAC0;
  v19[3] = &unk_1E875A420;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v20 = v16;
  v21 = v17;
  v22 = *(a1 + 56);
  [v14 p_createRecordZones:v15 completionHandler:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E461CA3C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithZoneName:v4 ownerName:*MEMORY[0x1E695B728]];

  [*(a1 + 32) addObject:v6];
}

void sub_1E461CAC0(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E461CCEC;
    v16[3] = &unk_1E875A3D0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v16[4] = *(a1 + 40);
    v17 = v9;
    dispatch_async(v8, v16);

    goto LABEL_14;
  }

  if (!sub_1E461CF04(v3))
  {
    v10 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", 2002, v4);
    if (sub_1E461D0E4(v4))
    {
      v11 = 2006;
    }

    else
    {
      if (!sub_1E461D2D4(v4))
      {
        v13 = BDSCloudKitLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [*(a1 + 40) containerIdentifier];
          *buf = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_ERROR, "[BCCloudKitDatabaseController (%@)] attachToZones creating record zones failed, ERROR:%@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      v11 = 2007;
    }

    v12 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", v11, v4);

    v10 = v12;
LABEL_13:
    [*(a1 + 40) zonesTemporarilyUnreadableWithError:v10 completion:*(a1 + 48)];

    goto LABEL_14;
  }

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695B798]];
  v7 = [v6 allKeys];

  [*(a1 + 40) zonesUnreadableDueToMissingD2DEncryptionIdentity:v7 completion:*(a1 + 48)];
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E461CCEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1E461CD7C;
  v2[3] = &unk_1E8759AA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 p_createRecordIDSaltWithCompletion:v2];
}

void sub_1E461CD7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) detachWithError:a2 completion:0];
    v4 = _Block_copy(*(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v4[2]();
      v4 = v5;
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E461CE64;
    v6[3] = &unk_1E8759AA0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 fetchChangesWithCompletion:v6];
  }
}

void sub_1E461CE64(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = BDSErrorFromUnderlyingError(@"BDSCloudKitClientError", 2004, v6);
    [*(a1 + 32) detachWithError:v3 completion:0];
  }

  v4 = _Block_copy(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

uint64_t sub_1E461CF04(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v4)
  {
    goto LABEL_17;
  }

  if ([v1 code] == 112)
  {
    v5 = 1;
    goto LABEL_18;
  }

  if ([v1 code] != 2)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v6 = [v1 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E695B798]];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 allValues];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 domain];
        if ([v14 isEqualToString:v3])
        {
          v15 = [v13 code];

          if (v15 == 112)
          {
            v5 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v5 = 0;
LABEL_19:

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1E461D0E4(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [v1 code];
  v6 = 1;
  if (v5 == 111 || v5 == 5008)
  {
    goto LABEL_19;
  }

  if ([v1 code] != 2)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v7 = [v1 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E695B798]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 allValues];
  v6 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v19 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 code];
        v14 = [v12 domain];
        v15 = [v14 isEqualToString:v3];

        if (v15)
        {
          if (v13 == 111 || v13 == 5008)
          {
            v6 = 1;
            goto LABEL_21;
          }
        }
      }

      v6 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_21:
    v8 = v19;
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_1E461D2D4(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [v2 isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
    v5 = [v1 code];
    if (v5 == 2)
    {
      v7 = [v1 userInfo];
      v8 = [v7 objectForKey:*MEMORY[0x1E695B798]];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v8 allValues];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [v14 code];
            v16 = [v14 domain];
            v17 = [v16 isEqualToString:v3];

            if (v17 && v15 == 36)
            {
              v6 = 1;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_16:
    }

    else
    {
      v6 = v5 == 36;
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1E461D58C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    v14 = 138543618;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - Detaching Container:%{public}@, ERROR:%@", &v14, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = 0;

  *(*(a1 + 32) + 13) = 0;
  [*(a1 + 32) p_informObserversOfAttachmentChange];
  v11 = _Block_copy(*(a1 + 48));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E461D774(uint64_t a1)
{
  v2 = +[BDSReachability isOffline];
  v3 = _Block_copy(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    (v4)[2](v4, [*(a1 + 32) attachedToContainer], !v2);
    v3 = v4;
  }
}

void sub_1E461D8F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E695BA90]);
    v3 = [v2 initWithZoneName:*(a1 + 32) ownerName:*MEMORY[0x1E695B728]];
    v4 = *(a1 + 48);
    if (v3)
    {
      v9 = v3;
      v5 = [*(a1 + 40) recordZones];
      v6 = [v5 objectForKeyedSubscript:v9];
      v7 = [v6 recordZone];
      (*(v4 + 16))(v4, v7);

      return;
    }
  }

  else
  {
    v4 = *(a1 + 48);
  }

  v8 = *(v4 + 16);

  v8(v4, 0);
}

void sub_1E461DE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461DE9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "CKModifySubscriptionsOperation failed: %{public}@", buf, 0xCu);
    }

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    if (v10)
    {
      [v10 doubleValue];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      v13 = [v7 accessQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1E461E058;
      v15[3] = &unk_1E875A030;
      v16 = v7;
      v17 = *(a1 + 32);
      dispatch_after(v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E461E3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461E424(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = BDSCloudKitLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [a1[4] containerIdentifier];
        *buf = 138543618;
        v30 = v9;
        v31 = 2114;
        v32 = v5;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation (%{public}@) failed: %{public}@", buf, 0x16u);
      }

      v10 = [v5 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

      if (v11)
      {
        [v11 doubleValue];
        v13 = dispatch_time(0, (v12 * 1000000000.0));
        v14 = [WeakRetained accessQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E461E740;
        block[3] = &unk_1E875A3D0;
        v27 = WeakRetained;
        v28 = a1[5];
        dispatch_after(v13, v14, block);

        v15 = v27;
      }

      else
      {
        v21 = _Block_copy(a1[5]);
        v15 = v21;
        if (v21)
        {
          (*(v21 + 2))(v21);
        }
      }

      goto LABEL_17;
    }

    if (v8)
    {
      v16 = [a1[4] containerIdentifier];
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation Success for: (%{public}@)", buf, 0xCu);
    }

    v17 = [WeakRetained accessQueue];

    if (v17)
    {
      v18 = [WeakRetained accessQueue];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1E461E74C;
      v23[3] = &unk_1E875A3D0;
      v24 = WeakRetained;
      v25 = a1[5];
      dispatch_async(v18, v23);

      goto LABEL_17;
    }
  }

  v19 = _Block_copy(a1[5]);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19);
  }

LABEL_17:
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E461E74C(uint64_t a1)
{
  [*(a1 + 32) setHasSubscription:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 p_scheduleArchiveWithCompletion:v3];
}

uint64_t sub_1E461ECFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E461ED14(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E461EE5C;
  v8[3] = &unk_1E875A030;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E461EE5C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461EEB4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was purged: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E461EFFC;
  v8[3] = &unk_1E875A030;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E461EFFC(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461F054(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted due to user encrypted data reset: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E461F19C;
  v8[3] = &unk_1E875A030;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E461F19C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1E461F1F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E461F2AC;
  v7[3] = &unk_1E875A030;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_1E461F2AC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation serverChangeToken was updated: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 40) setServerChangeToken:*(a1 + 32)];
  result = [*(a1 + 40) p_scheduleArchiveWithCompletion:&unk_1F5E61FE8];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E461F36C()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (changeTokenUpdatedBlock)", v1, 2u);
  }
}

void sub_1E461F3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E461F4A0;
  block[3] = &unk_1E8759FE0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_1E461F4A0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was changed: %{public}@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) zoneName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [*(a1 + 48) changedRecordZoneIDs];
    [v6 addObject:*(a1 + 32)];

    [*(a1 + 48) p_scheduleArchiveWithCompletion:&unk_1F5E62008];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E461F5A4()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneWithIDChangedBlock)", v1, 2u);
  }
}

void sub_1E461F60C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(*(v9 + 8) + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E461F894;
    v23[3] = &unk_1E875A5B0;
    v23[4] = v9;
    [v8 zonesDeletedOrReset:v10 completion:v23];
  }

  if (v7)
  {
    v11 = BDSCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E47066B0();
    }

    v12 = _Block_copy(*(a1 + 40));
    v13 = v12;
    if (!v12)
    {
      goto LABEL_9;
    }

    v14 = v12[2];
LABEL_8:
    v14();
LABEL_9:

    goto LABEL_14;
  }

  v15 = BDSCloudKitLog();
  v16 = v15;
  if (!v6)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "CKFetchDatabaseChangesOperation Success, but no serverChangeToken", buf, 2u);
    }

    v19 = _Block_copy(*(a1 + 40));
    v13 = v19;
    if (!v19)
    {
      goto LABEL_9;
    }

    v14 = v19[2];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation Success, serverChangeToken: %{public}@", buf, 0xCu);
  }

  v17 = [*(a1 + 32) accessQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E461F944;
  v20[3] = &unk_1E875A470;
  v20[4] = *(a1 + 32);
  v21 = v6;
  v22 = *(a1 + 40);
  dispatch_async(v17, v20);

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E461F894(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation - zonesDeletedOrReset DONE: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E461F944(uint64_t a1)
{
  [*(a1 + 32) setServerChangeToken:*(a1 + 40)];
  v2 = _Block_copy(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, 0);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E461FA00;
  v5[3] = &unk_1E875A008;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 p_scheduleArchiveWithCompletion:v5];
}

void sub_1E461FA00(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (fetchDatabaseChangesCompletionBlock), serverChangeToken: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E461FE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E461FE2C(id *a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 allKeys];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v64 = sub_1E4628A28;
    v65 = &unk_1E875AAB0;
    v66 = v9;
    v10 = v9;
    [v8 enumerateObjectsUsingBlock:&buf];
    v11 = [v10 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "3. BCCloudKitDatabaseController - fetchRecordZonesOperation.fetchRecordZonesCompletionBlock fetchedZones:[%{public}@]", &buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1E4620728;
  aBlock[3] = &unk_1E875A628;
  objc_copyWeak(&v58, a1 + 8);
  v57 = a1[7];
  v12 = _Block_copy(aBlock);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_1E4620AA0;
  v48[3] = &unk_1E875A6C8;
  v49 = a1[4];
  v13 = v5;
  v50 = v13;
  v51 = a1[5];
  v52 = a1[6];
  objc_copyWeak(&v55, a1 + 8);
  v53 = a1[7];
  v14 = v12;
  v54 = v14;
  v15 = _Block_copy(v48);
  if (!v6)
  {
    v20 = MEMORY[0x1E695DFD8];
    v21 = [v13 allKeys];
    v19 = [v20 setWithArray:v21];

    v22 = [MEMORY[0x1E695DFD8] setWithArray:a1[4]];
    v23 = [v19 isEqualToSet:v22];

    if (!v23)
    {
      v26 = BDSCloudKitLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[4];
        v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v64 = sub_1E4628A28;
        v65 = &unk_1E875AAB0;
        v29 = v28;
        v66 = v29;
        [v27 enumerateObjectsUsingBlock:&buf];
        v30 = [v29 componentsJoinedByString:{@", "}];

        v31 = v30;
        v32 = [v13 allKeys];
        v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v64 = sub_1E4628A28;
        v65 = &unk_1E875AAB0;
        v34 = v33;
        v66 = v34;
        [v32 enumerateObjectsUsingBlock:&buf];
        v35 = [v34 componentsJoinedByString:{@", "}];

        *v59 = 138412546;
        v60 = v31;
        v61 = 2112;
        v62 = v35;
        _os_log_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_ERROR, "CKFetchRecordZonesOperation Wanted:%@ Received:%@", v59, 0x16u);
      }

      v15[2](v15);
      goto LABEL_30;
    }

    v24 = BDSCloudKitLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E45E0000, v24, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - calling saveResultsBlock", &buf, 2u);
    }

    v25 = [v13 allValues];
    (*(v14 + 2))(v14, v25, 0);
    goto LABEL_29;
  }

  v16 = BDSCloudKitLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed, ERROR:%@", &buf, 0xCu);
  }

  if ((sub_1E461CF04(v6) & 1) != 0 || sub_1E461D0E4(v6))
  {
    v17 = BDSCloudKitLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - No PCS Identity available", &buf, 2u);
    }

    v18 = _Block_copy(a1[7]);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v6);
    }

    goto LABEL_30;
  }

  if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
  {
    v36 = [v6 userInfo];
    v19 = [v36 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v25 = [WeakRetained accessQueue];

    if (v19 && v25)
    {
      v38 = BDSCloudKitLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_1E45E0000, v38, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed - retrying, ERROR:%@", &buf, 0xCu);
      }

      [v19 doubleValue];
      v40 = dispatch_time(0, (v39 * 1000000000.0));
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1E4621320;
      v44[3] = &unk_1E875A678;
      objc_copyWeak(&v47, a1 + 8);
      v46 = a1[7];
      v45 = a1[4];
      dispatch_after(v40, v25, v44);

      objc_destroyWeak(&v47);
    }

    else
    {
      v41 = BDSCloudKitLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706780();
      }

      (*(v14 + 2))(v14, 0, v6);
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if ([v6 code] == 3)
  {
    v43 = BDSCloudKitLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706780();
    }
  }

  else
  {
    if (!sub_1E461D2D4(v6))
    {
      v15[2](v15);
      goto LABEL_31;
    }

    v43 = BDSCloudKitLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706718();
    }
  }

  (*(v14 + 2))(v14, 0, v6);
LABEL_31:

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v58);

  v42 = *MEMORY[0x1E69E9840];
}

void sub_1E46206C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_1E4620728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E462083C;
    v12[3] = &unk_1E875A030;
    v13 = v8;
    v14 = v5;
    dispatch_async(v9, v12);

    v10 = _Block_copy(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v6);
    }
  }
}

void sub_1E462083C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordZones];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = *(a1 + 40);
    v6 = objc_alloc_init(v4);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = sub_1E4628A80;
    v16 = &unk_1E875A600;
    v17 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:&buf];
    v8 = [v7 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - assigning recordZones[%{public}@]", &buf, 0xCu);
  }

  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E4620A0C;
  v12[3] = &unk_1E875A600;
  v13 = v2;
  v10 = v2;
  [v9 enumerateObjectsUsingBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4620A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
  v4 = *(a1 + 32);
  v5 = [v3 zoneID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_1E4620AA0(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
  v3 = [*(a1 + 40) allValues];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 40) allKeys];
  v6 = [v4 setWithArray:v5];
  [v2 minusSet:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1E4620E30;
  v26[3] = &unk_1E875A650;
  v8 = v7;
  v27 = v8;
  [v2 enumerateObjectsUsingBlock:v26];
  v9 = BDSCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v2 allObjects];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v29 = sub_1E4628A28;
    v30 = &unk_1E875AAB0;
    v31 = v11;
    v12 = v11;
    [v10 enumerateObjectsUsingBlock:&buf];
    v13 = [v12 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - One or more zones are missing newRecordZones:[%{public}@]", &buf, 0xCu);
  }

  v14 = [objc_alloc(MEMORY[0x1E695B9B0]) initWithRecordZonesToSave:v8 recordZoneIDsToDelete:0];
  v15 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
  [v15 setContainer:*(a1 + 48)];
  [v14 setConfiguration:v15];
  [v14 setDatabase:*(a1 + 56)];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E4620EA8;
  v19[3] = &unk_1E875A6A0;
  objc_copyWeak(&v25, (a1 + 80));
  v16 = v8;
  v20 = v16;
  v23 = *(a1 + 64);
  v21 = *(a1 + 32);
  v24 = *(a1 + 72);
  v17 = v3;
  v22 = v17;
  [v14 setModifyRecordZonesCompletionBlock:v19];
  [*(a1 + 56) addOperation:v14];

  objc_destroyWeak(&v25);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E4620E30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA80];
  v4 = a2;
  v5 = [[v3 alloc] initWithZoneID:v4];

  [*(a1 + 32) addObject:v5];
}

void sub_1E4620EA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained accessQueue];

    if (v10)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = *(a1 + 64);
      v15 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
      (*(v14 + 16))(v14, v15, v8);
    }

    else
    {
      v22 = BDSCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = MEMORY[0x1E695DF70];
        v25 = *(a1 + 32);
        v26 = objc_alloc_init(v24);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1E4628A80;
        v37 = &unk_1E875A600;
        v38 = v26;
        v27 = v26;
        [v25 enumerateObjectsUsingBlock:buf];
        v28 = [v27 componentsJoinedByString:{@", "}];

        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_ERROR, "5a CKModifyRecordZonesOperation failed to modify %{public}@ retrying, ERROR:%@", buf, 0x16u);
      }

      [v10 doubleValue];
      v30 = dispatch_time(0, (v29 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E46212A0;
      block[3] = &unk_1E875A678;
      objc_copyWeak(&v35, (a1 + 72));
      v34 = *(a1 + 56);
      v33 = *(a1 + 40);
      dispatch_after(v30, v12, block);

      objc_destroyWeak(&v35);
    }
  }

  else
  {
    v10 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
    v16 = BDSCloudKitLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x1E695DF70];
      v18 = v10;
      v19 = objc_alloc_init(v17);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A80;
      v37 = &unk_1E875A600;
      v38 = v19;
      v20 = v19;
      [v18 enumerateObjectsUsingBlock:buf];

      v21 = [v20 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "CKModifyRecordZonesOperation success saving: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1E46212A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1E4621320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_1E4621574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46215A0(id *a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v31 = objc_alloc(MEMORY[0x1E695DF30]);
    v32 = MEMORY[0x1E696AEC0];
    v33 = [a1[4] containerIdentifier];
    v34 = [v32 stringWithFormat:@"Nil weak self after fetch salt record %@", v33];
    v58 = *MEMORY[0x1E696AA08];
    v35 = v6;
    if (!v6)
    {
      v35 = [MEMORY[0x1E695DFB0] null];
    }

    v59 = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v37 = [v31 initWithName:@"No Books Salt" reason:v34 userInfo:v36];
    v38 = v37;

    if (!v6)
    {
    }

    objc_exception_throw(v37);
  }

  v8 = WeakRetained;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1E461ECFC;
  v56 = sub_1E461ED0C;
  v57 = 0;
  if (!v5 || v6)
  {
    v20 = BDSCloudKitLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v30 = [a1[4] containerIdentifier];
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      *&buf[24] = v5;
      _os_log_error_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_ERROR, "(%{public}@) Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", buf, 0x20u);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    memset(buf, 0, sizeof(buf));
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x80uLL, buf))
    {
      v39 = objc_alloc(MEMORY[0x1E695DF30]);
      v40 = MEMORY[0x1E696AEC0];
      v41 = [a1[4] containerIdentifier];
      v42 = [v40 stringWithFormat:@"Unable to generate random salt %@", v41];
      v60 = *MEMORY[0x1E696AA08];
      v43 = v6;
      if (!v6)
      {
        v43 = [MEMORY[0x1E695DFB0] null];
      }

      v61 = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v45 = [v39 initWithName:@"No Books Record Salt" reason:v42 userInfo:v44];
      v46 = v45;

      if (!v6)
      {
      }

      objc_exception_throw(v45);
    }

    v21 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"recordIDSalt"];
    v22 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"recordIDSalt" recordID:v21];
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:128];
    v24 = [v22 encryptedValuesByKey];
    [v24 setObject:v23 forKeyedSubscript:@"saltEncrypted"];

    v25 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [a1[4] containerIdentifier];
      *v62 = 138543362;
      v63 = v26;
      _os_log_impl(&dword_1E45E0000, v25, OS_LOG_TYPE_INFO, "(%{public}@) Will save record salt", v62, 0xCu);
    }

    v27 = [a1[4] database];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1E4621D04;
    v47[3] = &unk_1E875A718;
    objc_copyWeak(&v51, a1 + 6);
    v47[4] = a1[4];
    v50 = &v52;
    v28 = v23;
    v48 = v28;
    v49 = a1[5];
    [v27 saveRecord:v22 completionHandler:v47];

    objc_destroyWeak(&v51);
  }

  else
  {
    v9 = [v5 encryptedValuesByKey];
    v10 = [v9 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v10)
    {
      v10 = [v5 objectForKeyedSubscript:@"salt"];
    }

    [v8 setRecordIDSalt:v10];
    v11 = [v5 recordChangeTag];
    v12 = v53[5];
    v53[5] = v11;

    v13 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [a1[4] containerIdentifier];
      v15 = v53[5];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      *&buf[24] = v15;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", buf, 0x20u);
    }

    v16 = v53[5];
    v17 = MEMORY[0x1E695DFD8];
    v18 = [a1[4] desiredRecordZoneIDs];
    v19 = [v17 setWithArray:v18];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v16 forZones:v19 completion:a1[5]];
  }

  _Block_object_dispose(&v52, 8);

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1E4621BE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    v16 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1E47067E8();
    }

    v17 = _Block_copy(*(v12 + 40));
    if (v17)
    {
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
      v17[2](v17, v18);
    }

    objc_end_catch();
    JUMPOUT(0x1E462198CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1E4621D04(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v43 = objc_alloc(MEMORY[0x1E695DF30]);
    v44 = MEMORY[0x1E696AEC0];
    v45 = [*(a1 + 32) containerIdentifier];
    v46 = [v44 stringWithFormat:@"Nil weak self after save record %@", v45];
    v51 = *MEMORY[0x1E696AA08];
    v47 = v6;
    if (!v6)
    {
      v47 = [MEMORY[0x1E695DFB0] null];
    }

    v52 = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v49 = [v43 initWithName:@"No Books Record Salt" reason:v46 userInfo:v48];
    v50 = v49;

    if (!v6)
    {
    }

    objc_exception_throw(v49);
  }

  v8 = WeakRetained;
  v9 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v54 = v10;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "(%{public}@) Saving record salt....", buf, 0xCu);
  }

  v11 = [v6 domain];
  if ([v11 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v12 = [v6 code];

    if (v12 == 14)
    {
      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695B7C0]];

      v15 = [v14 encryptedValuesByKey];
      v16 = [v15 objectForKeyedSubscript:@"saltEncrypted"];

      if (v14)
      {
        v17 = BDSCloudKitSyncLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 32) containerIdentifier];
          v19 = [v14 recordChangeTag];
          *buf = 138544130;
          v54 = v18;
          v55 = 2112;
          v56 = v16;
          v57 = 2112;
          v58 = v19;
          v59 = 2112;
          v60 = v6;
          _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x2Au);
        }

        [v8 setRecordIDSalt:v16];
        v20 = [v14 recordChangeTag];
        v21 = *(*(a1 + 56) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v6 = 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v23 = BDSCloudKitSyncLog();
  v14 = v23;
  if (v6)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706850();
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 32) containerIdentifier];
      v25 = *(a1 + 40);
      v26 = [v5 recordChangeTag];
      *buf = 138543874;
      v54 = v24;
      v55 = 2112;
      v56 = v25;
      v57 = 2112;
      v58 = v26;
      _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v27 = [v5 encryptedValuesByKey];
    v28 = [v27 objectForKeyedSubscript:@"saltEncrypted"];
    [v8 setRecordIDSalt:v28];

    v29 = [v5 recordChangeTag];
    v6 = 0;
    v30 = *(*(a1 + 56) + 8);
    v14 = *(v30 + 40);
    *(v30 + 40) = v29;
  }

LABEL_18:

  v31 = [v8 recordIDSalt];

  v32 = BDSCloudKitSyncLog();
  v33 = v32;
  if (v6 || !v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1E47068B8();
    }

    v41 = _Block_copy(*(a1 + 48));
    v39 = v41;
    if (v41)
    {
      (*(v41 + 2))(v41, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v8 containerIdentifier];
      v35 = [*(a1 + 32) recordIDSalt];
      v36 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v54 = v34;
      v55 = 2112;
      v56 = v35;
      v57 = 2112;
      v58 = v36;
      _os_log_impl(&dword_1E45E0000, v33, OS_LOG_TYPE_DEFAULT, "(%{public}@) *** Got record salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v37 = *(*(*(a1 + 56) + 8) + 40);
    v38 = MEMORY[0x1E695DFD8];
    v39 = [*(a1 + 32) desiredRecordZoneIDs];
    v40 = [v38 setWithArray:v39];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v37 forZones:v40 completion:*(a1 + 48)];
  }

  v42 = *MEMORY[0x1E69E9840];
}

void sub_1E46224BC(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) changedRecordZoneIDs];
  if ([v3 containsObject:v11])
  {
    v4 = [*(a1 + 32) tokenStores];
    v5 = [v4 objectForKeyedSubscript:v11];
    v6 = [v5 cloudSyncEnabled];

    if (v6)
    {
      v7 = 40;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [*(a1 + 32) tokenStores];
  v9 = [v8 objectForKeyedSubscript:v11];
  v10 = [v9 cloudSyncEnabled];

  if (!v10)
  {
    goto LABEL_8;
  }

  v7 = 48;
LABEL_7:
  [*(a1 + v7) addObject:v11];
LABEL_8:
}

void sub_1E46225B4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = *(a1 + 40);
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- record zone changes; unchangedRecordIDS :%{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 32);
        v13 = [*(*(&v17 + 1) + 8 * v11) zoneName];
        [v12 p_informObserversOfCompletedFetchOfZone:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = _Block_copy(*(a1 + 48));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E4622AEC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    if (![*(a1 + 40) containsObject:v5])
    {
      goto LABEL_5;
    }

    v3 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v5];
    v4 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }

LABEL_5:
}

void sub_1E4622BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tokenStores];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    dispatch_group_enter(*(a1 + 40));
    v6 = [v3 copy];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E4622CB8;
    v8[3] = &unk_1E875A7B8;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 40);
    v7 = v6;
    [v5 serverChangeTokenWithCompletion:v8];
  }
}

void sub_1E4622CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4622D98;
  block[3] = &unk_1E8759FE0;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);

  dispatch_group_leave(*(a1 + 56));
}

void sub_1E4622D98(void *a1)
{
  v2 = a1[4];
  if (a1[5])
  {
    v3 = a1[6];
    v4 = a1[4];

    [v4 setObject:? forKey:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:v5 forKey:a1[6]];
  }
}

void sub_1E4622E28(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = BDSCloudKitLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) containerIdentifier];
      v4 = *(a1 + 48);
      *buf = 138543618;
      v16 = v3;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - finished fetching tokens for zones %{public}@", buf, 0x16u);
    }

    v5 = objc_opt_new();
    v6 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E462300C;
    v12[3] = &unk_1E875A790;
    v13 = *(a1 + 32);
    v14 = v5;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v12];
    [*(a1 + 40) p_fetchRecordZoneChanges:*(a1 + 48) optionsByRecordZoneID:v7 completionHandler:*(a1 + 56)];

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(*(a1 + 40) + 15) = 1;
    v9 = _Block_copy(*(a1 + 56));
    if (v9)
    {
      v11 = v9;
      (*(v9 + 2))(v9, 0);
      v9 = v11;
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E462300C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = objc_alloc_init(MEMORY[0x1E695B908]);
  if (v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];

    if (v3 != v5)
    {
      [v4 setPreviousServerChangeToken:v3];
    }
  }

  [*(a1 + 40) setObject:v4 forKeyedSubscript:v6];
}

void sub_1E462387C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak((v46 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v47 - 256), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1E46238EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46239A8;
  block[3] = &unk_1E875A7E0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1E46239A8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = [*(a1 + 32) recordType];
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController fetchRecordZoneChangesOperation.recordChangedBlock record=%@ %@", &v13, 0x16u);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [*(a1 + 32) recordType];
    [v8 setObject:v7 forKey:v9];
  }

  [v7 addObject:*(a1 + 32)];
  if ([v7 count] >= 0x20)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) recordType];
    [v10 p_informObserversOfRecordsChanged:v7 forRecordType:v11];

    [v7 removeAllObjects];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4623B4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4623C28;
  block[3] = &unk_1E8759FE0;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1E4623C28(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController recordWithIDWasDeletedBlock recordID=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) observers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) databaseController:*(a1 + 40) recordWithIDWasDeleted:*(a1 + 32) recordType:{*(a1 + 48), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4623DAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4623E9C;
  block[3] = &unk_1E875A858;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_1E4623E9C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = MEMORY[0x1E695DF70];
    v5 = *(a1 + 40);
    v6 = objc_alloc_init(v4);
    *v12 = MEMORY[0x1E69E9820];
    *&v12[8] = 3221225472;
    *&v12[16] = sub_1E4628A28;
    v13 = &unk_1E875AAB0;
    v14 = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:v12];
    v8 = [v7 componentsJoinedByString:{@", ", *v12, *&v12[8], *&v12[16], v13}];

    *v12 = 138543618;
    *&v12[4] = v3;
    *&v12[12] = 2114;
    *&v12[14] = v8;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneChangeTokensUpdatedBlock recordZoneIDs=%{public}@ ", v12, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  v9 = [*(a1 + 32) tokenStores];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];

  [v10 storeServerChangeToken:*(a1 + 56) completion:0];
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4624070(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = BDSCloudKitLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) containerIdentifier];
    v15 = MEMORY[0x1E695DF70];
    v16 = *(a1 + 40);
    v17 = objc_alloc_init(v15);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v32 = &unk_1E875AAB0;
    v33 = v17;
    v18 = v17;
    [v16 enumerateObjectsUsingBlock:buf];
    v19 = [v18 componentsJoinedByString:{@", "}];

    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    *&buf[22] = 1024;
    LODWORD(v32) = a5;
    _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneFetchCompletionBlock recordZoneIDs=%{public}@ moreComing= %{BOOL}d", buf, 0x1Cu);
  }

  v20 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E46242E0;
  block[3] = &unk_1E875A8A8;
  block[4] = *(a1 + 32);
  v26 = v10;
  v30 = a5;
  v29 = *(a1 + 48);
  v27 = v12;
  v28 = v11;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  dispatch_async(v20, block);

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E46242E0(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) changedRecordZoneIDs];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 32) p_scheduleArchiveWithCompletion:&unk_1F5E62028];
  v3 = *(a1 + 48);
  if (!v3)
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) containerIdentifier];
      v11 = [*(a1 + 40) zoneName];
      v12 = *(a1 + 80);
      *buf = 138543874;
      v35 = v10;
      v36 = 2114;
      v37 = v11;
      v38 = 1024;
      LODWORD(v39) = v12;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ success.  More coming: %{BOOL}d", buf, 0x1Cu);
    }

    [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
    if ((*(a1 + 80) & 1) == 0)
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) zoneName];
      [v13 p_informObserversOfCompletedFetchOfZone:v14];
    }

    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
    v15 = [*(a1 + 32) tokenStores];
    v16 = [v15 objectForKeyedSubscript:*(a1 + 40)];

    [v16 storeServerChangeToken:*(a1 + 56) completion:0];
    goto LABEL_17;
  }

  v4 = sub_1E461CF04(v3);
  v5 = *(a1 + 48);
  if (!v4)
  {
    if (sub_1E461D0E4(v5))
    {
      v17 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v45[0] = @"Unreadable keychain - cannot fetch record zones";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v19 = v17;
      v20 = 2006;
    }

    else
    {
      if (!sub_1E461D2D4(*(a1 + 48)))
      {
        v24 = BDSCloudKitSyncLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v29 = [*(a1 + 32) containerIdentifier];
          v30 = *(a1 + 40);
          v31 = *(a1 + 48);
          v32 = [v30 zoneName];
          *buf = 138544130;
          v35 = v29;
          v36 = 2114;
          v37 = v30;
          v38 = 2114;
          v39 = v31;
          v40 = 2112;
          v41 = v32;
          _os_log_error_impl(&dword_1E45E0000, v24, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ zoneFetchCompletion failed: %{public}@ time to delete the tokenStore for  %@", buf, 0x2Au);
        }

        v25 = [*(a1 + 32) tokenStores];
        v22 = [v25 objectForKeyedSubscript:*(a1 + 40)];

        [v22 deleteCloudDataWithCompletion:0];
        v26 = [*(a1 + 48) domain];
        v27 = [v26 isEqualToString:*MEMORY[0x1E695B740]];

        if (v27)
        {
          v28 = [*(a1 + 48) code];
          if (v28 <= 0x1C && ((1 << v28) & 0x14200000) != 0)
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:*(a1 + 40)];
          }
        }

        goto LABEL_16;
      }

      v21 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"Account temporarily unavailable - cannot fetch record zones";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v19 = v21;
      v20 = 2007;
    }

    v22 = [v19 errorWithDomain:@"BDSCloudKitClientError" code:v20 userInfo:v18];

    [*(a1 + 32) zonesTemporarilyUnreadableWithError:v22 completion:0];
LABEL_16:

LABEL_17:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695B798]];
  v33 = [v7 allKeys];

  [*(a1 + 32) zonesUnreadableDueToMissingD2DEncryptionIdentity:v33 completion:0];
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4624758()
{
  v0 = BDSCloudKitLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneFetchCompletionBlock)", v1, 2u);
  }
}

void sub_1E46247C0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BDSCloudKitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock", buf, 0xCu);
  }

  v6 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4624964;
  block[3] = &unk_1E875A948;
  objc_copyWeak(&v18, (a1 + 72));
  v14 = v3;
  v7 = *(a1 + 56);
  v12 = *(a1 + 32);
  v8 = *(&v12 + 1);
  v17 = *(a1 + 64);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v15 = v12;
  v16 = v9;
  v10 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v18);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4624964(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = *(a1 + 64);
    v4 = *(*(v3 + 8) + 40);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1E4624EFC;
    v40[3] = &unk_1E875A8F8;
    v40[4] = WeakRetained;
    v40[5] = v3;
    [WeakRetained zonesDeletedOrReset:v4 completion:v40];
  }

  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = *MEMORY[0x1E695B740];
    if ([v7 isEqualToString:*MEMORY[0x1E695B740]])
    {
      v9 = [v6 code];

      if (v9 == 2)
      {
        [WeakRetained setBackOffInterval:0.0];
      }
    }

    else
    {
    }

    v17 = BDSCloudKitLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = [*(a1 + 40) containerIdentifier];
      v31 = MEMORY[0x1E695DF70];
      v32 = *(a1 + 48);
      v33 = objc_alloc_init(v31);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A28;
      v42 = &unk_1E875AAB0;
      v43 = v33;
      v34 = v33;
      [v32 enumerateObjectsUsingBlock:buf];
      v35 = [v34 componentsJoinedByString:{@", "}];

      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      *&buf[22] = 2114;
      v42 = v6;
      _os_log_error_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock zoneChanges failed: %{public}@ %{public}@", buf, 0x20u);
    }

    v18 = [v6 domain];
    v19 = [v18 isEqualToString:v8];

    if (v19)
    {
      v20 = [v6 code];
      if (v20 <= 0x17 && ((1 << v20) & 0x8000C0) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = [v6 domain];
      v25 = [v24 isEqualToString:*MEMORY[0x1E696A250]];

      if (v25)
      {
LABEL_16:
        v21 = BDSCloudKitLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [*(a1 + 40) containerIdentifier];
          *buf = 138543618;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation retrying fetch for error: %@", buf, 0x16u);
        }

        v23 = [WeakRetained accessQueue];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1E4624FD4;
        v36[3] = &unk_1E875A920;
        v36[4] = WeakRetained;
        v37 = v6;
        objc_copyWeak(&v39, (a1 + 80));
        v38 = *(a1 + 40);
        dispatch_async(v23, v36);

        objc_destroyWeak(&v39);
        goto LABEL_23;
      }
    }

    v26 = BDSCloudKitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706920();
    }
  }

  else
  {
    [WeakRetained setBackOffInterval:0.0];
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) containerIdentifier];
      v12 = MEMORY[0x1E695DF70];
      v13 = *(a1 + 48);
      v14 = objc_alloc_init(v12);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1E4628A28;
      v42 = &unk_1E875AAB0;
      v43 = v14;
      v15 = v14;
      [v13 enumerateObjectsUsingBlock:buf];
      v16 = [v15 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock success (%{public}@).", buf, 0x16u);
    }

    [*(a1 + 40) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
    [*(a1 + 40) setFetchRecordZoneChangesSuccess:1];
  }

LABEL_23:
  v27 = _Block_copy(*(a1 + 56));
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27, v6);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1E4624EFC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - fetchRecordZoneChangesCompletionBlock - zonesDeletedOrReset DONE: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4624FD4(uint64_t a1)
{
  if (([*(a1 + 32) serverFetchPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerFetchPostponed:1];
    [*(a1 + 32) p_updateRetryParametersFromFetchZoneChangesOperationError:*(a1 + 40)];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) accessQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E46250CC;
    v5[3] = &unk_1E875A178;
    objc_copyWeak(&v6, (a1 + 56));
    v5[4] = *(a1 + 48);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_1E46250CC(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setServerFetchPostponed:0];
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) containerIdentifier];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchRecordZoneChangesOperation.fetchRecordZoneChangesCompletionBlock retryFetch", &v8, 0xCu);
    }

    v6 = [v3 coalescedZoneFetch];
    [v6 signalWithCompletion:&unk_1F5E62048];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4625258(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = +[BDSReachability isOffline];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) containerIdentifier];
    v5 = v4;
    v6 = @"YES";
    if (v2)
    {
      v6 = @"NO";
    }

    *buf = 138543618;
    v32 = v4;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_internetReachabilityChanged reachable:%@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(a1 + 32) observers];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [*(a1 + 32) observers];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v13 count])
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              v18 = 0;
              do
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v21 + 1) + 8 * v18++) databaseController:*(a1 + 32) reachabilityChanged:!v2];
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v16);
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4625880(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [v6 count];
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "p_informObserversOfRecordsChanged: changedRecords.count=%lu recordType=%{public}@", &v9, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:v6 forRecordType:v5];
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4625A64(id *a1)
{
  v42[3] = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] containerIdentifier];
    v4 = a1[5];
    v5 = [a1[6] allObjects];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4628A28;
    v41 = &unk_1E875AAB0;
    v42[0] = v6;
    v7 = v6;
    [v5 enumerateObjectsUsingBlock:buf];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = [a1[4] zoneObservers];
    *buf = 138544130;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v41 = v8;
    LOWORD(v42[0]) = 2112;
    *(v42 + 2) = v9;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfSaltVersionIdentifierChanged: saltVersionIdentifier=%{public}@ zoneIDs=%{public}@ observers:%@", buf, 0x2Au);
  }

  if ([a1[5] length])
  {
    v10 = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = a1[6];
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      v28 = v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v16 zoneName];
          v18 = [v17 length];

          if (v18)
          {
            v19 = [a1[4] zoneObservers];
            v20 = [v16 zoneName];
            v21 = [v19 objectForKey:v20];

            if (v21)
            {
              dispatch_group_enter(v10);
              v23 = a1[4];
              v22 = a1[5];
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v32[0] = sub_1E4625E8C;
              v32[1] = &unk_1E875A9C0;
              v32[2] = v23;
              v32[3] = v16;
              v24 = v22;
              v33 = v24;
              v34 = v10;
              [v21 databaseController:v23 saltVersionIdentifierChanged:v24 completion:v31];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4625F98;
    block[3] = &unk_1E875A2E0;
    v30 = a1[7];
    dispatch_group_notify(v10, v25, block);

    v26 = v30;
    goto LABEL_18;
  }

  v10 = _Block_copy(a1[7]);
  if (v10)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
    (v10[2].isa)(v10, v26);
LABEL_18:
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1E4625E8C(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = [*(a1 + 40) zoneName];
    v7 = *(a1 + 48);
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "%@ name:%@ salt:%@  success:%{BOOL}d  LEAVE GROUP", &v9, 0x26u);
  }

  dispatch_group_leave(*(a1 + 56));
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4625F98(uint64_t a1)
{
  v2 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "p_informObserversOfSaltVersionIdentifierChanged DONE", v5, 2u);
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_1E4626CB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E47069F0(a1);
    }
  }

  v11 = _Block_copy(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9);
  }
}

void sub_1E4626E70(id *a1)
{
  v2 = [a1[4] desiredRecordZoneIDs];
  v3 = [v2 valueForKey:@"zoneName"];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSCloudKitClientError" code:2003 userInfo:0];
  v5 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E4626F8C;
  v7[3] = &unk_1E8759CE0;
  v7[4] = v5;
  v8 = a1[5];
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v5 detachWithError:v4 completion:v7];
}

void sub_1E4626F8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E4627044;
  v4[3] = &unk_1E875A420;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _deleteRecordZonesWithIDs:v3 qualityOfService:17 completion:v4];
}

void sub_1E4627044(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E46270D4;
  v3[3] = &unk_1E875A2E0;
  v4 = *(a1 + 48);
  [v1 attachToZones:v2 completion:v3];
}

void sub_1E46270D4(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E4627228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E46272B8;
  v3[3] = &unk_1E875A2E0;
  v4 = *(a1 + 48);
  [v1 detachWithError:v2 completion:v3];
}

void sub_1E46272B8(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E462746C(uint64_t a1)
{
  [*(a1 + 32) invalidateSalt];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E4627504;
  v3[3] = &unk_1E875A2E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 detachWithError:0 completion:v3];
}

void sub_1E4627504(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1E4627668(uint64_t a1)
{
  v9 = [*(a1 + 32) observers];
  v2 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_opt_new();
    [v9 setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  [v2 addObject:*(a1 + 48)];
  v3 = [*(a1 + 32) container];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) attachedToContainer];

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = [v7 container];
      [v6 databaseController:v7 attachmentChanged:v8 != 0];
    }
  }
}

void sub_1E4627870(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E46279BC;
    v10[3] = &unk_1E875AA10;
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v11 = v6;
    v7 = [v4 indexesOfObjectsPassingTest:v10];
    if ([v7 count])
    {
      [v4 removeObjectsAtIndexes:v7];
    }

    else
    {
      v9 = BDSCloudKitLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706C04(v5, v3);
      }
    }

    v8 = v11;
  }

  else
  {
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706C78(a1, (a1 + 40));
    }
  }
}

void sub_1E4627AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E4627B50;
  v3[3] = &unk_1E875AA38;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1E4627B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E4627C08;
  v6[3] = &unk_1E875AA10;
  v7 = *(a1 + 32);
  v5 = [v4 indexesOfObjectsPassingTest:v6];
  if ([v5 count])
  {
    [v4 removeObjectsAtIndexes:v5];
  }
}

void sub_1E4627CE8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  if (*(a1 + 32) && [*(a1 + 40) length])
  {
    v3 = [*(a1 + 48) zoneObservers];
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

    v4 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 134218242;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - Setting observer=%p for zone =%{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v4 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706D5C(v2, a1);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4627F58(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v27 = v4;
      _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - Registering store for record zone %{public}@", buf, 0xCu);
    }

    v5 = [WeakRetained tokenStores];
    v6 = (a1 + 32);
    v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];

    if (v7)
    {
      v8 = BDSCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1E4706E3C(v6, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = [WeakRetained tokenStores];
      [v17 setObject:v16 forKeyedSubscript:*(a1 + 32)];

      if ([*(a1 + 48) attachedToContainer])
      {
        v18 = [WeakRetained changedRecordZoneIDs];
        v19 = [v18 containsObject:*v6];

        if (v19)
        {
          v20 = BDSCloudKitLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [WeakRetained containerIdentifier];
            v22 = *v6;
            *buf = 138543618;
            v27 = v21;
            v28 = 2114;
            v29 = v22;
            _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in registerServerChangeTokenStore:forZoneID: recordZoneID=%{public}@", buf, 0x16u);
          }

          v23 = [WeakRetained coalescedZoneFetch];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_1E4628224;
          v24[3] = &unk_1E875A008;
          v25 = *v6;
          [v23 signalWithCompletion:v24];

          v8 = v25;
        }

        else
        {
          v8 = [*v6 zoneName];
          [WeakRetained p_informObserversOfCompletedFetchOfZone:v8];
        }
      }

      else
      {
        v8 = BDSCloudKitLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - skipping fetch, we are not yet attached in registerServerChangeTokenStore:forZoneID:", buf, 2u);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4628224(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - performed zone fetch for recordZoneID:%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E46283E8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained tokenStores];
    v5 = [v4 copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11, v17];
          v13 = v12;
          if (*(a1 + 32) == v12)
          {
            v15 = [v3 tokenStores];
            [v15 removeObjectForKey:v11];

            v14 = v6;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = BDSCloudKitLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1E4706EF0(v14);
    }

LABEL_13:
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E462871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E4628740(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) attachedToContainer];
  v2 = [*(a1 + 32) container];
  v3 = [v2 description];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_1E4628A28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneName];
  [v2 addObject:v3];
}

void sub_1E4628A80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 zoneID];
  v3 = [v4 zoneName];
  [v2 addObject:v3];
}

uint64_t sub_1E4628B54()
{
  qword_1EE2B0510 = objc_alloc_init(BDSBookWidgetDataFile);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4628FE4()
{
  v0 = [MEMORY[0x1E698F540] books];
  v1 = [v0 containerURL];

  v2 = [v1 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored/"];
  v3 = [v2 URLByAppendingPathComponent:@"/currentWidgetData.plist"];
  v4 = qword_1ECF75DF0;
  qword_1ECF75DF0 = v3;

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v6 = [v5 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = BDSWidgetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47070FC();
    }
  }
}

__CFString *BDSLibraryContentAssetTypeFromExtension(void *a1)
{
  v1 = a1;
  if ([@"pdf" caseInsensitiveCompare:v1])
  {
    if ([@"epub" caseInsensitiveCompare:v1] && objc_msgSend(@"ibooks", "caseInsensitiveCompare:", v1))
    {
      if ([@"m4a" caseInsensitiveCompare:v1] && objc_msgSend(@"m4b", "caseInsensitiveCompare:", v1) && objc_msgSend(@"m4p", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aa", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aax", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp4", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aac", "caseInsensitiveCompare:", v1) && objc_msgSend(@"adts", "caseInsensitiveCompare:", v1) && objc_msgSend(@"ac3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aif", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aiff", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aifc", "caseInsensitiveCompare:", v1) && objc_msgSend(@"caf", "caseInsensitiveCompare:", v1) && objc_msgSend(@"snd", "caseInsensitiveCompare:", v1) && objc_msgSend(@"au", "caseInsensitiveCompare:", v1) && objc_msgSend(@"sd2", "caseInsensitiveCompare:", v1) && objc_msgSend(@"wav", "caseInsensitiveCompare:", v1))
      {
        v2 = @"LibraryContentAssetTypeUnknown";
      }

      else
      {
        v2 = @"AssetTypeAudiobook";
      }
    }

    else
    {
      v2 = @"AssetTypeEbook";
    }
  }

  else
  {
    v2 = @"AssetTypePDF";
  }

  return v2;
}

void sub_1E46294CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E46294E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E46294FC(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E46296F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E4629714(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 writeToURL:a2 options:1073741825 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_1E46298FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E4629920(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 removeItemAtURL:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

void sub_1E462A0D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_iCloudIdentityDidChange:0];
}

uint64_t sub_1E462A324(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "iCloud identity changed. {Refreshing with optedIn: %{public}@}", &v6, 0xCu);
  }

  result = [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E462A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E462A588(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E462A5A0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentICloudIdentityToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E462A6C0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    sub_1E4707164((a1 + 40), v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) observers];
  [v11 addObject:*(a1 + 40)];
}

void sub_1E462A808(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_1E462A9E4(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: restartObserving was called", buf, 2u);
  }

  [*(a1 + 32) dq_refreshICloudAvailabilityStatus];
  v3 = [*(a1 + 32) lastArchivedICloudIdentityToken];
  v4 = [*(a1 + 32) currentICloudIdentityToken];
  v5 = v4;
  if (v3 == v4)
  {
  }

  else
  {
    v6 = [*(a1 + 32) lastArchivedICloudIdentityToken];
    v7 = [*(a1 + 32) currentICloudIdentityToken];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
      v9 = [*(a1 + 32) currentICloudIdentityToken];
      v10 = [*(a1 + 32) lastArchivedICloudIdentityToken];
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: notifying observers of a token change", v13, 2u);
      }

      [*(a1 + 32) _notifyObserversWithCurrentToken:v9 lastToken:v10];
      goto LABEL_11;
    }
  }

  v9 = BDSCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "BDSLiverpoolStatusMonitor: tokens match ... so we are not notifying anyone", v12, 2u);
  }

LABEL_11:
}

void sub_1E462AC2C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentICloudIdentityToken];
  [*(a1 + 32) dq_refreshICloudAvailabilityStatus];
  v3 = [*(a1 + 32) currentICloudIdentityToken];
  [*(a1 + 32) dq_archiveCurrentICloudIdentityToken];
  if (v2 != v3 && ([v2 isEqual:v3] & 1) == 0)
  {
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (!v3)
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_INFO, "iCloud identity changed. {iCloudEnabled: %@}", &v7, 0xCu);
    }

    [*(a1 + 32) _notifyObserversWithCurrentToken:v3 lastToken:v2];
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E462AFE4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_liverpoolStatusChangedToAvailableWithNewIdentity_oldIdentity_);
}

uint64_t sub_1E462AFF4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_liverpoolStatusChangedToAvailableWithNewIdentity_oldIdentity_);
}

void sub_1E462B254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  if ([a1 count] && !v10 && (a4 & 1) != 0)
  {
    v12 = [a1 pointerAtIndex:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 methodForSelector:a3];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E462B3E4;
      v19[3] = &unk_1E875ABC0;
      v19[4] = a1;
      v21 = a3;
      v20 = v11;
      v14(v13, a3, v19);
    }

    else
    {
      v17 = _Block_copy(v11);
      if (v17)
      {
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
        v17[2](v17, 0, v18);
      }
    }
  }

  else
  {
    v15 = _Block_copy(v11);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, a4, v10);
    }
  }
}

void sub_1E462B3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

void sub_1E462B458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a5;
  v10 = a6;
  if (![a1 count])
  {
    v14 = _Block_copy(v10);
    v15 = v14;
    if (v14)
    {
      v16 = v14[2];
LABEL_9:
      v16();
    }

LABEL_10:

    goto LABEL_15;
  }

  if (!v9)
  {
    v17 = _Block_copy(v10);
    v15 = v17;
    if (v17)
    {
      v16 = v17[2];
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v11 = [a1 pointerAtIndex:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 methodForSelector:a3];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E462B60C;
    v20[3] = &unk_1E875ABC0;
    v20[4] = a1;
    v22 = a3;
    v21 = v10;
    v13(v12, a3, v20);
  }

  else
  {
    v18 = _Block_copy(v10);
    if (v18)
    {
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:1000 userInfo:0];
      v18[2](v18, 0, v19);
    }
  }

LABEL_15:
}

void sub_1E462B60C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

id sub_1E462B680(void *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 valueForKey:{v6, v22}];
        objc_opt_class();
        v22 = &unk_1F5E7E050;
        v15 = BUClassAndProtocolCast();
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:{v15, &unk_1F5E7E050}];

          if (v16)
          {
            v17 = [v8 objectForKeyedSubscript:v15];
            v18 = v7[2](v7, v17, v13);
            [v8 setObject:v18 forKeyedSubscript:v15];
          }

          else
          {
            [v8 setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v8 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

id sub_1E462B89C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [a1 objectAtIndex:i];
      v10 = [MEMORY[0x1E695DFB0] null];

      if (v9 == v10)
      {
        v11 = _Block_copy(v4);
        v12 = v11;
        if (v11)
        {
          (*(v11 + 2))(v11, i);
        }
      }

      else
      {
        [v5 addObject:v9];
      }
    }
  }

  v13 = [v5 copy];

  return v13;
}

void sub_1E462B9AC(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = a4;
  if (v16)
  {
    v6 = [a1 count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 + a3;
      v9 = -a3;
      v10 = v6;
      do
      {
        v11 = v10 - a3;
        if (v10 >= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = v10;
        }

        v13 = [a1 subarrayWithRange:{v7, v12}];
        v16[2](v16, v13, v7, v12);

        v8 -= a3;
        if (a3 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = a3;
        }

        v9 += a3;
        v15 = v14 + v9;
        v7 += a3;
        v10 = v11;
      }

      while (v15 < v6);
    }

    else
    {
      (v16[2])();
    }
  }
}

void sub_1E462BABC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:0 completion:v6];
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E462BBF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v15 + 1) + 8 * v12++), v15}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:0 userInfo:0];
  [v7 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:v13 completion:v6];

  v14 = *MEMORY[0x1E69E9840];
}

__CFString *sub_1E462BD5C()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);

  return v1;
}

void sub_1E462BEE0(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E47071B0(v5, v6);
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) zoneName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Change Token Controller successfully transitioned to a new cloud container for zone: %@", &v9, 0xCu);
    }
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E462C26C(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - zoneNeedsUpdate serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v21 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v21];
  v8 = v21;
  if ([v7 count])
  {
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
      v10 = [v9 localSaltVersionIdentifier];
      v11 = [v10 isEqualToString:*(a1 + 40)] ^ 1;
      v12 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) zoneName];
        v14 = *(a1 + 40);
        *buf = 138413058;
        v23 = v13;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v14;
        v28 = 1024;
        v29 = v11;
        _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@  Comparing local(%@) to server(%@).Need update:%{BOOL}d", buf, 0x26u);
      }

      v15 = _Block_copy(*(a1 + 56));
      v16 = v15;
      if (v15)
      {
        (*(v15 + 2))(v15, v11, 0);
      }

      goto LABEL_18;
    }

    v19 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707228();
    }

    v9 = _Block_copy(*(a1 + 56));
    if (v9)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1006 userInfo:0];
      (v9)[2](v9, 1, v10);
      goto LABEL_18;
    }
  }

  else
  {
    v17 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) zoneName];
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - no local identifier saved", buf, 0xCu);
    }

    v9 = _Block_copy(*(a1 + 56));
    if (v9)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v9)[2](v9, 0, v10);
LABEL_18:
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E462C6C0(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    *v33 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v29 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v29];
  v8 = v29;
  if (v7)
  {
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
    }

    else
    {
      if ([v7 count] >= 2)
      {
        v10 = [v7 firstObject];
        if ([v7 count] >= 2)
        {
          v11 = 1;
          do
          {
            v12 = *(a1 + 48);
            v13 = [v7 objectAtIndexedSubscript:v11];
            [v12 deleteObject:v13];

            ++v11;
          }

          while ([v7 count] > v11);
        }

LABEL_15:
        [v10 setLocalSaltVersionIdentifier:*(a1 + 40)];
        [v10 setServerSaltVersionIdentifier:*(a1 + 40)];
        if ([*(a1 + 48) hasChanges])
        {
          v17 = *(a1 + 48);
          v28 = v8;
          v18 = [v17 save:&v28];
          v19 = v28;

          v20 = BDSCloudKitSyncLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [*(a1 + 32) zoneName];
            *buf = 138412802;
            v31 = v21;
            v32 = 1024;
            *v33 = v18;
            *&v33[4] = 2112;
            *&v33[6] = v19;
            _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier SAVE success %{BOOL}d error:(%@)", buf, 0x1Cu);
          }

          if (v18)
          {
            goto LABEL_25;
          }

          v22 = BDSCloudKitSyncLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [*(a1 + 32) zoneName];
            v24 = *(a1 + 40);
            *buf = 138412802;
            v31 = v23;
            v32 = 2112;
            *v33 = v24;
            *&v33[8] = 2114;
            *&v33[10] = v19;
            _os_log_error_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_ERROR, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier Error saving saltVersionIdentifier:(%@) Error:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v22 = BDSCloudKitSyncLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1E47072D0();
          }

          v19 = v8;
        }

LABEL_25:
        v8 = v19;
        goto LABEL_26;
      }

      v14 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) zoneName];
        v16 = *(a1 + 40);
        *buf = 138412546;
        v31 = v15;
        v32 = 2112;
        *v33 = v16;
        _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier NEW record %@", buf, 0x16u);
      }

      v9 = [[BCSaltVersionIdentifier alloc] initIntoManagedObjectContext:*(a1 + 48)];
    }

    v10 = v9;
    goto LABEL_15;
  }

LABEL_26:
  v25 = _Block_copy(*(a1 + 56));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, v8 == 0, v8);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1E462CB90(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"BCServerChangeToken"];
  v3 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v2];
  [v3 setResultType:1];
  v4 = *(a1 + 32);
  v21 = 0;
  v5 = [v4 executeRequest:v3 error:&v21];
  v6 = v21;
  if (v6)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707374();
    }
  }

  if (v5)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = *(a1 + 32);
    v19 = *MEMORY[0x1E695D350];
    v22[0] = *MEMORY[0x1E695D328];
    v20 = v2;
    v9 = [MEMORY[0x1E695DFD8] set];
    v23[0] = v9;
    v22[1] = *MEMORY[0x1E695D4D0];
    v10 = [MEMORY[0x1E695DFD8] set];
    v23[1] = v10;
    v22[2] = *MEMORY[0x1E695D2F0];
    v11 = MEMORY[0x1E695DFD8];
    v12 = [v5 result];
    v13 = [v11 setWithArray:v12];
    v23[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
    [v8 postNotificationName:v19 object:v18 userInfo:v14];

    v2 = v20;
  }

  v15 = _Block_copy(*(a1 + 48));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v5 != 0, v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E462D010(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F550] shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) zoneName];
      v6 = *(a1 + 40);
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ storing server change token: %@\\"", buf, 0x16u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"BCServerChangeToken"];
  [v7 setReturnsObjectsAsFaults:0];
  v8 = *(a1 + 48);
  v19 = 0;
  v9 = [v8 executeFetchRequest:v7 error:&v19];
  v10 = v19;
  if ([v9 count])
  {
    [v9 objectAtIndexedSubscript:0];
  }

  else
  {
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"BCServerChangeToken" inManagedObjectContext:*(a1 + 48)];
  }
  v11 = ;
  [v11 setValue:*(a1 + 56) forKey:@"serverChangeToken"];

  if ([*(a1 + 48) hasChanges])
  {
    v12 = *(a1 + 48);
    v18 = v10;
    [v12 save:&v18];
    v13 = v18;

    if (v13)
    {
      v14 = BDSCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1E4707404();
      }
    }
  }

  else
  {
    v13 = v10;
  }

  v15 = _Block_copy(*(a1 + 64));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E462D3A0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"BCServerChangeToken"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v20 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v20];
  v5 = v20;
  if (v5)
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707494();
    }
  }

  if ([v4 count])
  {
    v7 = objc_alloc(MEMORY[0x1E696ACD0]);
    v8 = [v4 objectAtIndexedSubscript:0];
    v9 = [v8 valueForKey:@"serverChangeToken"];
    v19 = 0;
    v10 = [v7 initForReadingFromData:v9 error:&v19];
    v11 = v19;

    if (v11)
    {
      v12 = BDSCloudKitLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1E4707524(v11, v12);
      }

      v13 = 0;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695BAB8]) initWithCoder:v10];
      [v10 finishDecoding];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = BDSCloudKitLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [*(a1 + 40) zoneName];
    *buf = 138412546;
    v22 = v15;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - #recordChange zone: %@ returning server change token: %@", buf, 0x16u);
  }

  v16 = _Block_copy(*(a1 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E462F880(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a3;
  v6 = +[BDSReachability sharedReachabilityForInternetConnection];

  if (v6 == v5)
  {
    +[BDSReachability _updateIsOffline];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"kNetworkReachabilityChangedNotification" object:v5];

  objc_autoreleasePoolPop(v4);
}

void sub_1E4631074(id *a1, int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1[4] delegate];
    v8 = [v7 entityName];
    v9 = v8;
    v10 = @"NO";
    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    v21 = v8;
    v23 = v11;
    v22 = 2112;
    if (a3)
    {
      v10 = @"YES";
    }

    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_INFO, "BCCloudDataSyncManager: syncCloudData: entityName: %@, attachedState: %@ reachable: %@", buf, 0x20u);
  }

  if (a2 && a3)
  {
    v12 = [a1[4] syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4631258;
    block[3] = &unk_1E875A268;
    objc_copyWeak(&v19, a1 + 7);
    v17 = a1[5];
    v18 = a1[6];
    dispatch_async(v12, block);

    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = _Block_copy(a1[6]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4631258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _syncQueueSyncForCloudData:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_1E463154C(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698F550] shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v6 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) delegate];
      v8 = [v7 entityName];
      v9 = v8;
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudDataSyncManager: databaseController:recordsChanged: entityName: %@, success: %@\\"", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E46318B8(uint64_t a1)
{
  if ([*(a1 + 32) serverPushPostponed])
  {
    v2 = _Block_copy(*(a1 + 40));
    if (v2)
    {
      v6 = v2;
      v2[2]();
      v2 = v6;
    }
  }

  else
  {
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 privateCloudDatabaseController];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E46319C4;
    v7[3] = &unk_1E875ACA8;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 getAttached:v7];
  }
}

void sub_1E46319C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = BDSCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 entityName];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v15 = 138543874;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataSyncManager: startSyncToCKWithCompletion entityName: %{public}@, attachedState: %{public}@ reachable: %{public}@", &v15, 0x20u);
  }

  if (a2 && a3 && ([*(a1 + 32) delegate], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [*(a1 + 32) delegate];
    [v12 syncManager:*(a1 + 32) startSyncToCKWithCompletion:*(a1 + 40)];
  }

  else
  {
    v13 = _Block_copy(*(a1 + 40));
    v12 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E46323A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v162 = *MEMORY[0x1E69E9840];
  v98 = a2;
  v102 = a3;
  v103 = a4;
  v109 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v101 = [WeakRetained delegate];
  if (!WeakRetained)
  {
    v10 = 0;
    v100 = 0;
    v11 = 0;
    v12 = v109;
    v13 = *(v109 + 72);
LABEL_44:
    [WeakRetained _leaveDispatchGroup:*(v12 + 32) times:v13 - v10];
    goto LABEL_45;
  }

  if (!v103)
  {
LABEL_5:
    dispatch_group_enter(*(a1 + 32));
    v9 = [WeakRetained syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46336F0;
    block[3] = &unk_1E875A030;
    block[4] = WeakRetained;
    v151 = *(a1 + 32);
    dispatch_async(v9, block);

    goto LABEL_8;
  }

  v7 = [v103 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v8 = [v103 code];

    if (v8 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_8:
  v108 = [MEMORY[0x1E695DF70] array];
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v14 = v98;
  v15 = [v14 countByEnumeratingWithState:&v146 objects:v161 count:16];
  if (v15)
  {
    v16 = *v147;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v147 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v146 + 1) + 8 * i);
        v19 = BDSCloudKitLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 encryptedValuesByKey];
          v21 = [v20 objectForKeyedSubscript:@"localRecordIDEncrypted"];
          *buf = 138412546;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "Successful save of CKRecord id=%@ %@", buf, 0x16u);
        }

        v22 = *(a1 + 40);
        v23 = [v18 recordID];
        v24 = [v22 objectForKeyedSubscript:v23];

        [v24 setSystemFields:v18];
        [v108 addObject:v24];
      }

      v15 = [v14 countByEnumeratingWithState:&v146 objects:v161 count:16];
    }

    while (v15);
  }

  v25 = [v108 count];
  v26 = 0;
  if (v25)
  {
    v27 = v101;
    if (!v101)
    {
      goto LABEL_21;
    }

    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v143[2] = sub_1E4633730;
    v143[3] = &unk_1E875ACD0;
    v143[4] = WeakRetained;
    v144 = *(a1 + 32);
    v145 = v25;
    [v101 syncManager:WeakRetained updateSyncGenerationFromCloudData:v108 completion:v143];

    v26 = v25;
  }

  v27 = v101;
LABEL_21:
  v97 = v26;
  v28 = [v102 count];
  if ([v102 count] != 0 && v27 != 0)
  {
    v29 = BDSCloudKitLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v102;
      _os_log_impl(&dword_1E45E0000, v29, OS_LOG_TYPE_DEFAULT, "Successful removal of CKRecord ids=%@", buf, 0xCu);
    }

    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = sub_1E4633740;
    v140[3] = &unk_1E875ACD0;
    v140[4] = WeakRetained;
    v141 = *(v109 + 32);
    v142 = v28;
    [v101 syncManager:WeakRetained removeCloudDataForIDs:v102 completion:v140];

    v97 += v28;
  }

  v30 = [v103 code];
  if (!v103)
  {
    v37 = BDSCloudKitLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [*(v109 + 48) operationID];
      *buf = 134218498;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      *&buf[22] = 2114;
      v155 = v38;
      _os_log_impl(&dword_1E45E0000, v37, OS_LOG_TYPE_DEFAULT, "Total success saving %lu records and deleting %lu records OperationID: %{public}@", buf, 0x20u);
    }

    goto LABEL_39;
  }

  v31 = v30;
  v32 = [v103 domain];
  v33 = *MEMORY[0x1E695B740];
  v34 = [v32 isEqualToString:*MEMORY[0x1E695B740]];

  if ((v34 & 1) == 0)
  {
    v39 = BDSCloudKitLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

    goto LABEL_38;
  }

  if (v31 > 110)
  {
    switch(v31)
    {
      case 111:
        goto LABEL_58;
      case 112:
        v11 = 0;
        v100 = 1;
        goto LABEL_40;
      case 5008:
LABEL_58:
        v100 = 0;
        v11 = 1;
        goto LABEL_40;
    }

    goto LABEL_90;
  }

  if (v31 > 0x1B)
  {
    goto LABEL_90;
  }

  if (((1 << v31) & 0x88000C0) != 0)
  {
    v35 = BDSCloudKitLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

    v36 = [WeakRetained syncQueue];
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = sub_1E46339C8;
    v111[3] = &unk_1E875AD20;
    v111[4] = WeakRetained;
    v112 = v103;
    v113 = *(v109 + 40);
    objc_copyWeak(&v115, (v109 + 64));
    v114 = *(v109 + 56);
    dispatch_async(v36, v111);

    objc_destroyWeak(&v115);
    goto LABEL_39;
  }

  if (v31 != 2)
  {
LABEL_90:
    v39 = BDSCloudKitLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707780();
    }

LABEL_38:

LABEL_39:
    v11 = 0;
    v100 = 0;
    goto LABEL_40;
  }

  v48 = [v103 userInfo];
  v93 = [v48 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v49 = BDSCloudKitLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = [v93 count];
    *buf = 134218496;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = v28;
    *&buf[22] = 2048;
    v155 = v50;
    _os_log_impl(&dword_1E45E0000, v49, OS_LOG_TYPE_INFO, "Partial failure saving %lu records and deleting %lu records.  Failed %lu.", buf, 0x20u);
  }

  if (v101)
  {
    v95 = objc_opt_new();
    v94 = objc_opt_new();
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v51 = v93;
    v52 = [v51 countByEnumeratingWithState:&v136 objects:v160 count:16];
    if (v52)
    {
      v100 = 0;
      v53 = *v137;
      v106 = *MEMORY[0x1E695B7C0];
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v137 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v55 = *(*(&v136 + 1) + 8 * j);
          v56 = [MEMORY[0x1E695DFB0] null];
          v57 = v55 == v56;

          if (!v57)
          {
            v58 = [v51 objectForKeyedSubscript:v55];
            v59 = [v58 domain];
            v60 = [v59 isEqual:v33];

            if (v60)
            {
              v61 = [v58 userInfo];
              v62 = [v61 objectForKey:v106];

              if (v62)
              {
                v63 = [v58 code] == 14;
                v64 = BDSCloudKitLog();
                v65 = v64;
                if (v63)
                {
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    *&buf[4] = v55;
                    *&buf[12] = 2114;
                    *&buf[14] = v58;
                    _os_log_impl(&dword_1E45E0000, v65, OS_LOG_TYPE_INFO, "CKErrorServerRecordChanged record %{public}@ perRecordError %{public}@", buf, 0x16u);
                  }

                  [v95 setObject:v62 forKeyedSubscript:v55];
                }

                else
                {
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *&buf[4] = v62;
                    *&buf[12] = 2114;
                    *&buf[14] = v103;
                    *&buf[22] = 2114;
                    v155 = v58;
                    _os_log_error_impl(&dword_1E45E0000, v65, OS_LOG_TYPE_ERROR, "Error for record %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                  }
                }
              }

              else
              {
                v66 = BDSCloudKitLog();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v55;
                  *&buf[12] = 2114;
                  *&buf[14] = v103;
                  *&buf[22] = 2114;
                  v155 = v58;
                  _os_log_error_impl(&dword_1E45E0000, v66, OS_LOG_TYPE_ERROR, "Unable to retrieve serverRecord for recordID %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                }

                if ([v58 code] == 21 || objc_msgSend(v58, "code") == 14)
                {
                  [v94 addObject:v55];
                }

                else
                {
                  v100 |= [v58 code] == 112;
                }
              }
            }

            else
            {
              v62 = BDSCloudKitLog();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v55;
                *&buf[12] = 2114;
                *&buf[14] = v58;
                _os_log_error_impl(&dword_1E45E0000, v62, OS_LOG_TYPE_ERROR, "Error modifying record:%@ error=%{public}@", buf, 0x16u);
              }
            }
          }
        }

        v52 = [v51 countByEnumeratingWithState:&v136 objects:v160 count:16];
      }

      while (v52);
    }

    else
    {
      v100 = 0;
    }

    v92 = [v95 count];
    if (v92)
    {
      v96 = [MEMORY[0x1E695DFA8] set];
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      obj = [v95 allValues];
      v107 = [obj countByEnumeratingWithState:&v132 objects:v159 count:16];
      if (v107)
      {
        v104 = *v133;
        do
        {
          for (k = 0; k != v107; ++k)
          {
            if (*v133 != v104)
            {
              objc_enumerationMutation(obj);
            }

            v70 = *(*(&v132 + 1) + 8 * k);
            v128 = 0u;
            v129 = 0u;
            v130 = 0u;
            v131 = 0u;
            v71 = [v70 allKeys];
            v72 = [v71 countByEnumeratingWithState:&v128 objects:v158 count:16];
            if (v72)
            {
              v73 = *v129;
              while (2)
              {
                for (m = 0; m != v72; ++m)
                {
                  if (*v129 != v73)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v75 = *(*(&v128 + 1) + 8 * m);
                  objc_opt_class();
                  v76 = [v70 objectForKeyedSubscript:v75];
                  v77 = BUDynamicCast();

                  if (v77)
                  {
                    v78 = [v70 recordID];

                    if (v78)
                    {
                      v79 = [v70 recordID];
                      [v96 addObject:v79];
                    }

                    else
                    {
                      v79 = BDSCloudKitLog();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v70;
                        _os_log_error_impl(&dword_1E45E0000, v79, OS_LOG_TYPE_ERROR, "Record ID is nil for record to fetch: %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_117;
                  }
                }

                v72 = [v71 countByEnumeratingWithState:&v128 objects:v158 count:16];
                if (v72)
                {
                  continue;
                }

                break;
              }
            }

LABEL_117:
          }

          v107 = [obj countByEnumeratingWithState:&v132 objects:v159 count:16];
        }

        while (v107);
      }

      if ([v96 count])
      {
        v80 = BDSCloudKitLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          v81 = [v96 count];
          *buf = 134217984;
          *&buf[4] = v81;
          _os_log_impl(&dword_1E45E0000, v80, OS_LOG_TYPE_INFO, "Fetching %lu records that had assets on conflict", buf, 0xCu);
        }

        v82 = objc_alloc(MEMORY[0x1E695B938]);
        v83 = [v96 allObjects];
        v84 = [v82 initWithRecordIDs:v83];

        v85 = [MEMORY[0x1E695BA00] bds_defaultConfiguration];
        [v84 setConfiguration:v85];

        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 3221225472;
        v122[2] = sub_1E4633750;
        v122[3] = &unk_1E875ACF8;
        v123 = v95;
        v124 = v101;
        v125 = WeakRetained;
        v126 = *(v109 + 32);
        v127 = v92;
        [v84 setFetchRecordsCompletionBlock:v122];
        v86 = [WeakRetained cloudKitController];
        v87 = [v86 privateCloudDatabaseController];

        v88 = [v87 database];
        [v88 addOperation:v84];
      }

      else
      {
        v89 = [v95 allValues];
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = sub_1E46339A8;
        v119[3] = &unk_1E875ACD0;
        v119[4] = WeakRetained;
        v120 = *(v109 + 32);
        v121 = v92;
        [v101 syncManager:WeakRetained resolveConflictsForRecords:v89 completion:v119];
      }

      v97 += v92;
    }

    v90 = [v94 count];
    if (v90)
    {
      v91 = *(v109 + 56);
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = sub_1E46339B8;
      v116[3] = &unk_1E875ACD0;
      v116[4] = WeakRetained;
      v117 = *(v109 + 32);
      v118 = v90;
      [v101 syncManager:v91 failedRecordIDs:v94 completion:v116];

      v97 += v90;
    }

    v68 = v95;
  }

  else
  {
    v67 = BDSCloudKitLog();
    v68 = v67;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_1E47077F0();
      v100 = 0;
      v68 = v67;
    }

    else
    {
      v100 = 0;
    }
  }

  v11 = 0;
LABEL_40:

  v12 = v109;
  v13 = *(v109 + 72);
  v10 = v97;
  if (v13 >= v97)
  {
    goto LABEL_44;
  }

  v40 = BDSCloudKitLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707830();
  }

LABEL_45:
  if ((v100 & 1) != 0 || v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v155 = sub_1E4633B90;
    v156 = sub_1E4633BA0;
    v157 = [MEMORY[0x1E695DF70] array];
    v41 = *(v109 + 40);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = sub_1E4633BA8;
    v110[3] = &unk_1E875AD48;
    v110[4] = buf;
    [v41 enumerateKeysAndObjectsUsingBlock:v110];
    if ([*(*&buf[8] + 40) count])
    {
      v42 = [*(v109 + 56) cloudKitController];
      v43 = [v42 privateCloudDatabaseController];

      if (v100)
      {
        [v43 zonesUnreadableDueToMissingD2DEncryptionIdentity:*(*&buf[8] + 40) completion:0];
      }

      else if (v11)
      {
        v44 = MEMORY[0x1E696ABC0];
        v152 = *MEMORY[0x1E696A578];
        v153 = @"Unsynced keychain - cannot modify records";
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        v46 = [v44 errorWithDomain:@"BDSCloudKitClientError" code:2006 userInfo:v45];

        [v43 zonesTemporarilyUnreadableWithError:v46 completion:0];
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1E46336F0(uint64_t a1)
{
  [*(a1 + 32) setBackOffInterval:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_1E4633750(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = BDSCloudKitLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707870();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v32 = [v5 count];
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "Successfully fetched %lu records that had assets on conflict", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [v5 allValues];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 recordID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }
  }

  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = [*(a1 + 32) allValues];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E4633998;
  v23[3] = &unk_1E875ACD0;
  v19 = *(a1 + 56);
  v23[4] = *(a1 + 48);
  v20 = v19;
  v21 = *(a1 + 64);
  v24 = v20;
  v25 = v21;
  [v17 syncManager:v16 resolveConflictsForRecords:v18 completion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E46339C8(uint64_t a1)
{
  if (([*(a1 + 32) serverPushPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerPushPostponed:1];
    [*(a1 + 32) _updateRetryParametersFromModifyRecordsOperationError:*(a1 + 40) batchSize:{objc_msgSend(*(a1 + 48), "count")}];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) syncQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1E4633AD4;
    v5[3] = &unk_1E875A178;
    objc_copyWeak(&v6, (a1 + 64));
    v5[4] = *(a1 + 56);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_1E4633AD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setServerPushPostponed:0];
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 transactionManager];
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 entityName];
    [v4 signalSyncToCKTransactionForEntityName:v6 syncManager:*(a1 + 32)];

    WeakRetained = v7;
  }
}

uint64_t sub_1E4633B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4633BA8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 zoneID];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 zoneID];
    [v4 addObject:v5];
  }
}

void sub_1E4634048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setProcessingCloudData:0];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) cloudKitController];
    v3 = [v2 transactionManager];
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 entityName];
    [v3 signalSyncToCKTransactionForEntityName:v5 syncManager:*(a1 + 32)];
  }

  v6 = _Block_copy(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

id sub_1E463423C()
{
  v0 = objc_opt_new();
  [v0 setQualityOfService:17];
  [v0 setDiscretionaryNetworkBehavior:0];
  [v0 setAutomaticallyRetryNetworkFailures:0];

  return v0;
}

void sub_1E46345A4()
{
  v0 = [BCCloudKitController alloc];
  v1 = +[BCCloudKitSecureConfiguration configuration];
  v2 = [(BCCloudKitController *)v0 initWithConfiguration:v1];
  v3 = qword_1ECF75DF8;
  qword_1ECF75DF8 = v2;

  v4 = [BCCloudKitTransactionManager alloc];
  v5 = [(BCCloudKitTransactionManager *)v4 initWithCloudKitController:qword_1ECF75DF8];
  [qword_1ECF75DF8 setTransactionManager:v5];
}

void sub_1E46347F0(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - registerForSecureNotifications", buf, 2u);
  }

  v3 = MEMORY[0x1E695B888];
  v4 = [*(a1 + 32) containerIdentifier];
  v5 = [v3 containerWithIdentifier:v4];

  v6 = [*(a1 + 32) appBundleIdentifier];
  [v5 setSourceApplicationBundleIdentifier:v6];

  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E4634944;
    v10[3] = &unk_1E875ADF8;
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = v7;
    v14 = v8;
    v12 = v9;
    v13 = v5;
    [v13 accountStatusWithCompletionHandler:v10];
  }
}

void sub_1E4634944(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4634A18;
  block[3] = &unk_1E875ADD0;
  v10 = v5;
  v6 = *(a1 + 56);
  v13 = a2;
  v14 = v6;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(v7, block);
}

void sub_1E4634A18(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v13 = BDSCloudKitLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v24 = v14;
        _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_INFO, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %@", buf, 0xCu);
      }

      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = [v15 userInfo];
        v2 = [v16 objectForKeyedSubscript:*MEMORY[0x1E695B748]];

        if (v2)
        {
          [v2 doubleValue];
          v18 = dispatch_time(0, (v17 * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E4634D7C;
          block[3] = &unk_1E875A198;
          block[4] = *(a1 + 64);
          dispatch_after(v18, MEMORY[0x1E69E96A0], block);
          goto LABEL_19;
        }
      }

      v2 = BDSCloudKitLog();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v19 = *(a1 + 32);
      *buf = 138543362;
      v24 = v19;
      v3 = "BCCloudKitController - Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      v11 = 12;
      goto LABEL_18;
    }

    if (v1 == 1)
    {
      v7 = BDSCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_INFO, "BCCloudKitController - Account Available", buf, 2u);
      }

      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) privateCloudDatabase];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1E4634DDC;
      v20[3] = &unk_1E875A008;
      v10 = *(a1 + 48);
      v21 = *(a1 + 40);
      [v8 connectUserTo:v9 container:v10 updateSubscription:1 completion:&unk_1F5E62168 subscriptionCompletion:v20];

      v2 = v21;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  switch(v1)
  {
    case 2:
      v2 = BDSCloudKitLog();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v3 = "BCCloudKitController - CKAccountStatusRestricted";
LABEL_16:
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      goto LABEL_17;
    case 3:
      v2 = BDSCloudKitLog();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v3 = "BCCloudKitController - CKAccountStatusNoAccount";
      goto LABEL_16;
    case 4:
      v2 = BDSCloudKitLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v3 = "BCCloudKitController - CKAccountStatusTemporarilyUnavailable. Account Temporarily Unavailable";
        v4 = v2;
        v5 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        v11 = 2;
LABEL_18:
        _os_log_impl(&dword_1E45E0000, v4, v5, v3, buf, v11);
      }

LABEL_19:

      break;
  }

LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4634D84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E47078F4();
    }
  }
}

uint64_t sub_1E4634DDC(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserTo:container: subscription completed.", v4, 2u);
  }

  return [*(a1 + 32) detach];
}

void sub_1E4635314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E463535C(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained configuration];
      v7 = [v6 containerIdentifier];
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedAttachment", buf, 0xCu);
    }

    v8 = [WeakRetained accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4635504;
    v12[3] = &unk_1E87596B0;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v3;
    dispatch_async(v8, v12);

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = _Block_copy(v3);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4635504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained p_updateAttachment];

  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_1E4635570(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E470795C();
  }
}

void sub_1E46355C4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained configuration];
      v7 = [v6 containerIdentifier];
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment", buf, 0xCu);
    }

    v8 = [WeakRetained accessQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E4635768;
    v12[3] = &unk_1E875A3D0;
    v13 = WeakRetained;
    v14 = v3;
    dispatch_async(v8, v12);
  }

  else
  {
    v9 = _Block_copy(v3);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4635768(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E463580C;
  v3[3] = &unk_1E8759D88;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _updateAccountCacheWithCompletionBlock:v3];
}

void sub_1E463580C(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 containerIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment hasChanged:%{BOOL}d", &v10, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) p_accountReallyChangedWithCompletion:*(a1 + 40)];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4635928(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1E47079C4();
  }
}

uint64_t sub_1E4635AFC(uint64_t result)
{
  *(*(result + 32) + 11) = *(result + 40);
  v2 = *(result + 32);
  v3 = *(result + 41);
  if (*(v2 + 10) != v3)
  {
    v4 = result;
    *(v2 + 10) = v3;
    [*(result + 32) _reestablishSyncEngineSalt];
    v5 = *(v4 + 32);

    return [v5 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_1E4635E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4635E58(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v8 = [WeakRetained accessQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E4635F6C;
    v10[3] = &unk_1E875AE98;
    objc_copyWeak(&v11, (a1 + 40));
    v12 = a2;
    v13 = a3;
    dispatch_async(v8, v10);

    objc_destroyWeak(&v11);
  }

  else
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707A2C(a1);
    }
  }
}

void sub_1E4635F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 40) reachable:*(a1 + 41)];
}

void sub_1E46363C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46363F4(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v8 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4636510;
    block[3] = &unk_1E875AF10;
    objc_copyWeak(&v11, (a1 + 40));
    block[4] = *(a1 + 32);
    v12 = a2;
    v13 = a3;
    dispatch_async(v8, block);

    objc_destroyWeak(&v11);
  }

  else
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707AD4(a1);
    }
  }
}

void sub_1E4636510(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained gettingAccountInfo])
  {
    goto LABEL_26;
  }

  v3 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) configuration];
    v5 = [v4 containerIdentifier];
    if (*(a1 + 48))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 138543874;
    v34 = v5;
    v35 = 2114;
    v36 = v6;
    v37 = 1024;
    v38 = [WeakRetained enableCloudSync];
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment Current State: attached:%{public}@ enableCloudSync:%{BOOL}d", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    goto LABEL_8;
  }

  if (([WeakRetained enableCloudSync] & 1) == 0)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
LABEL_17:
      v14 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) configuration];
        v16 = [v15 containerIdentifier];
        *buf = 138543362;
        v34 = v16;
        _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment: No change to attachment.", buf, 0xCu);
      }

      if ([WeakRetained enableCloudSync])
      {
        v17 = [WeakRetained container];
        if (v17)
        {
          v18 = *(a1 + 48);

          if (v18)
          {
            v19 = BDSCloudKitSyncLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [*(a1 + 32) configuration];
              v21 = [v20 containerIdentifier];
              v22 = [*(a1 + 32) configuration];
              v23 = [v22 dbSubscriptionID];
              *buf = 138543618;
              v34 = v21;
              v35 = 2114;
              v36 = v23;
              _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: Signaling fetch changes for %{public}@", buf, 0x16u);
            }

            v24 = [WeakRetained transactionManager];
            v25 = [*(a1 + 32) configuration];
            v26 = [v25 dbSubscriptionID];
            [v24 signalFetchChangesTransaction:v26];

            v27 = [WeakRetained transactionManager];
            v28 = [*(a1 + 32) configuration];
            v29 = [v28 dbSubscriptionID];
            [v27 signalFetchChangesTransactionInService:v29];
          }
        }
      }

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

LABEL_8:
    if (([WeakRetained enableCloudSync] & 1) == 0)
    {
      v7 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) configuration];
        v9 = [v8 containerIdentifier];
        *buf = 138543362;
        v34 = v9;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: detaching from database controller", buf, 0xCu);
      }

      [*(a1 + 32) setContainer:0];
      v10 = [WeakRetained privateCloudDatabaseController];
      [v10 detach];

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v11 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) configuration];
    v13 = [v12 containerIdentifier];
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: getting account info", buf, 0xCu);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1E46369F8;
  v31[3] = &unk_1E875AEE8;
  v31[4] = *(a1 + 32);
  objc_copyWeak(&v32, (a1 + 40));
  [WeakRetained p_getAccountInfoWithCompletion:v31];
  objc_destroyWeak(&v32);
LABEL_26:

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1E46369F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707B7C(a1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocks];
  }
}

void sub_1E4636ED4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4636FCC;
    v9[3] = &unk_1E875AF38;
    v6 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = a2;
    v10 = v5;
    [v6 accountInfoWithCompletionHandler:v9];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, a2, v5, 0, 0);
    }
  }
}

void sub_1E4636FCC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = _Block_copy(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(a1 + 48), *(a1 + 32), v8, v5);
  }
}

void sub_1E4637340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4637364(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained accessQueue];

  if (v10)
  {
    v11 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4637498;
    block[3] = &unk_1E875AFB0;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = a2;
    v13 = v7;
    v14 = v8;
    v15 = *(a1 + 32);
    dispatch_async(v11, block);

    objc_destroyWeak(v16);
  }
}

void sub_1E4637498(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained container];

    if (v4)
    {
      v5 = [v3 privateCloudDatabaseController];
      v6 = [v3 serviceMode];
      v7 = [v3 configuration];
      v8 = v7;
      if (v6)
      {
        [v7 serviceZones];
      }

      else
      {
        [v7 appZones];
      }
      v9 = ;

      v10 = (a1 + 64);
      [v3 setCurrentStatus:*(a1 + 64)];
      v11 = BDSCloudKitSyncLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1E4707C28((a1 + 64), v11);
      }

      v12 = *v10;
      if (*v10 <= 1)
      {
        if (!v12)
        {
          v27 = BDSCloudKitLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 32);
            *buf = 138543362;
            v56 = v28;
            _os_log_impl(&dword_1E45E0000, v27, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %{public}@", buf, 0xCu);
          }

          [v5 detach];
          [v3 setGettingAccountInfo:0];
          v30 = (a1 + 32);
          v29 = *(a1 + 32);
          if (v29 && ([v29 userInfo], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "objectForKeyedSubscript:", *MEMORY[0x1E695B748]), v32 = objc_claimAutoreleasedReturnValue(), v31, v32))
          {
            [v32 doubleValue];
            v34 = dispatch_time(0, (v33 * 1000000000.0));
            v35 = [v3 accessQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1E4637A9C;
            block[3] = &unk_1E8759750;
            objc_copyWeak(&v54, (a1 + 56));
            dispatch_after(v34, v35, block);

            objc_destroyWeak(&v54);
          }

          else
          {
            v36 = BDSCloudKitLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_1E4707CA4(v30, v36, v37, v38, v39, v40, v41, v42);
            }
          }

          goto LABEL_30;
        }

        if (v12 == 1)
        {
          v16 = BDSCloudKitLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v3 configuration];
            v18 = [v17 containerIdentifier];
            *buf = 138543362;
            v56 = v18;
            _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - Account Available for %{public}@", buf, 0xCu);
          }

          v19 = [v3 configuration];
          if ([v19 requiresDeviceToDeviceEncryption])
          {
            v20 = [*(a1 + 40) supportsDeviceToDeviceEncryption];

            if ((v20 & 1) == 0)
            {
              v21 = BDSCloudKitLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v3 configuration];
                v23 = [v22 containerIdentifier];
                *buf = 138543362;
                v56 = v23;
                _os_log_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_DEFAULT, "Container %{public}@ requires device-to-device encryption but user's account does not support it.  Not connecting.", buf, 0xCu);
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          v43 = [v3 configuration];
          v44 = [v43 shouldPerformDatabaseSubscriptionForServiceMode:v6];

          v45 = [*(a1 + 48) privateCloudDatabase];
          v46 = *(a1 + 48);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = sub_1E4637ADC;
          v49[3] = &unk_1E875AF88;
          v50 = v5;
          v51 = v9;
          v52 = v3;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1E4637BDC;
          v47[3] = &unk_1E875A008;
          v48 = v52;
          [v50 connectUserTo:v45 container:v46 updateSubscription:v44 completion:v49 subscriptionCompletion:v47];
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            v13 = BDSCloudKitLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 32);
              *buf = 138543362;
              v56 = v24;
              v15 = "Account Restricted.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

LABEL_28:

LABEL_29:
            [v5 detach];
            [v3 setGettingAccountInfo:0];
            break;
          case 3:
            v13 = BDSCloudKitLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(a1 + 32);
              *buf = 138543362;
              v56 = v25;
              v15 = "Books isn't signed into iCloud.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

            goto LABEL_28;
          case 4:
            v13 = BDSCloudKitLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 32);
              *buf = 138543362;
              v56 = v14;
              v15 = "Account Temporarily Unavailable.  Not syncing anything.  Account status error=%{public}@";
LABEL_27:
              _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
              goto LABEL_28;
            }

            goto LABEL_28;
        }
      }

LABEL_30:
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4637A9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_getAccountInfo];
}

void sub_1E4637ADC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4637BD0;
    v9[3] = &unk_1E875A008;
    v10 = *(a1 + 48);
    [v6 attachToZones:v7 completion:v9];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [*(a1 + 48) setGettingAccountInfo:0];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4707D14();
  }

LABEL_8:
}

void sub_1E4637BDC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 containerIdentifier];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserToContainer subscription completed for %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E46380FC(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudSync];
  if (result)
  {
    [*(a1 + 32) _reestablishSyncEngineSaltIfNeeded];
    v3 = *(a1 + 32);

    return [v3 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_1E4638448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E4638470(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained transactionManager];
    [v6 signalFetchChangesTransaction:*(a1 + 32)];
  }

  else
  {
    v7 = [WeakRetained accessQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E463854C;
    v8[3] = &unk_1E875A030;
    v8[4] = v5;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void sub_1E463854C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) enableCloudSync];
  v4 = BDSCloudKitSyncLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) configuration];
      v7 = [v6 containerIdentifier];
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Asked to fetch changes for %{public}@ while detached - attempt attachment.", &v10, 0x16u);
    }

    [*v2 aq_requestUpdateAttachment];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707D7C(v2, a1);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4638678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained enableCloudSync])
  {
    [WeakRetained _reestablishSyncEngineSaltIfNeeded];
  }
}

void sub_1E46388A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1E46388C4(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained container];

  v4 = v3 == 0;
  v5 = BDSCloudKitSyncLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707EE8(v6);
    }

    v10 = _Block_copy(*(a1 + 40));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) currentUserIDName];
      *buf = 138412546;
      v18 = v7;
      v19 = 2048;
      v20 = [WeakRetained currentStatus];
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "_updateAccountCacheWithTimeout fetchUserRecordIDWithCompletionHandler currentUserIDName:%@ status:%ld ", buf, 0x16u);
    }

    v8 = [WeakRetained container];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E4638AC4;
    v14[3] = &unk_1E875B0A0;
    objc_copyWeak(&v16, (a1 + 56));
    v14[4] = *(a1 + 32);
    v13 = *(a1 + 40);
    v9 = v13;
    v15 = v13;
    [v8 fetchUserRecordIDWithCompletionHandler:v14];

    objc_destroyWeak(&v16);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4638AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained accessQueue];

  if (v8)
  {
    v9 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4638C54;
    block[3] = &unk_1E875B078;
    v16 = v5;
    v10 = WeakRetained;
    v11 = *(a1 + 32);
    v17 = v10;
    v18 = v11;
    v21 = *(a1 + 48);
    v19 = v6;
    objc_copyWeak(&v22, (a1 + 56));
    v20 = *(a1 + 40);
    dispatch_async(v9, block);

    objc_destroyWeak(&v22);
    v12 = v16;
  }

  else
  {
    v13 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4707F2C(v13);
    }

    v14 = _Block_copy(*(a1 + 40));
    v12 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0);
    }
  }
}

void sub_1E4638C54(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordName];
  v3 = [*(a1 + 40) currentUserIDName];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v10 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 48) configuration];
      v12 = [v11 containerIdentifier];
      v13 = [*(a1 + 48) currentUserIDName];
      v14 = [*(a1 + 32) recordName];
      *buf = 138543874;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) currentUserIDName from:%@ to:%@ has changed! ", buf, 0x20u);
    }

    v15 = [*(a1 + 32) recordName];
    [*(a1 + 40) setCurrentUserIDName:v15];

    goto LABEL_13;
  }

  v5 = [*(a1 + 56) domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v6)
  {
    goto LABEL_14;
  }

  if ([*(a1 + 56) code] != 9)
  {
    v16 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 48) configuration];
      v18 = [v17 containerIdentifier];
      v19 = [*(a1 + 48) currentUserIDName];
      *buf = 138543618;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) Unknown error while fetching account. Assuming we had a change with currentUserIDName:%@ ", buf, 0x16u);
    }

LABEL_13:
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_14;
  }

  [*(a1 + 40) setCurrentUserIDName:0];
  [*(a1 + 40) setCurrentStatus:0];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v7 = BDSCloudKitSyncLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) configuration];
    v9 = [v8 containerIdentifier];
    *buf = 138543362;
    v35 = v9;
    _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) CKErrorNotAuthenticated  resetting current account values ", buf, 0xCu);
  }

LABEL_14:
  v20 = a1 + 72;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v21 = BDSCloudKitSyncLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4707F70(a1, a1 + 72, v21);
    }

    v22 = _Block_copy(*(a1 + 64));
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, *(*(*v20 + 8) + 24));
    }
  }

  else
  {
    v24 = [*(a1 + 40) container];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E46390A4;
    v30[3] = &unk_1E875B050;
    objc_copyWeak(&v33, (a1 + 80));
    v28 = *(a1 + 40);
    v25 = v28.i64[0];
    v31 = vextq_s8(v28, v28, 8uLL);
    v29 = *(a1 + 64);
    v26 = v29;
    v32 = v29;
    [v24 accountStatusWithCompletionHandler:v30];

    objc_destroyWeak(&v33);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1E46390A4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained accessQueue];

  if (v5)
  {
    v6 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46391DC;
    block[3] = &unk_1E875B028;
    v19 = a2;
    v7 = WeakRetained;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v13 = *(a1 + 48);
    v10 = v13;
    v18 = v13;
    dispatch_async(v6, block);
  }

  else
  {
    v11 = _Block_copy(*(a1 + 48));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, *(*(*(a1 + 56) + 8) + 24));
    }
  }
}

void sub_1E46391DC(uint64_t a1)
{
  v2 = (a1 + 72);
  v3 = *(a1 + 72);
  v4 = [*(a1 + 32) currentStatus];
  v5 = BDSCloudKitSyncLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3 == v4)
  {
    if (v6)
    {
      sub_1E4708120(a1);
    }
  }

  else
  {
    if (v6)
    {
      sub_1E4708040(a1, v2);
    }

    [*(a1 + 32) setCurrentStatus:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v7 = _Block_copy(*(a1 + 56));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, *(*(*(a1 + 64) + 8) + 24));
  }
}

void sub_1E46396B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46396E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v4 = [WeakRetained accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46397F8;
    block[3] = &unk_1E875A008;
    v9 = WeakRetained;
    dispatch_async(v4, block);

    v5 = v9;
  }

  else
  {
    v5 = BDSCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E470848C(v5);
    }
  }

  v6 = _Block_copy(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

uint64_t sub_1E46397F8(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_1E46399EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4639A18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v4 = [WeakRetained accessQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E4639AE4;
    v7[3] = &unk_1E875A030;
    v5 = WeakRetained;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

uint64_t sub_1E4639AE4(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  [*(a1 + 40) _reestablishSyncEngineSalt];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_1E463C0B8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t BCAnnotationsProtoBookReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BCProtoAnnotation);
          [a1 addAnnotation:v16];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BCProtoAnnotationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_30:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1E463ED9C(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [a1 objectForKeyedSubscript:{v11, v16}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id BookDataStoreBundle()
{
  if (qword_1ECF75E10 != -1)
  {
    sub_1E4708DC8();
  }

  v1 = qword_1ECF75E08;

  return v1;
}

uint64_t sub_1E463EF58()
{
  qword_1ECF75E08 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t BookDataStoreCFBundle()
{
  if (qword_1ECF75E20 != -1)
  {
    sub_1E4708DDC();
  }

  return qword_1ECF75E18;
}

void sub_1E463EFEC()
{
  v2 = BookDataStoreBundle();
  v0 = [v2 bundleURL];

  if (v0)
  {
    v1 = [v2 bundleURL];
    qword_1ECF75E18 = CFBundleCreate(0, v1);
  }
}

id sub_1E463F06C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObjects:{objc_opt_class(), a3, 0}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v7];

  objc_opt_class();
  v10 = BUDynamicCast();

  return v10;
}

void sub_1E4645534()
{
  v0 = NSTemporaryDirectory();
  v4 = [v0 stringByAppendingPathComponent:@"BDSUnitTest"];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtPath:v4 error:0];

  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v3 = qword_1ECF75E38;
  qword_1ECF75E38 = v2;
}

BOOL sub_1E4645E54(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, objc_class *a6, void *a7, void *a8, void *a9)
{
  v15 = a5;
  v38 = a7;
  v43 = [a1 changes];
  v16 = [v43 count];
  v39 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v41 = NSStringFromClass(a6);
  v42 = v16;
  v17 = *a3;
  v36 = a8;
  if (*a3 < v16 && a4 >= 1)
  {
    v18 = 0;
    v40 = a4;
    v35 = a3;
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [v43 objectAtIndexedSubscript:v17];
      if (![v20 changeType] || objc_msgSend(v20, "changeType") == 1)
      {
        break;
      }

      if ([v20 changeType] != 2)
      {
        goto LABEL_22;
      }

      v28 = [v20 changedObjectID];
      v29 = [v28 entity];
      v30 = [v29 name];
      v31 = [v30 isEqualToString:v41];

      if (v31)
      {
        v21 = [v20 tombstone];
        if (v21)
        {
          [v39 addObject:v21];
          ++v18;
        }

LABEL_15:
      }

      a4 = v40;
LABEL_22:

      objc_autoreleasePoolPop(v19);
      [v15 processPendingChanges];
LABEL_23:
      if (++v17 >= v42 || v18 >= a4)
      {
        goto LABEL_25;
      }
    }

    v21 = [v20 changedObjectID];
    v22 = [v21 entity];
    v23 = [v22 name];
    v24 = [v23 isEqualToString:v41];

    if (!v24)
    {

      objc_autoreleasePoolPop(v19);
      a4 = v40;
      goto LABEL_23;
    }

    v25 = [v15 existingObjectWithID:v21 error:0];
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isDeleted] & 1) == 0)
    {
      v26 = v25;
      if (([v26 deletedFlag] & 1) == 0)
      {
        [v26 setPrivacyDelegate:v38];
        v27 = [v26 mutableCopy];
        [v27 setPrivacyDelegate:v38];
        if (v27)
        {
          [v37 addObject:v27];
          ++v18;
        }

        a3 = v35;
      }
    }

    [v15 refreshObject:v25 mergeChanges:0];

    goto LABEL_15;
  }

LABEL_25:
  v32 = v37;
  *v36 = v37;
  v33 = v39;
  *a9 = v39;
  *a3 = v17;

  return v17 == v42;
}

void sub_1E4646498(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E47091CC();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) entityName];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Successfully transitioned to a new cloud container for entity: %@", &v9, 0xCu);
    }
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E464679C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E4646890;
    v9[3] = &unk_1E875B278;
    v12 = a3;
    v10 = v6;
    v11 = *(a1 + 40);
    [v10 syncCloudData:v5 completion:v9];
  }

  else
  {
    v7 = _Block_copy(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_1E4646890(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) signalSyncToCK];
  }

  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1E4646AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4646AC0(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4646B34(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    if (*(a1 + 48) >= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    [v6 setFetchLimit:v7];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"editGeneration > syncGeneration"];
    [v6 setPredicate:v8];

    v44 = 0;
    v9 = [v3 executeFetchRequest:v6 error:&v44];
    v10 = v44;
    [WeakRetained _logError:v10 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
    if ([v9 count])
    {
      v34 = v7;
      v35 = a1;
      v36 = v10;
      v38 = v6;
      v33 = [v9 count];
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [WeakRetained entityName];
        v13 = [v9 count];
        *buf = 138543618;
        v47 = v12;
        v48 = 2048;
        v49 = v13;
        _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ startSyncToCKWithCompletion found %lu dirty records", buf, 0x16u);
      }

      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v15 = [WeakRetained privacyDelegate];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v37 = v9;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            [v21 setPrivacyDelegate:v15];
            v22 = [v21 mutableCopy];
            [v3 refreshObject:v21 mergeChanges:1];
            if (v22)
            {
              v23 = [WeakRetained privacyDelegate];
              [v22 setPrivacyDelegate:v23];

              [v14 addObject:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v18);
      }

      v24 = _Block_copy(*(v35 + 32));
      v25 = v24;
      if (v24)
      {
        (*(v24 + 2))(v24, v14, v33 == v34);
      }

      v10 = v36;
      if ([v3 hasChanges])
      {
        v39 = v36;
        [v3 save:&v39];
        v26 = v39;

        [WeakRetained _logError:v26 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
        v10 = v26;
      }

      v9 = v37;
      v6 = v38;
    }

    else
    {
      v29 = BDSCloudKitLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [WeakRetained entityName];
        *buf = 138412290;
        v47 = v30;
        _os_log_impl(&dword_1E45E0000, v29, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ startSyncToCKWithCompletion no records need updating", buf, 0xCu);
      }

      v31 = _Block_copy(*(a1 + 32));
      v14 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, 0, 0);
      }
    }
  }

  else
  {
    v27 = _Block_copy(*(a1 + 32));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4647040(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1E4647598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46475BC(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_1E464762C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager requesting currentCloudSyncVersions for %@\\"", &v15, 0xCu);
      }
    }

    v8 = [WeakRetained mq_cloudSyncVersions];
    v9 = [v8 mutableCopy];

    v10 = _Block_copy(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }

  else
  {
    v12 = _Block_copy(*(a1 + 32));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E46479B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46479DC(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E4647A54(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138412546;
        v41 = v7;
        v42 = 2112;
        v43 = v8;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudData %@\\"", buf, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setReturnsObjectsAsFaults:0];
    [v11 setFetchLimit:1];
    [v11 setPredicate:*(a1 + 40)];
    v38 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v38];
    v13 = v38;
    [WeakRetained _logError:v13 at:@"setCloudData - fetch"];
    v36 = v12;
    v14 = [v12 firstObject];
    v15 = v14;
    if (!v14)
    {
      v16 = MEMORY[0x1E695D5B8];
      v17 = [WeakRetained entityName];
      v15 = [v16 insertNewObjectForEntityForName:v17 inManagedObjectContext:v3];
    }

    v18 = [WeakRetained privacyDelegate];
    [v15 setPrivacyDelegate:v18];

    v19 = [WeakRetained privacyDelegate];
    [*(a1 + 32) setPrivacyDelegate:v19];

    if (([v15 isEqualExceptForDate:*(a1 + 32) ignoringEmptySalt:*(a1 + 80)] & 1) != 0 || (objc_msgSend(v15, "configureFromCloudData:withMergers:", *(a1 + 32), *(a1 + 48)), !objc_msgSend(v15, "hasChanges")))
    {
      v23 = 0;
    }

    else
    {
      v20 = BDSCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [WeakRetained entityName];
        v22 = [v15 identifier];
        *buf = 138544386;
        v41 = v21;
        v42 = 2160;
        v43 = 1752392040;
        v44 = 2112;
        v45 = v22;
        v46 = 1024;
        v47 = v14 == 0;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v15 incrementEditGeneration];
      v23 = 1;
    }

    if ([v3 hasChanges])
    {
      [WeakRetained mq_incrementCloudVersion];
      v37 = v13;
      v24 = [v3 save:&v37];
      v25 = v37;

      if (!v14)
      {
        if (v24)
        {
          v26 = [*(a1 + 56) monitor];

          if (v26)
          {
            if (v15)
            {
              v27 = [*(a1 + 56) monitor];
              v28 = *(a1 + 56);
              v39 = v15;
              v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
              [v27 dataManager:v28 didInsertNewRecords:v29];
            }
          }
        }
      }

      [WeakRetained _logError:v25 at:@"setCloudData - save"];
      [WeakRetained mq_signalTransactions];
    }

    else
    {
      v25 = v13;
    }

    v32 = [WeakRetained mq_sanitizeError:v25];

    v33 = _Block_copy(*(a1 + 64));
    v34 = v33;
    if (v33)
    {
      (*(v33 + 2))(v33, v15 != 0, v23, v32);
    }
  }

  else
  {
    v30 = _Block_copy(*(a1 + 64));
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0, 0, 0);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1E4648148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464816C(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E46481E4(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v37 = [WeakRetained moc];
  if (v37)
  {
    v2 = [MEMORY[0x1E698F550] shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v4 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [WeakRetained entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudDatas\\"", &buf, 0xCu);
      }
    }

    v6 = objc_alloc(MEMORY[0x1E695D5E0]);
    v7 = [WeakRetained entityName];
    v36 = [v6 initWithEntityName:v7];

    [v36 setReturnsObjectsAsFaults:0];
    [v36 setPredicate:*(a1 + 32)];
    v63 = 0;
    v8 = [v37 executeFetchRequest:v36 error:&v63];
    v9 = v63;
    [WeakRetained _logError:v9 at:@"setCloudData(propertyIDKey) - fetch"];
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v12)
    {
      v13 = *v60;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v59 + 1) + 8 * i);
          v16 = [v15 valueForKey:*(a1 + 40)];
          [v10 setObject:v15 forKey:v16];
        }

        v12 = [v11 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v12);
    }

    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v50[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v71 = 0x3032000000;
    v72 = sub_1E4648848;
    v73 = sub_1E4648858;
    v74 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = *(a1 + 48);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1E4648860;
    v40[3] = &unk_1E875B340;
    v18 = v10;
    v41 = v18;
    v42 = WeakRetained;
    v19 = v37;
    v43 = v19;
    p_buf = &buf;
    v46 = &v51;
    v49 = *(a1 + 88);
    v44 = *(a1 + 56);
    v47 = &v55;
    v48 = v50;
    [v17 enumerateKeysAndObjectsUsingBlock:v40];
    if (([v19 hasChanges] & 1) != 0 || *(v56 + 24) == 1)
    {
      [WeakRetained mq_incrementCloudVersion];
      v39 = v9;
      v20 = [v19 save:&v39];
      v21 = v39;

      [WeakRetained _logError:v21 at:@"setCloudData(propertyIDKey) - save remaining"];
      [WeakRetained mq_signalTransactions];
      v22 = BDSCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v33 = [WeakRetained entityName];
        v34 = [v19 persistentStoreCoordinator];
        v35 = [v34 persistentStores];
        *v64 = 138412802;
        v65 = v33;
        v66 = 2112;
        v67 = v35;
        v68 = 2112;
        v69 = v21;
        _os_log_debug_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Save to storeID:%@ error:%@", v64, 0x20u);
      }

      if (v20)
      {
        v23 = [*(a1 + 64) monitor];
        if (v23)
        {
          v24 = [*(*(&buf + 1) + 40) count] == 0;

          if (!v24)
          {
            v25 = [*(a1 + 64) monitor];
            [v25 dataManager:*(a1 + 64) didInsertNewRecords:*(*(&buf + 1) + 40)];
          }
        }
      }
    }

    else
    {
      v21 = v9;
    }

    v29 = [WeakRetained mq_sanitizeError:v21];

    v30 = _Block_copy(*(a1 + 72));
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, *(v52 + 24), *(v56 + 24), v29);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v50, 8);
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);

    v27 = v36;
  }

  else
  {
    v26 = BDSCloudKitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1E47092F0(WeakRetained);
    }

    v27 = _Block_copy(*(a1 + 72));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0, 0);
      v27 = v28;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E46487EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E4648848(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4648860(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695D5B8];
    v10 = [*(a1 + 40) entityName];
    v7 = [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:*(a1 + 48)];

    [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
    v8 = 1;
  }

  *(*(*(a1 + 72) + 8) + 24) |= v7 != 0;
  v11 = [*(a1 + 40) privacyDelegate];
  [v7 setPrivacyDelegate:v11];

  v12 = [*(a1 + 40) privacyDelegate];
  [v5 setPrivacyDelegate:v12];

  v13 = [v7 isEqualExceptForDate:v5 ignoringEmptySalt:*(a1 + 96)];
  v14 = BDSCloudKitLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1E470937C(v7);
  }

  if ((v13 & 1) == 0)
  {
    [v7 configureFromCloudData:v5 withMergers:*(a1 + 56)];
    v15 = [v7 hasChanges];
    v16 = BDSCloudKitLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1E470941C(v7);
    }

    if (v15)
    {
      v17 = BDSCloudKitLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 40) entityName];
        v19 = [v7 identifier];
        *buf = 138544386;
        v30 = v18;
        v31 = 2160;
        v32 = 1752392040;
        v33 = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = v8;
        v37 = 2112;
        v38 = v7;
        _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v7 incrementEditGeneration];
      *(*(*(a1 + 80) + 8) + 24) = 1;
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  v20 = *(*(a1 + 88) + 8);
  if (*(v20 + 24) >= 0x21uLL)
  {
    *(v20 + 24) = 0;
    if ([*(a1 + 48) hasChanges])
    {
      v21 = *(a1 + 48);
      v28 = 0;
      [v21 save:&v28];
      v22 = v28;
      [*(a1 + 40) _logError:v22 at:@"setCloudData(propertyIDKey) - save batch"];
      v23 = BDSCloudKitLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = [*(a1 + 40) entityName];
        v26 = [*(a1 + 48) persistentStoreCoordinator];
        v27 = [v26 persistentStores];
        *buf = 138412802;
        v30 = v25;
        v31 = 2112;
        v32 = v27;
        v33 = 2112;
        v34 = v22;
        _os_log_debug_impl(&dword_1E45E0000, v23, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Batch save to storeID:%@ with error:%@", buf, 0x20u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4648D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4648DBC(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4648E30(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v38 = v7;
        v39 = 2114;
        v40 = v8;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ removeCloudDataForPredicate:%{public}@\\"", buf, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:*(a1 + 32)];
    v35 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v35];
    v13 = v35;
    [WeakRetained _logError:v13 at:@"removeCloudData - fetch"];
    v14 = [v12 count];
    v15 = v14;
    if (v14)
    {
      v29 = v14;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v3 deleteObject:{*(*(&v31 + 1) + 8 * i), v29}];
          }

          v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v18);
      }

      if ([v3 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v30 = v13;
        [v3 save:&v30];
        v21 = v30;

        [WeakRetained _logError:v21 at:@"removeCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v13 = v21;
      }

      v15 = v29;
    }

    else
    {
      v24 = BDSCloudKitLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1E47094BC(WeakRetained, (a1 + 32));
      }
    }

    v25 = [WeakRetained mq_sanitizeError:{v13, v29}];

    v26 = _Block_copy(*(a1 + 40));
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, v15 != 0, v25);
    }
  }

  else
  {
    v22 = _Block_copy(*(a1 + 40));
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0, 0);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4649380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E46493A4(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4649418(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setFetchBatchSize:64];
    [v6 setPredicate:*(a1 + 32)];
    v30 = 0;
    v7 = [v3 executeFetchRequest:v6 error:&v30];
    v8 = v30;
    [WeakRetained _logError:v8 at:@"updateSyncGeneration - fetch"];
    v9 = [v7 count];
    if (v9)
    {
      v10 = [v7 count];
      if (v10 != [*(a1 + 40) count])
      {
        v11 = BDSCloudKitLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1E470957C();
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v32 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E46497A8;
      v24[3] = &unk_1E875B390;
      v25 = *(a1 + 48);
      v26 = *(a1 + 40);
      v27 = WeakRetained;
      v29 = buf;
      v12 = v3;
      v28 = v12;
      [v7 enumerateObjectsUsingBlock:v24];
      v23 = v8;
      [v12 save:&v23];
      v13 = v23;

      [WeakRetained _logError:v13 at:@"updateSyncGeneration - save remaining"];
      [WeakRetained mq_signalTransactions];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v16 = BDSCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [WeakRetained entityName];
        v18 = [*(a1 + 40) debugDescription];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_1E45E0000, v16, OS_LOG_TYPE_INFO, "Did not find %{public}@ to update sync gen from cloudData:%@", buf, 0x16u);
      }

      v13 = v8;
    }

    v19 = [WeakRetained mq_sanitizeError:v13];

    v20 = _Block_copy(*(a1 + 56));
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v9 != 0, v19);
    }
  }

  else
  {
    v14 = _Block_copy(*(a1 + 56));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E4649788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E46497A8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) objectForKey:v4];
  v6 = [*(a1 + 48) privacyDelegate];
  [v3 setPrivacyDelegate:v6];

  [v3 setSyncGeneration:{objc_msgSend(v5, "editGeneration")}];
  v7 = [v5 systemFields];
  [v3 setSystemFields:v7];

  v8 = [v5 systemFields];
  v9 = [v8 modificationDate];
  [v3 setModificationDate:v9];

  v10 = BDSCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) entityName];
    v12 = [v3 debugDescription];
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ updateSyncGeneration %@", buf, 0x16u);
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (v14 >= 0x21)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    if ([*(a1 + 56) hasChanges])
    {
      v15 = *(a1 + 56);
      v18 = 0;
      [v15 save:&v18];
      v16 = v18;
      [*(a1 + 48) _logError:v16 at:@"updateSyncGeneration - save batch"];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1E4649B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4649B68(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E4649BDC(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v49 = v7;
        v50 = 2112;
        v51 = v8;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ deleteCloudDataForPredicate %@\\"", buf, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:*(v1 + 32)];
    v46 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v46];
    v13 = v46;
    [WeakRetained _logError:v13 at:@"deleteCloudData - fetch"];
    v14 = [v12 count];
    v15 = v14;
    if (v14)
    {
      v35 = v13;
      v36 = v14;
      v38 = v11;
      v39 = v1;
      v40 = v3;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v37 = v12;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v43;
        v20 = MEMORY[0x1E695E118];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v42 + 1) + 8 * i);
            v23 = [WeakRetained privacyDelegate];
            [v22 setPrivacyDelegate:v23];

            [v22 setDifferentNumber:v20 forKey:@"deletedFlag"];
            if ([v22 hasChanges])
            {
              v24 = BDSCloudKitLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [WeakRetained entityName];
                *buf = 138543618;
                v49 = v25;
                v50 = 2112;
                v51 = v22;
                _os_log_impl(&dword_1E45E0000, v24, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ deleteCloudDataForPredicate data:%@", buf, 0x16u);
              }

              [v22 incrementEditGeneration];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v18);
      }

      v3 = v40;
      if ([v40 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v41 = v35;
        [v40 save:&v41];
        v13 = v41;

        [WeakRetained _logError:v13 at:@"deleteCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v11 = v38;
        v1 = v39;
        v15 = v36;
        v12 = v37;
      }

      else
      {
        v11 = v38;
        v1 = v39;
        v15 = v36;
        v12 = v37;
        v13 = v35;
      }
    }

    else
    {
      if (!v13)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      }

      v28 = BDSCloudKitLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [WeakRetained entityName];
        v30 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v49 = v29;
        v50 = 2114;
        v51 = v30;
        _os_log_impl(&dword_1E45E0000, v28, OS_LOG_TYPE_INFO, "Did not find %{public}@ to delete for predicate %{public}@", buf, 0x16u);
      }
    }

    v31 = [WeakRetained mq_sanitizeError:{v13, v35}];

    v32 = _Block_copy(*(v1 + 40));
    v33 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, v15 != 0, v31);
    }
  }

  else
  {
    v26 = _Block_copy(*(v1 + 40));
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, 0, 0);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}