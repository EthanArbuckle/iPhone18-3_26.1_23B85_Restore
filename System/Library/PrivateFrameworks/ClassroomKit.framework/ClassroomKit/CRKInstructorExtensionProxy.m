@interface CRKInstructorExtensionProxy
+ (id)sharedExtensionProxy;
- (BOOL)proxiesContainClassroomApp:(id)a3;
- (CRKInstructorExtensionProxy)init;
- (id)extensionAttributesForExtensionIdentifier:(id)a3 containingAppURL:(id)a4;
- (void)applicationInstallsDidStart:(id)a3;
- (void)beginExtensionRequestWithCompletionBlock:(id)a3;
- (void)configureInstructorExtensionAfterFetchError:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)establishEndpointWithCompletionBlock:(id)a3;
- (void)fetchListenerEndpointForExtensionBundleIdentifier:(id)a3 fromClassroomBundleWithURL:(id)a4 completionBlock:(id)a5;
- (void)resetExtension;
@end

@implementation CRKInstructorExtensionProxy

+ (id)sharedExtensionProxy
{
  if (sharedExtensionProxy_onceToken != -1)
  {
    +[CRKInstructorExtensionProxy sharedExtensionProxy];
  }

  v3 = sharedExtensionProxy_extension;

  return v3;
}

uint64_t __51__CRKInstructorExtensionProxy_sharedExtensionProxy__block_invoke()
{
  sharedExtensionProxy_extension = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(LSApplicationWorkspace *)self->mWorkspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = CRKInstructorExtensionProxy;
  [(CRKInstructorExtensionProxy *)&v3 dealloc];
}

- (CRKInstructorExtensionProxy)init
{
  v6.receiver = self;
  v6.super_class = CRKInstructorExtensionProxy;
  v2 = [(CRKInstructorExtensionProxy *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    mWorkspace = v2->mWorkspace;
    v2->mWorkspace = v3;

    [(LSApplicationWorkspace *)v2->mWorkspace addObserver:v2];
  }

  return v2;
}

- (void)resetExtension
{
  if (self->mContextIdentifier)
  {
    [(NSExtension *)self->mInstructorExtension cancelExtensionRequestWithIdentifier:?];
  }

  mInstructorExtension = self->mInstructorExtension;
  self->mInstructorExtension = 0;

  mContextIdentifier = self->mContextIdentifier;
  self->mContextIdentifier = 0;
}

- (void)fetchListenerEndpointForExtensionBundleIdentifier:(id)a3 fromClassroomBundleWithURL:(id)a4 completionBlock:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKInstructorExtensionProxy fetchListenerEndpointForExtensionBundleIdentifier:a2 fromClassroomBundleWithURL:self completionBlock:?];
  }

  if (v11)
  {
    if (self->mInstructorExtension)
    {
      [(CRKInstructorExtensionProxy *)self beginExtensionRequestWithCompletionBlock:v11];
    }

    else
    {
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v13 = +[CRKClassroomInstallation preferredInstallation];
        v14 = [v13 instructordBundleIdentifier];
        v15 = v14;
        v16 = @"com.apple.classroom.instructord";
        if (v14)
        {
          v16 = v14;
        }

        v12 = v16;
      }

      v17 = _CRKLogGeneral_6();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v10 path];
        *buf = 138543618;
        v29 = v12;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_243550000, v17, OS_LOG_TYPE_DEFAULT, "Connecting to instructord with identifier %{public}@ in Classroom App with path %@", buf, 0x16u);
      }

      if (v10)
      {
        v19 = [(CRKInstructorExtensionProxy *)self extensionAttributesForExtensionIdentifier:v12 containingAppURL:v10];
        objc_initWeak(buf, self);
        v20 = MEMORY[0x277CCA9C8];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke;
        v23[3] = &unk_278DC2498;
        objc_copyWeak(&v26, buf);
        v24 = v9;
        v25 = v11;
        [v20 extensionsWithMatchingAttributes:v19 completion:v23];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }

      else
      {
        v27 = 0;
        v21 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:v12 error:&v27];
        v19 = v27;
        mInstructorExtension = self->mInstructorExtension;
        self->mInstructorExtension = v21;

        [(CRKInstructorExtensionProxy *)self configureInstructorExtensionAfterFetchError:v19 completionBlock:v11];
      }
    }
  }
}

void __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke_2;
  block[3] = &unk_278DC2470;
  objc_copyWeak(&v14, a1 + 6);
  v10 = v5;
  v11 = v6;
  v12 = a1[4];
  v13 = a1[5];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && !WeakRetained[2])
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = v3[2];
      v3[2] = v6;

      [v3 configureInstructorExtensionAfterFetchError:*(a1 + 40) completionBlock:*(a1 + 56)];
    }

    else
    {
      if (!v5 || *(a1 + 40))
      {
        v8 = _CRKLogGeneral_6();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke_2_cold_1(a1, v8);
        }
      }

      v9 = _CRKLogGeneral_6();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "Failing back to fetching instructord by bundleID", v10, 2u);
      }

      [v3 fetchListenerEndpointForExtensionBundleIdentifier:*(a1 + 48) fromClassroomBundleWithURL:0 completionBlock:*(a1 + 56)];
    }
  }
}

