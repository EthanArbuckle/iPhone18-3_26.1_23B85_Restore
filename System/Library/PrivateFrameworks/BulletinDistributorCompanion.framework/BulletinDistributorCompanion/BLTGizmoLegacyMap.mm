@interface BLTGizmoLegacyMap
- (BLTGizmoLegacyMap)init;
- (id)categoryIDForBulletinKey:(id)key;
- (id)gizmoPublisherBulletinIDForPhoneKey:(id)key;
- (id)gizmoSectionInfoForPhoneKey:(id)key;
- (id)phonePublisherBulletinIDForGizmoKey:(id)key;
- (id)phoneSectionIDForGizmoKey:(id)key;
- (id)sectionSubtypeForBulletinKey:(id)key;
- (void)_addMapKey:(id)key value:(id)value bulletinKey:(id)bulletinKey version:(unint64_t)version versionDictionary:(id)dictionary;
- (void)mapNotification:(id)notification sectionID:(id)d;
- (void)unmapNotification:(id)notification sectionID:(id)d;
@end

@implementation BLTGizmoLegacyMap

- (BLTGizmoLegacyMap)init
{
  v6.receiver = self;
  v6.super_class = BLTGizmoLegacyMap;
  v2 = [(BLTGizmoLegacyMap *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("BLTGizmoLegacyMap", MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)_addMapKey:(id)key value:(id)value bulletinKey:(id)bulletinKey version:(unint64_t)version versionDictionary:(id)dictionary
{
  keyCopy = key;
  valueCopy = value;
  bulletinKeyCopy = bulletinKey;
  dictionaryCopy = dictionary;
  dispatch_assert_queue_V2(self->_queue);
  v15 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  v16 = v15;
  if ((!v15 || [v15 intValue] > version) && (objc_msgSend(MEMORY[0x277D2BCC8], "activePairedDeviceSupportIsGreaterEqualVersion:", version) & 1) == 0)
  {
    phoneBulletinKeyMap = self->_phoneBulletinKeyMap;
    if (!phoneBulletinKeyMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v19 = self->_phoneBulletinKeyMap;
      self->_phoneBulletinKeyMap = dictionary;

      phoneBulletinKeyMap = self->_phoneBulletinKeyMap;
    }

    dictionary2 = [(NSMutableDictionary *)phoneBulletinKeyMap objectForKeyedSubscript:bulletinKeyCopy];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_phoneBulletinKeyMap setObject:dictionary2 forKeyedSubscript:bulletinKeyCopy];
    }

    [dictionary2 setObject:valueCopy forKeyedSubscript:keyCopy];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    [dictionaryCopy setObject:v21 forKeyedSubscript:keyCopy];
  }
}

- (void)mapNotification:(id)notification sectionID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = notificationCopy;
  v13 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  v10 = notificationCopy;
  dispatch_barrier_async(queue, block);
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = *(a1 + 40);
  v4 = [v2 identifier];
  v5 = [BLTBBBulletinKey bulletinKeyWithSectionID:v3 publisherMatchID:v4];

  v6 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v8 = [v2 content];
    v9 = [v8 userInfo];
    v7 = [v9 objectForKeyedSubscript:@"BLTWatchLegacyMap"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_25;
      }

      v10 = blt_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_cold_1(v7, v10);
      }

