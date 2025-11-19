@interface IMBackpressuredDonationController
- (IMBackpressuredDonationController)initWithDonationCount:(int64_t)a3 maxBackpressureSize:(int64_t)a4 donationBlock:(id)a5;
- (id)_popDonationsUpToCount:(int64_t)a3;
- (void)_deferItems:(id)a3;
- (void)_donateItems:(id)a3 completionBlock:(id)a4;
- (void)_finishedDonatingItems:(id)a3;
- (void)_leaveGroupsForItems:(id)a3;
- (void)_registerGroup:(id)a3 forItem:(id)a4;
- (void)donateItems:(id)a3 completionBlock:(id)a4;
@end

@implementation IMBackpressuredDonationController

- (IMBackpressuredDonationController)initWithDonationCount:(int64_t)a3 maxBackpressureSize:(int64_t)a4 donationBlock:(id)a5
{
  v8 = a5;
  v24.receiver = self;
  v24.super_class = IMBackpressuredDonationController;
  v9 = [(IMBackpressuredDonationController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    if (a3 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a3;
    }

    v9->_donationCount = v11;
    v9->_maxBackpressureSize = a4;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.IMDPersistence.BackpressuredDonation", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = _Block_copy(v8);
    donationBlock = v10->_donationBlock;
    v10->_donationBlock = v15;

    v10->_donationInProgress = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    pendingDonations = v10->_pendingDonations;
    v10->_pendingDonations = v17;

    v19 = objc_alloc(MEMORY[0x1E696AD18]);
    v21 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v19, v20, 0, 0, 0);
    pendingGroups = v10->_pendingGroups;
    v10->_pendingGroups = v21;
  }

  return v10;
}

- (id)_popDonationsUpToCount:(int64_t)a3
{
  v3 = a3;
  v5 = objc_msgSend_queue(self, a2, a3);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_pendingDonations(self, v6, v7);
  if (objc_msgSend_count(v8, v9, v10) <= v3)
  {
    v13 = objc_msgSend_pendingDonations(self, v11, v12);
    v3 = objc_msgSend_count(v13, v14, v15);
  }

  v18 = objc_msgSend_pendingDonations(self, v16, v17);
  v21 = objc_msgSend_array(v18, v19, v20);
  v23 = objc_msgSend_subarrayWithRange_(v21, v22, 0, v3);

  v25 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v24, 0, v3);
  v28 = objc_msgSend_pendingDonations(self, v26, v27);
  objc_msgSend_removeObjectsAtIndexes_(v28, v29, v25);

  return v23;
}

- (void)_finishedDonatingItems:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v8 = IMCoreDuetLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 134217984;
    v37 = objc_msgSend_count(v4, v9, v10);
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Finished donating %llu interactions", &v36, 0xCu);
  }

  objc_msgSend_setDonationInProgress_(self, v11, 0);
  objc_msgSend__leaveGroupsForItems_(self, v12, v4);
  v15 = objc_msgSend_pendingDonations(self, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_pendingDonations(self, v19, v20);
    v24 = objc_msgSend_count(v21, v22, v23);

    v27 = objc_msgSend_donationCount(self, v25, v26);
    v29 = objc_msgSend__popDonationsUpToCount_(self, v28, v27);
    v30 = IMCoreDuetLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_msgSend_count(v29, v31, v32);
      v36 = 134218240;
      v37 = v24;
      v38 = 2048;
      v39 = v33;
      _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_DEFAULT, "There are %llu interactions waiting to be donated, going to donate %llu more", &v36, 0x16u);
    }

    objc_msgSend__donateItems_completionBlock_(self, v34, v29, 0);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_deferItems:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1B7B82708;
  v72[3] = &unk_1E7CBB260;
  v72[4] = self;
  v9 = objc_msgSend_predicateWithBlock_(MEMORY[0x1E696AE18], v8, v72);
  v11 = objc_msgSend_filteredArrayUsingPredicate_(v4, v10, v9);

  if (objc_msgSend_count(v11, v12, v13))
  {
    v16 = objc_msgSend_count(v11, v14, v15);
    if (v16 > objc_msgSend_maxBackpressureSize(self, v17, v18))
    {
      v21 = objc_msgSend_count(v11, v19, v20);
      v24 = objc_msgSend_maxBackpressureSize(self, v22, v23);
      v26 = objc_msgSend_subarrayWithRange_(v11, v25, 0, v21 - v24);
      objc_msgSend__leaveGroupsForItems_(self, v27, v26);
      v30 = objc_msgSend_count(v11, v28, v29);
      v33 = v30 - objc_msgSend_maxBackpressureSize(self, v31, v32);
      v36 = objc_msgSend_maxBackpressureSize(self, v34, v35);
      v38 = objc_msgSend_subarrayWithRange_(v11, v37, v33, v36);

      v11 = v38;
    }

    v39 = objc_msgSend_pendingDonations(self, v19, v20);
    v42 = objc_msgSend_count(v39, v40, v41);
    v45 = objc_msgSend_count(v11, v43, v44) + v42;

    v49 = v45 - objc_msgSend_maxBackpressureSize(self, v46, v47);
    if (v49 >= 1)
    {
      v50 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v74 = v49;
        _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_DEFAULT, "Too many items queued for donation, purging first %llu to make room", buf, 0xCu);
      }

      v53 = objc_msgSend_pendingDonations(self, v51, v52);
      v56 = objc_msgSend_array(v53, v54, v55);
      v58 = objc_msgSend_subarrayWithRange_(v56, v57, 0, v49);

      objc_msgSend__leaveGroupsForItems_(self, v59, v58);
      v61 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v60, 0, v49);
      v64 = objc_msgSend_pendingDonations(self, v62, v63);
      objc_msgSend_removeObjectsAtIndexes_(v64, v65, v61);
    }

    v66 = objc_msgSend_orderedSetWithArray_(MEMORY[0x1E695DFB8], v48, v11);
    v69 = objc_msgSend_pendingDonations(self, v67, v68);
    objc_msgSend_unionOrderedSet_(v69, v70, v66);
  }

  v71 = *MEMORY[0x1E69E9840];
}

