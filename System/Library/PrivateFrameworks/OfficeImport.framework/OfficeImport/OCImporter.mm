@interface OCImporter
+ (BOOL)URLIsXML:(id)l;
+ (Class)binaryReaderClass;
+ (Class)readerClassForURL:(id)l;
+ (Class)xmlReaderClass;
+ (id)xmlPathExtensions;
+ (void)initialize;
- (BOOL)isDocumentEncryptedUnsupportedVersion:(BOOL *)version errorMessage:(id *)message;
- (BOOL)isDocumentEncryptedUnsupportedVersionHelper:(BOOL *)helper errorMessage:(id *)message readError:(BOOL *)error;
- (BOOL)isXML;
- (BOOL)setPassphrase:(id)passphrase;
- (Class)readerClass;
- (OCImporter)initWithData:(id)data;
- (OCImporter)initWithURL:(id)l;
- (id)displayName;
- (void)dealloc;
- (void)finalizeWithDocumentState:(id)state;
- (void)setURL:(id)l;
@end

@implementation OCImporter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

- (OCImporter)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = OCImporter;
  v5 = [(OCMapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OCImporter *)v5 setURL:lCopy];
    xmlSetExternalEntityLoader(+[CXCommon ignoreExternalEntityLoader]);
  }

  return v6;
}

- (OCImporter)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = OCImporter;
  v6 = [(OCMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mData, data);
  }

  return v7;
}

- (void)dealloc
{
  xmlSetExternalEntityLoader(+[CXCommon defaultExternalEntityLoader]);
  v3.receiver = self;
  v3.super_class = OCImporter;
  [(OCImporter *)&v3 dealloc];
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (self->mURL != lCopy)
  {
    v6 = lCopy;
    objc_storeStrong(&self->mURL, l);
    lCopy = v6;
  }
}

- (BOOL)isDocumentEncryptedUnsupportedVersionHelper:(BOOL *)helper errorMessage:(id *)message readError:(BOOL *)error
{
  if ([(OCImporter *)self start])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = self->mReader;
      v21 = 0;
      if (([(OCDReader *)v9 retainDecryptorWithErrorCode:&v21]& 1) != 0)
      {
        decryptor = [(OCDReader *)v9 decryptor];
        isReadProtectedUsingDefaultPassphrase = [decryptor isReadProtectedUsingDefaultPassphrase];

        if ((isReadProtectedUsingDefaultPassphrase & 1) == 0)
        {
          *helper = 0;
          v12 = 1;
LABEL_18:

          return v12;
        }
      }

      else
      {
        v19 = v21;
        if (v21 == 8011 || v21 == 8001)
        {
          [(OCDReader *)self->mReader verifyFileFormat];
          v19 = v21;
        }

        if (v19 == 8003)
        {
          v12 = 1;
          *helper = 1;
          if (message)
          {
            *message = kErrorMessageUnsupportedEncryption;
          }

          goto LABEL_18;
        }
      }

      v12 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    startError = [(OCDReader *)self->mReader startError];
    v14 = startError;
    if (startError)
    {
      localizedDescription = [startError localizedDescription];
      messageText = [TCInvalidFileFormatMessage messageText];
      v17 = [localizedDescription isEqualToString:messageText];

      if (v17)
      {
        *error = 1;
        localizedDescription2 = [v14 localizedDescription];
        *message = [localizedDescription2 copy];
      }
    }
  }

  return 0;
}

- (BOOL)isDocumentEncryptedUnsupportedVersion:(BOOL *)version errorMessage:(id *)message
{
  v9 = 0;
  if ([(OCImporter *)self isDocumentEncryptedUnsupportedVersionHelper:version errorMessage:message readError:&v9])
  {
    return 1;
  }

  if (v9 != 1 || self->mTryAlternateReader)
  {
    return 0;
  }

  mReader = self->mReader;
  self->mReader = 0;

  self->mTryAlternateReader = 1;
  *message = 0;
  return [(OCImporter *)self isDocumentEncryptedUnsupportedVersionHelper:version errorMessage:message readError:&v9];
}

- (BOOL)setPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  v5 = self->mReader;
  decryptor = [(OCDReader *)v5 decryptor];
  v7 = [decryptor verifyPassphrase:passphraseCopy];

  if (v7)
  {
    [(OCImporter *)self setLastPasswordAttempted:passphraseCopy];
  }

  return v7;
}

- (id)displayName
{
  fileName = [(OCDReader *)self->mReader fileName];
  lastPathComponent = [fileName lastPathComponent];

  return lastPathComponent;
}

- (void)finalizeWithDocumentState:(id)state
{
  stateCopy = state;
  [TCProgressContext createStageWithSteps:@"Background objects" takingSteps:100.0 name:10.0];
  backgroundThreadManager = [stateCopy backgroundThreadManager];
  [backgroundThreadManager waitUntilComplete];

  +[TCProgressContext endStage];
  +[TCMessageContext reportWarningsToDelegate];
}

+ (id)xmlPathExtensions
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OCImporter xmlPathExtensions]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/ImportExport/OCImporter.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:211 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "+[OCImporter xmlPathExtensions]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (Class)binaryReaderClass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OCImporter binaryReaderClass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/ImportExport/OCImporter.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:216 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "+[OCImporter binaryReaderClass]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (Class)xmlReaderClass
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OCImporter xmlReaderClass]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeCommon/ImportExport/OCImporter.mm"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:221 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"Abstract method not overridden by %@: %s", v9, "+[OCImporter xmlReaderClass]"];
  v11 = [v6 exceptionWithName:*MEMORY[0x277CBE658] reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (BOOL)URLIsXML:(id)l
{
  pathExtension = [l pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  xmlPathExtensions = [self xmlPathExtensions];
  LOBYTE(self) = [xmlPathExtensions indexOfObject:lowercaseString] != 0x7FFFFFFFFFFFFFFFLL;

  return self;
}

+ (Class)readerClassForURL:(id)l
{
  lCopy = l;
  if ([self URLIsXML:lCopy])
  {
    xmlReaderClass = [self xmlReaderClass];
  }

  else
  {
    xmlReaderClass = [self binaryReaderClass];
  }

  v6 = xmlReaderClass;
  v7 = xmlReaderClass;

  return v6;
}

- (BOOL)isXML
{
  v3 = objc_opt_class();
  mURL = self->mURL;

  return [v3 URLIsXML:mURL];
}

- (Class)readerClass
{
  isXML = [(OCImporter *)self isXML];
  tryAlternateReader = [(OCImporter *)self tryAlternateReader];
  v5 = objc_opt_class();
  if (isXML == tryAlternateReader)
  {
    binaryReaderClass = [v5 binaryReaderClass];
  }

  else
  {
    binaryReaderClass = [v5 xmlReaderClass];
  }

  return binaryReaderClass;
}

@end