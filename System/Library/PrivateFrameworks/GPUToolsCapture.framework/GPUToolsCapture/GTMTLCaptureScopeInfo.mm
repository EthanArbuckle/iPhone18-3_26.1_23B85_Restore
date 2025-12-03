@interface GTMTLCaptureScopeInfo
+ (id)allCaptureScopes;
+ (id)getInfoWithAddress:(unint64_t)address;
+ (id)getInfoWithStreamRef:(unint64_t)ref;
+ (void)addScope:(id)scope;
+ (void)initialize;
+ (void)removeScope:(id)scope;
+ (void)sendAll:(os_unfair_lock_s *)all;
+ (void)updateAll;
@end

@implementation GTMTLCaptureScopeInfo

+ (id)getInfoWithAddress:(unint64_t)address
{
  os_unfair_lock_lock(&lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _scopes;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [_scopes objectForKey:{*(*(&v13 + 1) + 8 * v8), v13}];
      v10 = v9;
      if (v9 == address)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = newDYMTLCaptureScopeInfo(v10);
  }

  else
  {
LABEL_9:

    v10 = 0;
LABEL_12:
    v11 = 0;
  }

  os_unfair_lock_unlock(&lock);

  return v11;
}

+ (id)getInfoWithStreamRef:(unint64_t)ref
{
  os_unfair_lock_lock(&lock);
  v4 = _scopes;
  v5 = [NSNumber numberWithUnsignedLongLong:ref];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = newDYMTLCaptureScopeInfo(v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&lock);

  return v7;
}

+ (void)updateAll
{
  os_unfair_lock_lock(&lock);
  [GTMTLCaptureScopeInfo sendAll:&lock];

  os_unfair_lock_assert_not_owner(&lock);
}

+ (void)removeScope:(id)scope
{
  scopeCopy = scope;
  os_unfair_lock_lock(&lock);
  v4 = _scopes;
  streamReference = [scopeCopy streamReference];

  v6 = [NSNumber numberWithUnsignedLongLong:streamReference];
  [v4 removeObjectForKey:v6];

  [GTMTLCaptureScopeInfo sendAll:&lock];

  os_unfair_lock_assert_not_owner(&lock);
}

+ (void)addScope:(id)scope
{
  scopeCopy = scope;
  os_unfair_lock_lock(&lock);
  v4 = _scopes;
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [scopeCopy streamReference]);
  [v4 setObject:scopeCopy forKey:v5];

  [GTMTLCaptureScopeInfo sendAll:&lock];

  os_unfair_lock_assert_not_owner(&lock);
}

+ (void)sendAll:(os_unfair_lock_s *)all
{
  os_unfair_lock_assert_owner(all);
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _scopes;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [_scopes objectForKey:{*(*(&v12 + 1) + 8 * v9), v12}];
        v11 = newDYMTLCaptureScopeInfo(v10);
        [v4 addObject:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(all);
  GTMTLGuestAppClientSendMTLCaptureScopeInfo(g_guestAppClientMTL, v4);
}

+ (id)allCaptureScopes
{
  os_unfair_lock_lock(&lock);
  v2 = [NSMutableArray alloc];
  v3 = [v2 initWithCapacity:{objc_msgSend(_scopes, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _scopes;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [_scopes objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
        v10 = newDYMTLCaptureScopeInfo(v9);
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&lock);
  v11 = [v3 copy];

  return v11;
}

+ (void)initialize
{
  [NSKeyedArchiver setClassName:@"DYMTLCaptureScopeInfo" forClass:objc_opt_class()];
  v2 = +[NSMapTable strongToWeakObjectsMapTable];
  v3 = _scopes;
  _scopes = v2;

  _objc_release_x1(v2, v3);
}

@end