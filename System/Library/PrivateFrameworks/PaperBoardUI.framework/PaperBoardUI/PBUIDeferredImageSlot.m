@interface PBUIDeferredImageSlot
- (PBUIDeferredImageSlot)initWithLifetimeToken:(id)a3;
- (void)addImageSlotObserver:(id)a3;
- (void)updateWithImage:(id)a3;
@end

@implementation PBUIDeferredImageSlot

- (PBUIDeferredImageSlot)initWithLifetimeToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBUIDeferredImageSlot;
  return [(PBUIImageSlot *)&v4 _initWithImage:0 lifetimeToken:a3];
}

- (void)updateWithImage:(id)a3
{
  [(PBUIImageSlot *)self _setImage:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBUIDeferredImageSlot_updateWithImage___block_invoke;
  block[3] = &unk_278361E18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__PBUIDeferredImageSlot_updateWithImage___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v8 image];
        [v7 deferredImageSlot:v8 didUpdateImage:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)addImageSlotObserver:(id)a3
{
  v4 = a3;
  imageSlotObservers = self->_imageSlotObservers;
  v8 = v4;
  if (!imageSlotObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_imageSlotObservers;
    self->_imageSlotObservers = v6;

    v4 = v8;
    imageSlotObservers = self->_imageSlotObservers;
  }

  [(NSHashTable *)imageSlotObservers addObject:v4];
}

@end