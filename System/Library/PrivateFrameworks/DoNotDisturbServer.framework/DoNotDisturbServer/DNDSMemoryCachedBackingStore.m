@interface DNDSMemoryCachedBackingStore
- (DNDSCachedBackingStoreDelegate)delegate;
- (DNDSMemoryCachedBackingStore)initWithUnderlyingBackingStore:(id)a3;
- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6;
- (id)readRecordWithError:(id *)a3;
- (void)purgeCache;
@end

@implementation DNDSMemoryCachedBackingStore

- (DNDSMemoryCachedBackingStore)initWithUnderlyingBackingStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DNDSMemoryCachedBackingStore;
  v6 = [(DNDSMemoryCachedBackingStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingBackingStore, a3);
    [v5 setDelegate:v7];
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)readRecordWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_cache)
  {
    v5 = [(DNDSBackingStore *)self->_underlyingBackingStore readRecordWithError:a3];
    cache = self->_cache;
    self->_cache = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_cache;

  return v7;
}

- (void)purgeCache
{
  os_unfair_lock_lock(&self->_lock);
  cache = self->_cache;
  self->_cache = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(DNDSMemoryCachedBackingStore *)self delegate];
  v13 = [v12 backingStore:v11 migrateDictionaryRepresentation:v10 fromVersionNumber:a5 toVersionNumber:a6];

  return v13;
}

- (DNDSCachedBackingStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end