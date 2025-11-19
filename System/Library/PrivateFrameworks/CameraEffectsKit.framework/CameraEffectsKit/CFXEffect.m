@interface CFXEffect
+ (CFXEffect)effectWithIdentifier:(id)a3 forEffectType:(id)a4;
+ (CFXEffect)effectWithJTEffect:(id)a3;
+ (id)effectIdentifiersForEffectType:(id)a3;
+ (void)initEffectRegistry;
+ (void)preWarmShaderCache;
+ (void)setupFactoryDelegate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNone;
- (CFXEffect)initWithJTEffect:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CFXEffect

- (CFXEffect)initWithJTEffect:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v17.receiver = self;
    v17.super_class = CFXEffect;
    v6 = [(CFXEffect *)&v17 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_jtEffect, a3);
      v8 = [v5 displayName];
      localizedTitle = v7->_localizedTitle;
      v7->_localizedTitle = v8;

      v10 = [v5 effectID];
      identifier = v7->_identifier;
      v7->_identifier = v10;

      if ([v5 type] == 1)
      {
        v12 = [v5 contentDataSource];

        if (v12)
        {
          v13 = v5;
          v14 = [v13 contentProperties];
          [v13 addEffectParameters:v14];
        }
      }
    }

    self = v7;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)initEffectRegistry
{
  if (initEffectRegistry_onceToken != -1)
  {
    +[CFXEffect initEffectRegistry];
  }
}

void __31__CFXEffect_initEffectRegistry__block_invoke()
{
  v0 = MEMORY[0x277D415F8];
  v1 = +[CFXEffectHostAppDelegate sharedInstance];
  [v0 initEffectRegistryWithHostDelegate:v1];
}

+ (void)setupFactoryDelegate
{
  v2 = +[CFXEffectFactoryDelegate sharedInstance];
  [JFXEffectFactory setDelegate:v2];
}

+ (void)preWarmShaderCache
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CFXEffect_preWarmShaderCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __31__CFXEffect_preWarmShaderCache__block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v32 = *MEMORY[0x277CC4DE8];
  v33[0] = MEMORY[0x277CBEC10];
  pixelBufferOut = 0;
  CVPixelBufferCreate(0, 1uLL, 1uLL, 0x42475241u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1], &pixelBufferOut);
  v19 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:pixelBufferOut];
  CVPixelBufferRelease(pixelBufferOut);
  [CFXEffectType effectTypeWithIdentifier:@"Filter"];
  v18 = v16 = a1;
  v2 = [*(a1 + 32) effectIdentifiersForEffectType:?];
  v17 = objc_alloc_init(JFXEffectsPreviewGenerator);
  v3 = dispatch_semaphore_create(1);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
        v9 = [*(v16 + 32) effectWithIdentifier:v8 forEffectType:v18];
        v10 = [v9 jtEffect];
        [v10 setRenderSize:{1.0, 1.0}];
        v11 = [v10 renderEffect];
        v22 = kDefaultEffectPreviewAnimationRange;
        v23 = *algn_242B5CE28;
        v24 = xmmword_242B5CE38;
        [v11 setEffectRange:&v22];

        v12 = [JFXEffectsPreviewGenerationRequest alloc];
        v30 = v10;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        v22 = kDefaultEffectPreviewRenderTime;
        *&v23 = 0;
        v14 = [(JFXEffectsPreviewGenerationRequest *)v12 initWithInput:v19 effectStack:v13 outputSize:&v22 renderTime:1.0, 1.0];

        [(JFXEffectsPreviewGenerationRequest *)v14 setChildCode:60];
        [(JFXEffectsPreviewGenerationRequest *)v14 setParentCode:60];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __31__CFXEffect_preWarmShaderCache__block_invoke_2;
        v20[3] = &unk_278D7B490;
        v21 = v3;
        [(JFXEffectsPreviewGenerator *)v17 generatePreviewRequest:v14 completionHandler:v20];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }
}

intptr_t __31__CFXEffect_preWarmShaderCache__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D41600] cleanupEffectsCache];
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

