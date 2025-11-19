@interface CRKASMRosterUpdater
- (CRKASMRosterUpdater)initWithRequirements:(id)a3;
- (id)courseWithIdentifier:(id)a3 inRoster:(id)a4;
- (id)errorWrappingCompletionForCompletion:(id)a3 selectorName:(id)a4;
- (id)objectIDForCourseWithIdentifier:(id)a3 inRoster:(id)a4 error:(id *)a5;
- (void)createClassOperationDidFinish:(id)a3 completion:(id)a4;
- (void)createClassWithProperties:(id)a3 completion:(id)a4;
- (void)removeCourseWithIdentifier:(id)a3 roster:(id)a4 completion:(id)a5;
- (void)removeOperationDidFinish:(id)a3 completion:(id)a4;
- (void)updateClassOperationDidFinish:(id)a3 completion:(id)a4;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 roster:(id)a5 completion:(id)a6;
@end

@implementation CRKASMRosterUpdater

- (CRKASMRosterUpdater)initWithRequirements:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMRosterUpdater;
  v6 = [(CRKASMRosterUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, a3);
  }

  return v7;
}

- (void)createClassWithProperties:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = NSStringFromSelector(a2);
  v15 = [(CRKASMRosterUpdater *)self errorWrappingCompletionForCompletion:v7 selectorName:v9];

  v10 = [CRKCreateASMClassOperation alloc];
  v11 = [(CRKASMRosterUpdater *)self requirements];
  v12 = [(CRKCreateASMClassOperation *)v10 initWithProperties:v8 requirements:v11];

  v13 = MEMORY[0x245D3AAD0](v15);
  [(CRKCreateASMClassOperation *)v12 addTarget:self selector:sel_createClassOperationDidFinish_completion_ forOperationEvents:6 userInfo:v13];

  v14 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [v14 addOperation:v12];
}

- (void)createClassOperationDidFinish:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 error];
  (*(a4 + 2))(v6, v7);
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 roster:(id)a5 completion:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = NSStringFromSelector(a2);
  v16 = [(CRKASMRosterUpdater *)self errorWrappingCompletionForCompletion:v12 selectorName:v15];

  v24 = 0;
  v17 = [(CRKASMRosterUpdater *)self objectIDForCourseWithIdentifier:v14 inRoster:v13 error:&v24];

  v18 = v24;
  if (v17)
  {
    v19 = [CRKUpdateASMClassOperation alloc];
    v20 = [(CRKASMRosterUpdater *)self requirements];
    v21 = [(CRKUpdateASMClassOperation *)v19 initWithObjectID:v17 properties:v11 requirements:v20];

    v22 = MEMORY[0x245D3AAD0](v16);
    [(CRKUpdateASMClassOperation *)v21 addTarget:self selector:sel_updateClassOperationDidFinish_completion_ forOperationEvents:6 userInfo:v22];

    v23 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    [v23 addOperation:v21];
  }

  else
  {
    (v16)[2](v16, v18);
  }
}

- (void)updateClassOperationDidFinish:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 error];
  (*(a4 + 2))(v6, v7);
}

- (void)removeCourseWithIdentifier:(id)a3 roster:(id)a4 completion:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = NSStringFromSelector(a2);
  v19 = [(CRKASMRosterUpdater *)self errorWrappingCompletionForCompletion:v9 selectorName:v12];

  v13 = [(CRKASMRosterUpdater *)self objectIDForCourseWithIdentifier:v11 inRoster:v10 error:0];

  if (v13)
  {
    v14 = [CRKRemoveASMClassOperation alloc];
    v15 = [(CRKASMRosterUpdater *)self requirements];
    v16 = [(CRKRemoveASMClassOperation *)v14 initWithObjectID:v13 requirements:v15];

    v17 = MEMORY[0x245D3AAD0](v19);
    [(CRKRemoveASMClassOperation *)v16 addTarget:self selector:sel_removeOperationDidFinish_completion_ forOperationEvents:6 userInfo:v17];

    v18 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    [v18 addOperation:v16];
  }

  else
  {
    v19[2](v19, 0);
  }
}

- (void)removeOperationDidFinish:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 error];
  (*(a4 + 2))(v6, v7);
}

- (id)objectIDForCourseWithIdentifier:(id)a3 inRoster:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(CRKASMRosterUpdater *)self courseWithIdentifier:v8 inRoster:a4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CRKASMRosterUpdater objectIDForCourseWithIdentifier:inRoster:error:];
    }

    v12 = [v11 backingClassObjectID];
  }

  else
  {
    if (a5)
    {
      v18 = @"kCRKItemNameErrorKey";
      v13 = [v8 stringValue];
      v14 = v13;
      v15 = @"courseIdentifier.stringValue";
      if (v13)
      {
        v15 = v13;
      }

      v19[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a5 = CRKErrorWithCodeAndUserInfo(12, v16);
    }

    v12 = 0;
  }

  return v12;
}

- (id)courseWithIdentifier:(id)a3 inRoster:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 courses];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)errorWrappingCompletionForCompletion:(id)a3 selectorName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CRKASMRosterUpdater_errorWrappingCompletionForCompletion_selectorName___block_invoke;
  v12[3] = &unk_278DC1A40;
  v13 = v7;
  v14 = v6;
  v12[4] = self;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x245D3AAD0](v12);

  return v10;
}

void __73__CRKASMRosterUpdater_errorWrappingCompletionForCompletion_selectorName___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v9 = *(*(a1 + 48) + 16);
LABEL_10:
    v9();
    goto LABEL_11;
  }

  v4 = [*(a1 + 32) requirements];
  v5 = [v4 ownsError:v3];

  if ((v5 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  if (_CRKLogASM_onceToken_11 != -1)
  {
    __73__CRKASMRosterUpdater_errorWrappingCompletionForCompletion_selectorName___block_invoke_cold_1();
  }

  v6 = _CRKLogASM_logObj_11;
  if (os_log_type_enabled(_CRKLogASM_logObj_11, OS_LOG_TYPE_ERROR))
  {
    __73__CRKASMRosterUpdater_errorWrappingCompletionForCompletion_selectorName___block_invoke_cold_2(a1, v6, v3);
  }

  v10 = *MEMORY[0x277CCA7E8];
  v11[0] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = CRKErrorWithCodeAndUserInfo(154, v7);

  (*(*(a1 + 48) + 16))();
LABEL_11:
}

- (void)objectIDForCourseWithIdentifier:inRoster:error:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKASMRosterUpdater objectIDForCourseWithIdentifier:inRoster:error:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKASMRosterUpdater.m" lineNumber:140 description:{@"expected %@, got %@", v2, v4}];
}

void __73__CRKASMRosterUpdater_errorWrappingCompletionForCompletion_selectorName___block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 verboseDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "An error occurred in %{public}@, %{public}@", &v7, 0x16u);
}

@end