@interface PKPeerPaymentRecipientCache
+ (id)_instanceName;
+ (id)sharedCache;
- (BOOL)_canReadMap;
- (BOOL)_canWriteMap;
- (BOOL)_writeMapToDisk;
- (BOOL)lowFrequencyDeviceScoreSubmissionRequiredForRecipientAddress:(id)a3;
- (BOOL)purgeCache;
- (PKPeerPaymentRecipientCache)init;
- (id)__init;
- (id)_keyForRecipientAddress:(id)a3;
- (id)recipientForRecipientAddress:(id)a3;
- (void)_handleDiskMapChangedNotification:(id)a3;
- (void)_handlePurgedNotification:(id)a3;
- (void)_locked_setMapNeedsWrite;
- (void)_updateMapsFromDisk;
- (void)cacheRecipient:(id)a3;
- (void)cacheRecipients:(id)a3;
- (void)dealloc;
- (void)noteSubmittedLowFrequencyDeviceScoreForRecipientAddress:(id)a3;
- (void)purgeRecipientWithRecipientAddress:(id)a3;
@end

@implementation PKPeerPaymentRecipientCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PKPeerPaymentRecipientCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_279 != -1)
  {
    dispatch_once(&_MergedGlobals_279, block);
  }

  v2 = qword_1ED6D2250;

  return v2;
}

void __42__PKPeerPaymentRecipientCache_sharedCache__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) __init];
  v2 = qword_1ED6D2250;
  qword_1ED6D2250 = v1;
}

- (PKPeerPaymentRecipientCache)init
{
  v3 = [objc_opt_class() sharedCache];

  return v3;
}

- (id)__init
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentRecipientCache;
  v2 = [(PKPeerPaymentRecipientCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKMapContainer);
    mapContainer = v2->_mapContainer;
    v2->_mapContainer = v3;

    v2->_mapAccessLock._os_unfair_lock_opaque = 0;
    [(PKPeerPaymentRecipientCache *)v2 _updateMapsFromDisk];
    v5 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v5 addObserver:v2 selector:sel__handlePurgedNotification_ name:@"PKDistributedNotificationPeerPaymentRecipientCachePurged" object:0 suspensionBehavior:2];

    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleDiskMapChangedNotification_ name:@"PKDistributedNotificationPeerPaymentRecipientCacheWrittenToDisk" object:0 suspensionBehavior:2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentRecipientCache;
  [(PKPeerPaymentRecipientCache *)&v4 dealloc];
}

- (id)recipientForRecipientAddress:(id)a3
{
  v4 = PKIDSNormalizedAddress(a3);
  if (v4)
  {
    os_unfair_lock_lock(&self->_mapAccessLock);
    v5 = [(PKPeerPaymentRecipientCache *)self _keyForRecipientAddress:v4];
    v6 = [(PKMapContainer *)self->_mapContainer recipientMap];
    v7 = [v6 objectForKey:v5];

    if ([v7 hasExpired])
    {
      v8 = [(PKMapContainer *)self->_mapContainer recipientMap];
      [v8 removeObjectForKey:v5];
      v9 = 0;
    }

    else
    {
      v8 = [v7 item];
      v9 = [v8 copy];
    }

    os_unfair_lock_unlock(&self->_mapAccessLock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)cacheRecipient:(id)a3
{
  v9 = a3;
  v4 = [v9 idsQualifiedNormalizedAddress];
  if (v9 && v4)
  {
    os_unfair_lock_lock(&self->_mapAccessLock);
    v5 = [(PKPeerPaymentRecipientCache *)self _keyForRecipientAddress:v4];
    v6 = [v9 cacheableCopy];
    v7 = [(PKMapContainer *)self->_mapContainer recipientMap];
    v8 = [[PKCacheRecipientItem alloc] initWithItem:v6];
    [v7 setObject:v8 forKey:v5];

    [(PKPeerPaymentRecipientCache *)self _locked_setMapNeedsWrite];
    os_unfair_lock_unlock(&self->_mapAccessLock);
  }
}

- (void)cacheRecipients:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PKPeerPaymentRecipientCache *)self cacheRecipient:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)purgeRecipientWithRecipientAddress:(id)a3
{
  v4 = PKIDSNormalizedAddress(a3);
  if (v4)
  {
    v7 = v4;
    os_unfair_lock_lock(&self->_mapAccessLock);
    v5 = [(PKPeerPaymentRecipientCache *)self _keyForRecipientAddress:v7];
    v6 = [(PKMapContainer *)self->_mapContainer recipientMap];
    [v6 removeObjectForKey:v5];

    [(PKPeerPaymentRecipientCache *)self _locked_setMapNeedsWrite];
    os_unfair_lock_unlock(&self->_mapAccessLock);

    v4 = v7;
  }
}