- (void)_donateItems:(id)a3 completionBlock:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = dispatch_group_create();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v11 = v6;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v69, v79, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v70;
      do
      {
        v17 = 0;
        do
        {
          if (*v70 != v16)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend__registerGroup_forItem_(self, v14, v10, *(*(&v69 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v69, v79, 16);
      }

      while (v15);
    }

    v18 = IMDIndexingClientRequestQueue();
    dispatch_group_notify(v10, v18, v9);
  }

  if (objc_msgSend_count(v6, v7, v8))
  {
    if (objc_msgSend_donationInProgress(self, v19, v20))
    {
      v23 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_msgSend_count(v6, v24, v25);
        *buf = 134217984;
        v74 = v26;
        _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Donation is in progress, deferring donation of %llu interactions", buf, 0xCu);
      }

      objc_msgSend__deferItems_(self, v27, v6);
    }

    else
    {
      v28 = objc_msgSend_count(v6, v21, v22);
      if (v28 > objc_msgSend_donationCount(self, v29, v30))
      {
        v33 = objc_msgSend_donationCount(self, v31, v32);
        v36 = objc_msgSend_count(v6, v34, v35);
        v39 = objc_msgSend_donationCount(self, v37, v38);
        v41 = objc_msgSend_subarrayWithRange_(v6, v40, v33, v36 - v39);
        v42 = IMCoreDuetLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_msgSend_count(v6, v43, v44);
          v48 = objc_msgSend_donationCount(self, v46, v47);
          v51 = objc_msgSend_count(v41, v49, v50);
          *buf = 134218496;
          v74 = v45;
          v75 = 2048;
          v76 = v48;
          v77 = 2048;
          v78 = v51;
          _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_DEFAULT, "Received a request to index too many items (%llu > %llu), deferring %llu", buf, 0x20u);
        }

        objc_msgSend__deferItems_(self, v52, v41);
        v55 = objc_msgSend_donationCount(self, v53, v54);
        v57 = objc_msgSend_subarrayWithRange_(v6, v56, 0, v55);

        v6 = v57;
      }

      objc_msgSend__beganDonatingItems(self, v31, v32);
      v58 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v61 = objc_msgSend_count(v6, v59, v60);
        *buf = 134217984;
        v74 = v61;
        _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_DEFAULT, "Going to donate %llu interactions", buf, 0xCu);
      }

      v64 = objc_msgSend_donationBlock(self, v62, v63);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = sub_1B7B82B24;
      v66[3] = &unk_1E7CBB288;
      v6 = v6;
      v67 = v6;
      v68 = self;
      (v64)[2](v64, v6, v66);
    }
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)donateItems:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_queue(self, v8, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B82D7C;
  block[3] = &unk_1E7CB71C0;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, block);
}

- (void)_registerGroup:(id)a3 forItem:(id)a4
{
  v20 = a4;
  v6 = a3;
  v9 = objc_msgSend_queue(self, v7, v8);
  dispatch_assert_queue_V2(v9);

  v12 = objc_msgSend_pendingGroups(self, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, v20);

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = objc_msgSend_pendingGroups(self, v15, v16);
    objc_msgSend_setObject_forKey_(v17, v18, v14, v20);
  }

  dispatch_group_enter(v6);
  objc_msgSend_addObject_(v14, v19, v6);
}

- (void)_leaveGroupsForItems:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v43, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        v18 = objc_msgSend_pendingGroups(self, v12, v13);
        v20 = objc_msgSend_objectForKey_(v18, v19, v17);

        if (v20)
        {
          objc_msgSend_addObjectsFromArray_(v8, v21, v20);
          v24 = objc_msgSend_pendingGroups(self, v22, v23);
          objc_msgSend_removeObjectForKey_(v24, v25, v17);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v38, v43, 16);
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v8;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v34, v42, 16);
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      v31 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v26);
        }

        dispatch_group_leave(*(*(&v34 + 1) + 8 * v31++));
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v32, &v34, v42, 16);
    }

    while (v29);
  }

  v33 = *MEMORY[0x1E69E9840];
}

@end