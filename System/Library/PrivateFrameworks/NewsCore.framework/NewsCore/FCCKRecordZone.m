@interface FCCKRecordZone
- (id)description;
- (id)initWithDatabase:(void *)a3 delegate:(void *)a4 recordZoneID:;
- (void)fetchChangesWithChangeToken:(void *)a3 desiredKeys:(char)a4 fetchAllChanges:(uint64_t)a5 qualityOfService:(void *)a6 completion:;
@end

@implementation FCCKRecordZone

- (id)initWithDatabase:(void *)a3 delegate:(void *)a4 recordZoneID:
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "database != nil"];
    *buf = 136315906;
    v18 = "[FCCKRecordZone initWithDatabase:delegate:recordZoneID:]";
    v19 = 2080;
    v20 = "FCCKRecordZone.m";
    v21 = 1024;
    v22 = 42;
    v23 = 2114;
    v24 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v10)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordZoneID != nil"];
        *buf = 136315906;
        v18 = "[FCCKRecordZone initWithDatabase:delegate:recordZoneID:]";
        v19 = 2080;
        v20 = "FCCKRecordZone.m";
        v21 = 1024;
        v22 = 43;
        v23 = 2114;
        v24 = v15;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v10)
  {
    goto LABEL_5;
  }

  v16.receiver = a1;
  v16.super_class = FCCKRecordZone;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  a1 = v11;
  if (v11)
  {
    if (v8 && v10)
    {
      objc_storeStrong(v11 + 3, a2);
      objc_storeWeak(a1 + 4, v9);
      objc_storeStrong(a1 + 2, a4);
    }

    else
    {

      a1 = 0;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t __46__FCCKRecordZone_performActionWithRecordZone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 8) = 1;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 40);
  }

  return (*(v5 + 16))(v5, v7, 0);
}

- (void)fetchChangesWithChangeToken:(void *)a3 desiredKeys:(char)a4 fetchAllChanges:(uint64_t)a5 qualityOfService:(void *)a6 completion:
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke;
      v23 = &unk_1E7C387A0;
      v24 = a1;
      v25 = v11;
      v29 = a4;
      v26 = v12;
      v28 = a5;
      v27 = v14;
      v15 = v21;
      v16 = v15;
      if (*(a1 + 8))
      {
        (v22)(v15, *(a1 + 16), 0);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v19 = *(a1 + 16);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __46__FCCKRecordZone_performActionWithRecordZone___block_invoke;
        *&v31 = &unk_1E7C38750;
        *(&v31 + 1) = a1;
        v32 = v16;
        [WeakRetained ensureRecordZoneExistsWithID:v19 completionHandler:buf];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCCKRecordZone fetchChangesWithChangeToken:desiredKeys:fetchAllChanges:qualityOfService:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCKRecordZone.m";
      *&buf[22] = 1024;
      LODWORD(v31) = 96;
      WORD2(v31) = 2114;
      *(&v31 + 6) = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 24);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke_2;
    v11[3] = &unk_1E7C38778;
    v9 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v5 fetchChangesForRecordZoneID:a2 changeToken:v6 desiredKeys:v7 fetchAllChanges:v8 qualityOfService:v9 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);

    v10();
  }
}

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  if (self)
  {
    recordZoneID = self->_recordZoneID;
  }

  else
  {
    recordZoneID = 0;
  }

  v5 = [(CKRecordZoneID *)recordZoneID zoneName];
  [v3 addField:@"recordZoneName" value:v5];

  v6 = [v3 descriptionString];

  return v6;
}

@end