@interface DYCaptureSessionInfo
+ (id)symbolicatorSignatureFromCaptureStore:(id)a3;
+ (int)platformOfCaptureStore:(id)a3;
+ (unsigned)graphicsAPIOfCaptureStore:(id)a3;
- (BOOL)harvestStateAtEnd;
- (BOOL)lockGraphicsAfterCompletion;
- (BOOL)suspendAfterCompletion;
- (BOOL)triggerOnNextGraphicsCommand;
- (DYCaptureSessionInfo)init;
- (DYCaptureSessionInfo)initWithCaptureStore:(id)a3;
- (NSArray)guestAppArguments;
- (NSDictionary)guestAppEnvironment;
- (NSString)guestAppBundleIdentifier;
- (NSString)guestAppCurrentDirectory;
- (NSString)guestAppPath;
- (NSString)guestAppTitle;
- (id)labelForQueueID:(unint64_t)a3;
- (id)labelForThreadID:(unint64_t)a3;
- (int)linkTimeVersionForLibrary:(id)a3;
- (unsigned)frameLimit;
- (unsigned)triggerFrame;
- (void)dealloc;
@end

@implementation DYCaptureSessionInfo

+ (unsigned)graphicsAPIOfCaptureStore:(id)a3
{
  v3 = [a3 metadataValueForKey:*MEMORY[0x277D0B080]];
  if (v3)
  {

    LODWORD(v3) = [v3 unsignedIntValue];
  }

  return v3;
}

+ (id)symbolicatorSignatureFromCaptureStore:(id)a3
{
  v3 = [a3 copyAdjunctDataForFilename:@"(cs-sig)" error:0];

  return v3;
}

+ (int)platformOfCaptureStore:(id)a3
{
  v3 = [objc_msgSend(a3 openFileWithFilename:@"(device info)" error:{0), "decodeArchivedObject"}];

  return [v3 platform];
}

