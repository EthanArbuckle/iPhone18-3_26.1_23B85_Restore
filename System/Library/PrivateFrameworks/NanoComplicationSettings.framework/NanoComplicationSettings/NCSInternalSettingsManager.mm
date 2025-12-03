@interface NCSInternalSettingsManager
- (BOOL)hasSettings;
- (NCSInternalSettingsManager)init;
- (NSString)selectedComplicationIdentifier;
- (id)complicationDefinitionForAppBundleIdentifier:(id)identifier;
- (id)complicationDefinitionForComplicationIdentifier:(id)identifier;
- (id)complicationDefinitionForWatchKitIdentifier:(id)identifier;
- (id)complicationIdentifierForComplicationDefinitionAtIndex:(unint64_t)index;
- (unint64_t)_numberOfActiveComplications;
- (void)_saveSettings;
- (void)addComplicationDefinition:(id)definition;
- (void)enumerateAllComplicationDefinitionsUsingBlock:(id)block;
- (void)enumerateComplicationDefinitionsUsingBlock:(id)block;
- (void)loadSettings;
- (void)moveComplicationDefinitionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)removeComplicationDefinitionsInArray:(id)array;
- (void)saveSettings;
- (void)setSelectedComplicationIdentifier:(id)identifier;
@end

@implementation NCSInternalSettingsManager

- (NCSInternalSettingsManager)init
{
  v8.receiver = self;
  v8.super_class = NCSInternalSettingsManager;
  v2 = [(NCSInternalSettingsManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2BA60]);
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = dispatch_queue_create("com.apple.nanocomplicationsettings.internalsettingsmanager", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (NSString)selectedComplicationIdentifier
{
  selectedComplicationIdentifier = self->_selectedComplicationIdentifier;
  if (!selectedComplicationIdentifier)
  {
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano-complications"];
    synchronize = [v4 synchronize];
    v6 = [v4 stringForKey:@"SelectedComplicationIdentifier"];
    v7 = self->_selectedComplicationIdentifier;
    self->_selectedComplicationIdentifier = v6;

    selectedComplicationIdentifier = self->_selectedComplicationIdentifier;
  }

  return selectedComplicationIdentifier;
}

- (void)setSelectedComplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_selectedComplicationIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    selectedComplicationIdentifier = self->_selectedComplicationIdentifier;
    self->_selectedComplicationIdentifier = v4;

    v6 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano-complications"];
    [v6 setObject:self->_selectedComplicationIdentifier forKey:@"SelectedComplicationIdentifier"];
    synchronize = [v6 synchronize];
    v8 = [MEMORY[0x277CBEB98] setWithObject:@"SelectedComplicationIdentifier"];
    [(NPSManager *)self->_syncManager synchronizeNanoDomain:@"com.apple.nano-complications" keys:v8];
  }
}

- (BOOL)hasSettings
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NCSInternalSettingsManager_hasSettings__block_invoke;
  v5[3] = &unk_27992E050;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __41__NCSInternalSettingsManager_hasSettings__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)addComplicationDefinition:(id)definition
{
  definitionCopy = definition;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NCSInternalSettingsManager_addComplicationDefinition___block_invoke;
  v7[3] = &unk_27992E078;
  v7[4] = self;
  v8 = definitionCopy;
  v6 = definitionCopy;
  dispatch_async(queue, v7);
}

- (void)removeComplicationDefinitionsInArray:(id)array
{
  arrayCopy = array;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NCSInternalSettingsManager_removeComplicationDefinitionsInArray___block_invoke;
  v7[3] = &unk_27992E078;
  v7[4] = self;
  v8 = arrayCopy;
  v6 = arrayCopy;
  dispatch_async(queue, v7);
}

- (void)enumerateComplicationDefinitionsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__NCSInternalSettingsManager_enumerateComplicationDefinitionsUsingBlock___block_invoke;
  v6[3] = &unk_27992E0A0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(NCSInternalSettingsManager *)self enumerateAllComplicationDefinitionsUsingBlock:v6];
}

void __73__NCSInternalSettingsManager_enumerateComplicationDefinitionsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isInstalled])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateAllComplicationDefinitionsUsingBlock:(id)block
{
  blockCopy = block;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NCSInternalSettingsManager_enumerateAllComplicationDefinitionsUsingBlock___block_invoke;
  block[3] = &unk_27992E050;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(queue, block);
  v6 = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__NCSInternalSettingsManager_enumerateAllComplicationDefinitionsUsingBlock___block_invoke_2;
  v8[3] = &unk_27992E0A0;
  v7 = blockCopy;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v8];

  _Block_object_dispose(&v11, 8);
}

uint64_t __76__NCSInternalSettingsManager_enumerateAllComplicationDefinitionsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)moveComplicationDefinitionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NCSInternalSettingsManager_moveComplicationDefinitionFromIndex_toIndex___block_invoke;
  block[3] = &unk_27992E0C8;
  block[4] = self;
  block[5] = index;
  block[6] = toIndex;
  dispatch_async(queue, block);
}

