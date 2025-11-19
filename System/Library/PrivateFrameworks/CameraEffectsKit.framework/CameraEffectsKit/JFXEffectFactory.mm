@interface JFXEffectFactory
+ (id)sharedInstance;
- (id)createEffectContentDataSourceForEffectID:(id)a3 ofType:(int)a4;
- (id)createEffectForType:(int)a3 fromID:(id)a4 withProperties:(id)a5;
- (id)effectsForType:(int)a3 fromCategory:(id)a4;
- (id)noneEffectIDForType:(int)a3;
- (void)defaultPickerItemForType:(int)a3 completion:(id)a4;
- (void)effectCategoriesForPickerItem:(id)a3 completion:(id)a4;
- (void)effectCategoriesForType:(int)a3 completion:(id)a4;
- (void)effectIDsForPickerItem:(id)a3 completion:(id)a4;
- (void)effectIDsForType:(int)a3 completion:(id)a4;
- (void)effectsForType:(int)a3 completion:(id)a4;
- (void)effectsForType:(int)a3 pickerItem:(id)a4 completion:(id)a5;
- (void)fetchPickerItems:(id)a3;
- (void)pickerItemForCategory:(id)a3 completion:(id)a4;
@end

@implementation JFXEffectFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[JFXEffectFactory sharedInstance];
  }

  v3 = sharedInstance_sInstance_1;

  return v3;
}

uint64_t __34__JFXEffectFactory_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)effectCategoriesForPickerItem:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [objc_opt_class() delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [objc_opt_class() delegate];
    v10 = [v11 uuid];
    [v9 effectFactory:self effectCategoriesForGroupID:v10 completion:v6];
  }

  else
  {
    v6[2](v6, MEMORY[0x277CBEBF8]);
  }
}

- (void)effectCategoriesForType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [objc_opt_class() delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [objc_opt_class() delegate];
    [v12 effectFactory:self effectCategoriesAvailableForType:v4 completion:v6];
    goto LABEL_14;
  }

  if (effectCategoriesForType_completion__onceToken != -1)
  {
    [JFXEffectFactory effectCategoriesForType:completion:];
  }

  switch(v4)
  {
    case 1:
      v9 = &kJFXEffectPropertiesFiltersKey;
      break;
    case 2:
      v9 = &kJFXEffectPropertiesOverlaysKey;
      break;
    case 4:
      v9 = &kJFXEffectPropertiesTitleCardsKey;
      break;
    default:
      v10 = 0;
      goto LABEL_13;
  }

  v10 = *v9;
LABEL_13:
  v12 = v10;
  v11 = [effectCategoriesForType_completion__sAllEffectCategories objectForKeyedSubscript:v10];
  v6[2](v6, v11);

  v6 = v11;
LABEL_14:
}

void __55__JFXEffectFactory_effectCategoriesForType_completion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = effectCategoriesForType_completion__sAllEffectCategories;
  effectCategoriesForType_completion__sAllEffectCategories = v0;

  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCA8D8] jfxBundle];
  v4 = [v3 pathForResource:kJFXEffectPropertiesResourceFile ofType:kJFXEffectPropertiesPlistKey];
  v5 = [v2 dictionaryWithContentsOfFile:v4];

  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_66];
}

void __55__JFXEffectFactory_effectCategoriesForType_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v25 = v4;
  if ([v4 isEqualToString:kJFXEffectPropertiesOverlaysKey])
  {
    v6 = 0;
    v7 = 2;
LABEL_5:
    v28 = v7;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:kJFXEffectPropertiesTitleCardsKey])
  {
    v6 = 0;
    v7 = 4;
    goto LABEL_5;
  }

  v28 = [v4 isEqualToString:kJFXEffectPropertiesFiltersKey];
  v6 = v28 ^ 1;
LABEL_7:
  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v8 = v28;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v31)
  {
    v30 = *v37;
    v26 = v6;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (v6)
        {
          v11 = 0;
        }

        else
        {
          v11 = objc_opt_new();
        }

        [v11 setEffectType:v8];
        v12 = [v10 objectForKeyedSubscript:kJFXEffectPropertiesIdentifierKey];
        if (v12)
        {
          [v11 setCategoryID:v12];
          v13 = [v12 stringByAppendingString:@"_Category_Display_Name"];
          v14 = [MEMORY[0x277CCA8D8] jfxBundle];
          v15 = [v14 localizedStringForKey:v13 value:&stru_28553D028 table:0];

          [v11 setDisplayName:v15];
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v17 = [v10 objectForKeyedSubscript:kJFXEffectPropertiesEffectsKey];
          v18 = v17;
          if (v17)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v33;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v33 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = [*(*(&v32 + 1) + 8 * j) objectForKeyedSubscript:kJFXEffectPropertiesIdentifierKey];
                  if (v23)
                  {
                    [v16 addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v20);
            }

            [v11 setEffectIDs:v16];
            v6 = v26;
            v8 = v28;
          }

          v24 = [v11 effectIDs];

          if (v24)
          {
            [v27 addObject:v11];
          }
        }
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v31);
  }

  [effectCategoriesForType_completion__sAllEffectCategories setObject:v27 forKeyedSubscript:v25];
}

- (void)effectIDsForType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [objc_opt_class() delegate];
  [v7 effectFactory:self effectIDsAvailableForType:v4 completion:v6];
}

