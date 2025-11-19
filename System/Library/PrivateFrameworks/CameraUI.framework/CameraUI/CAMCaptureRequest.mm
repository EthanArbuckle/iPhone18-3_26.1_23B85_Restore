@interface CAMCaptureRequest
- (BOOL)shouldPersistToIncomingDirectory;
- (CAMCaptureRequest)init;
- (CAMCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4;
- (CAMCaptureRequest)initWithType:(int64_t)a3;
- (id)distinctPersistenceCopy;
- (int64_t)captureDevicePosition;
@end

@implementation CAMCaptureRequest

- (BOOL)shouldPersistToIncomingDirectory
{
  v3 = objc_opt_class();
  v4 = [(CAMCaptureRequest *)self persistenceOptions];
  v5 = [(CAMCaptureRequest *)self temporaryPersistenceOptions];

  return [v3 shouldPersistToIncomingDirectoryWithPersistenceOptions:v4 temporaryPersistenceOptions:v5];
}

- (CAMCaptureRequest)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Instances of CAMCaptureRequest must be initialized with -initWithType:"];

  return 0;
}

- (CAMCaptureRequest)initWithType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = CAMCaptureRequest;
  v4 = [(CAMCaptureRequest *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v4->_captureDevice = 0;
    v4->_captureMode = 0;
    v4->_captureOrientation = 1;
    v4->_captureMirrored = 0;
    v4->_pressType = -1;
    v4->_origin = 0;
    v4->_deferredPersistenceOptions = 0;
    v4->_temporaryPersistenceOptions = 0;
    v4->_persistenceOptions = 2;
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    persistenceUUID = v5->_persistenceUUID;
    v5->_persistenceUUID = v7;

    *&v5->_shouldExtractDiagnosticsFromMetadata = 257;
    v5->_shouldDelayRemotePersistence = 0;
    v5->_audioConfiguration = 0;
    v9 = v5;
  }

  return v5;
}

- (CAMCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = CAMCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v24 init];
  if (v7)
  {
    v7->_type = [v6 type];
    v7->_captureDevice = [v6 captureDevice];
    v7->_captureMode = [v6 captureMode];
    v7->_captureOrientation = [v6 captureOrientation];
    v7->_captureMirrored = [v6 isCaptureMirrored];
    v7->_pressType = [v6 pressType];
    v7->_origin = [v6 origin];
    v7->_videoEncodingBehavior = [v6 videoEncodingBehavior];
    v7->_photoEncodingBehavior = [v6 photoEncodingBehavior];
    v8 = [v6 localDestinationURL];
    localDestinationURL = v7->_localDestinationURL;
    v7->_localDestinationURL = v8;

    if (a4)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      persistenceUUID = v7->_persistenceUUID;
      v7->_persistenceUUID = v11;
    }

    else
    {
      v13 = [v6 persistenceUUID];
      v10 = v7->_persistenceUUID;
      v7->_persistenceUUID = v13;
    }

    v7->_sessionIdentifier = [v6 sessionIdentifier];
    v7->_persistenceOptions = [v6 persistenceOptions];
    v7->_deferredPersistenceOptions = [v6 deferredPersistenceOptions];
    v7->_temporaryPersistenceOptions = [v6 temporaryPersistenceOptions];
    v7->_shouldExtractDiagnosticsFromMetadata = [v6 shouldExtractDiagnosticsFromMetadata];
    v7->_shouldPersistDiagnosticsToSidecar = [v6 shouldPersistDiagnosticsToSidecar];
    v7->_shouldDelayRemotePersistence = [v6 shouldDelayRemotePersistence];
    v14 = [v6 location];
    location = v7->_location;
    v7->_location = v14;

    v16 = [v6 heading];
    heading = v7->_heading;
    v7->_heading = v16;

    v7->_capturedFromPhotoBooth = [v6 capturedFromPhotoBooth];
    v7->_assertionIdentifier = [v6 assertionIdentifier];
    v18 = [v6 contactIDsInProximity];
    contactIDsInProximity = v7->_contactIDsInProximity;
    v7->_contactIDsInProximity = v18;

    v7->_sharedLibraryMode = [v6 sharedLibraryMode];
    v20 = [v6 sharedLibraryDiagnostics];
    sharedLibraryDiagnostics = v7->_sharedLibraryDiagnostics;
    v7->_sharedLibraryDiagnostics = v20;

    v7->_audioConfiguration = [v6 audioConfiguration];
    v22 = v7;
  }

  return v7;
}

- (int64_t)captureDevicePosition
{
  v2 = [(CAMCaptureRequest *)self captureDevice];
  if ((v2 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A69B10[v2 - 1];
  }
}

- (id)distinctPersistenceCopy
{
  v2 = [objc_alloc(objc_opt_class()) initWithRequest:self distinctPersistence:1];

  return v2;
}

@end