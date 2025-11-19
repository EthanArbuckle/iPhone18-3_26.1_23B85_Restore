@interface DNDSFirstUnlockPurgedBackingStore
- (DNDSCachedBackingStoreDelegate)delegate;
- (DNDSFirstUnlockPurgedBackingStore)initWithUnderlyingBackingStore:(id)a3 keybag:(id)a4;
- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6;
- (void)keybagDidUnlockForTheFirstTime:(id)a3;
@end

@implementation DNDSFirstUnlockPurgedBackingStore

- (DNDSFirstUnlockPurgedBackingStore)initWithUnderlyingBackingStore:(id)a3 keybag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDSFirstUnlockPurgedBackingStore;
  v9 = [(DNDSFirstUnlockPurgedBackingStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_underlyingBackingStore, a3);
    objc_storeStrong(&v10->_keybag, a4);
    [(DNDSKeybagStateProviding *)v10->_keybag addPriorityObserver:v10];
    [v7 setDelegate:v10];
  }

  return v10;
}

- (id)backingStore:(id)a3 migrateDictionaryRepresentation:(id)a4 fromVersionNumber:(unint64_t)a5 toVersionNumber:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(DNDSFirstUnlockPurgedBackingStore *)self delegate];
  v13 = [v12 backingStore:v11 migrateDictionaryRepresentation:v10 fromVersionNumber:a5 toVersionNumber:a6];

  return v13;
}

- (void)keybagDidUnlockForTheFirstTime:(id)a3
{
  [(DNDSCachedBackingStore *)self->_underlyingBackingStore purgeCache];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cachedBackingStoreDidPurgeCache:self];
}

- (DNDSCachedBackingStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end