- (DYCaptureSessionInfo)init
{
  [(DYCaptureSessionInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYCaptureSessionInfo)initWithCaptureStore:(id)a3
{
  v16.receiver = self;
  v16.super_class = DYCaptureSessionInfo;
  v4 = [(DYCaptureSessionInfo *)&v16 init];
  if (v4)
  {
    v5 = [a3 metadataValueForKey:*MEMORY[0x277D0B070]];
    if (!v5)
    {
      v5 = [objc_msgSend(a3 metadataValueForKey:{@"kDYCaptureArchiveCaptureSessionInfoMetadataKey", "objectForKey:", @"kDysonCapturedFrameCountKey"}];
    }

    v4->_launchDictionary = [a3 metadataValueForKey:*MEMORY[0x277D0B098]];
    v4->_configurationDictionary = [a3 metadataValueForKey:*MEMORY[0x277D0B078]];
    v4->_capturedFramesCount = [v5 unsignedIntegerValue];
    v4->_guestAppWasLinkedOnApexOrLater = [objc_msgSend(a3 metadataValueForKey:{*MEMORY[0x277D0B0A0]), "BOOLValue"}];
    v4->_guestAppInfoPlist = [a3 metadataValueForKey:*MEMORY[0x277D0B0A8]];
    v4->_libraryLinkTimeVersions = [a3 metadataValueForKey:*MEMORY[0x277D0B0B0]];
    v4->_graphicsApi = [DYCaptureSessionInfo graphicsAPIOfCaptureStore:a3];
    v6 = [a3 metadataValueForKey:*MEMORY[0x277D0B088]];
    if (v6)
    {
      v4->_version.version = [v6 intValue];
      v7 = [a3 metadataValueForKey:*MEMORY[0x277D0B090]];
      v4->_patchVersion = v7;
      v6 = [(NSString *)v7 UTF8String];
    }

    else
    {
      v4->_version.version = 0;
    }

    v4->_version.patch = v6;
    v4->_interposerVersion = &v4->_version;
    v8 = [a3 metadataValueForKey:*MEMORY[0x277D0B0B8]];
    if (v8)
    {
      v9 = [v8 unsignedIntValue];
    }

    else
    {
      v9 = +[DYDeviceInfo defaultNativePointerSize];
    }

    v4->_nativePointerSize = v9;
    v10 = [a3 metadataValueForKey:*MEMORY[0x277D0B068]];
    if (v10)
    {
      v4->_isBoundaryLess = [v10 BOOLValue];
    }

    if ([a3 resolveFilename:@"(control device info)" error:0])
    {
      v4->_controlDeviceInfo = [objc_msgSend(a3 openFileWithFilename:@"(control device info)" error:{0), "decodeArchivedObject"}];
    }

    if ([a3 resolveFilename:@"is_almond" error:0])
    {
      v4->_isAlmond = 1;
    }

    v11 = [objc_msgSend(a3 openFileWithFilename:@"(queue/thread labels)" error:{0), "decodeArchivedObject"}];
    v4->_queueLabels = [v11 objectForKey:@"queues"];
    v4->_threadLabels = [v11 objectForKey:@"threads"];
    if (![a3 resolveFilename:@"(device info)" error:0])
    {
      v4->_deviceInfo = objc_alloc_init(DYDeviceInfo);
      v12 = [objc_msgSend(a3 metadataValueForKey:{@"kDYCaptureArchiveCaptureSessionInfoMetadataKey", "objectForKey:", @"kDYPArchiveType"}];
      if ([v12 isEqualToString:@"kDYEmbeddedArchiveType"])
      {
        deviceInfo = v4->_deviceInfo;
        v14 = 2;
      }

      else
      {
        if (![v12 isEqualToString:@"kDYDesktopArchiveType"])
        {
          return v4;
        }

        deviceInfo = v4->_deviceInfo;
        v14 = 1;
      }

      [(DYDeviceInfo *)deviceInfo setPlatform:v14];
      return v4;
    }

    v4->_deviceInfo = [objc_msgSend(a3 openFileWithFilename:@"(device info)" error:{0), "decodeArchivedObject"}];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYCaptureSessionInfo;
  [(DYCaptureSessionInfo *)&v3 dealloc];
}

- (NSString)guestAppTitle
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B210]];

  return v2;
}

- (NSString)guestAppBundleIdentifier
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B1D8]];

  return v2;
}

- (NSString)guestAppPath
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B200]];

  return v2;
}

- (NSString)guestAppCurrentDirectory
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B1E8]];

  return v2;
}

- (NSArray)guestAppArguments
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B1D0]];

  return v2;
}

- (NSDictionary)guestAppEnvironment
{
  v2 = [(NSDictionary *)self->_launchDictionary objectForKey:*MEMORY[0x277D0B1F8]];

  return v2;
}

- (unsigned)triggerFrame
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"TriggerFrame"];

  return [v2 unsignedIntValue];
}

- (unsigned)frameLimit
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"FrameLimit"];

  return [v2 unsignedIntValue];
}

- (BOOL)triggerOnNextGraphicsCommand
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"TriggerOnNextGLCommand"];

  return [v2 BOOLValue];
}

- (BOOL)harvestStateAtEnd
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"HarvestStateAtEnd"];

  return [v2 BOOLValue];
}

- (BOOL)suspendAfterCompletion
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"SuspendAfterCompletion"];

  return [v2 BOOLValue];
}

- (BOOL)lockGraphicsAfterCompletion
{
  v2 = [(NSDictionary *)self->_configurationDictionary objectForKey:@"LockOpenGLAfterCompletion"];

  return [v2 BOOLValue];
}

- (int)linkTimeVersionForLibrary:(id)a3
{
  v3 = [(NSDictionary *)self->_libraryLinkTimeVersions objectForKey:a3];
  if (!v3)
  {
    return -1;
  }

  return [v3 intValue];
}

- (id)labelForQueueID:(unint64_t)a3
{
  queueLabels = self->_queueLabels;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];

  return [(NSDictionary *)queueLabels objectForKey:v4];
}

- (id)labelForThreadID:(unint64_t)a3
{
  threadLabels = self->_threadLabels;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];

  return [(NSDictionary *)threadLabels objectForKey:v4];
}

@end