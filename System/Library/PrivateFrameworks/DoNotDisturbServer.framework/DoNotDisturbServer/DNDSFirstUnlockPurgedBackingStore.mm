@interface DNDSFirstUnlockPurgedBackingStore
- (DNDSCachedBackingStoreDelegate)delegate;
- (DNDSFirstUnlockPurgedBackingStore)initWithUnderlyingBackingStore:(id)store keybag:(id)keybag;
- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
@end

@implementation DNDSFirstUnlockPurgedBackingStore

- (DNDSFirstUnlockPurgedBackingStore)initWithUnderlyingBackingStore:(id)store keybag:(id)keybag
{
  storeCopy = store;
  keybagCopy = keybag;
  v12.receiver = self;
  v12.super_class = DNDSFirstUnlockPurgedBackingStore;
  v9 = [(DNDSFirstUnlockPurgedBackingStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_underlyingBackingStore, store);
    objc_storeStrong(&v10->_keybag, keybag);
    [(DNDSKeybagStateProviding *)v10->_keybag addPriorityObserver:v10];
    [storeCopy setDelegate:v10];
  }

  return v10;
}

- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  representationCopy = representation;
  storeCopy = store;
  delegate = [(DNDSFirstUnlockPurgedBackingStore *)self delegate];
  v13 = [delegate backingStore:storeCopy migrateDictionaryRepresentation:representationCopy fromVersionNumber:number toVersionNumber:versionNumber];

  return v13;
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
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