@interface CFXEffectComposition
- (BOOL)hasEffectOfType:(id)type;
- (BOOL)hasFaceTrackedOverlays;
- (BOOL)requiresFaceTracking;
- (CFXEffectComposition)init;
- (NSArray)effects;
- (NSArray)jtEffects;
- (id)CFX_effectsForJettyType:(int)type;
- (id)jtEffectsForType:(int)type;
- (unint64_t)count;
- (unint64_t)indexOfEffect:(id)effect;
- (void)addEffect:(id)effect completion:(id)completion;
- (void)insertEffectAtIndex:(id)index atIndex:(unint64_t)atIndex;
- (void)removeAllEffects:(id)effects;
- (void)removeAllEffectsOfType:(id)type completion:(id)completion;
- (void)removeAllOverlayEffects:(id)effects;
- (void)removeEffect:(id)effect completion:(id)completion;
@end

@implementation CFXEffectComposition

- (CFXEffectComposition)init
{
  v16.receiver = self;
  v16.super_class = CFXEffectComposition;
  v2 = [(CFXEffectComposition *)&v16 init];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"com.apple.%@", v5];

  uTF8String = [v6 UTF8String];
  v8 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
  [(CFXEffectComposition *)v2 setConcurrentQueue:v8];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  filters = v2->_filters;
  v2->_filters = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  overlays = v2->_overlays;
  v2->_overlays = v11;

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  animojis = v2->_animojis;
  v2->_animojis = v13;

  return v2;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__CFXEffectComposition_count__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(concurrentQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __29__CFXEffectComposition_count__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) filters];
  v2 = [v6 count];
  v3 = [*(a1 + 32) overlays];
  v4 = [v3 count] + v2;
  v5 = [*(a1 + 32) animojis];
  *(*(*(a1 + 40) + 8) + 24) = v4 + [v5 count];
}

- (BOOL)hasEffectOfType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CFXEffectComposition_hasEffectOfType___block_invoke;
  block[3] = &unk_278D7A230;
  v9 = typeCopy;
  v10 = &v11;
  block[4] = self;
  v6 = typeCopy;
  dispatch_sync(concurrentQueue, block);

  LOBYTE(typeCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return typeCopy;
}

void __40__CFXEffectComposition_hasEffectOfType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) CFX_effectsForJettyType:{objc_msgSend(*(a1 + 40), "jtEffectType")}];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count] != 0;
}

- (BOOL)hasFaceTrackedOverlays
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CFXEffectComposition_hasFaceTrackedOverlays__block_invoke;
  v5[3] = &unk_278D7A3E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(concurrentQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __46__CFXEffectComposition_hasFaceTrackedOverlays__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) overlays];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) jtEffect];
        v8 = [v7 trackingProps];
        v9 = [v8 trackingType];

        if ((v9 - 3) >= 0xFFFFFFFFFFFFFFFELL)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)requiresFaceTracking
{
  overlays = [(CFXEffectComposition *)self overlays];
  if ([overlays count])
  {
    v4 = 1;
  }

  else
  {
    animojis = [(CFXEffectComposition *)self animojis];
    v4 = [animojis count] != 0;
  }

  return v4;
}

- (id)CFX_effectsForJettyType:(int)type
{
  switch(type)
  {
    case 7:
      animojis = [(CFXEffectComposition *)self animojis];
      break;
    case 2:
      animojis = [(CFXEffectComposition *)self overlays];
      break;
    case 1:
      animojis = [(CFXEffectComposition *)self filters];
      break;
    default:
      animojis = 0;
      break;
  }

  return animojis;
}

- (NSArray)effects
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__CFXEffectComposition_effects__block_invoke;
  v8[3] = &unk_278D79C88;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(concurrentQueue, v8);

  v6 = v5;
  return v5;
}

void __31__CFXEffectComposition_effects__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) CFX_effectsForJettyType:1];
  [v2 addObjectsFromArray:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) CFX_effectsForJettyType:2];
  [v4 addObjectsFromArray:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) CFX_effectsForJettyType:7];
  [v6 addObjectsFromArray:v7];
}

- (void)addEffect:(id)effect completion:(id)completion
{
  effectCopy = effect;
  completionCopy = completion;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CFXEffectComposition_addEffect_completion___block_invoke;
  block[3] = &unk_278D7A190;
  v12 = effectCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = effectCopy;
  dispatch_barrier_async(concurrentQueue, block);
}

void __45__CFXEffectComposition_addEffect_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) jtEffect];
  v3 = [v2 type];

  v4 = [*(a1 + 40) CFX_effectsForJettyType:v3];
  v5 = v4;
  if (v4)
  {
    if (v3 == 7 || v3 == 1)
    {
      v7 = [v4 firstObject];
      [v5 removeAllObjects];
      if (v7)
      {
        v8 = JFXLog_effects();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 jtEffect];
          v10 = NSStringFromJFXEffectType([v9 type]);
          v11 = [v7 localizedTitle];
          v18 = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = v11;
          _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "Removed effect - type: %{public}@, name: %{public}@", &v18, 0x16u);
        }
      }
    }

    if (([*(a1 + 32) isNone] & 1) == 0)
    {
      [v5 addObject:*(a1 + 32)];
      v12 = JFXLog_effects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromJFXEffectType(v3);
        v14 = [*(a1 + 32) localizedTitle];
        v18 = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
        _os_log_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEFAULT, "Added effect - type: %{public}@, name: %{public}@", &v18, 0x16u);
      }
    }

    v15 = +[CFXAnalyticsManager sharedInstance];
    [v15 trackEffect:*(a1 + 32)];

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = dispatch_get_global_queue(21, 0);
      dispatch_async(v17, v16);
    }
  }
}

