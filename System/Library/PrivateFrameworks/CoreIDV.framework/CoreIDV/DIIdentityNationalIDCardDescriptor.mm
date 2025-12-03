@interface DIIdentityNationalIDCardDescriptor
- (DIIdentityNationalIDCardDescriptor)init;
- (NSArray)elements;
- (NSString)description;
- (NSString)regionCode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementsToIntentToStore;
- (id)intentToStoreForElement:(id)element;
- (void)addElements:(id)elements withIntentToStore:(id)store;
- (void)setElementsToIntentToStore:(id)store;
- (void)setRegionCode:(id)code;
@end

@implementation DIIdentityNationalIDCardDescriptor

- (DIIdentityNationalIDCardDescriptor)init
{
  v7.receiver = self;
  v7.super_class = DIIdentityNationalIDCardDescriptor;
  v2 = [(DIIdentityNationalIDCardDescriptor *)&v7 init];
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
  allKeys = [(NSMutableDictionary *)self->_elementsToIntentToStore allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)addElements:(id)elements withIntentToStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = elementsCopy;
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

        [(NSMutableDictionary *)self->_elementsToIntentToStore setObject:storeCopy forKeyedSubscript:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)intentToStoreForElement:(id)element
{
  elementCopy = element;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_elementsToIntentToStore objectForKeyedSubscript:elementCopy];

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

- (NSString)regionCode
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_regionCode;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRegionCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_lock);
  uppercaseString = [codeCopy uppercaseString];

  regionCode = self->_regionCode;
  self->_regionCode = uppercaseString;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setElementsToIntentToStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&self->_lock);
  if (self->_elementsToIntentToStore != storeCopy)
  {
    v4 = [(NSMutableDictionary *)storeCopy copyWithZone:0];
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
  [v3 appendFormat:@"regionCode: %@, ", self->_regionCode];
  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSString *)self->_regionCode copy];
  [v4 setRegionCode:v5];

  elementsToIntentToStore = self->_elementsToIntentToStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__DIIdentityNationalIDCardDescriptor_copyWithZone___block_invoke;
  v9[3] = &unk_278320BB8;
  v7 = v4;
  v10 = v7;
  [(NSMutableDictionary *)elementsToIntentToStore enumerateKeysAndObjectsUsingBlock:v9];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

void __51__DIIdentityNationalIDCardDescriptor_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
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