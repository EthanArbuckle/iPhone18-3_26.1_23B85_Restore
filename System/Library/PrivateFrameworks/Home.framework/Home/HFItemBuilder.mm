@interface HFItemBuilder
- (HFItemBuilder)init;
- (HFItemBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (id)_commitSetDiff:(id)a3 withBlock:(id)a4;
- (id)_failureErrorWithReason:(id)a3;
- (id)commitItem;
- (id)commitItemBuilderSetDiff:(id)a3 addBlock:(id)a4 deleteBlock:(id)a5;
- (id)commitSetDiff:(id)a3 addBlock:(id)a4 updateBlock:(id)a5 deleteBlock:(id)a6;
- (id)lazy_verifyNameIsNotEmpty:(id)a3;
- (id)lazy_verifyPropertiesAreSet:(id)a3;
- (id)lazy_verifyProperty:(id)a3 matchesCondition:(id)a4 description:(id)a5;
- (id)verifyNameIsNotEmpty:(id)a3;
- (id)verifyPropertiesAreSet:(id)a3;
- (id)verifyProperty:(id)a3 matchesCondition:(id)a4 description:(id)a5;
- (void)setHome:(id)a3;
- (void)setHomeKitRepresentation:(id)a3;
@end

@implementation HFItemBuilder

- (id)commitItem
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemBuilder.m" lineNumber:29 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemBuilder commitItem]", objc_opt_class()}];

  return 0;
}

- (void)setHomeKitRepresentation:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() homeKitRepresentationClass];
  v11 = v4;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }

    v7 = v11;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  homeKitRepresentation = self->_homeKitRepresentation;
  self->_homeKitRepresentation = v7;
}

- (HFItemBuilder)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemBuilder.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "-[HFItemBuilder init]", v5}];

  return 0;
}

- (HFItemBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HFItemBuilder;
  v8 = [(HFItemBuilder *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = [objc_opt_class() homeKitRepresentationClass];
    v11 = v6;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11;
      if (v12)
      {
        goto LABEL_9;
      }

      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
    }

    v13 = 0;
LABEL_9:

    homeKitRepresentation = v9->_homeKitRepresentation;
    v9->_homeKitRepresentation = v13;
  }

  return v9;
}

- (void)setHome:(id)a3
{
  v5 = a3;
  home = self->_home;
  p_home = &self->_home;
  if (home != v5)
  {
    v8 = v5;
    objc_storeStrong(p_home, a3);
    v5 = v8;
  }
}

- (id)commitSetDiff:(id)a3 addBlock:(id)a4 updateBlock:(id)a5 deleteBlock:(id)a6
{
  v45[3] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v12 || !v13 || !v14)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"HFItemBuilder.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"addBlock && updateBlock && deleteBlock"}];
  }

  v16 = [HFMutableSetDiff alloc];
  v17 = [v11 fromSet];
  v18 = [(HFMutableSetDiff *)v16 initWithFromSet:v17];

  v19 = [v11 deletions];
  v20 = [(HFItemBuilder *)self _commitSetDiff:v19 withBlock:v15];

  v21 = [v11 additions];
  v22 = [(HFItemBuilder *)self _commitSetDiff:v21 withBlock:v12];

  v23 = [v11 updates];
  v24 = [(HFItemBuilder *)self _commitSetDiff:v23 withBlock:v13];

  v25 = MEMORY[0x277D2C900];
  v45[0] = v20;
  v45[1] = v22;
  v45[2] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  v27 = [v25 chainFutures:v26];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke;
  v40[3] = &unk_277DF5010;
  v41 = v20;
  v28 = v18;
  v42 = v28;
  v43 = v22;
  v44 = v24;
  v29 = v24;
  v30 = v22;
  v31 = v20;
  v32 = [v27 addCompletionBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke_5;
  v38[3] = &unk_277DF5038;
  v39 = v28;
  v33 = v28;
  v34 = [v27 recover:v38];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke_2;
  v12[3] = &unk_277DF4FE8;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v3 = [v2 addCompletionBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke_3;
  v10[3] = &unk_277DF4FE8;
  v4 = *(a1 + 48);
  v11 = *(a1 + 40);
  v5 = [v4 addCompletionBlock:v10];
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke_4;
  v8[3] = &unk_277DF4FE8;
  v9 = *(a1 + 40);
  v7 = [v6 addCompletionBlock:v8];
}

id __64__HFItemBuilder_commitSetDiff_addBlock_updateBlock_deleteBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v11 = @"HFItemBuilderErrorUserInfoSuccessfulChangesKey";
  v12[0] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v5 hf_errorWithAddedUserInfo:v6];

  v8 = [v2 futureWithError:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_commitSetDiff:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke;
  v16[3] = &unk_277DF50D8;
  v18 = v7;
  v19 = v6;
  v17 = v5;
  v9 = MEMORY[0x277D2C938];
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = [v9 mainThreadScheduler];
  v14 = [v8 lazyFutureWithBlock:v16 scheduler:v13];

  return v14;
}

