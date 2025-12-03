@interface _CDSpotlightContactResolver
+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string;
+ (id)sharedInstance;
- (_CDSpotlightContactResolver)init;
- (id)_getCachedContactForHandle:(id)handle;
- (void)_purge;
- (void)_setContact:(id)contact forHandle:(id)handle;
- (void)_validateCache;
@end

@implementation _CDSpotlightContactResolver

- (_CDSpotlightContactResolver)init
{
  v16.receiver = self;
  v16.super_class = _CDSpotlightContactResolver;
  v2 = [(_CDSpotlightContactResolver *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = [objc_alloc(MEMORY[0x1E69C5D38]) initWithCountLimit:2000];
    v5 = [v3 initWithGuardedData:v4];
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("cdSpotlightResolverTimerQueue", v7);
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v2 + 2));
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    dispatch_source_set_timer(*(v2 + 3), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v12 = *(v2 + 3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35___CDSpotlightContactResolver_init__block_invoke;
    handler[3] = &unk_1E7367440;
    v15 = v2;
    dispatch_source_set_event_handler(v12, handler);
    dispatch_resume(*(v2 + 3));
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken20 != -1)
  {
    +[_CDSpotlightContactResolver sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

+ (id)resolveContactIfPossibleFromContactIdentifierString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = +[_CDSpotlightContactResolver sharedInstance];
    v5 = [v4 _getCachedContactForHandle:stringCopy];
    if (v5)
    {
      v6 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [_CDSpotlightContactResolver resolveContactIfPossibleFromContactIdentifierString:v6];
      }

      contact = [v5 contact];
    }

    else
    {
      contact = [_CDContactResolver resolveContactIfPossibleFromContactIdentifierString:stringCopy];
      [v4 _setContact:contact forHandle:stringCopy];
    }
  }

  else
  {
    contact = 0;
  }

  return contact;
}

- (void)_validateCache
{
  dispatch_suspend(self->_cacheInvalidationTimer);
  if (!self->_transaction)
  {
    v3 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v3;
  }

  cacheInvalidationTimer = self->_cacheInvalidationTimer;
  v6 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(cacheInvalidationTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v7 = self->_cacheInvalidationTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __45___CDSpotlightContactResolver__validateCache__block_invoke;
  handler[3] = &unk_1E7367440;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_cacheInvalidationTimer);
}

- (void)_setContact:(id)contact forHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  [(_CDSpotlightContactResolver *)self _validateCache];
  cachedContactsForHandle = self->_cachedContactsForHandle;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53___CDSpotlightContactResolver__setContact_forHandle___block_invoke;
  v11[3] = &unk_1E7367790;
  v12 = contactCopy;
  v13 = handleCopy;
  v9 = handleCopy;
  v10 = contactCopy;
  [(_PASLock *)cachedContactsForHandle runWithLockAcquired:v11];
}

- (id)_getCachedContactForHandle:(id)handle
{
  handleCopy = handle;
  [(_CDSpotlightContactResolver *)self _validateCache];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  cachedContactsForHandle = self->_cachedContactsForHandle;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___CDSpotlightContactResolver__getCachedContactForHandle___block_invoke;
  v9[3] = &unk_1E73677B8;
  v11 = &v12;
  v6 = handleCopy;
  v10 = v6;
  [(_PASLock *)cachedContactsForHandle runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_purge
{
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_INFO, "_CDSpotlightContactResolver: Purging cache.", buf, 2u);
  }

  cachedContactsForHandle = self->_cachedContactsForHandle;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___CDSpotlightContactResolver__purge__block_invoke;
  v5[3] = &unk_1E73677E0;
  v5[4] = self;
  [(_PASLock *)cachedContactsForHandle runWithLockAcquired:v5];
}

@end