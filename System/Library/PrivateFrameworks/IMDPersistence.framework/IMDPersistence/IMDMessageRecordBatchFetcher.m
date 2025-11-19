@interface IMDMessageRecordBatchFetcher
- (IMDMessageRecordBatchFetcher)initWithChatPredicate:(id)a3 sortAscending:(BOOL)a4;
- (id)_rowIDPredicate;
- (id)nextBatchWithSize:(unint64_t)a3;
@end

@implementation IMDMessageRecordBatchFetcher

- (id)_rowIDPredicate
{
  if (objc_msgSend_lastRowID(self, a2, v2) == -1)
  {
    v12 = 0;
  }

  else
  {
    v6 = objc_msgSend_sortAscending(self, v4, v5);
    v7 = MEMORY[0x1E696AE18];
    RowID = objc_msgSend_lastRowID(self, v8, v9);
    if (v6)
    {
      objc_msgSend_predicateWithFormat_(v7, v11, @"%K > %lld", @"rowID", RowID);
    }

    else
    {
      objc_msgSend_predicateWithFormat_(v7, v11, @"%K < %lld", @"rowID", RowID);
    }
    v12 = ;
  }

  return v12;
}

- (IMDMessageRecordBatchFetcher)initWithChatPredicate:(id)a3 sortAscending:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IMDMessageRecordBatchFetcher;
  v8 = [(IMDRecordBatchFetcher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_chatPredicate, a3);
    v9->_sortAscending = a4;
  }

  return v9;
}

- (id)nextBatchWithSize:(unint64_t)a3
{
  v67[2] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1B7AE18C4;
  v63 = sub_1B7AE2458;
  v64 = 0;
  v5 = objc_alloc(MEMORY[0x1E696AEB0]);
  v8 = objc_msgSend_sortAscending(self, v6, v7);
  v10 = objc_msgSend_initWithKey_ascending_(v5, v9, @"rowID", v8);
  v13 = objc_msgSend__rowIDPredicate(self, v11, v12);
  v16 = objc_msgSend_predicate(self, v14, v15);
  v17 = v16 == 0;

  if (v17)
  {
    v28 = v13;
  }

  else
  {
    if (v13)
    {
      v20 = MEMORY[0x1E696AB28];
      v67[0] = v13;
      v21 = objc_msgSend_predicate(self, v18, v19);
      v67[1] = v21;
      v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v67, 2);
      v25 = objc_msgSend_andPredicateWithSubpredicates_(v20, v24, v23);

      goto LABEL_7;
    }

    v28 = objc_msgSend_predicate(self, v18, v19);
  }

  v25 = v28;
LABEL_7:
  v29 = objc_msgSend_chatPredicate(self, v26, v27);

  objc_msgSend_synchronousDatabase(IMDDatabase, v30, v31);
  if (v29)
    v32 = {;
    v66 = v10;
    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, &v66, 1);
    v37 = objc_msgSend_chatPredicate(self, v35, v36);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = sub_1B7B08264;
    v58[3] = &unk_1E7CB6860;
    v58[4] = &v59;
    objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_limit_completionHandler_(v32, v38, v25, v34, v37, a3, v58);
  }

  else
    v32 = {;
    v65 = v10;
    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, &v65, 1);
    v42 = objc_msgSend_parentedOnly(self, v40, v41);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_1B7B08274;
    v57[3] = &unk_1E7CB6860;
    v57[4] = &v59;
    objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_parentedOnly_limit_completionHandler_(v32, v43, v25, v34, v42, a3, v57);
  }

  if (objc_msgSend_count(v60[5], v44, v45))
  {
    v48 = objc_msgSend_lastObject(v60[5], v46, v47);
    v51 = objc_msgSend_rowID(v48, v49, v50);
    objc_msgSend_setLastRowID_(self, v52, v51);
  }

  v53 = v60[5];
  if (!v53)
  {
    v53 = MEMORY[0x1E695E0F0];
  }

  v54 = v53;

  _Block_object_dispose(&v59, 8);
  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

@end