void __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke_2;
  v14[3] = &unk_277DF5088;
  v16 = *(a1 + 48);
  v15 = *(a1 + 40);
  v5 = [v4 na_map:v14];
  v6 = MEMORY[0x277D2C900];
  v7 = [v5 allObjects];
  v8 = [v6 chainFutures:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke_4;
  v11[3] = &unk_277DF50B0;
  v12 = v3;
  v13 = *(a1 + 40);
  v9 = v3;
  v10 = [v8 addCompletionBlock:v11];
}

id __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HFItemBuilder__commitSetDiff_withBlock___block_invoke_3;
  v8[3] = &unk_277DF5060;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = [v4 addSuccessBlock:v8];

  return v6;
}

- (id)commitItemBuilderSetDiff:(id)a3 addBlock:(id)a4 deleteBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 || !v11)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFItemBuilder.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"addBlock && deleteBlock"}];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HFItemBuilder_commitItemBuilderSetDiff_addBlock_deleteBlock___block_invoke;
  v17[3] = &unk_277DF5128;
  v18 = v10;
  v13 = v10;
  v14 = [(HFItemBuilder *)self commitSetDiff:v9 addBlock:v17 updateBlock:&__block_literal_global_30 deleteBlock:v12];

  return v14;
}

id __63__HFItemBuilder_commitItemBuilderSetDiff_addBlock_deleteBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 commitItem];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HFItemBuilder_commitItemBuilderSetDiff_addBlock_deleteBlock___block_invoke_2;
  v9[3] = &unk_277DF5100;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 flatMap:v9];

  return v7;
}

- (id)verifyPropertiesAreSet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(HFItemBuilder *)self verifyPropertyIsSet:*(*(&v13 + 1) + 8 * i), v13];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)verifyNameIsNotEmpty:(id)a3
{
  if ([a3 length])
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hf_errorWithCode:1];
  }

  return v3;
}

- (id)verifyProperty:(id)a3 matchesCondition:(id)a4 description:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFItemBuilder.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"condition"}];
  }

  v12 = [(HFItemBuilder *)self valueForKey:v9];
  v13 = v10[2](v10, v12);

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ has invalid property %@: %@", self, v9, v11];
    v16 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v15;
      _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Failed to verify builder: %@ for reason: %@", buf, 0x16u);
    }

    v14 = [(HFItemBuilder *)self _failureErrorWithReason:v15];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)lazy_verifyPropertiesAreSet:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HFItemBuilder_lazy_verifyPropertiesAreSet___block_invoke;
  v7[3] = &unk_277DF5170;
  v7[4] = self;
  v4 = [a3 na_map:v7];
  v5 = [v3 chainFutures:v4];

  return v5;
}

- (id)lazy_verifyProperty:(id)a3 matchesCondition:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HFItemBuilder_lazy_verifyProperty_matchesCondition_description___block_invoke;
  v17[3] = &unk_277DF5198;
  v17[4] = self;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 lazyFutureWithBlock:v17];

  return v15;
}

void __66__HFItemBuilder_lazy_verifyProperty_matchesCondition_description___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a2;
  v7 = [v2 verifyProperty:v3 matchesCondition:v4 description:v5];
  v8 = v7;
  if (v7)
  {
    [v6 finishWithError:v7];
  }

  else
  {
    [v6 finishWithNoResult];
  }
}

- (id)lazy_verifyNameIsNotEmpty:(id)a3
{
  v3 = [a3 length];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:1];
    v5 = [v4 futureWithError:v6];
  }

  return v5;
}

- (id)_failureErrorWithReason:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"HFItemBuilderFailureReason";
  v10[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D2C8B8] code:2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end