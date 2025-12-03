@interface HKMedicationsDemoSearchAssetInterface
- (HKMedicationsDemoSearchAssetInterface)initWithAssetPath:(id)path;
- (id)expandedGenericMedicationSearchResult:(id)result error:(id *)error;
- (id)genericMedicationsFromTokens:(id)tokens error:(id *)error;
- (id)medicationFromNDCCode:(id)code error:(id *)error;
- (int)openAsset;
- (void)close;
@end

@implementation HKMedicationsDemoSearchAssetInterface

- (HKMedicationsDemoSearchAssetInterface)initWithAssetPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HKMedicationsDemoSearchAssetInterface;
  v5 = [(HKMedicationsDemoSearchAssetInterface *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKMedicationsDemoSearchAssetInterface *)v5 setAssetPath:pathCopy];
    v7 = dispatch_queue_create("HKMedicationsDemoSearchAssetInterface", 0);
    [(HKMedicationsDemoSearchAssetInterface *)v6 setQueue:v7];

    v6->_interruptionLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (int)openAsset
{
  p_db = &self->_db;
  if (self->_db)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_interruptionLock);
  v5 = sqlite3_open([(NSString *)self->_assetPath fileSystemRepresentation], p_db);
  os_unfair_lock_unlock(&self->_interruptionLock);
  return v5;
}

- (void)close
{
  os_unfair_lock_lock(&self->_interruptionLock);
  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
    self->_db = 0;
  }

  os_unfair_lock_unlock(&self->_interruptionLock);
}

- (id)medicationFromNDCCode:(id)code error:(id *)error
{
  codeCopy = code;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  queue = [(HKMedicationsDemoSearchAssetInterface *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HKMedicationsDemoSearchAssetInterface_medicationFromNDCCode_error___block_invoke;
  block[3] = &unk_2796D27F0;
  v17 = v24;
  v18 = &v20;
  block[4] = self;
  v8 = codeCopy;
  v16 = v8;
  v19 = &v26;
  dispatch_sync(queue, block);

  if (v21[3])
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v10 initWithUTF8String:v21[3]];
    [v9 hk_assignError:error code:100 description:v11];

LABEL_3:
    v12 = 0;
    goto LABEL_6;
  }

  v13 = v27[5];
  if (!v13)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:11 description:@"No medication matching NDC was found"];
    goto LABEL_3;
  }

  v12 = v13;
LABEL_6:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

