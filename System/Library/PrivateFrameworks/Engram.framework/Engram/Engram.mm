void sub_24A04C248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_activity_scope_state_s a9, char a10)
{
  os_activity_scope_leave(&a9);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04C38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04C3AC(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[ENLog groupContext];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_24A05921C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_DEFAULT, "Loaded database -- Done {description: %{public}@", buf, 0xCu);
  }

  v9 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A04C528;
  v13[3] = &unk_278FC3260;
  v10 = *(a1 + 40);
  v14 = v6;
  v15 = v10;
  v11 = v6;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24A04C688(id *a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24A04C78C;
  v9[3] = &unk_278FC32B0;
  v2 = a1[5];
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[5];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = a1[8];
  [v3 _participantsForCypher:v2 completion:v9];
}

void sub_24A04C78C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_ENGroupInfo alloc];
  v5 = [*(a1 + 32) accountIdentity];
  v7 = [(_ENGroupInfo *)v4 initWithAccountIdentity:v5 paricipants:v3 sharedApplicationData:*(a1 + 40)];

  v6 = [[ENGroup alloc] initWithGroupInfo:v7 groupID:*(a1 + 48) cypher:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

void sub_24A04C994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04C9B4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = a2;
  v6 = [ENCDGroup groupFromGroup:v3 insertIntoManagedObjectContext:v5];
  v15 = 0;
  v7 = [v5 save:&v15];

  v8 = v15;
  v9 = +[ENLog groupContext];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_24A04B000, v10, OS_LOG_TYPE_DEFAULT, "Saved group -- Done {group: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_24A059284(v4, v8, v10);
  }

  v11 = [*(a1 + 40) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A04CB6C;
  v13[3] = &unk_278FC3300;
  v14 = *(a1 + 48);
  dispatch_async(v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24A04CCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04CCEC(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENCDGroup fetchRequest];
  v5 = [ENCDGroup predicateForGroupID:*(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = +[ENLog groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_24A059300(v4);
  }

  v31 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v31];

  v8 = v31;
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 count];
    *buf = 134217984;
    v33 = v10;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "Fetched by groupIDs {cdGroups.count: %ld}", buf, 0xCu);
  }

  if (v7)
  {
    v11 = [v7 firstObject];
    v12 = v11;
    if (v11)
    {
      v13 = *(a1 + 40);
      v14 = [v11 cypher];
      v15 = [v12 groupID];
      v16 = [v12 sharedApplicationData];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_24A04D0C4;
      v29[3] = &unk_278FC3350;
      v17 = *(a1 + 48);
      v29[4] = *(a1 + 40);
      v30 = *(a1 + 56);
      [v13 _groupFromCypher:v14 groupID:v15 applicationData:v16 context:v17 completion:v29];

      v18 = v30;
    }

    else
    {
      v21 = +[ENLog groupContext];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        v33 = v22;
        _os_log_impl(&dword_24A04B000, v21, OS_LOG_TYPE_DEFAULT, "Group not found -- Done {groupID: %{public}@}", buf, 0xCu);
      }

      v23 = [*(a1 + 40) queue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_24A04D138;
      v27[3] = &unk_278FC3300;
      v28 = *(a1 + 56);
      dispatch_async(v23, v27);

      v18 = v28;
    }
  }

  else
  {
    v19 = +[ENLog groupContext];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_24A059384();
    }

    v20 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_24A04D14C;
    block[3] = &unk_278FC3300;
    v26 = *(a1 + 56);
    dispatch_async(v20, block);

    v12 = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_24A04D0C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  (*(*(a1 + 40) + 16))();
}

