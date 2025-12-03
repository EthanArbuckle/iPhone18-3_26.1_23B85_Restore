@interface PKPasscodeLockManager
+ (id)sharedManager;
- (BOOL)isPasscodeSet;
- (PKPasscodeLockManager)init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info;
- (void)removeObserver:(id)observer;
@end

@implementation PKPasscodeLockManager

+ (id)sharedManager
{
  if (_MergedGlobals_253 != -1)
  {
    dispatch_once(&_MergedGlobals_253, &__block_literal_global_170);
  }

  v3 = qword_1ED6D1F78;

  return v3;
}

void __38__PKPasscodeLockManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PKPasscodeLockManager);
  v1 = qword_1ED6D1F78;
  qword_1ED6D1F78 = v0;
}

- (PKPasscodeLockManager)init
{
  v11.receiver = self;
  v11.super_class = PKPasscodeLockManager;
  v2 = [(PKPasscodeLockManager *)&v11 init];
  if (v2)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x1E69ADFB8];

    [(MCProfileConnection *)v2->_profileConnection registerObserver:v2];
    v2->_isPasscodeSet = [(MCProfileConnection *)v2->_profileConnection isPasscodeSet];
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.passkit.passcodelockmanager.replyQueue", v7);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(MCProfileConnection *)self->_profileConnection unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKPasscodeLockManager;
  [(PKPasscodeLockManager *)&v3 dealloc];
}

- (BOOL)isPasscodeSet
{
  os_unfair_lock_lock(&self->_lock);
  isPasscodeSet = self->_isPasscodeSet;
  os_unfair_lock_unlock(&self->_lock);
  return isPasscodeSet;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  isPasscodeSet = [notificationCopy isPasscodeSet];
  os_unfair_lock_lock(&self->_lock);
  self->_isPasscodeSet = isPasscodeSet;
  if ([(NSHashTable *)self->_observers count])
  {
    v9 = objc_autoreleasePoolPush();
    allObjects = [(NSHashTable *)self->_observers allObjects];
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKPasscodeLockManager_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke;
    block[3] = &unk_1E79C9618;
    v14 = allObjects;
    selfCopy = self;
    v16 = isPasscodeSet;
    v12 = allObjects;
    dispatch_async(replyQueue, block);

    objc_autoreleasePoolPop(v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __89__PKPasscodeLockManager_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__PKPasscodeLockManager_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke_2;
  v3[3] = &unk_1E79DDBD8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

@end