+ (CFXEffect)effectWithIdentifier:(id)a3 forEffectType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[JFXEffectFactory sharedInstance];
  v8 = [v5 jtEffectType];

  v9 = [v7 createEffectForType:v8 fromID:v6 withProperties:0];

  if (v9)
  {
    v10 = [[CFXEffect alloc] initWithJTEffect:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)effectIdentifiersForEffectType:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"Text"];

  v6 = [v3 identifier];
  v7 = [v6 isEqualToString:@"Shapes"];

  v8 = [v3 identifier];
  LOBYTE(v6) = [v8 isEqualToString:@"EmojiStickers"];

  v9 = [v3 identifier];
  v10 = [v9 isEqualToString:@"Filter"];

  LOBYTE(v9) = v5 | v7 | v6;
  v11 = dispatch_semaphore_create(0);
  if (v9)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__12;
    v50 = __Block_byref_object_dispose__12;
    v51 = 0;
    v12 = +[JFXEffectFactory sharedInstance];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__CFXEffect_effectIdentifiersForEffectType___block_invoke;
    v43[3] = &unk_278D7A928;
    v45 = &v46;
    v13 = v11;
    v44 = v13;
    [v12 effectCategoriesForType:2 completion:v43];

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v14 = kEditableOverlaysCategoryID;
    v15 = kShapeOverlaysCategoryID;
    if (!v7)
    {
      v15 = kEmojiStickersCategoryID;
    }

    if (!v5)
    {
      v14 = v15;
    }

    v16 = *v14;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = v47[5];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v18)
    {
      v19 = *v40;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v39 + 1) + 8 * v20);
        v22 = [v21 categoryID];
        v23 = [v22 isEqualToString:v16];

        if (v23)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v18)
          {
            goto LABEL_8;
          }

          goto LABEL_20;
        }
      }

      v28 = v21;

      if (v28)
      {
        v18 = [v28 effectIDs];
        v17 = v28;
        goto LABEL_20;
      }

      v18 = 0;
    }

    else
    {
LABEL_20:
    }

    _Block_object_dispose(&v46, 8);
  }

  else if (v10)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__12;
    v50 = __Block_byref_object_dispose__12;
    v51 = 0;
    v24 = +[JFXEffectFactory sharedInstance];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __44__CFXEffect_effectIdentifiersForEffectType___block_invoke_2;
    v36[3] = &unk_278D7A928;
    v38 = &v46;
    v25 = v11;
    v37 = v25;
    [v24 effectCategoriesForType:1 completion:v36];

    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    [v47[5] count];
    v26 = v47[5];
    if (v26)
    {
      v27 = [v26 objectAtIndexedSubscript:0];
      v18 = [v27 effectIDs];
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__12;
    v50 = __Block_byref_object_dispose__12;
    v51 = 0;
    v29 = +[JFXEffectFactory sharedInstance];
    v30 = [v3 jtEffectType];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__CFXEffect_effectIdentifiersForEffectType___block_invoke_3;
    v33[3] = &unk_278D7A928;
    v35 = &v46;
    v31 = v11;
    v34 = v31;
    [v29 effectIDsForType:v30 completion:v33];

    dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v47[5];

    _Block_object_dispose(&v46, 8);
  }

  return v18;
}

void __44__CFXEffect_effectIdentifiersForEffectType___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__CFXEffect_effectIdentifiersForEffectType___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__CFXEffect_effectIdentifiersForEffectType___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (CFXEffect)effectWithJTEffect:(id)a3
{
  v3 = a3;
  v4 = [[CFXEffect alloc] initWithJTEffect:v3];

  return v4;
}

- (BOOL)isNone
{
  v2 = [(CFXEffect *)self jtEffect];
  v3 = [v2 isNone];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JFXEffect *)self->_jtEffect copy];
  v4 = [[CFXEffect alloc] initWithJTEffect:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CFXEffect *)self jtEffect];
      v7 = [(CFXEffect *)v5 jtEffect];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CFXEffect *)self jtEffect];
  v3 = [v2 hash];

  return v3;
}

@end