- (BOOL)purgeCache
{
  os_unfair_lock_lock(&self->_mapAccessLock);
  [(PKMapContainer *)self->_mapContainer removeAllObjects];
  os_unfair_lock_unlock(&self->_mapAccessLock);
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  v4 = [objc_opt_class() _instanceName];
  [v3 postNotificationName:@"PKDistributedNotificationPeerPaymentRecipientCachePurged" object:v4];

  return [(PKPeerPaymentRecipientCache *)self _writeMapToDisk];
}

- (BOOL)lowFrequencyDeviceScoreSubmissionRequiredForRecipientAddress:(id)a3
{
  v4 = PKIDSNormalizedAddress(a3);
  if (v4)
  {
    os_unfair_lock_lock(&self->_mapAccessLock);
    v5 = [(PKPeerPaymentRecipientCache *)self _keyForRecipientAddress:v4];
    v6 = [(PKMapContainer *)self->_mapContainer scoreMap];
    v7 = [v6 objectForKey:v5];

    if (v7 && ![v7 hasExpired])
    {
      v9 = 0;
    }

    else
    {
      v8 = [(PKMapContainer *)self->_mapContainer scoreMap];
      [v8 removeObjectForKey:v5];

      [(PKPeerPaymentRecipientCache *)self _locked_setMapNeedsWrite];
      v9 = 1;
    }

    os_unfair_lock_unlock(&self->_mapAccessLock);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)noteSubmittedLowFrequencyDeviceScoreForRecipientAddress:(id)a3
{
  v4 = PKIDSNormalizedAddress(a3);
  if (v4)
  {
    v10 = v4;
    os_unfair_lock_lock(&self->_mapAccessLock);
    v5 = [(PKPeerPaymentRecipientCache *)self _keyForRecipientAddress:v10];
    v6 = [(PKMapContainer *)self->_mapContainer scoreMap];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      v8 = [(PKMapContainer *)self->_mapContainer scoreMap];
      v9 = objc_alloc_init(PKCacheScoreItem);
      [v8 setObject:v9 forKey:v5];

      [(PKPeerPaymentRecipientCache *)self _locked_setMapNeedsWrite];
    }

    os_unfair_lock_unlock(&self->_mapAccessLock);

    v4 = v10;
  }
}

- (id)_keyForRecipientAddress:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPeerPaymentRecipientCache:%@", a3];
    v4 = [v3 dataUsingEncoding:4];
    v5 = [v4 SHA256Hash];
    v6 = [v5 hexEncoding];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_canReadMap
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (_canReadMap___readAccess)
  {
    v2 = 1;
  }

  else
  {
    v5[0] = @"RecipientCache";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    PKSharedCacheCreateFileURLReadOnly(v3, @"cache.data", &__block_literal_global_227);

    v2 = _canReadMap___readAccess;
  }

  return v2 & 1;
}

void __42__PKPeerPaymentRecipientCache__canReadMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v2 = v3;
  _canReadMap___readAccess = access([v3 UTF8String], 4) == 0;
}

- (BOOL)_canWriteMap
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (_canWriteMap___writeAccess)
  {
    v2 = 1;
  }

  else
  {
    v5[0] = @"RecipientCache";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    PKSharedCacheCreateDirectory(v3, &__block_literal_global_119_0);

    v2 = _canWriteMap___writeAccess;
  }

  return v2 & 1;
}

void __43__PKPeerPaymentRecipientCache__canWriteMap__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 path];
  v4 = v5;
  _canWriteMap___writeAccess = access([v5 UTF8String], 2) == 0;
}

- (void)_handlePurgedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [objc_opt_class() _instanceName];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_mapAccessLock);
    [(PKMapContainer *)self->_mapContainer removeAllObjects];

    os_unfair_lock_unlock(&self->_mapAccessLock);
  }
}

- (void)_handleDiskMapChangedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [objc_opt_class() _instanceName];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {

    [(PKPeerPaymentRecipientCache *)self _updateMapsFromDisk];
  }
}