void sub_24A04D2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04D2D0(uint64_t a1, void *a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENCDGroup fetchRequest];
  v5 = [ENCDGroup predicateForStableGroupID:*(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  v6 = MEMORY[0x277CCAC98];
  v7 = NSStringFromSelector(sel_groupIDGeneration);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];
  v38[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  [v4 setSortDescriptors:v9];

  v10 = +[ENLog groupContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_24A059300(v4);
  }

  v35 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v35];

  v12 = v35;
  v13 = +[ENLog groupContext];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 count];
    *buf = 134217984;
    v37 = v14;
    _os_log_impl(&dword_24A04B000, v13, OS_LOG_TYPE_INFO, "Fetched by groupIDs {cdGroups.count: %ld}", buf, 0xCu);
  }

  if (v11)
  {
    v15 = [v11 firstObject];
    v16 = v15;
    if (v15)
    {
      v17 = *(a1 + 40);
      v18 = [v15 cypher];
      v19 = [v16 groupID];
      v20 = [v16 sharedApplicationData];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_24A04D720;
      v33[3] = &unk_278FC3350;
      v21 = *(a1 + 48);
      v33[4] = *(a1 + 40);
      v34 = *(a1 + 56);
      [v17 _groupFromCypher:v18 groupID:v19 applicationData:v20 context:v21 completion:v33];

      v22 = v34;
    }

    else
    {
      v25 = +[ENLog groupContext];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        *buf = 138543362;
        v37 = v26;
        _os_log_impl(&dword_24A04B000, v25, OS_LOG_TYPE_DEFAULT, "Group not found -- Done {stableGroupID: %{public}@}", buf, 0xCu);
      }

      v27 = [*(a1 + 40) queue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_24A04D80C;
      v31[3] = &unk_278FC3300;
      v32 = *(a1 + 56);
      dispatch_async(v27, v31);

      v22 = v32;
    }
  }

  else
  {
    v23 = +[ENLog groupContext];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_24A059384();
    }

    v24 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_24A04D820;
    block[3] = &unk_278FC3300;
    v30 = *(a1 + 56);
    dispatch_async(v24, block);

    v16 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_24A04D720(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLog groupContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138477827;
    v8 = v3;
    _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Group found -- Done {group: %{private}@}", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24A04D948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04D968(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENCDGroup fetchRequest];
  [v4 setFetchBatchSize:0];
  v26 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v26];
  v6 = v26;
  v7 = +[ENLog groupContext];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 count];
      *buf = 134217984;
      v29 = v9;
      _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_INFO, "Deleting fetched objects {count: %ld}", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v3 deleteObject:*(*(&v22 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v15 = +[ENLog groupContext];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v15, OS_LOG_TYPE_INFO, "Saving", buf, 2u);
    }

    v21 = v6;
    v16 = [v3 save:&v21];
    v17 = v21;

    v18 = +[ENLog groupContext];
    v8 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_INFO, "Saved -- Done", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_24A0593EC();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_24A059454();
    }

    v17 = v6;
  }

  v19 = [*(a1 + 32) queue];
  dispatch_async(v19, *(a1 + 40));

  v20 = *MEMORY[0x277D85DE8];
}

void sub_24A04DE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04DE30(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENCDGroup fetchRequest];
  [v4 setFetchBatchSize:0];
  v5 = [a1[4] stableGroupID];
  v6 = [ENCDGroup predicateForStableGroupID:v5];
  [v4 setPredicate:v6];

  v28 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v28];
  v8 = v28;
  v9 = +[ENLog groupContext];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 count];
      *buf = 134217984;
      v31 = v11;
      _os_log_impl(&dword_24A04B000, v10, OS_LOG_TYPE_INFO, "Deleting fetched objects {count: %ld}", buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v3 deleteObject:*(*(&v24 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    v17 = +[ENLog groupContext];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v17, OS_LOG_TYPE_INFO, "Saving", buf, 2u);
    }

    v23 = v8;
    v18 = [v3 save:&v23];
    v19 = v23;

    v20 = +[ENLog groupContext];
    v10 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v10, OS_LOG_TYPE_INFO, "Saved -- Done", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_24A0593EC();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_24A059454();
    }

    v19 = v8;
  }

  v21 = [a1[5] queue];
  dispatch_async(v21, a1[6]);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_24A04E26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A04E28C(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENCDGroup fetchRequest];
  v46 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v46];
  v6 = v46;
  v7 = +[ENLog groupContext];
  v8 = v7;
  if (v5)
  {
    v26 = v6;
    v29 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [0 count];
      *buf = 134217984;
      v49 = v9;
      _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_INFO, "Fetch finished {result.count: %ld}", buf, 0xCu);
    }

    v28 = v4;

    v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(0, "count")}];
    v10 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v31 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          dispatch_group_enter(v10);
          v15 = *(a1 + 32);
          v16 = [v14 cypher];
          v17 = [v14 groupID];
          v18 = [v14 sharedApplicationData];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = sub_24A04E6C8;
          v36[3] = &unk_278FC33C8;
          v19 = *(a1 + 40);
          v36[4] = *(a1 + 32);
          v37 = v32;
          v38 = v10;
          [v15 _groupFromCypher:v16 groupID:v17 applicationData:v18 context:v19 completion:v36];

          ++v13;
        }

        while (v12 != v13);
        v12 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v12);
    }

    v20 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_24A04E738;
    block[3] = &unk_278FC3260;
    v21 = *(a1 + 48);
    v34 = v32;
    v35 = v21;
    v22 = v32;
    dispatch_group_notify(v10, v20, block);

    v4 = v28;
    v3 = v29;
    v6 = v26;
    v5 = v27;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_24A0594BC();
    }

    v23 = [*(a1 + 32) queue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_24A04E6B4;
    v43[3] = &unk_278FC3260;
    v24 = *(a1 + 48);
    v44 = 0;
    v45 = v24;
    dispatch_async(v23, v43);

    v10 = v45;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_24A04E6C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 queue];
  dispatch_assert_queue_V2(v5);

  [*(a1 + 40) addObject:v4];
  v6 = *(a1 + 48);

  dispatch_group_leave(v6);
}

