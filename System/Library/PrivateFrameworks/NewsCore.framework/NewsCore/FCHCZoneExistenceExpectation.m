@interface FCHCZoneExistenceExpectation
- (void)validate;
@end

@implementation FCHCZoneExistenceExpectation

- (void)validate
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FCHCZoneExistenceExpectation_validate__block_invoke;
  v6[3] = &unk_1E7C37F90;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  FCWaitUntilBlockIsInvoked(v6);
  if ([(FCHCZoneExistenceExpectation *)self shouldExist])
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (!v14[5] || v8[5])
    {
      v3 = MEMORY[0x1E695DF30];
      v4 = [(FCHCZoneExistenceExpectation *)self zoneID];
      [v3 raise:*MEMORY[0x1E695D920] format:{@"zone should exist in database: %@", v4}];
LABEL_8:
    }
  }

  else
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (v14[5] || ([v8[5] fc_isMissingZoneError] & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v4 = [(FCHCZoneExistenceExpectation *)self zoneID];
      [v5 raise:*MEMORY[0x1E695D920] format:{@"zone should not exist in database: %@", v4}];
      goto LABEL_8;
    }
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __40__FCHCZoneExistenceExpectation_validate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v5 = [*(a1 + 32) zoneID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__FCHCZoneExistenceExpectation_validate__block_invoke_2;
  v7[3] = &unk_1E7C37F68;
  v9 = *(a1 + 40);
  v8 = v3;
  v6 = v3;
  [v4 fetchRecordZoneWithID:v5 completionHandler:v7];
}

void __40__FCHCZoneExistenceExpectation_validate__block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

@end