@interface DIIdentityPhotoIDDescriptor
- (DIIdentityPhotoIDDescriptor)init;
- (NSArray)elements;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elementsToIntentToStore;
- (id)intentToStoreForElement:(id)a3;
- (void)addElements:(id)a3 withIntentToStore:(id)a4;
- (void)setElementsToIntentToStore:(id)a3;
@end

@implementation DIIdentityPhotoIDDescriptor

- (DIIdentityPhotoIDDescriptor)init
{
  v7.receiver = self;
  v7.super_class = DIIdentityPhotoIDDescriptor;
  v2 = [(DIIdentityPhotoIDDescriptor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    elementsToIntentToStore = v3->_elementsToIntentToStore;
    v3->_elementsToIntentToStore = v4;
  }

  return v3;
}

- (NSArray)elements
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_elementsToIntentToStore allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addElements:(id)a3 withIntentToStore:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableDictionary *)self->_elementsToIntentToStore setObject:v7 forKeyedSubscript:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)intentToStoreForElement:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_elementsToIntentToStore objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)elementsToIntentToStore
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_elementsToIntentToStore;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setElementsToIntentToStore:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_elementsToIntentToStore != v6)
  {
    v4 = [(NSMutableDictionary *)v6 copyWithZone:0];
    elementsToIntentToStore = self->_elementsToIntentToStore;
    self->_elementsToIntentToStore = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  os_unfair_lock_lock(&self->_lock);
  [v3 appendFormat:@"elementsToIntentToStore: %@, ", self->_elementsToIntentToStore];
  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  os_unfair_lock_lock(&self->_lock);
  elementsToIntentToStore = self->_elementsToIntentToStore;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__DIIdentityPhotoIDDescriptor_copyWithZone___block_invoke;
  v8[3] = &unk_278320BB8;
  v6 = v4;
  v9 = v6;
  [(NSMutableDictionary *)elementsToIntentToStore enumerateKeysAndObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

void __44__DIIdentityPhotoIDDescriptor_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 copy];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [v5 copy];

  [v4 addElements:v7 withIntentToStore:v8];
  v9 = *MEMORY[0x277D85DE8];
}

@end