void sub_24A04E7DC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_24A04E7FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_24A04E818(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24A04E9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24A04E9E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24A04E9FC(uint64_t a1)
{
  v2 = [qword_27EF31BF8 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A04EA8C()
{
  v0 = dispatch_queue_create("com.apple.Engram.ENKey", MEMORY[0x277D85CD8]);
  v1 = qword_27EF31C08;
  qword_27EF31C08 = v0;

  qword_27EF31BF8 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

void sub_24A050D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A050DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24A050E88;
  v9[3] = &unk_278FC33C8;
  v9[4] = v6;
  v10 = v4;
  v11 = v3;
  v7 = v3;
  v8 = v4;
  [v8 groupContext:v6 latestCachedGroupWithStableID:v5 completion:v9];
}

void sub_24A050E88(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLog groupContext];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v10 = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Found cached group -- Done {group: %{public}@, ware: %{public}@}", &v10, 0x16u);
    }

    [*(a1 + 48) stopWithResult:v3];
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Did not find group -- Continue {ware: %{public}@", &v10, 0xCu);
    }

    [*(a1 + 48) continueWithResult:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_24A050FD0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v11 = +[ENLog groupContext];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 error];
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_DEFAULT, "Error featching group -- Fail {error: %{public}@", buf, 0xCu);
    }

    v13 = *(a1 + 40);
    v10 = [v3 error];
    (*(v13 + 16))(v13, 0, v10);
    goto LABEL_10;
  }

  if (!v4)
  {
    v5 = [v3 value];

    v6 = +[ENLog groupContext];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [v3 value];
        *buf = 138543362;
        v19 = v8;
        _os_log_impl(&dword_24A04B000, v7, OS_LOG_TYPE_INFO, "Found group -- Done {group: %{public}@}", buf, 0xCu);
      }

      v9 = *(a1 + 40);
      v10 = [v3 value];
      (*(v9 + 16))(v9, v10, 0);
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v7, OS_LOG_TYPE_DEFAULT, "Group not found -- Done", buf, 2u);
      }

      if (*(a1 + 32))
      {
        v17 = *(a1 + 32);
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
      }

      v15 = *(a1 + 40);
      v16 = [ENGroupContext _errorWithNotFoundItems:v10];
      (*(v15 + 16))(v15, 0, v16);
    }

LABEL_10:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24A05141C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A05144C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (!a2 || v5)
  {
    v9 = [v6 groupID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_24A0518B4;
    v10[3] = &unk_278FC3558;
    v11 = v5;
    v12 = *(a1 + 48);
    [v7 _fetchGroupWithGroupID:v9 skipCache:1 completion:v10];

    v8 = v11;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_24A0515B0;
    v13[3] = &unk_278FC3530;
    v13[4] = v7;
    v14 = v6;
    v15 = *(a1 + 48);
    [v7 _validateCachedGroup:a2 isParentOfGroup:v14 completion:v13];

    v8 = v14;
  }
}