LABEL_24:

      goto LABEL_25;
    }

    v10 = v7;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5;
    v34[3] = &unk_278D324F8;
    v34[4] = *(a1 + 48);
    v12 = v5;
    v35 = v12;
    v33 = v11;
    v36 = v33;
    [v10 enumerateKeysAndObjectsUsingBlock:v34];
    v13 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:?];

    v32 = v12;
    v15 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v12];
    v16 = [v15 objectForKeyedSubscript:@"sectionInfo"];
    v17 = [v16 objectForKeyedSubscript:?];

    if (!(v14 | v17))
    {
LABEL_20:

      goto LABEL_24;
    }

    if (!*(*(a1 + 48) + 8))
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
      v19 = *(a1 + 48);
      v20 = *(v19 + 8);
      *(v19 + 8) = v18;
    }

    v21 = v17;
    if (!v17)
    {
      v21 = [v32 sectionID];
    }

    v22 = v10;
    if (v14)
    {
      v23 = [BLTBBBulletinKey bulletinKeyWithSectionID:v21 publisherMatchID:?];
      if (v17)
      {
LABEL_13:
        v24 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v23];

        if (!v24)
        {
          v25 = [MEMORY[0x277CBEB38] dictionary];
          [*(*(a1 + 48) + 8) setObject:v25 forKeyedSubscript:v23];
        }

        if (v14)
        {
          v26 = [v32 publisherMatchID];
          v27 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v23];
          [v27 setObject:v26 forKeyedSubscript:@"publisherBulletinID"];
        }

        if (v17)
        {
          v28 = [v32 sectionID];
          v29 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v23];
          [v29 setObject:v28 forKeyedSubscript:@"sectionID"];
        }

        v10 = v22;
        goto LABEL_20;
      }
    }

    else
    {
      v31 = [v32 publisherMatchID];
      v23 = [BLTBBBulletinKey bulletinKeyWithSectionID:v21 publisherMatchID:v31];

      if (v17)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  v7 = blt_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_INFO, "Bulletin already mapped: %@", buf, 0xCu);
  }

LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([MEMORY[0x277D2BCC8] versionForString:v5], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = blt_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_1();
      }

      goto LABEL_14;
    }

    v9 = v8;
    v7 = [v8 unsignedIntegerValue];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2;
      v12[3] = &unk_278D324D0;
      v11 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v13 = v11;
      v15 = v7;
      v14 = *(a1 + 48);
      [v6 enumerateKeysAndObjectsUsingBlock:v12];

      goto LABEL_15;
    }

    v10 = blt_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_2(v5, v6, v10);
    }

LABEL_14:

    goto LABEL_15;
  }

  [*(a1 + 32) _addMapKey:@"publisherBulletinID" value:v6 bulletinKey:*(a1 + 40) version:v7 versionDictionary:*(a1 + 48)];
LABEL_15:
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v7 = [MEMORY[0x277CBEB68] null];
    if (v7 == v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {

      goto LABEL_7;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_7:
      v8 = v5;
      if (BLTGizmoLegacyMapKeySet_onceToken != -1)
      {
        __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_2();
      }

      if (![BLTGizmoLegacyMapKeySet___BLTGizmoLegacyMapKeySet containsObject:v8])
      {
        v9 = blt_general_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_3();
        }

        goto LABEL_22;
      }

      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 count])
        {
          [v10 objectAtIndexedSubscript:0];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v9 = ;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MEMORY[0x277CBEB68] null];
        if (v9 == v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
        }

        else
        {
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();

          if ((v13 & 1) == 0)
          {
            v14 = blt_general_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_4();
            }

            goto LABEL_22;
          }
        }
      }

      [*(a1 + 32) _addMapKey:v8 value:v9 bulletinKey:*(a1 + 40) version:*(a1 + 56) versionDictionary:*(a1 + 48)];
LABEL_22:

      goto LABEL_26;
    }
  }

  v8 = blt_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_1();
  }

LABEL_26:
}

- (void)unmapNotification:(id)notification sectionID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLTGizmoLegacyMap_unmapNotification_sectionID___block_invoke;
  block[3] = &unk_278D316C8;
  v12 = dCopy;
  v13 = notificationCopy;
  selfCopy = self;
  v9 = notificationCopy;
  v10 = dCopy;
  dispatch_barrier_async(queue, block);
}

