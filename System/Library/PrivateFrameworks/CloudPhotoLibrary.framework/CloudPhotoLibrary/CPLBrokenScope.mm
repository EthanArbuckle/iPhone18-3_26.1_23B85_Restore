@interface CPLBrokenScope
- (BOOL)hasEngineRecoveryMechanism;
- (CPLBrokenScope)initWithEngineScope:(id)a3 engineLibrary:(id)a4;
- (CPLEngineLibrary)engineLibrary;
- (NSString)alertMessage;
- (NSString)alternateRecoverDescription;
- (NSString)brokenMessage;
- (NSString)radarDescription;
- (NSString)radarTitle;
- (NSURL)createRadarURL;
- (NSURL)readMoreURL;
- (void)_showAlertWithMessage:(id)a3 readMoreURL:(id)a4 createRadarURL:(id)a5 showsRecoverButton:(BOOL)a6;
- (void)recoverUsingEngineWithCompletionHandler:(id)a3;
- (void)showAlertToUser;
@end

@implementation CPLBrokenScope

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (void)recoverUsingEngineWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPLErrors notImplementedError];
  (*(a3 + 2))(v4, v5);
}

- (BOOL)hasEngineRecoveryMechanism
{
  if (!self->_internal)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CPLProposeBrokenScopeRecovery"];

  return v3;
}

- (void)showAlertToUser
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CPLBrokenScope_showAlertToUser__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_18069;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __33__CPLBrokenScope_showAlertToUser__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v3 >= -180.0)
    {
LABEL_11:
      v15 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  if (![*(a1 + 32) shouldShowAlertToUser])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = v12[4];
        v14 = [v12 brokenMessage];
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Broken scope detected: %@\n%@", buf, 0x16u);
      }
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  v16 = [v7 alertMessage];
  v8 = [*(a1 + 32) readMoreURL];
  v9 = [*(a1 + 32) createRadarURL];
  [v7 _showAlertWithMessage:v16 readMoreURL:v8 createRadarURL:v9 showsRecoverButton:{objc_msgSend(*(a1 + 32), "hasEngineRecoveryMechanism")}];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_showAlertWithMessage:(id)a3 readMoreURL:(id)a4 createRadarURL:(id)a5 showsRecoverButton:(BOOL)a6
{
  v6 = a6;
  v43[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v13 = *MEMORY[0x1E695EE60];
  v42[0] = *MEMORY[0x1E695EE58];
  v42[1] = v13;
  v43[0] = @"iCloud Photo Library";
  v43[1] = v10;
  v14 = *MEMORY[0x1E695EE68];
  v42[2] = *MEMORY[0x1E695EE78];
  v42[3] = v14;
  v43[2] = @"OK";
  v43[3] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v16 = [v15 mutableCopy];

  if (v11)
  {
    v17 = [(CPLBrokenScope *)self readMoreButtonTitle];
    [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE70]];
  }

  if (v6)
  {
    v18 = [(CPLBrokenScope *)self recoverButtonTitle];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v18 = [(CPLBrokenScope *)self createRadarButtonTitle];
  }

  v19 = v18;
  [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x1E695EE98]];

LABEL_8:
  error = 0;
  v20 = CFUserNotificationCreate(0, 60.0, 3uLL, &error, v16);
  if (v20)
  {
    v21 = v20;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v10;
        _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "Waiting for response to message: %@", buf, 0xCu);
      }
    }

    responseFlags = 0;
    CFUserNotificationReceiveResponse(v21, 60.0, &responseFlags);
    CFRelease(v21);
    v23 = responseFlags & 3;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v23];
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "Button pressed is %@", buf, 0xCu);
      }
    }

    if (v11 && v23 == 1)
    {
      v26 = MEMORY[0x1E6963608];
      v27 = v11;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_30;
      }

      if (v6)
      {
        shouldShowAlertToUser = self->_shouldShowAlertToUser;
        self->_shouldShowAlertToUser = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __86__CPLBrokenScope__showAlertWithMessage_readMoreURL_createRadarURL_showsRecoverButton___block_invoke;
        v34[3] = &unk_1E861F388;
        v34[4] = self;
        v35 = shouldShowAlertToUser;
        [(CPLBrokenScope *)self recoverUsingEngineWithCompletionHandler:v34];
        goto LABEL_30;
      }

      if (!v12)
      {
        goto LABEL_30;
      }

      v26 = MEMORY[0x1E6963608];
      v27 = v12;
    }

    v28 = v27;
    v29 = [v26 defaultWorkspace];
    [v29 openURL:v28 configuration:0 completionHandler:0];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v30 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      engineScope = self->_engineScope;
      *buf = 138412546;
      v39 = engineScope;
      v40 = 1024;
      v41 = error;
      _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Could not create user notification for broken scope %@: %d", buf, 0x12u);
    }
  }

LABEL_30:

  v33 = *MEMORY[0x1E69E9840];
}