void sub_24A0515B0(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_24A0516E0;
    v10[3] = &unk_278FC34E0;
    v5 = &v11;
    v6 = v3;
    v11 = v6;
    v12 = *(a1 + 48);
    [v4 _cacheGroup:v6 completion:v10];
    v7 = v12;
  }

  else
  {
    v7 = [v3 groupID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_24A0517C4;
    v8[3] = &unk_278FC3508;
    v5 = &v9;
    v9 = *(a1 + 48);
    [v4 _fetchGroupWithGroupID:v7 skipCache:1 completion:v8];
  }
}

void sub_24A0516E0(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENLog groupContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543619;
    v8 = v3;
    v9 = 2113;
    v10 = v5;
    _os_log_impl(&dword_24A04B000, v4, OS_LOG_TYPE_DEFAULT, "Cached Incoming Group {error: %{public}@, group: %{private}@}", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24A0517C4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[ENLog groupContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543619;
    v10 = v6;
    v11 = 2113;
    v12 = v5;
    _os_log_impl(&dword_24A04B000, v7, OS_LOG_TYPE_DEFAULT, "Failed to validate Incoming Group, fetched from server instead {error: %{public}@, group: %{private}@}", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void sub_24A0518B4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[ENLog groupContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543619;
    v11 = v8;
    v12 = 2113;
    v13 = v5;
    _os_log_impl(&dword_24A04B000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch cached group, fetched from server instead {error: %{public}@, group: %{private}@}", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void sub_24A0520D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_24A052190;
  v7[3] = &unk_278FC35A8;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v4 groupContext:v5 fetchAllKnownGroups:v7];
}

void sub_24A052190(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 queue];
  dispatch_assert_queue_V2(v5);

  v6 = [*(a1 + 40) currentResult];
  [v6 addObjectsFromArray:v4];

  v7 = *(a1 + 40);
  v8 = [v7 currentResult];
  [v7 continueWithResult:v8];
}

void sub_24A052238(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 state];
  if (v3 == 1)
  {
    v6 = *(a1 + 32);
    v5 = [v7 error];
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v5 = [v7 value];
    (*(v4 + 16))(v4, v5, 0);
  }

LABEL_6:
}

void sub_24A05242C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_24A0524E4;
  v7[3] = &unk_278FC3620;
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  [v4 deleteAllKnownGroupsForGroupContext:v5 completion:v7];
}

uint64_t sub_24A0524E4(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 40);

  return [v3 continueWithResult:&stru_285D2E030];
}

void sub_24A0526B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24A052774;
  v8[3] = &unk_278FC3620;
  v8[4] = v6;
  v9 = v3;
  v7 = v3;
  [v4 deleteCachedValueForForGroupContext:v6 withGroupID:v5 completion:v8];
}

uint64_t sub_24A052774(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 40);

  return [v3 continueWithResult:&stru_285D2E030];
}

void sub_24A0528BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 queue];
  dispatch_assert_queue_V2(v7);

  (*(*(a1 + 40) + 16))();
}

void sub_24A052AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 queue];
  dispatch_assert_queue_V2(v7);

  (*(*(a1 + 40) + 16))();
}

void sub_24A052E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A052E90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_24A052F24;
  v3[3] = &unk_278FC3558;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _qFetchDataSourceGroupWithGroupID:v2 completion:v3];
}

void sub_24A052F24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_24A053010;
    v9[3] = &unk_278FC3670;
    v10 = v5;
    v11 = v7;
    [v8 _cacheGroup:v10 completion:v9];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v7, v6);
}

void sub_24A053010(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[ENLog groupContext];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_24A04B000, v2, OS_LOG_TYPE_INFO, "Finished caching group {group: %@, error: %@}", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_24A0530CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLog groupContext];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_INFO, "Found cached group", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_DEFAULT, "Group not cached", v7, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_24A0532B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  (*(*(a1 + 40) + 16))();
}