- (void)configureInstructorExtensionAfterFetchError:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKInstructorExtensionProxy configureInstructorExtensionAfterFetchError:a2 completionBlock:self];
  }

  if (self->mInstructorExtension)
  {
    objc_initWeak(&location, self);
    mInstructorExtension = self->mInstructorExtension;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke;
    v20[3] = &unk_278DC24C0;
    objc_copyWeak(&v21, &location);
    [(NSExtension *)mInstructorExtension setRequestCompletionBlock:v20];
    v10 = self->mInstructorExtension;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke_2;
    v18[3] = &unk_278DC24E8;
    objc_copyWeak(&v19, &location);
    [(NSExtension *)v10 setRequestCancellationBlock:v18];
    v11 = self->mInstructorExtension;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke_3;
    v16 = &unk_278DC2510;
    objc_copyWeak(&v17, &location);
    [(NSExtension *)v11 setRequestInterruptionBlock:&v13];
    [(CRKInstructorExtensionProxy *)self beginExtensionRequestWithCompletionBlock:v8, v13, v14, v15, v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v8[2](v8, 0, v7);
  }

  else
  {
    v12 = CRKErrorWithCodeAndUserInfo(101, 0);
    v8[2](v8, 0, v12);
  }
}

void __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:sel_resetExtension withObject:0 waitUntilDone:0];
}

void __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:sel_resetExtension withObject:0 waitUntilDone:0];
}

void __91__CRKInstructorExtensionProxy_configureInstructorExtensionAfterFetchError_completionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:sel_resetExtension withObject:0 waitUntilDone:0];
}

- (void)beginExtensionRequestWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!self->mInstructorExtension)
  {
    [(CRKInstructorExtensionProxy *)a2 beginExtensionRequestWithCompletionBlock:?];
  }

  if (self->mContextIdentifier)
  {
    [(CRKInstructorExtensionProxy *)self establishEndpointWithCompletionBlock:v5];
  }

  else
  {
    mInstructorExtension = self->mInstructorExtension;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__CRKInstructorExtensionProxy_beginExtensionRequestWithCompletionBlock___block_invoke;
    v7[3] = &unk_278DC2538;
    v7[4] = self;
    v8 = v5;
    [(NSExtension *)mInstructorExtension beginExtensionRequestWithInputItems:0 completion:v7];
  }
}

void __72__CRKInstructorExtensionProxy_beginExtensionRequestWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CRKInstructorExtensionProxy_beginExtensionRequestWithCompletionBlock___block_invoke_2;
  block[3] = &unk_278DC17E8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__CRKInstructorExtensionProxy_beginExtensionRequestWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 establishEndpointWithCompletionBlock:v3];
}

- (void)establishEndpointWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSExtension *)self->mInstructorExtension _extensionContextForUUID:self->mContextIdentifier];
  v6 = [v5 _auxiliaryConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke;
  v12[3] = &unk_278DC0FE0;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke_3;
  v10[3] = &unk_278DC2560;
  v11 = v7;
  v9 = v7;
  [v8 listenerEndpointWithCompletion:v10];
}

void __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CRKInstructorExtensionProxy_establishEndpointWithCompletionBlock___block_invoke_4;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (id)extensionAttributesForExtensionIdentifier:(id)a3 containingAppURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA0E0]];

  v8 = [v5 path];

  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA0B8]];
  v9 = [v7 copy];

  return v9;
}

- (BOOL)proxiesContainClassroomApp:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) bundleIdentifier];
        v8 = CRKIsClassroomBundleIdentifier(v7);

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)applicationInstallsDidStart:(id)a3
{
  if ([(CRKInstructorExtensionProxy *)self proxiesContainClassroomApp:a3])
  {

    [(CRKInstructorExtensionProxy *)self resetExtension];
  }
}

- (void)fetchListenerEndpointForExtensionBundleIdentifier:(const char *)a1 fromClassroomBundleWithURL:(uint64_t)a2 completionBlock:.cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKInstructorExtensionProxy.m" lineNumber:75 description:{@"%@ must be called from the main thread", v4}];
}

void __124__CRKInstructorExtensionProxy_fetchListenerEndpointForExtensionBundleIdentifier_fromClassroomBundleWithURL_completionBlock___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch instructord by attributes: %{public}@", &v3, 0xCu);
}

- (void)configureInstructorExtensionAfterFetchError:(const char *)a1 completionBlock:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKInstructorExtensionProxy.m" lineNumber:129 description:{@"%@ must be called from the main thread", v4}];
}

- (void)beginExtensionRequestWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKInstructorExtensionProxy.m" lineNumber:152 description:@"Must retrieve the instructor extension before attempting to establish the endpoint"];
}

@end