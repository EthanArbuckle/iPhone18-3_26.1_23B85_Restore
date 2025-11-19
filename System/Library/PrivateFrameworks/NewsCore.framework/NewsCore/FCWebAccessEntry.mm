@interface FCWebAccessEntry
- (void)initWithEntryID:(void *)a3 tagID:(void *)a4 purchaseID:(void *)a5 lastRetryAttemptTime:(void *)a6 email:(void *)a7 purchaseReceipt:;
@end

@implementation FCWebAccessEntry

- (void)initWithEntryID:(void *)a3 tagID:(void *)a4 purchaseID:(void *)a5 lastRetryAttemptTime:(void *)a6 email:(void *)a7 purchaseReceipt:
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"web access entry must have an identifier"];
    *buf = 136315906;
    v38 = "[FCWebAccessEntry initWithEntryID:tagID:purchaseID:lastRetryAttemptTime:email:purchaseReceipt:]";
    v39 = 2080;
    v40 = "FCPurchaseController.m";
    v41 = 1024;
    v42 = 1805;
    v43 = 2114;
    v44 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v14)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"web access entry must have an tag ID"];
        *buf = 136315906;
        v38 = "[FCWebAccessEntry initWithEntryID:tagID:purchaseID:lastRetryAttemptTime:email:purchaseReceipt:]";
        v39 = 2080;
        v40 = "FCPurchaseController.m";
        v41 = 1024;
        v42 = 1806;
        v43 = 2114;
        v44 = v35;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v14)
  {
    goto LABEL_5;
  }

  v36.receiver = a1;
  v36.super_class = FCWebAccessEntry;
  v19 = objc_msgSendSuper2(&v36, sel_init);
  a1 = v19;
  if (v19)
  {
    if (v13)
    {
      v20 = [v13 copy];
      v21 = a1[5];
      a1[5] = v20;

      v22 = [v14 copy];
      v23 = a1[6];
      a1[6] = v22;

      v24 = [v15 copy];
      v25 = a1[2];
      a1[2] = v24;

      v26 = [v16 copy];
      v27 = a1[4];
      a1[4] = v26;

      v28 = [v17 copy];
      v29 = a1[1];
      a1[1] = v28;

      v30 = [v18 copy];
      v31 = a1[3];
      a1[3] = v30;
    }

    else
    {
      v31 = v19;
      a1 = 0;
    }
  }

LABEL_12:

  v32 = *MEMORY[0x1E69E9840];
  return a1;
}

@end