void __74__NCSInternalSettingsManager_moveComplicationDefinitionFromIndex_toIndex___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 8) removeObjectAtIndex:*(a1 + 40)];
  [*(*(a1 + 32) + 8) insertObject:v2 atIndex:*(a1 + 48)];
  [*(a1 + 32) _saveSettings];
}

- (id)complicationDefinitionForAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__NCSInternalSettingsManager_complicationDefinitionForAppBundleIdentifier___block_invoke;
  v8[3] = &unk_27992E0F0;
  v5 = identifierCopy;
  v9 = v5;
  v10 = &v11;
  [(NCSInternalSettingsManager *)self enumerateAllComplicationDefinitionsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __75__NCSInternalSettingsManager_complicationDefinitionForAppBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 appBundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)complicationDefinitionForComplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__NCSInternalSettingsManager_complicationDefinitionForComplicationIdentifier___block_invoke;
  v8[3] = &unk_27992E0F0;
  v5 = identifierCopy;
  v9 = v5;
  v10 = &v11;
  [(NCSInternalSettingsManager *)self enumerateAllComplicationDefinitionsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __78__NCSInternalSettingsManager_complicationDefinitionForComplicationIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 complicationIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)complicationDefinitionForWatchKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__NCSInternalSettingsManager_complicationDefinitionForWatchKitIdentifier___block_invoke;
  v8[3] = &unk_27992E0F0;
  v5 = identifierCopy;
  v9 = v5;
  v10 = &v11;
  [(NCSInternalSettingsManager *)self enumerateAllComplicationDefinitionsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __74__NCSInternalSettingsManager_complicationDefinitionForWatchKitIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 sockPuppetIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)saveSettings
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NCSInternalSettingsManager_saveSettings__block_invoke;
  block[3] = &unk_27992E118;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_saveSettings
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_complicationDefinitions, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_complicationDefinitions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CBEAC0] dictionaryWithComplication:{*(*(&v14 + 1) + 8 * v8), v14}];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if (![(NSArray *)self->_storedSettings isEqualToArray:v3])
  {
    objc_storeStrong(&self->_storedSettings, v3);
    v10 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano-complications"];
    [v10 setObject:v3 forKey:@"ComplicationDefinitions"];
    synchronize = [v10 synchronize];
    v12 = [MEMORY[0x277CBEB98] setWithObject:@"ComplicationDefinitions"];
    [(NPSManager *)self->_syncManager synchronizeNanoDomain:@"com.apple.nano-complications" keys:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)complicationIdentifierForComplicationDefinitionAtIndex:(unint64_t)index
{
  dispatch_assert_queue_not_V2(self->_queue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NCSInternalSettingsManager_complicationIdentifierForComplicationDefinitionAtIndex___block_invoke;
  block[3] = &unk_27992E140;
  block[4] = self;
  block[5] = &v9;
  block[6] = index;
  dispatch_sync(queue, block);
  complicationIdentifier = [v10[5] complicationIdentifier];
  _Block_object_dispose(&v9, 8);

  return complicationIdentifier;
}

uint64_t __85__NCSInternalSettingsManager_complicationIdentifierForComplicationDefinitionAtIndex___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectAtIndexedSubscript:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)loadSettings
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NCSInternalSettingsManager_loadSettings__block_invoke;
  block[3] = &unk_27992E118;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __42__NCSInternalSettingsManager_loadSettings__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano-complications"];
  v3 = [v2 synchronize];
  v4 = [v2 arrayForKey:@"ComplicationDefinitions"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = [v2 stringForKey:@"SelectedComplicationIdentifier"];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  *(v11 + 8) = v10;

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(*(a1 + 32) + 24);
  v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [[NCSComplication alloc] initWithDictionary:*(*(&v26 + 1) + 8 * i)];
        v19 = [*(a1 + 32) _localizedNameForComplication:v18];
        if (v19)
        {
          [(NCSComplication *)v18 setName:v19];
        }

        v20 = [(NCSComplication *)v18 sockPuppetIdentifier];

        if (!v20)
        {
          goto LABEL_10;
        }

        v21 = [(NCSComplication *)v18 sockPuppetIdentifier];
        v22 = [v13 objectForKeyedSubscript:v21];

        v23 = [(NCSComplication *)v18 sockPuppetIdentifier];
        [v13 setObject:v18 forKeyedSubscript:v23];

        if (!v22)
        {
LABEL_10:
          [*(*(a1 + 32) + 8) addObject:v18];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numberOfActiveComplications
{
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__NCSInternalSettingsManager__numberOfActiveComplications__block_invoke;
  v5[3] = &unk_27992E168;
  v5[4] = &v6;
  [(NCSInternalSettingsManager *)self enumerateComplicationDefinitionsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __58__NCSInternalSettingsManager__numberOfActiveComplications__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isActive];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

@end