void sub_241D6C0A8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) sessionID];

    if (v3)
    {
      v4 = +[BLJaliscoServerSource sharedSource];
      v5 = [v4 newManagedObjectContext];

      v6 = +[BLJaliscoServerSource sharedSource];
      v7 = [*(a1 + 32) dsid];
      v26 = 0;
      v8 = [v6 serverInfoForDSID:v7 fromManagedObjectContext:v5 error:&v26];
      v9 = v26;

      v10 = [v8 databaseVersion];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = &stru_2853E2EC8;
      }

      v12 = [BLDAAPUpdateRequest alloc];
      v13 = [*(a1 + 32) dsid];
      v14 = *(a1 + 48);
      v15 = [*(a1 + 32) sessionID];
      v16 = [(BLDAAPUpdateRequest *)v12 initWithDSID:v13 reason:v14 sessionID:v15 localVersion:v11];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_241D6C3C4;
      v23[3] = &unk_278D18800;
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v23[4] = *(a1 + 32);
      v25 = v17;
      v24 = v18;
      [(BLDAAPURLRequest *)v16 executeWithCompletionHandler:v23];

      goto LABEL_16;
    }
  }

  else
  {
    v19 = BLJaliscoLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEBUG, "Poll update will not make request", buf, 2u);
    }
  }

  v20 = [*(a1 + 32) sessionID];

  if (!v20)
  {
    v21 = BLJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEBUG, "Poll update: No Session ID to fetch session with.", buf, 2u);
    }
  }

  v22 = MEMORY[0x245CFF560](*(a1 + 40));
  v5 = v22;
  if (v22)
  {
    (*(v22 + 16))(v22, 0, 0);
  }

LABEL_16:
}

void sub_241D6C3C4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D6C4D8;
  v11[3] = &unk_278D187D8;
  v7 = a1[6];
  v8 = a1[5];
  v12 = a1[4];
  v16 = v7;
  v14 = v5;
  v15 = v8;
  v13 = v6;
  v9 = v5;
  v10 = v6;
  [v12 _preProcessResponse:v9 error:v10 responseBlock:v11];
}

void sub_241D6C4D8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v7 = BLJaliscoLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 32) dsid];
        v9 = *(a1 + 40);
        v23 = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Poll Update: Error getting response for %@ %@", &v23, 0x16u);
      }
    }

    else if (!a2)
    {
      v3 = *(a1 + 32);
      v5 = *(a1 + 56);
      v4 = *(a1 + 64);
      v6 = *MEMORY[0x277D85DE8];

      [v3 _pollLatestRevisionWithReason:v4 completion:v5];
      return;
    }

    goto LABEL_14;
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 48) data];
  v12 = [v10 _processResponse:v11];

  v13 = [v12 objectForKey:@"dmap.serverrevision"];
  v14 = BLJaliscoLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v13;
    _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_DEFAULT, "Poll Update success LATEST VERSION:%@", &v23, 0xCu);
  }

  if (!v13)
  {
LABEL_14:
    v16 = BLJaliscoLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) dsid];
      v23 = 138412290;
      v24 = v17;
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_ERROR, "Poll Update: Failed for %@", &v23, 0xCu);
    }

    v13 = 0;
    v15 = @"with error";
    goto LABEL_17;
  }

  v15 = @"successfully";
LABEL_17:
  v18 = BLJaliscoLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [*(a1 + 32) dsid];
    v23 = 138543618;
    v24 = v15;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_INFO, "PurchaseDAAPServer Poll Update completed %{public}@ for (%@)", &v23, 0x16u);
  }

  v20 = MEMORY[0x245CFF560](*(a1 + 56));
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20, v13 != 0, v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_241D6CC04(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_241D6CC50(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241D6CE10;
    v15[3] = &unk_278D18878;
    v3 = *(a1 + 40);
    v14 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v14;
    *(&v8 + 1) = v4;
    v16 = v8;
    v17 = v7;
    [v3 executeWithCompletionHandler:v15];
  }

  else
  {
    v9 = BLJaliscoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_DEBUG, "%@ will not make request", buf, 0xCu);
    }

    v11 = MEMORY[0x245CFF560](*(a1 + 56));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, 0, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241D6CE10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D6CF54;
  v13[3] = &unk_278D18850;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 48);
  v10 = *(a1 + 56);
  v18 = v5;
  v19 = v10;
  v17 = v6;
  v11 = v5;
  v12 = v6;
  [v7 _preProcessResponse:v11 error:v12 responseBlock:v13];
}

