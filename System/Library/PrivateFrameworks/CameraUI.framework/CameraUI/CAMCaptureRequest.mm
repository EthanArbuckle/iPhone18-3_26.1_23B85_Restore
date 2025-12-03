@interface CAMCaptureRequest
- (BOOL)shouldPersistToIncomingDirectory;
- (CAMCaptureRequest)init;
- (CAMCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence;
- (CAMCaptureRequest)initWithType:(int64_t)type;
- (id)distinctPersistenceCopy;
- (int64_t)captureDevicePosition;
@end

@implementation CAMCaptureRequest

- (BOOL)shouldPersistToIncomingDirectory
{
  v3 = objc_opt_class();
  persistenceOptions = [(CAMCaptureRequest *)self persistenceOptions];
  temporaryPersistenceOptions = [(CAMCaptureRequest *)self temporaryPersistenceOptions];

  return [v3 shouldPersistToIncomingDirectoryWithPersistenceOptions:persistenceOptions temporaryPersistenceOptions:temporaryPersistenceOptions];
}

- (CAMCaptureRequest)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Instances of CAMCaptureRequest must be initialized with -initWithType:"];

  return 0;
}

- (CAMCaptureRequest)initWithType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = CAMCaptureRequest;
  v4 = [(CAMCaptureRequest *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v4->_captureDevice = 0;
    v4->_captureMode = 0;
    v4->_captureOrientation = 1;
    v4->_captureMirrored = 0;
    v4->_pressType = -1;
    v4->_origin = 0;
    v4->_deferredPersistenceOptions = 0;
    v4->_temporaryPersistenceOptions = 0;
    v4->_persistenceOptions = 2;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    persistenceUUID = v5->_persistenceUUID;
    v5->_persistenceUUID = uUIDString;

    *&v5->_shouldExtractDiagnosticsFromMetadata = 257;
    v5->_shouldDelayRemotePersistence = 0;
    v5->_audioConfiguration = 0;
    v9 = v5;
  }

  return v5;
}

- (CAMCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence
{
  requestCopy = request;
  v24.receiver = self;
  v24.super_class = CAMCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v24 init];
  if (v7)
  {
    v7->_type = [requestCopy type];
    v7->_captureDevice = [requestCopy captureDevice];
    v7->_captureMode = [requestCopy captureMode];
    v7->_captureOrientation = [requestCopy captureOrientation];
    v7->_captureMirrored = [requestCopy isCaptureMirrored];
    v7->_pressType = [requestCopy pressType];
    v7->_origin = [requestCopy origin];
    v7->_videoEncodingBehavior = [requestCopy videoEncodingBehavior];
    v7->_photoEncodingBehavior = [requestCopy photoEncodingBehavior];
    localDestinationURL = [requestCopy localDestinationURL];
    localDestinationURL = v7->_localDestinationURL;
    v7->_localDestinationURL = localDestinationURL;

    if (persistence)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      persistenceUUID = v7->_persistenceUUID;
      v7->_persistenceUUID = uUIDString;
    }

    else
    {
      persistenceUUID = [requestCopy persistenceUUID];
      uUID = v7->_persistenceUUID;
      v7->_persistenceUUID = persistenceUUID;
    }

    v7->_sessionIdentifier = [requestCopy sessionIdentifier];
    v7->_persistenceOptions = [requestCopy persistenceOptions];
    v7->_deferredPersistenceOptions = [requestCopy deferredPersistenceOptions];
    v7->_temporaryPersistenceOptions = [requestCopy temporaryPersistenceOptions];
    v7->_shouldExtractDiagnosticsFromMetadata = [requestCopy shouldExtractDiagnosticsFromMetadata];
    v7->_shouldPersistDiagnosticsToSidecar = [requestCopy shouldPersistDiagnosticsToSidecar];
    v7->_shouldDelayRemotePersistence = [requestCopy shouldDelayRemotePersistence];
    location = [requestCopy location];
    location = v7->_location;
    v7->_location = location;

    heading = [requestCopy heading];
    heading = v7->_heading;
    v7->_heading = heading;

    v7->_capturedFromPhotoBooth = [requestCopy capturedFromPhotoBooth];
    v7->_assertionIdentifier = [requestCopy assertionIdentifier];
    contactIDsInProximity = [requestCopy contactIDsInProximity];
    contactIDsInProximity = v7->_contactIDsInProximity;
    v7->_contactIDsInProximity = contactIDsInProximity;

    v7->_sharedLibraryMode = [requestCopy sharedLibraryMode];
    sharedLibraryDiagnostics = [requestCopy sharedLibraryDiagnostics];
    sharedLibraryDiagnostics = v7->_sharedLibraryDiagnostics;
    v7->_sharedLibraryDiagnostics = sharedLibraryDiagnostics;

    v7->_audioConfiguration = [requestCopy audioConfiguration];
    v22 = v7;
  }

  return v7;
}

- (int64_t)captureDevicePosition
{
  captureDevice = [(CAMCaptureRequest *)self captureDevice];
  if ((captureDevice - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A69B10[captureDevice - 1];
  }
}

- (id)distinctPersistenceCopy
{
  v2 = [objc_alloc(objc_opt_class()) initWithRequest:self distinctPersistence:1];

  return v2;
}

@end