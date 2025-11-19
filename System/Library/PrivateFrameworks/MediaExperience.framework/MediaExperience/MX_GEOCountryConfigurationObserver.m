@interface MX_GEOCountryConfigurationObserver
- (MX_GEOCountryConfigurationObserver)init;
- (id)getCurrentCountryCode;
- (void)_updateCountryCodeFromCurrentGeoCountryConfiguration:(id)a3;
- (void)countryConfigurationDidChange:(id)a3;
- (void)dealloc;
@end

@implementation MX_GEOCountryConfigurationObserver

- (MX_GEOCountryConfigurationObserver)init
{
  v7.receiver = self;
  v7.super_class = MX_GEOCountryConfigurationObserver;
  v2 = [(MX_GEOCountryConfigurationObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.coremedia.geocountryconfigurationobserver", v3);
    v2->mAccessQueue = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__MX_GEOCountryConfigurationObserver_init__block_invoke;
    block[3] = &unk_1E7AE7CE0;
    block[4] = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  mAccessQueue = self->mAccessQueue;
  if (mAccessQueue)
  {
    dispatch_release(mAccessQueue);
  }

  v5.receiver = self;
  v5.super_class = MX_GEOCountryConfigurationObserver;
  [(MX_GEOCountryConfigurationObserver *)&v5 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (id)getCurrentCountryCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MX_GEOCountryConfigurationObserver_getCurrentCountryCode__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_async_and_wait(mAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateCountryCodeFromCurrentGeoCountryConfiguration:(id)a3
{
  mAccessQueue = self->mAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__MX_GEOCountryConfigurationObserver__updateCountryCodeFromCurrentGeoCountryConfiguration___block_invoke;
  v4[3] = &unk_1E7AEA340;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mAccessQueue, v4);
}

- (void)countryConfigurationDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v5 = getGEODeviceCountryCodeKeySymbolLoc_ptr;
  v11 = getGEODeviceCountryCodeKeySymbolLoc_ptr;
  if (!getGEODeviceCountryCodeKeySymbolLoc_ptr)
  {
    v6 = GeoServicesLibrary();
    v9[3] = dlsym(v6, "GEODeviceCountryCodeKey");
    getGEODeviceCountryCodeKeySymbolLoc_ptr = v9[3];
    v5 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v5)
  {
    v7 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  -[MX_GEOCountryConfigurationObserver _updateCountryCodeFromCurrentGeoCountryConfiguration:](self, "_updateCountryCodeFromCurrentGeoCountryConfiguration:", [v4 objectForKey:*v5]);
}

@end