void sub_241D6CF54(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v11 = *(a1 + 40);
      v12 = [*(a1 + 64) data];
      v7 = [v11 _processResponse:v12];

      v13 = BLJaliscoLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) dsid];
        v15 = [*(a1 + 48) reason];
        v21 = 138412802;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "_fetchDatabaseWithRequest dsid: %@, Reason: %ld data:%@", &v21, 0x20u);
      }

      if (v7)
      {
        v16 = [v7 objectForKey:@"dmap.listing"];
        v17 = [v16 lastObject];

LABEL_14:
        goto LABEL_16;
      }

LABEL_13:
      v17 = 0;
      goto LABEL_14;
    case 1:
      v7 = BLJaliscoLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) dsid];
        v10 = *(a1 + 56);
        v21 = 138412802;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "%@ dsid: %@, Error getting response:  %@", &v21, 0x20u);
      }

      goto LABEL_13;
    case 0:
      v3 = BLJaliscoLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 32);
        v5 = [*(a1 + 40) dsid];
        v6 = [*(a1 + 48) reason];
        v21 = 138412802;
        v22 = v4;
        v23 = 2112;
        v24 = v5;
        v25 = 2048;
        v26 = v6;
        _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "%@ dsid: %@, Reason: %ld RETRY", &v21, 0x20u);
      }

      [*(a1 + 40) _fetchDatabaseWithRequest:*(a1 + 48) completionHandler:*(a1 + 72)];
      goto LABEL_19;
  }

  v17 = 0;
LABEL_16:
  v18 = MEMORY[0x245CFF560](*(a1 + 72));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, v17 != 0, v17);
  }

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_241D6D70C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  v7 = [a1[4] daapMetaDataFilterString];
  [v3 writeString:v7 withCode:1835365473];

  v8 = [a1[4] daapQueryFilterString];
  [v3 writeString:v8 withCode:1836152165];

  v9 = [a1[4] sessionID];
  [v3 writeUInt32:objc_msgSend(v9 withCode:{"unsignedIntValue"), 1835821412}];

  [v3 writeUInt32:objc_msgSend(a1[5] withCode:{"unsignedIntValue"), 1836413810}];
  [v3 writeUInt32:objc_msgSend(a1[6] withCode:{"unsignedIntValue"), 1835296114}];
  [v3 writeUInt8:1 withCode:1634355568];
  [v3 writeUInt8:1 withCode:1835559268];
  if ([a1[7] count])
  {
    v10 = a1[7];
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_241D6D910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D6D9C0;
  v6[3] = &unk_278D188F0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_241D6D9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"tokenCode"];
  v5 = [v3 objectForKey:@"clientID"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "unsignedLongLongValue")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "unsignedLongLongValue")}];
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v6;
  v9 = v7;
  ICDAAPUtilitiesWriteContainer();
}

void sub_241D6DB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  ICDAAPUtilitiesWriteProperty();
  v5 = *(a1 + 40);
  ICDAAPUtilitiesWriteProperty();
}