- (void)removeEffect:(id)effect completion:(id)completion
{
  effectCopy = effect;
  completionCopy = completion;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CFXEffectComposition_removeEffect_completion___block_invoke;
  block[3] = &unk_278D7A190;
  v12 = effectCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = effectCopy;
  dispatch_barrier_async(concurrentQueue, block);
}

void __48__CFXEffectComposition_removeEffect_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) jtEffect];
  v3 = [v2 type];

  v4 = [*(a1 + 40) CFX_effectsForJettyType:v3];
  v5 = v4;
  if (v4)
  {
    [v4 removeObject:*(a1 + 32)];
    v6 = JFXLog_effects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromJFXEffectType(v3);
      v8 = [*(a1 + 32) localizedTitle];
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "Removed effect - type: %{public}@, name: %{public}@", &v11, 0x16u);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = dispatch_get_global_queue(21, 0);
      dispatch_async(v10, v9);
    }
  }
}

- (void)removeAllEffects:(id)effects
{
  effectsCopy = effects;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CFXEffectComposition_removeAllEffects___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = effectsCopy;
  v6 = effectsCopy;
  dispatch_barrier_async(concurrentQueue, v7);
}

void __41__CFXEffectComposition_removeAllEffects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) CFX_effectsForJettyType:1];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) CFX_effectsForJettyType:2];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) CFX_effectsForJettyType:7];
  [v4 removeAllObjects];

  v5 = JFXLog_effects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Removed all effects", v8, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(21, 0);
    dispatch_async(v7, v6);
  }
}

- (void)removeAllEffectsOfType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  jtEffectType = [typeCopy jtEffectType];
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CFXEffectComposition_removeAllEffectsOfType_completion___block_invoke;
  v12[3] = &unk_278D7A408;
  v15 = jtEffectType;
  v12[4] = self;
  v13 = typeCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = typeCopy;
  dispatch_barrier_async(concurrentQueue, v12);
}

void __58__CFXEffectComposition_removeAllEffectsOfType_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) CFX_effectsForJettyType:*(a1 + 56)];
  [v2 removeAllObjects];

  v3 = JFXLog_effects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromJFXEffectType([*(a1 + 40) jtEffectType]);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Removed effects - type: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = dispatch_get_global_queue(21, 0);
    dispatch_async(v6, v5);
  }
}

- (void)removeAllOverlayEffects:(id)effects
{
  effectsCopy = effects;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CFXEffectComposition_removeAllOverlayEffects___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = effectsCopy;
  v6 = effectsCopy;
  dispatch_barrier_async(concurrentQueue, v7);
}

void __48__CFXEffectComposition_removeAllOverlayEffects___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) CFX_effectsForJettyType:2];
  [v2 removeAllObjects];

  v3 = JFXLog_effects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromJFXEffectType(2);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Removed effects - type: %{public}@", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = dispatch_get_global_queue(21, 0);
    dispatch_async(v6, v5);
  }
}

- (unint64_t)indexOfEffect:(id)effect
{
  effectCopy = effect;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CFXEffectComposition_indexOfEffect___block_invoke;
  block[3] = &unk_278D7A430;
  v10 = effectCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = effectCopy;
  dispatch_sync(concurrentQueue, block);

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v7;
}

void __38__CFXEffectComposition_indexOfEffect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jtEffect];
  v3 = [v2 type];

  v4 = [*(a1 + 40) CFX_effectsForJettyType:v3];
  if (v4)
  {
    v5 = v4;
    *(*(*(a1 + 48) + 8) + 24) = [v4 indexOfObject:*(a1 + 32)];
    v4 = v5;
  }
}

- (void)insertEffectAtIndex:(id)index atIndex:(unint64_t)atIndex
{
  indexCopy = index;
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CFXEffectComposition_insertEffectAtIndex_atIndex___block_invoke;
  block[3] = &unk_278D7A458;
  v10 = indexCopy;
  selfCopy = self;
  atIndexCopy = atIndex;
  v8 = indexCopy;
  dispatch_barrier_async(concurrentQueue, block);
}

void __52__CFXEffectComposition_insertEffectAtIndex_atIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jtEffect];
  v3 = [v2 type];

  v4 = [*(a1 + 40) CFX_effectsForJettyType:v3];
  if (v4)
  {
    v5 = v4;
    [v4 insertObject:*(a1 + 32) atIndex:*(a1 + 48)];
    v4 = v5;
  }
}

- (NSArray)jtEffects
{
  array = [MEMORY[0x277CBEB18] array];
  effects = [(CFXEffectComposition *)self effects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__CFXEffectComposition_jtEffects__block_invoke;
  v7[3] = &unk_278D7A480;
  v5 = array;
  v8 = v5;
  [effects enumerateObjectsUsingBlock:v7];

  return v5;
}

void __33__CFXEffectComposition_jtEffects__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jtEffect];
  [v2 addObject:v3];
}

- (id)jtEffectsForType:(int)type
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  concurrentQueue = [(CFXEffectComposition *)self concurrentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CFXEffectComposition_jtEffectsForType___block_invoke;
  block[3] = &unk_278D7A4A8;
  v14 = v5;
  selfCopy = self;
  typeCopy = type;
  v7 = v5;
  dispatch_sync(concurrentQueue, block);

  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CFXEffectComposition_jtEffectsForType___block_invoke_2;
  v11[3] = &unk_278D7A480;
  v9 = array;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  return v9;
}

void __41__CFXEffectComposition_jtEffectsForType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) CFX_effectsForJettyType:*(a1 + 48)];
  [v1 addObjectsFromArray:v2];
}

void __41__CFXEffectComposition_jtEffectsForType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jtEffect];
  [v2 addObject:v3];
}

@end