- (void)effectIDsForPickerItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [objc_opt_class() delegate];
    v11 = [v6 uuid];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__JFXEffectFactory_effectIDsForPickerItem_completion___block_invoke;
    v12[3] = &unk_278D7ACD8;
    v13 = v7;
    [v10 effectFactory:self effectCategoriesForGroupID:v11 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEBF8]);
  }
}

void __54__JFXEffectFactory_effectIDsForPickerItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) effectIDs];
        [v4 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__JFXEffectFactory_effectIDsForPickerItem_completion___block_invoke_2;
  v13[3] = &unk_278D7ACB0;
  v11 = *(a1 + 32);
  v14 = v4;
  v15 = v11;
  v12 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

- (void)effectsForType:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__JFXEffectFactory_effectsForType_completion___block_invoke;
  v8[3] = &unk_278D7AD00;
  v10 = v4;
  v9 = v6;
  v7 = v6;
  [(JFXEffectFactory *)self effectIDsForType:v4 completion:v8];
}

void __46__JFXEffectFactory_effectsForType_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = JFXEffectClassForType(*(a1 + 40));
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v4 alloc];
        v13 = [v12 initWithEffectID:{v11, v14}];
        if (v13)
        {
          [v5 addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)effectsForType:(int)a3 pickerItem:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__JFXEffectFactory_effectsForType_pickerItem_completion___block_invoke;
  v10[3] = &unk_278D7AD00;
  v12 = a3;
  v11 = v8;
  v9 = v8;
  [(JFXEffectFactory *)self effectIDsForPickerItem:a4 completion:v10];
}

void __57__JFXEffectFactory_effectsForType_pickerItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = JFXEffectClassForType(*(a1 + 40));
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v4 alloc];
        v13 = [v12 initWithEffectID:{v11, v14}];
        if (v13)
        {
          [v5 addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)effectsForType:(int)a3 fromCategory:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = JFXEffectClassForType(a3);
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v5 effectIDs];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[v6 alloc] initWithEffectID:*(*(&v15 + 1) + 8 * i)];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)fetchPickerItems:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__JFXEffectFactory_fetchPickerItems___block_invoke;
  v7[3] = &unk_278D7ACD8;
  v8 = v4;
  v6 = v4;
  [v5 effectFactory:self fetchPickerItemsWithCompletion:v7];
}

void __37__JFXEffectFactory_fetchPickerItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__JFXEffectFactory_fetchPickerItems___block_invoke_2;
  v6[3] = &unk_278D7ACB0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)defaultPickerItemForType:(int)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__JFXEffectFactory_defaultPickerItemForType_completion___block_invoke;
  v8[3] = &unk_278D7AD00;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(JFXEffectFactory *)self fetchPickerItems:v8];
}

void __56__JFXEffectFactory_defaultPickerItemForType_completion___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__JFXEffectFactory_defaultPickerItemForType_completion___block_invoke_2;
  v7[3] = &__block_descriptor_36_e34_B32__0__JFXPickerListItem_8Q16_B24l;
  v8 = *(a1 + 40);
  v3 = a2;
  v4 = [v3 indexOfObjectPassingTest:v7];
  v5 = *(a1 + 32);
  v6 = [v3 objectAtIndexedSubscript:v4];

  (*(v5 + 16))(v5, v6);
}

- (void)pickerItemForCategory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__JFXEffectFactory_pickerItemForCategory_completion___block_invoke;
  v10[3] = &unk_278D7AD70;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(JFXEffectFactory *)self fetchPickerItems:v10];
}

void __53__JFXEffectFactory_pickerItemForCategory_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 collections];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __53__JFXEffectFactory_pickerItemForCategory_completion___block_invoke_2;
        v14[3] = &unk_278D7AD48;
        v15 = *(a1 + 32);
        v9 = [v8 indexOfObjectPassingTest:v14];

        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __53__JFXEffectFactory_pickerItemForCategory_completion___block_invoke_3;
          block[3] = &unk_278D7ACB0;
          v10 = *(a1 + 40);
          block[4] = v7;
          v13 = v10;
          dispatch_async(MEMORY[0x277D85CD0], block);

          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __53__JFXEffectFactory_pickerItemForCategory_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 categoryID];
  v4 = [*(a1 + 32) categoryID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)createEffectForType:(int)a3 fromID:(id)a4 withProperties:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = JFXEffectClassForType(a3);
  if (v9)
  {
    v10 = [[v9 alloc] initWithEffectID:v7];
    v11 = v10;
    if (v8)
    {
      [v10 addEffectParameters:v8];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)noneEffectIDForType:(int)a3
{
  v4 = 0;
  if (a3 <= 8 && ((1 << a3) & 0x162) != 0)
  {
    v4 = *MEMORY[0x277D41718];
  }

  return v4;
}

- (id)createEffectContentDataSourceForEffectID:(id)a3 ofType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (+[JFXEffect effectIDIsNone:](JFXEffect, "effectIDIsNone:", v6) || ([objc_opt_class() delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) == 0))
  {
    v10 = 0;
  }

  else
  {
    v9 = [objc_opt_class() delegate];
    v10 = [v9 effectFactory:self createEffectContentDataSourceForEffectID:v6 ofType:v4];
  }

  return v10;
}

@end