void sub_241D6DEBC(uint64_t a1, char a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 40) _dataForItemsRequestWithLocalVersion:*(a1 + 48) serverVersion:*(a1 + 56) tokenPairs:*(a1 + 64)];
    v4 = [BLDAAPItemsRequest alloc];
    v5 = [*(a1 + 40) dsid];
    v6 = *(a1 + 80);
    v7 = [*(a1 + 40) bagDatabaseID];
    v8 = [(BLDAAPItemsRequest *)v4 initWithDSID:v5 reason:v6 databaseID:v7 body:v3];

    objc_initWeak(location, *(a1 + 40));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_241D6E18C;
    v18[3] = &unk_278D18990;
    objc_copyWeak(v23, location);
    *&v9 = *(a1 + 32);
    *(&v9 + 1) = *(a1 + 40);
    v17 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v19 = v17;
    v20 = v12;
    v23[1] = *(a1 + 80);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    [(BLDAAPURLRequest *)v8 executeWithCompletionHandler:v18];

    objc_destroyWeak(v23);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v14;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEBUG, "%@ will not make request", location, 0xCu);
    }

    v15 = MEMORY[0x245CFF560](*(a1 + 72));
    v3 = v15;
    if (v15)
    {
      (*(v15 + 16))(v15, 0, 0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D6E18C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_241D6E338;
  v16[3] = &unk_278D18968;
  v17 = *(a1 + 32);
  v18 = WeakRetained;
  v15 = *(a1 + 40);
  v8 = *(&v15 + 1);
  v9 = *(a1 + 56);
  v24 = *(a1 + 88);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v19 = v15;
  v20 = v11;
  v12 = *(a1 + 72);
  v22 = v5;
  v23 = v12;
  v21 = v6;
  v13 = v5;
  v14 = v6;
  [WeakRetained _preProcessResponse:v13 error:v14 responseBlock:v16];
}

void sub_241D6E338(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v11 = *(a1 + 40);
      v12 = [*(a1 + 88) data];
      v6 = [v11 _processResponse:v12];

      if (v6)
      {
        v6 = v6;
        v13 = BLJaliscoLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 40) dsid];
          v18 = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "[BLPurchaseDAAPServer] _fetchItemsWithLocalVersion dsid:%@ items: %@ SUCCEEDED", &v18, 0x16u);
        }
      }

      v10 = v6;
      goto LABEL_15;
    case 1:
      v6 = BLJaliscoLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = [*(a1 + 40) dsid];
        v9 = *(a1 + 80);
        v18 = 138412802;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "%@ dsid: %@, Error getting response:  %@", &v18, 0x20u);
      }

      v10 = 0;
LABEL_15:

      goto LABEL_17;
    case 0:
      v3 = BLJaliscoLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 32);
        v5 = [*(a1 + 40) dsid];
        v18 = 138412546;
        v19 = v4;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "%@ dsid: %@, RETRY", &v18, 0x16u);
      }

      [*(a1 + 48) _fetchItemsWithLocalVersion:*(a1 + 56) serverVersion:*(a1 + 64) reason:*(a1 + 104) tokenPairs:*(a1 + 72) completionHandler:*(a1 + 96)];
      goto LABEL_20;
  }

  v10 = 0;
LABEL_17:
  v15 = MEMORY[0x245CFF560](*(a1 + 96));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v10 != 0, v10);
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t BLAudiobookStreamingEnabled()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = *MEMORY[0x277CF32E8];
  v2 = [MEMORY[0x277CBEBC0] bu_booksGroupContainerURL];
  v3 = [v0 _initWithSuiteName:v1 container:v2];
  LODWORD(v1) = [v3 BOOLForKey:@"BKAudiobookStreamingDisabled"];

  return v1 ^ 1;
}

uint64_t sub_241D6ECB8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  if (a3 < a3 + a4)
  {
    v5 = a3;
    v7 = result;
    do
    {
      result = [*(v7 + 32) consumeBytes:a2 + v5 length:v4 - v5];
      v5 += result;
    }

    while (v5 < v4);
  }

  return result;
}

void sub_241D707E8(uint64_t a1)
{
  v2 = [*(a1 + 32) p_allItemsFetchRequestForDSIDs:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 24);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D708C8;
  v6[3] = &unk_278D17C38;
  v7 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_241D708C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D70A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D70AA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D70AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) p_allItemsFetchRequestForDSIDs:*(a1 + 40) matchingSearchString:*(a1 + 48) isExplicitRestricted:*(a1 + 64)];
  v3 = *(*(a1 + 32) + 24);
  v7 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v7];
  v5 = v7;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D70B98;
  v6[3] = &unk_278D18A18;
  v6[4] = *(a1 + 56);
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_241D70B98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D70D00(uint64_t a1)
{
  v2 = MEMORY[0x277CBE428];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchRequestWithEntityName:v4];

  [v5 setPredicate:*(a1 + 32)];
  [v5 setSortDescriptors:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 24);
  v11 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v11];
  v8 = v11;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D70E1C;
  v9[3] = &unk_278D17C38;
  v10 = *(a1 + 56);
  [v7 enumerateObjectsUsingBlock:v9];
}

