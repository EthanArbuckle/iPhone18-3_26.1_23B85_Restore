@interface MPUApplicationDefaults
- (BOOL)BOOLForKey:(id)key;
- (MPUApplicationDefaults)initWithApplicationIdentifier:(id)identifier;
- (id)_objectForKey:(id)key expectedTypeID:(unint64_t)d;
- (id)arrayForKey:(id)key;
- (id)dateForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)_applyUpdates;
- (void)_defaultsDidChange;
- (void)_setObject:(id)object forKey:(id)key;
- (void)dealloc;
- (void)performBatchUpdates:(id)updates;
- (void)registerDefaults:(id)defaults;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
@end

@implementation MPUApplicationDefaults

- (MPUApplicationDefaults)initWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MPUApplicationDefaults;
  v6 = [(MPUApplicationDefaults *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.MediaPlayerUI.MPUApplicationDefaults.accessQueue", MEMORY[0x277D85CD8]);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v7;

    objc_storeStrong(&v6->_applicationIdentifier, identifier);
    _defaultsDidChangeNotificationName = [(MPUApplicationDefaults *)v6 _defaultsDidChangeNotificationName];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _MPUApplicationDefaultsDidChangeNotification, _defaultsDidChangeNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  _defaultsDidChangeNotificationName = [(MPUApplicationDefaults *)self _defaultsDidChangeNotificationName];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, _defaultsDidChangeNotificationName, 0);

  v5.receiver = self;
  v5.super_class = MPUApplicationDefaults;
  [(MPUApplicationDefaults *)&v5 dealloc];
}

- (void)registerDefaults:(id)defaults
{
  defaultsCopy = defaults;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__MPUApplicationDefaults_registerDefaults___block_invoke;
  v7[3] = &unk_2798A3398;
  v7[4] = self;
  v8 = defaultsCopy;
  v6 = defaultsCopy;
  dispatch_barrier_sync(accessQueue, v7);
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFBooleanGetTypeID()];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MPUApplicationDefaults_BOOLForKey___block_invoke;
    block[3] = &unk_2798A33C0;
    v14 = &v15;
    block[4] = self;
    v9 = keyCopy;
    v13 = v9;
    dispatch_sync(accessQueue, block);
    _defaultsDomain = [(MPUApplicationDefaults *)self _defaultsDomain];
    CFPreferencesSetAppValue(v9, v16[5], _defaultsDomain);
    bOOLValue = [v16[5] BOOLValue];

    _Block_object_dispose(&v15, 8);
  }

  return bOOLValue;
}

uint64_t __37__MPUApplicationDefaults_BOOLForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) objectForKey:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  v4 = MEMORY[0x277CBED28];
  if (!bool)
  {
    v4 = MEMORY[0x277CBED10];
  }

  [(MPUApplicationDefaults *)self _setObject:*v4 forKey:key];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFStringGetTypeID()];

  return v5;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFArrayGetTypeID()];

  return v5;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFDictionaryGetTypeID()];

  return v5;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFNumberGetTypeID()];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__MPUApplicationDefaults_integerForKey___block_invoke;
    block[3] = &unk_2798A33C0;
    v14 = &v15;
    block[4] = self;
    v9 = keyCopy;
    v13 = v9;
    dispatch_sync(accessQueue, block);
    _defaultsDomain = [(MPUApplicationDefaults *)self _defaultsDomain];
    CFPreferencesSetAppValue(v9, v16[5], _defaultsDomain);
    integerValue = [v16[5] integerValue];

    _Block_object_dispose(&v15, 8);
  }

  return integerValue;
}

uint64_t __40__MPUApplicationDefaults_integerForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 24) objectForKey:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFNumberGetTypeID()];

  return v5;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(MPUApplicationDefaults *)self _setObject:v8 forKey:keyCopy];
}

- (id)dateForKey:(id)key
{
  keyCopy = key;
  v5 = [(MPUApplicationDefaults *)self _objectForKey:keyCopy expectedTypeID:CFDateGetTypeID()];

  return v5;
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MPUApplicationDefaults_performBatchUpdates___block_invoke;
  block[3] = &unk_2798A33E8;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
  updatesCopy[2](updatesCopy);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__MPUApplicationDefaults_performBatchUpdates___block_invoke_2;
  v7[3] = &unk_2798A3410;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_barrier_sync(v6, v7);
  if (*(v9 + 24) == 1)
  {
    [(MPUApplicationDefaults *)self _applyUpdates];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)_applyUpdates
{
  _defaultsDomain = [(MPUApplicationDefaults *)self _defaultsDomain];
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__MPUApplicationDefaults__applyUpdates__block_invoke;
  v5[3] = &unk_2798A3438;
  v5[4] = self;
  v5[5] = _defaultsDomain;
  dispatch_async(v4, v5);
}

void __39__MPUApplicationDefaults__applyUpdates__block_invoke(uint64_t a1)
{
  CFPreferencesAppSynchronize(*(a1 + 40));
  name = [*(a1 + 32) _defaultsDidChangeNotificationName];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)_defaultsDidChange
{
  CFPreferencesAppSynchronize([(MPUApplicationDefaults *)self _defaultsDomain]);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MPUApplicationDefaultsDidChangeNotification" object:self];
}

- (id)_objectForKey:(id)key expectedTypeID:(unint64_t)d
{
  keyCopy = key;
  v7 = CFPreferencesCopyAppValue(keyCopy, [(MPUApplicationDefaults *)self _defaultsDomain]);

  if (v7 && CFGetTypeID(v7) != d)
  {
    CFRelease(v7);
    v7 = 0;
  }

  return v7;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, objectCopy, [(MPUApplicationDefaults *)self _defaultsDomain]);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__MPUApplicationDefaults__setObject_forKey___block_invoke;
  v9[3] = &unk_2798A3460;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_barrier_sync(accessQueue, v9);
  if (*(v11 + 24) == 1)
  {
    [(MPUApplicationDefaults *)self _applyUpdates];
  }

  _Block_object_dispose(&v10, 8);
}

@end