- (void)_updateMapsFromDisk
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"RecipientCache";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKPeerPaymentRecipientCache__updateMapsFromDisk__block_invoke;
  v4[3] = &unk_1E79C8898;
  v4[4] = self;
  PKSharedCacheCreateFileURLForWriting(v3, @"cache.data", v4);
}

void __50__PKPeerPaymentRecipientCache__updateMapsFromDisk__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) _canReadMap])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v15 = 0;
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:0 error:&v15];
    v5 = v15;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:0];
      v7 = objc_opt_class();
      v8 = *MEMORY[0x1E696A508];
      v14 = v5;
      v9 = [v6 decodeTopLevelObjectOfClass:v7 forKey:v8 error:&v14];
      v10 = v14;

      if (v9)
      {
        [*(*(a1 + 32) + 16) updateWithContainer:v9];
      }

      else
      {
        v12 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v17 = v3;
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: Failed to decode the peer payment recipient cache at path: %@ with error: %@. Removing file.", buf, 0x16u);
        }

        v13 = [MEMORY[0x1E696AC08] defaultManager];
        [v13 removeItemAtURL:v3 error:0];
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v3;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Error: Failed to decode the peer payment recipient cache at path: %@ with error: %@. Removing file.", buf, 0x16u);
      }

      v6 = [MEMORY[0x1E696AC08] defaultManager];
      [v6 removeItemAtURL:v3 error:0];
      v10 = v5;
    }

    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Note: Unable to read from the peer payment recipient cache path: %@", buf, 0xCu);
    }
  }
}

- (void)_locked_setMapNeedsWrite
{
  if (!self->_mapNeedsWriteTimer)
  {
    v8[7] = v2;
    v8[8] = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PKPeerPaymentRecipientCache__locked_setMapNeedsWrite__block_invoke;
    v8[3] = &unk_1E79E3470;
    v8[4] = self;
    v5 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:0 repeats:v8 block:3.0];
    mapNeedsWriteTimer = self->_mapNeedsWriteTimer;
    self->_mapNeedsWriteTimer = v5;

    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v7 addTimer:self->_mapNeedsWriteTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (BOOL)_writeMapToDisk
{
  v2 = self;
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(&self->_mapAccessLock);
  [(NSTimer *)v2->_mapNeedsWriteTimer invalidate];
  mapNeedsWriteTimer = v2->_mapNeedsWriteTimer;
  v2->_mapNeedsWriteTimer = 0;

  v11[0] = @"RecipientCache";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PKPeerPaymentRecipientCache__writeMapToDisk__block_invoke;
  v6[3] = &unk_1E79C87C0;
  v6[4] = v2;
  v6[5] = &v7;
  PKSharedCacheCreateFileURLForWriting(v4, @"cache.data", v6);

  os_unfair_lock_unlock(&v2->_mapAccessLock);
  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __46__PKPeerPaymentRecipientCache__writeMapToDisk__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) _canWriteMap])
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(a1 + 32) + 16) requiringSecureCoding:1 error:0];
    if (v4)
    {
      v5 = v4;
      *(*(*(a1 + 40) + 8) + 24) = [v4 writeToURL:v3 atomically:1];
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v6 = [MEMORY[0x1E696ABB0] defaultCenter];
        v7 = [objc_opt_class() _instanceName];
        [v6 postNotificationName:@"PKDistributedNotificationPeerPaymentRecipientCacheWrittenToDisk" object:v7];
      }

      else
      {
        v9 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 138412290;
          v11 = v3;
          _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Error: Failed to write peer payment recipient cache to path: %@", &v10, 0xCu);
        }
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, "Error: Failed to write nil peer payment recipient cache.", &v10, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Note: Unable to write to the peer payment recipient cache at path: %@", &v10, 0xCu);
    }
  }
}

+ (id)_instanceName
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PKPeerPaymentRecipientCache__instanceName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6D2260 != -1)
  {
    dispatch_once(&qword_1ED6D2260, block);
  }

  v2 = qword_1ED6D2258;

  return v2;
}

void __44__PKPeerPaymentRecipientCache__instanceName__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_opt_class();
  v4 = NSStringFromClass(v1);
  v2 = [v0 stringWithFormat:@"%@-%i", v4, PKGetMyPid()];
  v3 = qword_1ED6D2258;
  qword_1ED6D2258 = v2;
}

@end