void sub_241D70E1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D70F7C(uint64_t a1)
{
  v2 = [*(a1 + 32) p_fetchRequestForStoreIDs:*(a1 + 40) dsids:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 24);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D7105C;
  v6[3] = &unk_278D17C38;
  v7 = *(a1 + 56);
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_241D7105C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D71198(uint64_t a1)
{
  v2 = [*(a1 + 32) p_fetchRequestForStoreIDs:*(a1 + 40) dsids:MEMORY[0x277CBEBF8]];
  v3 = *(*(a1 + 32) + 24);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D71280;
  v6[3] = &unk_278D17C38;
  v7 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_241D71280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D713F0(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _itemsFetchRequestForDSIDs:*(a1 + 40) excludeStoreIDs:*(a1 + 48) isExplicitRestricted:*(a1 + 64)];
  v3 = *(*(a1 + 32) + 24);
  v10 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v10];
  v5 = v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D71560;
  v8[3] = &unk_278D17C38;
  v9 = *(a1 + 56);
  [v4 enumerateObjectsUsingBlock:v8];

  if (v5)
  {
    v6 = BLJaliscoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "BLJaliscoReadOnlyDAAPClient fetchItemsForDSIDs:excludeStoreIDs:isExplicitRestricted %@ failed. Error: %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D71560(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

uint64_t sub_241D7278C()
{
  qword_280BC58A8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_241D72AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D72AEC(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLFamilyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Error looking up family info:  %@", buf, 0xCu);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D72C54;
  block[3] = &unk_278D18A90;
  v12 = v5;
  v9 = v5;
  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 40);
  dispatch_async(v8, block);

  objc_destroyWeak(&v14);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_241D72C54(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) familyMembers];
  if (([*(a1 + 32) isHeadOfHouseholdSharingPayment] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [*(a1 + 32) familyMembers];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          if ([v8 isCurrentSignedInUser])
          {
            v25 = v8;
            v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

            v2 = v9;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v26 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v10 = BLFamilyLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v2 count];
    v12 = [*(a1 + 32) isHeadOfHouseholdSharingPayment];
    *buf = 138412802;
    v20 = v2;
    v21 = 2048;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEFAULT, "AMS Family fetched: %@ (count: %lu Family-wide sharing allowed: %d)", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained dq_processFamilyCircle:v2 completion:*(a1 + 40)];

  v14 = *MEMORY[0x277D85DE8];
}

void sub_241D73C40(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 56);
  }

  else
  {
    v2 = &unk_2853E2B28;
  }

  v3 = MEMORY[0x245CFF560](v2);
  v4 = [*(a1 + 32) serverProgressObserver];
  [v4 notifyPurchaseAttemptForRequest:*(a1 + 40)];

  v5 = [*(a1 + 40) buyParameters];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [*(a1 + 32) serviceProxy];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D73DB4;
    v13[3] = &unk_278D18B58;
    v16 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    [v7 purchaseWithRequest:v8 uiHostProxy:v9 reply:v13];
  }

  else
  {
    v12 = BLError(13, @"missing purchase parameters", @"purchase parameters are required by this API");
    (v3)[2](v3, 0, 0, v12);
  }
}

