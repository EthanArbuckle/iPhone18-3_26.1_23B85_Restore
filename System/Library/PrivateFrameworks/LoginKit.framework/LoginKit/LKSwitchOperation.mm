@interface LKSwitchOperation
- (LKSwitchOperation)init;
- (NSArray)keychainItemsAddedAfterRecoverEMCS;
- (NSMutableArray)mutableKeychainItemsAddedAfterRecoverEMCS;
- (id)dictionary;
- (id)switchTypeString;
- (void)addKeychainItemAdditionEvent:(id)a3;
- (void)removeLastKeychainItemAdditionEvent;
- (void)setRecoverEMCSOperation:(id)a3;
- (void)setSwitchType:(unint64_t)a3;
@end

@implementation LKSwitchOperation

- (LKSwitchOperation)init
{
  v6.receiver = self;
  v6.super_class = LKSwitchOperation;
  v2 = [(LKOperation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_switchType = 0;
    recoverEMCSOperation = v2->_recoverEMCSOperation;
    v2->_recoverEMCSOperation = 0;
  }

  return v3;
}

- (void)setRecoverEMCSOperation:(id)a3
{
  v5 = a3;
  if (self->_recoverEMCSOperation != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recoverEMCSOperation, a3);
    v5 = v6;
  }
}

- (void)setSwitchType:(unint64_t)a3
{
  if (self->_switchType != a3)
  {
    self->_switchType = a3;
  }
}

- (NSArray)keychainItemsAddedAfterRecoverEMCS
{
  v2 = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
  v3 = [v2 copy];

  return v3;
}

- (NSMutableArray)mutableKeychainItemsAddedAfterRecoverEMCS
{
  mutableKeychainItemsAddedAfterRecoverEMCS = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
  if (!mutableKeychainItemsAddedAfterRecoverEMCS)
  {
    v4 = objc_opt_new();
    v5 = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
    self->_mutableKeychainItemsAddedAfterRecoverEMCS = v4;

    mutableKeychainItemsAddedAfterRecoverEMCS = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
  }

  return mutableKeychainItemsAddedAfterRecoverEMCS;
}

- (void)addKeychainItemAdditionEvent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
    [v5 addObject:v4];
  }
}

- (void)removeLastKeychainItemAdditionEvent
{
  v3 = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
    [v5 removeLastObject];
  }
}

- (id)switchTypeString
{
  v2 = [(LKSwitchOperation *)self switchType];
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return off_279826630[v2];
  }
}

- (id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = LKSwitchOperation;
  v3 = [(LKOperation *)&v25 dictionary];
  v4 = [v3 mutableCopy];

  v5 = [(LKSwitchOperation *)self recoverEMCSOperation];
  v6 = [v5 dictionary];
  [v4 setObject:v6 forKeyedSubscript:@"recoverKeychainOperation"];

  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(LKSwitchOperation *)self keychainItemsAddedAfterRecoverEMCS];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 keychainItemAdded];

        if (v14)
        {
          v15 = [v13 dictionary];
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v16 = [v7 copy];
    [v4 setObject:v16 forKeyedSubscript:@"keychainItemsAddedAfterKeychainRecovery"];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"keychainItemsAddedAfterKeychainRecovery"];
  }

  v17 = [(LKSwitchOperation *)self switchTypeString];
  [v4 setObject:v17 forKeyedSubscript:@"switchType"];

  v18 = [v4 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end