void __86__CPLBrokenScope__showAlertWithMessage_readMoreURL_createRadarURL_showsRecoverButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__CPLBrokenScope__showAlertWithMessage_readMoreURL_createRadarURL_showsRecoverButton___block_invoke_2;
  v10[3] = &unk_1E861F360;
  v11 = v3;
  v12 = v4;
  v13 = *(a1 + 40);
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_18069;
  block[3] = &unk_1E861B4E0;
  v15 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __86__CPLBrokenScope__showAlertWithMessage_readMoreURL_createRadarURL_showsRecoverButton___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 32);
        *buf = 138412290;
        v17 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Failed to clean-up: %@", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    if (([v2 isCPLOperationCancelledError] & 1) == 0)
    {
      v5 = *(a1 + 40);
      v6 = @"Failed to clean-up library";
      if (v5[24] == 1)
      {
        v7 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = [*(a1 + 32) localizedDescription];
        v6 = [v7 initWithFormat:@"%@\n\n%@", @"Failed to clean-up library", v8];

        v5 = *(a1 + 40);
      }

      v9 = [v5 readMoreURL];
      v10 = [*(a1 + 40) createRadarURL];
      [v5 _showAlertWithMessage:v6 readMoreURL:v9 createRadarURL:v10 showsRecoverButton:0];
    }

    *(*(a1 + 40) + 25) = *(a1 + 48);
    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 40) _showAlertWithMessage:@"Library has been cleaned up successfully." readMoreURL:0 createRadarURL:0 showsRecoverButton:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
    v12 = [WeakRetained syncManager];
    v13 = [*(a1 + 40) engineScope];
    [v12 removeBrokenScope:v13];

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (NSURL)createRadarURL
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_internal)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [(CPLBrokenScope *)self radarTitle];
    [v3 setObject:v4 forKeyedSubscript:@"Title"];

    [v3 setObject:@"Other Bug" forKeyedSubscript:@"Classification"];
    [v3 setObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics" forKeyedSubscript:@"ExtensionIdentifiers"];
    [v3 setObject:@"Not Applicable" forKeyedSubscript:@"Reproducibility"];
    [v3 setObject:@"Photos Backend iCloud" forKeyedSubscript:@"ComponentName"];
    [v3 setObject:@"630691" forKeyedSubscript:@"ComponentID"];
    [v3 setObject:@"all" forKeyedSubscript:@"ComponentVersion"];
    v5 = [(CPLBrokenScope *)self radarDescription];
    [v3 setObject:v5 forKeyedSubscript:@"Description"];

    v6 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = MEMORY[0x1E696AF60];
          v15 = [v8 objectForKeyedSubscript:{v13, v20}];
          v16 = [v14 queryItemWithName:v13 value:v15];
          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v6 setQueryItems:v7];
    v17 = [v6 URL];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (NSString)radarDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLBrokenScope *)self brokenMessage];
  v5 = [v3 initWithFormat:@"%@\n\nremaining scope is: %@", v4, self->_engineScope];

  return v5;
}

- (NSString)radarTitle
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLEngineScope *)self->_engineScope scopeIdentifier];
  v5 = [CPLScopeChange descriptionForScopeType:[(CPLEngineScope *)self->_engineScope scopeType]];
  v6 = [v3 initWithFormat:@"Library has broken scope %@ (%@)", v4, v5];

  return v6;
}

- (NSURL)readMoreURL
{
  if (self->_internal)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:{@"https://at.apple.com/icpl-unsupported-scopes", v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)alertMessage
{
  v3 = [(CPLBrokenScope *)self brokenMessage];
  if (self->_internal)
  {
    v4 = [(CPLBrokenScope *)self internalRecoveryInstructions];
    v5 = v4;
    if (v4)
    {
      v6 = [v3 stringByAppendingFormat:@"\n\nTo clean-up library, run the following command:\n%@", v4];

      v3 = v6;
    }
  }

  return v3;
}

- (NSString)brokenMessage
{
  if (self->_internal)
  {
    v4 = [(CPLEngineScope *)self->_engineScope scopeType];
    if (v4 - 4 < 2)
    {
      return @"Library has remains of shared library and must be cleaned before synchronization can continue.";
    }

    if (v4 <= 8 && ((1 << v4) & 0x18E) != 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBrokenScope.m"];
      [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:84 description:{@"%@ should not be a broken scope", self->_engineScope}];

      abort();
    }
  }

  return @"Library has unsupported scopes and must be cleaned before synchronization can continue.";
}

- (NSString)alternateRecoverDescription
{
  v4 = [(CPLEngineScope *)self->_engineScope scopeType];
  if (v4 - 4 < 2)
  {
    return @"feature is enabled";
  }

  if (v4 <= 8 && ((1 << v4) & 0x18E) != 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBrokenScope.m"];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:56 description:{@"%@ should not be a broken scope", self->_engineScope}];

    abort();
  }

  return 0;
}

- (CPLBrokenScope)initWithEngineScope:(id)a3 engineLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CPLBrokenScope;
  v9 = [(CPLBrokenScope *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.warnalert", 0);
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_engineScope, a3);
    objc_storeWeak(&v9->_engineLibrary, v8);
    v9->_internal = os_variant_has_internal_content();
    v9->_shouldShowAlertToUser = CPLDontWarnAboutUnsupportedScopes() ^ 1;
  }

  return v9;
}

@end