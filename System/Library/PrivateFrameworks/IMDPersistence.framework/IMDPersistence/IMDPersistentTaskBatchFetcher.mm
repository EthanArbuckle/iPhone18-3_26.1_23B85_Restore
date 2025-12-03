@interface IMDPersistentTaskBatchFetcher
- (id)nextBatchWithSize:(unint64_t)size;
@end

@implementation IMDPersistentTaskBatchFetcher

- (id)nextBatchWithSize:(unint64_t)size
{
  v52[2] = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1B7AE1964;
  v49 = sub_1B7AE24B8;
  v50 = 0;
  v5 = objc_alloc(MEMORY[0x1E696AEB0]);
  v7 = objc_msgSend_initWithKey_ascending_(v5, v6, @"r", 1);
  v8 = MEMORY[0x1E696AE18];
  RowID = objc_msgSend_lastRowID(self, v9, v10);
  v13 = objc_msgSend_predicateWithFormat_(v8, v12, @"%K > %lld", @"r", RowID);
  v16 = objc_msgSend_predicate(self, v14, v15);
  LOBYTE(v8) = v16 == 0;

  if (v8)
  {
    v24 = v13;
  }

  else
  {
    v19 = MEMORY[0x1E696AB28];
    v52[0] = v13;
    v20 = objc_msgSend_predicate(self, v17, v18);
    v52[1] = v20;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v52, 2);
    v24 = objc_msgSend_andPredicateWithSubpredicates_(v19, v23, v22);
  }

  v27 = objc_msgSend_synchronousPTaskQueryProvider(IMDPersistenceService, v25, v26);
  v51 = v7;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v51, 1);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1B7B43FCC;
  v44[3] = &unk_1E7CB6860;
  v44[4] = &v45;
  objc_msgSend_loadPTasksWithPredicate_sortDescriptors_limit_completionBlock_(v27, v30, v24, v29, size, v44);

  if (objc_msgSend_count(v46[5], v31, v32))
  {
    v35 = objc_msgSend_lastObject(v46[5], v33, v34);
    v38 = objc_msgSend_rowID(v35, v36, v37);
    objc_msgSend_setLastRowID_(self, v39, v38);
  }

  v40 = v46[5];
  if (!v40)
  {
    v40 = MEMORY[0x1E695E0F0];
  }

  v41 = v40;

  _Block_object_dispose(&v45, 8);
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

@end