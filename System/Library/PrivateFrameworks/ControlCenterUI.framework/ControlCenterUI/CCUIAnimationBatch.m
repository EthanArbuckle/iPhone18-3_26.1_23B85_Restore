@interface CCUIAnimationBatch
- (CCUIAnimationBatch)init;
- (void)addAnimation:(id)a3;
- (void)iterateAnimationsOfType:(Class)a3 withBlock:(id)a4;
- (void)iterateAnimationsWithBlock:(id)a3;
@end

@implementation CCUIAnimationBatch

- (CCUIAnimationBatch)init
{
  v8.receiver = self;
  v8.super_class = CCUIAnimationBatch;
  v2 = [(CCUIAnimationBatch *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    animationsByParameters = v2->_animationsByParameters;
    v2->_animationsByParameters = v5;
  }

  return v2;
}

- (void)addAnimation:(id)a3
{
  v6 = a3;
  v4 = [v6 parameters];
  v5 = [(NSMutableDictionary *)self->_animationsByParameters objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_animationsByParameters setObject:v5 forKey:v4];
  }

  [v5 addObject:v6];
}

- (void)iterateAnimationsWithBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_animationsByParameters;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_animationsByParameters objectForKey:v10, v12];
        v4[2](v4, v10, v11);
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)iterateAnimationsOfType:(Class)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CCUIAnimationBatch_iterateAnimationsOfType_withBlock___block_invoke;
  v8[3] = &unk_278382928;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(CCUIAnimationBatch *)self iterateAnimationsWithBlock:v8];
}

void __56__CCUIAnimationBatch_iterateAnimationsOfType_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end