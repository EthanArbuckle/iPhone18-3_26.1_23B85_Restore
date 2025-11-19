@interface NPKExpressPassesManager
- (NPKExpressPassesManager)init;
- (id)passForUniqueID:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateWithExpressPass:(id)a3 siblingExpressPasses:(id)a4;
@end

@implementation NPKExpressPassesManager

- (NPKExpressPassesManager)init
{
  v6.receiver = self;
  v6.super_class = NPKExpressPassesManager;
  v2 = [(NPKExpressPassesManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_observers addObject:v6];
      v4 = v6;
    }
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v6;
    if (v5)
    {
      [(NSHashTable *)self->_observers removeObject:v6];
      v4 = v6;
    }
  }
}

- (void)updateWithExpressPass:(id)a3 siblingExpressPasses:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  if (v6)
  {
    [v8 addObject:v6];
  }

  v33 = v6;
  if (v7)
  {
    [v9 addObjectsFromArray:v7];
  }

  v10 = [v9 copy];
  currentPasses = self->_currentPasses;
  self->_currentPasses = v10;

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = self->_currentPasses;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        v20 = [v19 paymentPass];
        [v12 safelyAddObject:v20];

        v21 = [v19 secureElementPass];
        [v13 safelyAddObject:v21];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v16);
  }

  v22 = [v12 copy];
  currentPaymentPasses = self->_currentPaymentPasses;
  self->_currentPaymentPasses = v22;

  v24 = [v13 copy];
  currentSecureElementPasses = self->_currentSecureElementPasses;
  self->_currentSecureElementPasses = v24;

  v26 = [(NSHashTable *)self->_observers allObjects];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v34 + 1) + 8 * j) passesDataSourceDidReloadPasses:self];
      }

      v28 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)passForUniqueID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v5 = [(NPKExpressPassesManager *)self passes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__NPKExpressPassesManager_passForUniqueID___block_invoke;
  v9[3] = &unk_279945330;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__NPKExpressPassesManager_passForUniqueID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end