void sub_24A053594(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_24A0538E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_24A05390C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = +[ENLog groupContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Caching {cache: %{public}@}", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24A053A4C;
  v10[3] = &unk_278FC3620;
  v10[4] = v7;
  v11 = v3;
  v8 = v3;
  [v4 groupContext:v7 cacheGroup:v6 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A053A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 40);

  return [v3 continueWithResult:&stru_285D2E030];
}

uint64_t sub_24A053AA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A053AB8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0;
  v4 = [v3 groupID];
  v5 = [*(a1 + 32) groupID];
  v15 = 0;
  v6 = [v4 compare:v5 withResult:&v16 error:&v15];
  v7 = v15;

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = v16 == -1;
  }

  else
  {
    v8 = +[ENLog groupContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 groupID];
      v10 = [*(a1 + 32) groupID];
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to compare groupIDs {error: %{public}@, lastestGroup.groupID: %{public}@, group.groupID: %{public}@}", buf, 0x20u);
    }
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
  v13 = v3;

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24A053C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLog groupContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Finished caching", v9, 2u);
  }

  v6 = [v3 state];
  if (v6 == 1)
  {
    v7 = *(a1 + 48);
    v8 = [v3 error];
    (*(v7 + 16))(v7, v8);
  }

  else if (!v6)
  {
    [*(a1 + 32) _qDidCacheGroup:*(a1 + 40)];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      [*(a1 + 32) _qDidUpdateGroup:*(*(*(a1 + 64) + 8) + 40) withGroup:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_24A053E20(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 middlewareCacheCostForContext:v5];
  v8 = [v6 middlewareCacheCostForContext:*(a1 + 32)];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

void sub_24A054518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_24A054560(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 domain];
  if ([v8 isEqualToString:@"ENGroupContextErrorDomain"])
  {
    v9 = [v6 code] == -2100;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
LABEL_9:
      v11 = +[ENLog groupContext];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_24A0595B0(v5, v6, v11);
      }

      v12 = *(*(a1 + 48) + 16);
      goto LABEL_20;
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  v13 = +[ENLog groupContext];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138477827;
    v18 = v5;
    _os_log_impl(&dword_24A04B000, v13, OS_LOG_TYPE_INFO, "Created group {group: %{private}@}", &v17, 0xCu);
  }

  [*(a1 + 32) _qDidCreateGroup:v5];
  v14 = *(a1 + 40);
  if (v14)
  {
    [*(a1 + 32) _qDidUpdateGroup:v14 withGroup:v5];
  }

  v15 = +[ENLog groupContext];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_24A04B000, v15, OS_LOG_TYPE_INFO, "Caching new group", &v17, 2u);
  }

  [*(a1 + 32) _cacheGroup:v5 completion:&unk_285D2DE10];
  v12 = *(*(a1 + 48) + 16);
