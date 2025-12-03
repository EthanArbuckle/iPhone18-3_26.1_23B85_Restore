@interface LNRuntimeAssertionsTakingConnectionOperation
- (LNRuntimeAssertionsTakingConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface systemProtocols:(id)protocols priority:(int64_t)priority queue:(id)queue activity:(id)activity;
- (void)acquireRuntimeAssertions;
- (void)invalidateRuntimeAssertions;
@end

@implementation LNRuntimeAssertionsTakingConnectionOperation

- (void)acquireRuntimeAssertions
{
  v42 = *MEMORY[0x1E69E9840];
  connection = [(LNConnectionOperation *)self connection];
  bundleIdentifier = [connection bundleIdentifier];

  runtimeAssertions = [(LNRuntimeAssertionsTakingConnectionOperation *)self runtimeAssertions];
  v6 = [runtimeAssertions containsObject:@"com.apple.link.runtimeAssertion.AudioPlayback"];

  if (v6)
  {
    v7 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_DEBUG, "Acquiring audio playback assertion for %@", &buf, 0xCu);
    }

    sharedAVSystemController = [getAVSystemControllerClass() sharedAVSystemController];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v9 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr;
    v37 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr;
    if (!getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v39 = __getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_block_invoke;
      v40 = &unk_1E74B26D0;
      v41 = &v34;
      v10 = MediaExperienceLibrary();
      v11 = dlsym(v10, "AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute");
      *(v41[1] + 24) = v11;
      getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttributeSymbolLoc_ptr = *(v41[1] + 24);
      v9 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute(void)"];
      [currentHandler handleFailureInFunction:v32 file:@"LNRuntimeAssertionsTakingConnectionOperation.m" lineNumber:22 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v12 = *v9;
    v33 = 0;
    v13 = v12;
    [sharedAVSystemController setAttribute:bundleIdentifier forKey:v13 error:&v33];
    v14 = v33;

    v15 = getLNLogCategoryConnection();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        v17 = "Failed to acquire audio playback assertion: %@";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_19763D000, v18, v19, v17, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bundleIdentifier;
      v17 = "Acquired audio playback assertion for %@";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEBUG;
      goto LABEL_12;
    }
  }

  runtimeAssertions2 = [(LNRuntimeAssertionsTakingConnectionOperation *)self runtimeAssertions];
  v21 = [runtimeAssertions2 containsObject:@"com.apple.link.runtimeAssertion.Location"];

  if (v21)
  {
    v22 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_DEBUG, "Acquiring CLInUseAssertion for %@", &buf, 0xCu);
    }

    v23 = [MEMORY[0x1E695FBE0] newAssertionForBundleIdentifier:bundleIdentifier withReason:@"User is directly engaging with the app by running a Link action" level:1];
    [(LNRuntimeAssertionsTakingConnectionOperation *)self setLocationAssertion:v23];
  }

  runtimeAssertions3 = [(LNRuntimeAssertionsTakingConnectionOperation *)self runtimeAssertions];
  v25 = [runtimeAssertions3 containsObject:@"com.apple.link.runtimeAssertion.AudioRecording"];

  if (v25)
  {
    v26 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v26, OS_LOG_TYPE_DEBUG, "Acquiring audio recording assertion for %@", &buf, 0xCu);
    }

    sharedAVSystemController2 = [getAVSystemControllerClass() sharedAVSystemController];
    v28 = [sharedAVSystemController2 allowAppToInitiateRecordingTemporarily:bundleIdentifier];

    if (v28)
    {
      v29 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v28;
        _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_ERROR, "Failed to acquire audio recording assertion: %d. Are you entitled correctly?", &buf, 8u);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)invalidateRuntimeAssertions
{
  locationAssertion = [(LNRuntimeAssertionsTakingConnectionOperation *)self locationAssertion];
  [locationAssertion invalidate];
}

- (LNRuntimeAssertionsTakingConnectionOperation)initWithIdentifier:(id)identifier connectionInterface:(id)interface systemProtocols:(id)protocols priority:(int64_t)priority queue:(id)queue activity:(id)activity
{
  protocolsCopy = protocols;
  v25.receiver = self;
  v25.super_class = LNRuntimeAssertionsTakingConnectionOperation;
  v15 = [(LNInterfaceConnectionOperation *)&v25 initWithIdentifier:identifier connectionInterface:interface priority:priority queue:queue activity:activity];
  if (v15)
  {
    v16 = protocolsCopy;
    v17 = [MEMORY[0x1E695DFA8] set];
    [(NSSet *)v17 addObject:@"com.apple.link.runtimeAssertion.Location"];
    audioRecordingProtocol = [MEMORY[0x1E69ACA48] audioRecordingProtocol];
    v19 = [v16 containsObject:audioRecordingProtocol];

    if (v19)
    {
      [(NSSet *)v17 addObject:@"com.apple.link.runtimeAssertion.AudioRecording"];
    }

    audioStartingProtocol = [MEMORY[0x1E69ACA48] audioStartingProtocol];
    v21 = [v16 containsObject:audioStartingProtocol];

    if (v21)
    {
      [(NSSet *)v17 addObject:@"com.apple.link.runtimeAssertion.AudioPlayback"];
    }

    runtimeAssertions = v15->_runtimeAssertions;
    v15->_runtimeAssertions = v17;

    v23 = v15;
  }

  return v15;
}

@end