@interface CPSLocationProvider
+ (BOOL)locationServiceEnabled;
+ (id)sharedProvider;
+ (void)setLocationServiceEnabled:(BOOL)enabled;
- (CPSLocationProvider)init;
- (void)confirmCurrentLocationInRegion:(id)region completion:(id)completion;
- (void)getCurrentLocationWithCompletion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation CPSLocationProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    +[CPSLocationProvider sharedProvider];
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

uint64_t __37__CPSLocationProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedProvider = objc_alloc_init(CPSLocationProvider);

  return MEMORY[0x2821F96F8]();
}

- (CPSLocationProvider)init
{
  v11.receiver = self;
  v11.super_class = CPSLocationProvider;
  v2 = [(CPSLocationProvider *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ClipServices.CPSLocationProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__CPSLocationProvider_init__block_invoke;
    block[3] = &unk_278DCDE30;
    v6 = v2;
    v10 = v6;
    dispatch_sync(v5, block);
    v7 = v6;
  }

  return v2;
}

uint64_t __27__CPSLocationProvider_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(getCLLocationManagerClass());
  v3 = LocationBundle();
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 24)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getkCLLocationAccuracyHundredMetersSymbolLoc_ptr;
  v14 = getkCLLocationAccuracyHundredMetersSymbolLoc_ptr;
  if (!getkCLLocationAccuracyHundredMetersSymbolLoc_ptr)
  {
    v8 = CoreLocationLibrary();
    v12[3] = dlsym(v8, "kCLLocationAccuracyHundredMeters");
    getkCLLocationAccuracyHundredMetersSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    __27__CPSLocationProvider_init__block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 8) setDesiredAccuracy:*v7];
  v9 = *(a1 + 32);
  result = [objc_opt_class() locationServiceEnabled];
  *(*(a1 + 32) + 32) = result;
  return result;
}

+ (BOOL)locationServiceEnabled
{
  CLLocationManagerClass = getCLLocationManagerClass();
  v3 = LocationBundle();
  LOBYTE(CLLocationManagerClass) = [CLLocationManagerClass authorizationStatusForBundle:v3] == 3;

  return CLLocationManagerClass;
}

+ (void)setLocationServiceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  CLLocationManagerClass = getCLLocationManagerClass();
  if (enabledCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = LocationBundle();
  [CLLocationManagerClass setAuthorizationStatusByType:v5 forBundle:v6];
}

- (void)confirmCurrentLocationInRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CPSLocationProvider_confirmCurrentLocationInRegion_completion___block_invoke;
  v10[3] = &unk_278DCEA80;
  v11 = regionCopy;
  v12 = completionCopy;
  v8 = regionCopy;
  v9 = completionCopy;
  [(CPSLocationProvider *)self getCurrentLocationWithCompletion:v10];
}

void __65__CPSLocationProvider_confirmCurrentLocationInRegion_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) radius];
    if (v6 > 500.0)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCA9B8] cps_errorWithCode:15];
      (*(v7 + 16))(v7, 0, v8);

      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    [v10 coordinate];
    [v9 containsCoordinate:?];
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
LABEL_7:
}

- (void)getCurrentLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CPSLocationProvider_getCurrentLocationWithCompletion___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __56__CPSLocationProvider_getCurrentLocationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      v4 = objc_alloc_init(CPSPromise);
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;

      [*(*(a1 + 32) + 8) requestLocation];
      v3 = *(*(a1 + 32) + 16);
    }

    v7 = *(a1 + 40);

    [v3 addCompletionBlock:v7];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CPSErrorDomain" code:14 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_INFO, "CPSLocationProvider: locationManagerDidChangeAuthorization", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPSLocationProvider_locationManagerDidChangeAuthorization___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __61__CPSLocationProvider_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [objc_opt_class() locationServiceEnabled];
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v16 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    lastObject = [locationsCopy lastObject];
    *buf = 138739971;
    v15 = lastObject;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "CPSLocationProvider: didUpdateLocation: %{sensitive}@", buf, 0xCu);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CPSLocationProvider_locationManager_didUpdateLocations___block_invoke;
  v12[3] = &unk_278DCDE58;
  v12[4] = self;
  v13 = locationsCopy;
  v10 = locationsCopy;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__CPSLocationProvider_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) lastObject];
  [v2 finishWithResult:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CPSLocationProvider locationManager:errorCopy didFailWithError:v6];
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CPSLocationProvider_locationManager_didFailWithError___block_invoke;
  v9[3] = &unk_278DCDE58;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(queue, v9);
}

void __56__CPSLocationProvider_locationManager_didFailWithError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) finishWithError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void __27__CPSLocationProvider_init__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyHundredMeters(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSLocationProvider.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)locationManager:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "CPSLocationProvider: didFailWithError: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end