const char *__69__HKMedicationsDemoSearchAssetInterface_medicationFromNDCCode_error___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_prepare_v2(*(*(a1 + 32) + 8), [@""SELECT pr.product_id pr.generic_name], -1, &ppStmt, 0;
  if (*(*(*(a1 + 48) + 8) + 24) || sqlite3_bind_text(ppStmt, 1, [*(a1 + 40) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(ppStmt, 2, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    v2 = sqlite3_column_text(ppStmt, 0);
    v3 = sqlite3_column_text(ppStmt, 1);
    v4 = sqlite3_column_text(ppStmt, 2);
    v5 = sqlite3_column_text(ppStmt, 3);
    v6 = sqlite3_column_text(ppStmt, 4);
    v7 = [HKFullMedicationSearchResult alloc];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    v13 = [(HKFullMedicationSearchResult *)v7 initWithProductId:v8 packagingName:v9 packagingNDC:v10 productBrandName:v11 productGenericName:v12 route:0 doseForm:0];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  result = sqlite3_finalize(ppStmt);
  if (result)
  {
LABEL_7:
    result = sqlite3_errmsg(*(*(a1 + 32) + 8));
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

- (id)genericMedicationsFromTokens:(id)tokens error:(id *)error
{
  tokensCopy = tokens;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  queue = [(HKMedicationsDemoSearchAssetInterface *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HKMedicationsDemoSearchAssetInterface_genericMedicationsFromTokens_error___block_invoke;
  block[3] = &unk_2796D2818;
  v8 = tokensCopy;
  v15 = v8;
  selfCopy = self;
  v17 = v24;
  v18 = &v20;
  v19 = &v26;
  dispatch_sync(queue, block);

  if (v21[3])
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v10 initWithUTF8String:v21[3]];
    [v9 hk_assignError:error code:100 description:v11];

    allObjects = 0;
  }

  else
  {
    allObjects = [v27[5] allObjects];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  return allObjects;
}

void __76__HKMedicationsDemoSearchAssetInterface_genericMedicationsFromTokens_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v15 = *v18;
    v4 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        ppStmt = 0;
        *(*(*(a1 + 48) + 8) + 24) = sqlite3_prepare_v2(*(*(a1 + 40) + 8), [@"SELECT DISTINCT gm.generic_medication_id gm.name             FROM token AS tk             LEFT JOIN ingredient:"UTF8String" token AS ing:? tk ON tk.token:? id=ing:? tk.token:? id             LEFT JOIN ingredient:? strength AS ingstr ON ingstr.component:? id=ing:? tk.ingredient:? id             LEFT JOIN ingredient AS ing ON ingstr.ingredient:? id=ing.ingredient:? id             LEFT JOIN generic:? medication:? ingredient AS gmi ON gmi.ingredient:? id=ing.ingredient:? id             LEFT JOIN generic:? medication AS gm ON gm.generic:? medication:? id=gmi.generic:? medication:? id             WHERE tk.token LIKE ? AND gm.generic:? medication:?id IS NOT NULL"], -1, &ppStmt, 0);
        if (*(*(*(a1 + 48) + 8) + 24) || sqlite3_bind_text(ppStmt, 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_15;
        }

        while (sqlite3_step(ppStmt) == 100)
        {
          v7 = sqlite3_column_int(ppStmt, 0);
          v8 = sqlite3_column_text(ppStmt, 1);
          v9 = [HKGenericMedicationSearchResult alloc];
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v7];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
          v12 = [(HKGenericMedicationSearchResult *)v9 initWithGenericMedicationId:v10 genericMedicationName:v11 brandName:0 ingredients:v4];

          [*(*(*(a1 + 64) + 8) + 40) addObject:v12];
        }

        if (sqlite3_finalize(ppStmt))
        {
LABEL_15:
          *(*(*(a1 + 56) + 8) + 24) = sqlite3_errmsg(*(*(a1 + 40) + 8));
          goto LABEL_16;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)expandedGenericMedicationSearchResult:(id)result error:(id *)error
{
  resultCopy = result;
  genericMedicationId = [resultCopy genericMedicationId];
  if (genericMedicationId && (v8 = genericMedicationId, [resultCopy ingredients], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, !v10))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = resultCopy;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    queue = [(HKMedicationsDemoSearchAssetInterface *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__HKMedicationsDemoSearchAssetInterface_expandedGenericMedicationSearchResult_error___block_invoke;
    v17[3] = &unk_2796D2840;
    v17[4] = self;
    v17[5] = v22;
    v17[6] = &v18;
    v17[7] = &v24;
    dispatch_sync(queue, v17);

    if (v19[3])
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = [v14 initWithUTF8String:v19[3]];
      [v13 hk_assignError:error code:100 description:v15];

      v11 = 0;
    }

    else
    {
      v11 = v25[5];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = resultCopy;
  }

  return v11;
}

void __85__HKMedicationsDemoSearchAssetInterface_expandedGenericMedicationSearchResult_error___block_invoke(void *a1)
{
  ppStmt = 0;
  *(*(a1[5] + 8) + 24) = sqlite3_prepare_v2(*(a1[4] + 8), [@"SELECT ing.ingredient_id ing.name         FROM generic:"UTF8String" medication AS gm         LEFT JOIN generic:? medication:? ingredient AS gmi ON gm.generic:? medication:? id=gmi.generic:? medication:? id         LEFT JOIN ingredient AS ing ON gmi.ingredient:? id=ing.ingredient:? id         WHERE gm.generic:? medication:?id=?"], -1, &ppStmt, 0);
  if (*(*(a1[5] + 8) + 24) || (v2 = ppStmt, [*(*(a1[7] + 8) + 40) genericMedicationId], v3 = objc_claimAutoreleasedReturnValue(), LODWORD(v2) = sqlite3_bind_text(v2, 1, objc_msgSend(v3, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL), v3, v2))
  {
    *(*(a1[6] + 8) + 24) = sqlite3_errmsg(*(a1[4] + 8));
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    while (sqlite3_step(ppStmt) == 100)
    {
      v5 = sqlite3_column_int(ppStmt, 0);
      v6 = sqlite3_column_text(ppStmt, 1);
      v7 = [HKIngredientSearchResult alloc];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v5];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      v10 = [(HKIngredientSearchResult *)v7 initWithIngredientId:v8 ingredientName:v9 strengthQuantity:0 strengthUnit:0];

      [v4 addObject:v10];
    }

    v11 = [*(*(a1[7] + 8) + 40) copyByReplacingWithIngredients:v4];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

@end