LABEL_20:
  v12();

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24A054790(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = +[ENLog groupContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_24A04B000, v3, OS_LOG_TYPE_INFO, "Finished caching {error: %@}", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_24A0549E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24A054AAC;
  v9[3] = &unk_278FC33C8;
  v9[4] = v6;
  v10 = v4;
  v11 = v3;
  v7 = v3;
  v8 = v4;
  [v8 groupContext:v6 cachedGroupWithID:v5 completion:v9];
}

void sub_24A054AAC(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[ENLog groupContext];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v12 = 138543618;
      v13 = v3;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Found cached group -- Done {group: %{public}@, ware: %{public}@}", &v12, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) visitedItems];
    [v8 _qCacheGroup:v3 toMiddlewares:v9 completion:&unk_285D2DD50];

    [*(a1 + 48) stopWithResult:v3];
  }

  else
  {
    if (v6)
    {
      v10 = *(a1 + 40);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_24A04B000, v5, OS_LOG_TYPE_INFO, "Did not find group -- Continue {ware: %{public}@", &v12, 0xCu);
    }

    [*(a1 + 48) continueWithResult:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24A054C28(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  if (v3 == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 value];
    (*(v4 + 16))(v4, v5);
  }
}

void sub_24A054DF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = +[ENLog groupContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_24A059638(v6, v8);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_24A055E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, char a24)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

uint64_t sub_24A056250()
{
  qword_27EF31C10 = os_log_create("com.apple.ENLog", "groupContext");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A0562D8()
{
  qword_27EF31C20 = os_log_create("com.apple.ENLog", "groupContextCache");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A056360()
{
  qword_27EF31C30 = os_log_create("com.apple.ENLog", "groupContextDataSource");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A0563E8()
{
  qword_27EF31C40 = os_log_create("com.apple.ENLog", "utilities");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A056470()
{
  qword_27EF31C50 = os_log_create("com.apple.ENLog", "groupID");

  return MEMORY[0x2821F96F8]();
}

void sub_24A0565AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_24A0565C4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v7 = [v5 groupID];
  v8 = [v6 groupID];
  v15 = 0;
  v9 = [v7 compare:v8 withResult:&v16 error:&v15];
  v10 = v15;

  if ((v9 & 1) == 0)
  {
    v11 = +[ENLog groupContext];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v18 = v5;
      v19 = 2113;
      v20 = v6;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_DEFAULT, "Failed to compare groups {group1: %{private}@, group2: %{private}@, error: %{public}@}", buf, 0x20u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v12 = v16;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24A05749C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ENLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_24A04B000, v4, OS_LOG_TYPE_INFO, "Reduce -- Finished {result: %{public}@}", &v6, 0xCu);
  }

  [*(a1 + 32) _completeWithResult:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24A057918(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CFB988];
  v4 = a2;
  v5 = [[v3 alloc] initWithError:v4];

  (*(v2 + 16))(v2, v5);
}

void sub_24A057998(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CFB988];
  v4 = a2;
  v5 = [[v3 alloc] initWithSuccess:v4];

  (*(v2 + 16))(v2, v5);
}

void sub_24A057A18(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = MEMORY[0x277CFB988];
  v7 = a2;
  v8 = [[v6 alloc] initWithSuccess:v7];

  [v3 _reduceWithPending:v4 visited:v5 currentResult:v8 completion:a1[7]];
}

void sub_24A058888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24A0588A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24A0588B8(uint64_t a1)
{
  v2 = [qword_27EF31C60 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24A058948()
{
  v0 = dispatch_queue_create("com.apple.Engram.ENCypher", MEMORY[0x277D85CD8]);
  v1 = qword_27EF31C70;
  qword_27EF31C70 = v0;

  qword_27EF31C60 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

void sub_24A05921C()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_24A04E7B8();
  sub_24A04E7DC(&dword_24A04B000, v0, v1, "Failed to load database -- Fail {description: %{public}@, error: %{public}@}");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24A059284(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138478083;
  *&v4[4] = *a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  sub_24A04E7DC(&dword_24A04B000, a2, a3, "Failed to save group -- Fail {group: %{private}@, error: %{public}@}", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_24A059300(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 predicate];
  sub_24A04E7D0();
  sub_24A04E818(&dword_24A04B000, v2, v3, "Fetching by groupIDs {predicate: %@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24A059384()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_24A04E7B8();
  sub_24A04E7DC(&dword_24A04B000, v0, v1, "Failed to fetch coredataGroups -- Fail {error: %{public}@, request: %{public}@}");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24A0593EC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24A04E7D0();
  sub_24A04E7FC(&dword_24A04B000, v0, v1, "Failed to save Context {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24A059454()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24A04E7D0();
  sub_24A04E7FC(&dword_24A04B000, v0, v1, "Failed to fetch objects to delete {error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24A0594BC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24A04E7D0();
  sub_24A04E7FC(&dword_24A04B000, v0, v1, "Failed to fetch {error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24A059538(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24A04B000, a2, OS_LOG_TYPE_ERROR, "ENGroupID initWithDataRepresentation - wrong data size -- Failed {data: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24A0595B0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138478083;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_24A04B000, log, OS_LOG_TYPE_FAULT, "Failed to create group {groupInfo: %{private}@, error: %{public}@}", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_24A059638(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_24A04B000, a2, OS_LOG_TYPE_FAULT, "Failed to get group {error: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24A059728(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [a2 identifier];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_24A04B000, a3, OS_LOG_TYPE_FAULT, "ENCypher_AES128 cypher mismatch {identifier: %@, expectedIdentifier: %@}", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}