void sub_241D73DB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(*(a1 + 48) + 16))();
  v10 = BLDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = @"<UNKNOWN>";
      if (v7)
      {
        v12 = v7;
      }

      *buf = 138543618;
      v58 = v12;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [DownloadQueue]: purchaseWithBuyParameters: error issuing a purchase request: %@", buf, 0x16u);
    }

    if (v7)
    {
      v13 = [*(a1 + 40) serviceProxy];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_241D743CC;
      v51[3] = &unk_278D18B30;
      v14 = v7;
      v52 = v14;
      [v13 cancelDownloadWithID:v14 withReply:v51];

      v15 = [*(a1 + 40) serverProgressObserver];
      [v15 sendCancelCompletionNotificationForDownloadWithDownloadID:v14];
    }

    v16 = [*(a1 + 40) serverProgressObserver];
    [v16 purchaseDidFailedWithResponse:v8];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = v7;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue] purchaseWithBuyParameters completed without error", buf, 0xCu);
    }

    if ([*(a1 + 32) isPreOrder])
    {
      v17 = BLDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v58 = v7;
        _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [DownloadQueue]: purchaseWithBuyParameters: this is a preorder purchase download", buf, 0xCu);
      }
    }

    else if ([*(a1 + 32) isAudiobook])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v17 = [v8 purchaseResponseItems];
      v50 = [v17 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v50)
      {
        v45 = v8;
        v46 = v7;
        obj = v17;
        v48 = *v54;
        v49 = a1;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v54 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v53 + 1) + 8 * i);
            v20 = [v19 metadata];
            v21 = [v20 objectForKeyedSubscript:@"itemId"];

            v22 = [v19 metadata];
            v23 = [v22 objectForKeyedSubscript:@"playlistId"];

            objc_opt_class();
            v24 = [v19 metadata];
            v25 = [v24 objectForKeyedSubscript:@"itemName"];
            v26 = BUDynamicCast();

            objc_opt_class();
            v27 = [v19 metadata];
            v28 = [v27 objectForKeyedSubscript:@"playlistName"];
            v29 = BUDynamicCast();

            objc_opt_class();
            v30 = [v19 metadata];
            v31 = [v30 objectForKeyedSubscript:@"kind"];
            v32 = BUDynamicCast();

            v33 = [*(v49 + 40) serverProgressObserver];
            v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v21, "longLongValue")}];
            v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v23, "longLongValue")}];
            v36 = [v19 downloadID];
            LOBYTE(v44) = 0;
            [v33 sendInitialProgressNotificationForDownloadWithStoreID:v34 storePlaylistID:v35 orPermlink:0 downloadID:v36 title:v26 collectionTitle:v29 assetKind:v32 isPaused:v44 targetObserver:0];
          }

          v17 = obj;
          v50 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v50);
        v8 = v45;
        v7 = v46;
        v9 = 0;
        a1 = v49;
      }
    }

    else
    {
      v37 = [v8 purchaseResponseItems];
      v17 = [v37 firstObject];

      objc_opt_class();
      v38 = [v17 metadata];
      v39 = [v38 objectForKeyedSubscript:@"kind"];
      v40 = BUDynamicCast();

      v41 = [*(a1 + 40) serverProgressObserver];
      v42 = [*(a1 + 32) storeIdentifier];
      LOBYTE(v44) = 0;
      [v41 sendInitialProgressNotificationForDownloadWithStoreID:v42 storePlaylistID:0 orPermlink:0 downloadID:v7 title:0 collectionTitle:0 assetKind:v40 isPaused:v44 targetObserver:0];
    }

    v16 = [*(a1 + 40) serverProgressObserver];
    [v16 purchaseDidCompleteWithResponse:v8];
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_241D743CC(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "(dID=%{public}@) [DownloadQueue]: purchaseWithBuyParameters: error cancelling download: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_241D1F000, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138543362;
    v14 = v11;
    v7 = "(dID=%{public}@) [DownloadQueue]: purchaseWithBuyParameters: cancelled download";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D746CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = MEMORY[0x245CFF560](*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
  }
}

void sub_241D749E0(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 56) + 16))();
  if (!v6)
  {
    v11 = [*(a1 + 32) serverProgressObserver];
    v12 = [*(a1 + 40) path];
    LOBYTE(v17) = 0;
    [v11 sendInitialProgressNotificationForDownloadWithStoreID:0 storePlaylistID:0 orPermlink:v12 downloadID:v5 title:*(a1 + 48) collectionTitle:0 assetKind:@"ebook" isPaused:v17 targetObserver:0];

    v10 = [[BLBookItem alloc] initWithPeristentIdentifier:v5 permlink:*(a1 + 40) title:*(a1 + 48)];
    v13 = +[BLLibrary defaultBookLibrary];
    v20 = 0;
    [v13 _addBookItemToEduContainer:v10 error:&v20];
    v6 = v20;

    if (v6)
    {
      v14 = BLDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(BLBookItem *)v10 permlink];
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_DEBUG, "[DownloadQueue]: addDownloadWithPermlink: could not add permlink to container %@.  It may already exist", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v7 = BLDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = @"<UNKNOWN>";
    if (v5)
    {
      v8 = v5;
    }

    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [DownloadQueue]: addDownloadWithPermlink: error issuing a permlink download: %@", buf, 0x16u);
  }

  if (v5)
  {
    v9 = [*(a1 + 32) serviceProxy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_241D74C80;
    v18[3] = &unk_278D18B30;
    v19 = v5;
    [v9 cancelDownloadWithID:v19 withReply:v18];

    v10 = v19;
LABEL_12:
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D74C80(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = BLDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [DownloadQueue]: addDownloadWithPermlink: error cancelling download: %@", &v9, 0x16u);
    }
  }

  v6 = BLDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: addDownloadWithPermlink: cancelled download.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_241D750F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x245CFF560](*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v6 = [*(a1 + 32) serviceProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D751DC;
  v8[3] = &unk_278D18C18;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v6 fetchDownloadFromDownloadID:v9 withReply:v8];
}