void __49__BLTGizmoLegacyMap_unmapNotification_sectionID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) request];
  v4 = [v3 identifier];
  v12 = [BLTBBBulletinKey bulletinKeyWithSectionID:v2 publisherMatchID:v4];

  v5 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v12];
  v6 = [v5 objectForKeyedSubscript:@"publisherBulletinID"];
  v7 = [v5 objectForKeyedSubscript:@"sectionInfo"];
  v8 = [v7 objectForKeyedSubscript:@"sectionID"];

  if (v6 | v8)
  {
    v9 = v8;
    if (v8)
    {
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = [v12 sectionID];
      if (v6)
      {
LABEL_4:
        v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v9 publisherMatchID:v6];
        if (v8)
        {
LABEL_6:
          [*(*(a1 + 48) + 8) removeObjectForKey:v10];

          goto LABEL_7;
        }

LABEL_5:

        goto LABEL_6;
      }
    }

    v11 = [v12 publisherMatchID];
    v10 = [BLTBBBulletinKey bulletinKeyWithSectionID:v9 publisherMatchID:v11];

    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  [*(*(a1 + 48) + 16) removeObjectForKey:v12];
}

- (id)categoryIDForBulletinKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BLTGizmoLegacyMap_categoryIDForBulletinKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__BLTGizmoLegacyMap_categoryIDForBulletinKey___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = [v5 objectForKeyedSubscript:@"categoryID"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionSubtypeForBulletinKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__BLTGizmoLegacyMap_sectionSubtypeForBulletinKey___block_invoke;
    block[3] = &unk_278D313D8;
    v16 = &v17;
    block[4] = self;
    v15 = keyCopy;
    dispatch_sync(queue, block);
    if (v18[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v18[5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18[5], "integerValue")}];
        }

        else
        {
          v10 = blt_general_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [BLTGizmoLegacyMap sectionSubtypeForBulletinKey:];
          }

          v8 = 0;
        }

        v11 = v18[5];
        v18[5] = v8;
      }
    }

    v9 = v18[5];
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __50__BLTGizmoLegacyMap_sectionSubtypeForBulletinKey___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v2 = [v5 objectForKeyedSubscript:@"sectionSubtype"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)phonePublisherBulletinIDForGizmoKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BLTGizmoLegacyMap_phonePublisherBulletinIDForGizmoKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__BLTGizmoLegacyMap_phonePublisherBulletinIDForGizmoKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"publisherBulletinID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) publisherMatchID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)gizmoPublisherBulletinIDForPhoneKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BLTGizmoLegacyMap_gizmoPublisherBulletinIDForPhoneKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__BLTGizmoLegacyMap_gizmoPublisherBulletinIDForPhoneKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"publisherBulletinID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) publisherMatchID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)phoneSectionIDForGizmoKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__BLTGizmoLegacyMap_phoneSectionIDForGizmoKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__BLTGizmoLegacyMap_phoneSectionIDForGizmoKey___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [v4 objectForKeyedSubscript:@"sectionID"];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 40) sectionID];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (id)gizmoSectionInfoForPhoneKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  if (keyCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__BLTGizmoLegacyMap_gizmoSectionInfoForPhoneKey___block_invoke;
    block[3] = &unk_278D313D8;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(queue, block);

    v7 = v14[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __49__BLTGizmoLegacyMap_gizmoSectionInfoForPhoneKey___block_invoke(void *a1)
{
  v2 = [BLTGizmoLegacyMapSectionInfo alloc];
  v7 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = [v7 objectForKeyedSubscript:@"sectionInfo"];
  v4 = [(BLTGizmoLegacyMapSectionInfo *)v2 initWithNotificationMap:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Expecting dictionary type for legacy map, got legacy map type %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Expecting string or number type for version key in legacy map, got key %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_5_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_241FB3000, a3, OS_LOG_TYPE_ERROR, "Unexpected value type in legacy map for version key %@, value type %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "Expecting string type values for key and string, array, number, or dictionary type for value in legacy map dictionary, got key %@ value %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Unknown legacy map key %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__BLTGizmoLegacyMap_mapNotification_sectionID___block_invoke_2_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "Expecting string, number, or dictionary type values for value in legacy map dictionary, got key %@ value %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sectionSubtypeForBulletinKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Expecting number or string type for sectionSubtype in legacy map for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end