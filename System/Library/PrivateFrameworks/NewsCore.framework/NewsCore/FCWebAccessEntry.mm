@interface FCWebAccessEntry
- (void)initWithEntryID:(void *)d tagID:(void *)iD purchaseID:(void *)purchaseID lastRetryAttemptTime:(void *)time email:(void *)email purchaseReceipt:;
@end

@implementation FCWebAccessEntry

- (void)initWithEntryID:(void *)d tagID:(void *)iD purchaseID:(void *)purchaseID lastRetryAttemptTime:(void *)time email:(void *)email purchaseReceipt:
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a2;
  dCopy = d;
  iDCopy = iD;
  purchaseIDCopy = purchaseID;
  timeCopy = time;
  emailCopy = email;
  if (!self)
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

    if (!dCopy)
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

  else if (!dCopy)
  {
    goto LABEL_5;
  }

  v36.receiver = self;
  v36.super_class = FCWebAccessEntry;
  v19 = objc_msgSendSuper2(&v36, sel_init);
  self = v19;
  if (v19)
  {
    if (v13)
    {
      v20 = [v13 copy];
      v21 = self[5];
      self[5] = v20;

      v22 = [dCopy copy];
      v23 = self[6];
      self[6] = v22;

      v24 = [iDCopy copy];
      v25 = self[2];
      self[2] = v24;

      v26 = [purchaseIDCopy copy];
      v27 = self[4];
      self[4] = v26;

      v28 = [timeCopy copy];
      v29 = self[1];
      self[1] = v28;

      v30 = [emailCopy copy];
      v31 = self[3];
      self[3] = v30;
    }

    else
    {
      v31 = v19;
      self = 0;
    }
  }

LABEL_12:

  v32 = *MEMORY[0x1E69E9840];
  return self;
}

@end