void sub_241D751DC(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = BLDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 138543618;
        v25 = v9;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [DownloadQueue]: resumeDownloadWithID: error issuing a permlink download.  Error: %@", buf, 0x16u);
      }

      v10 = [v5 downloadID];
      if (v10)
      {
        v11 = [*(a1 + 32) serviceProxy];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_241D75480;
        v22[3] = &unk_278D18B30;
        v23 = v10;
        [v11 cancelDownloadWithID:v23 withReply:v22];
      }
    }

    else
    {
      v10 = [*(a1 + 32) serverProgressObserver];
      v13 = [v5 storeIdentifier];
      v14 = [v5 storePlaylistIdentifier];
      v15 = [v5 permlink];
      v16 = *(a1 + 40);
      v17 = [v5 title];
      v18 = [v5 collectionTitle];
      v19 = [v5 kind];
      LOBYTE(v21) = 0;
      [v10 sendInitialProgressNotificationForDownloadWithStoreID:v13 storePlaylistID:v14 orPermlink:v15 downloadID:v16 title:v17 collectionTitle:v18 assetKind:v19 isPaused:v21 targetObserver:0];
    }
  }

  else
  {
    v10 = BLDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [DownloadQueue]: error fetching download from downloadID:  %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_241D75480(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "(dID=%{public}@) [DownloadQueue]: resumeDownloadWithID: error cancelling download with id: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_241D1F000, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138543362;
    v14 = v11;
    v7 = "(dID=%{public}@) [DownloadQueue]: resumeDownloadWithID: cancelled download.";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D7581C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      v6 = "[DownloadQueue]: Error encountered cancelling active downloads: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_241D1F000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    v6 = "[DownloadQueue]: Finished Cancelling all active book downloads.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 32));
  v10 = *MEMORY[0x277D85DE8];
}

void sub_241D75AB4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = BLDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "[DownloadQueue]: Error encountered preparing BookLibrary for app removal. %@", &v6, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v5 = *MEMORY[0x277D85DE8];
}

void sub_241D75F58(uint64_t a1)
{
  v5 = objc_alloc_init(BLUIHostServiceNonUI);
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = &unk_2853E2C28;
  }

  v3 = MEMORY[0x245CFF560](v2);
  v4 = [*(a1 + 32) serviceProxy];
  [v4 requestDownloadsWithManifestRequest:*(a1 + 40) uiHostProxy:v5 reply:v3];
}

void sub_241D76530(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 64) + 16))();
  if (v6)
  {
    v7 = BLDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "[DownloadQueue]: downloadWithMetadata: error issuing a download request with metadata.  Error: %@", buf, 0xCu);
    }

    if (v5)
    {
      v8 = [*(a1 + 32) serviceProxy];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_241D766D0;
      v12[3] = &unk_278D18B30;
      v13 = v5;
      [v8 cancelDownloadWithID:v13 withReply:v12];
    }
  }

  else
  {
    v9 = [*(a1 + 32) serverProgressObserver];
    LOBYTE(v11) = 0;
    [v9 sendInitialProgressNotificationForDownloadWithStoreID:*(a1 + 40) storePlaylistID:*(a1 + 48) orPermlink:0 downloadID:v5 title:0 collectionTitle:0 assetKind:*(a1 + 56) isPaused:v11 targetObserver:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_241D766D0(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "(dID=%{public}@) [DownloadQueue]: resumeDownloadWithID: error cancelling download: %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_241D1F000, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138543362;
    v14 = v11;
    v7 = "(dID=%{public}@) [DownloadQueue]: resumeDownloadWithID: cancelled download";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D76E40()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_241D474FC();
  sub_241D474E0(&dword_241D1F000, v0, v1, "no streamInfs on masterPlaylist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_241D76EA8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_241D474FC();
  sub_241D474E0(&dword_241D1F000, v0, v1, "Error downloading master playlist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_241D76F10(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 statusCode];
  sub_241D474FC();
  sub_241D47508(&dword_241D1F000, v1, v2, "Bad HTTP response when downloading master playlist: %ld", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D76F88()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_241D474FC();
  sub_241D474E0(&dword_241D1F000, v0, v1, "Parsed master HLS Playlist but it had no valid media playlist (error was %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_241D76FF0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_241D474FC();
  sub_241D474E0(&dword_241D1F000, v0, v1, "Unable to parse master HLS Playlist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}