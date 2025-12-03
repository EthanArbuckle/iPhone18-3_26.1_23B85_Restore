@interface SFMediaCaptureStatusBarManager
- (BOOL)isRecording;
- (BOOL)statusBarCoordinator:(id)coordinator receivedTapWithContext:(id)context completionBlock:(id)block;
- (NSString)simplifiedURLString;
- (SFMediaRecordingDocument)_recordingDocument;
- (unint64_t)overrideStyleForAudioOnly:(BOOL)only;
- (void)_acquireStatusBarOverrideWithAudioOnly:(BOOL)only;
- (void)_cleanUpStatusBarOverride;
- (void)_didAcquireStatusBarOverrideSuccessfully:(BOOL)successfully;
- (void)_didInvalidateStatusBarOverride;
- (void)cancelStatusBarOverride;
- (void)recordingDocumentDidBeginMediaCapture:(id)capture audioOnly:(BOOL)only;
- (void)recordingDocumentDidEndMediaCapture:(id)capture;
- (void)setRecordingDocument:(id)document;
- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error;
@end

@implementation SFMediaCaptureStatusBarManager

- (SFMediaRecordingDocument)_recordingDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);

  return WeakRetained;
}

- (void)setRecordingDocument:(id)document
{
  obj = document;
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_recordingDocument, obj);
    v5 = obj;
    if (!obj)
    {
      statusBarStyleOverride = self->_statusBarStyleOverride;
      self->_statusBarStyleOverride = 0;

      coordinator = self->_coordinator;
      self->_coordinator = 0;

      v5 = 0;
    }
  }
}

- (BOOL)isRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)recordingDocumentDidBeginMediaCapture:(id)capture audioOnly:(BOOL)only
{
  onlyCopy = only;
  captureCopy = capture;
  [(SFMediaCaptureStatusBarManager *)self setRecordingDocument:captureCopy];
  canOverrideStatusBar = [captureCopy canOverrideStatusBar];

  if (canOverrideStatusBar)
  {

    [(SFMediaCaptureStatusBarManager *)self _acquireStatusBarOverrideWithAudioOnly:onlyCopy];
  }
}

- (void)recordingDocumentDidEndMediaCapture:(id)capture
{
  if (self->_hasStatusBarOverride)
  {
    [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
  }

  [(SFMediaCaptureStatusBarManager *)self setRecordingDocument:0];
}

- (void)cancelStatusBarOverride
{
  if (self->_hasStatusBarOverride)
  {
    [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
  }

  [(SFMediaCaptureStatusBarManager *)self _cleanUpStatusBarOverride];
}

- (unint64_t)overrideStyleForAudioOnly:(BOOL)only
{
  if (only)
  {
    return 0x1000000;
  }

  else
  {
    return 0x20000;
  }
}

- (void)_acquireStatusBarOverrideWithAudioOnly:(BOOL)only
{
  if (!self->_statusBarStyleOverride)
  {
    onlyCopy = only;
    objc_initWeak(&location, self);
    v5 = [(SFMediaCaptureStatusBarManager *)self overrideStyleForAudioOnly:onlyCopy];
    v6 = MEMORY[0x1E69D42E0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v6 assertionWithStatusBarStyleOverrides:v5 forPID:objc_msgSend(processInfo exclusive:"processIdentifier") showsWhenForeground:{1, 1}];
    statusBarStyleOverride = self->_statusBarStyleOverride;
    self->_statusBarStyleOverride = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69D42E8]);
    coordinator = self->_coordinator;
    self->_coordinator = v10;

    [(SBSStatusBarStyleOverridesCoordinator *)self->_coordinator setDelegate:self];
    v12 = self->_coordinator;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke;
    v17[3] = &unk_1E721FF28;
    objc_copyWeak(&v18, &location);
    [(SBSStatusBarStyleOverridesCoordinator *)v12 setRegisteredStyleOverrides:v5 reply:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  statusString = [(SFMediaCaptureStatusBarManager *)self statusString];
  [(SBSStatusBarStyleOverridesAssertion *)self->_statusBarStyleOverride setStatusString:statusString];

  v14 = self->_statusBarStyleOverride;
  v15[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke_3;
  v16[3] = &unk_1E721B510;
  v16[4] = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke_2;
  v15[3] = &unk_1E721B360;
  [(SBSStatusBarStyleOverridesAssertion *)v14 acquireWithHandler:v16 invalidationHandler:v15];
}

void __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXMediaCapture();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke_cold_1(v4, v3);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if (WeakRetained[24] == 1)
      {
        [WeakRetained _releaseStatusBarOverride];
      }

      [v6 _didInvalidateStatusBarOverride];
    }
  }
}

- (NSString)simplifiedURLString
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
  uRLString = [WeakRetained URLString];
  v4 = [uRLString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  return v4;
}

- (void)_didAcquireStatusBarOverrideSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v5 = WBS_LOG_CHANNEL_PREFIXMediaCapture();
  v6 = v5;
  if (successfullyCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_DEFAULT, "Successfully acquired status bar override", v8, 2u);
    }

    self->_hasStatusBarOverride = 1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SFMediaCaptureStatusBarManager _didAcquireStatusBarOverrideSuccessfully:v6];
    }

    WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
    [WeakRetained muteMediaCapture];

    [(SFMediaCaptureStatusBarManager *)self setRecordingDocument:0];
  }
}

- (void)_didInvalidateStatusBarOverride
{
  v3 = WBS_LOG_CHANNEL_PREFIXMediaCapture();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SFMediaCaptureStatusBarManager *)v3 _didInvalidateStatusBarOverride];
  }

  [(SFMediaCaptureStatusBarManager *)self _cleanUpStatusBarOverride];
}

- (void)_cleanUpStatusBarOverride
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
  [WeakRetained muteMediaCapture];

  [(SFMediaCaptureStatusBarManager *)self setRecordingDocument:0];
  self->_hasStatusBarOverride = 0;
}

- (BOOL)statusBarCoordinator:(id)coordinator receivedTapWithContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
  [(SFMediaCaptureStatusBarManager *)self activateApp];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SFMediaCaptureStatusBarManager_statusBarCoordinator_receivedTapWithContext_completionBlock___block_invoke;
  block[3] = &unk_1E721B360;
  v11 = WeakRetained;
  v8 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  blockCopy[2](blockCopy);

  return 1;
}

- (void)statusBarCoordinator:(id)coordinator invalidatedRegistrationWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_recordingDocument);
  v7 = WBS_LOG_CHANNEL_PREFIXMediaCapture();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
    v10 = 138543362;
    v11 = safari_privacyPreservingDescription;
    _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_DEFAULT, "Status bar coordinator invalidated: %{public}@", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    if (self->_hasStatusBarOverride)
    {
      [(SFMediaCaptureStatusBarManager *)self _releaseStatusBarOverride];
    }

    [(SFMediaCaptureStatusBarManager *)self _didInvalidateStatusBarOverride];
  }
}

void __73__SFMediaCaptureStatusBarManager__acquireStatusBarOverrideWithAudioOnly___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_ERROR, "Could not register tap handler for status bar override: %{public}@", &v5, 0xCu);
}

@end