@interface OCImporter
+ (BOOL)URLIsXML:(id)a3;
+ (Class)binaryReaderClass;
+ (Class)readerClassForURL:(id)a3;
+ (Class)xmlReaderClass;
+ (id)xmlPathExtensions;
+ (void)initialize;
- (BOOL)isDocumentEncryptedUnsupportedVersion:(BOOL *)a3 errorMessage:(id *)a4;
- (BOOL)isDocumentEncryptedUnsupportedVersionHelper:(BOOL *)a3 errorMessage:(id *)a4 readError:(BOOL *)a5;
- (BOOL)isXML;
- (BOOL)setPassphrase:(id)a3;
- (Class)readerClass;
- (OCImporter)initWithData:(id)a3;
- (OCImporter)initWithURL:(id)a3;
- (id)displayName;
- (void)dealloc;
- (void)finalizeWithDocumentState:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation OCImporter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

- (OCImporter)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OCImporter;
  v5 = [(OCMapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OCImporter *)v5 setURL:v4];
    xmlSetExternalEntityLoader(+[CXCommon ignoreExternalEntityLoader]);
  }

  return v6;
}

- (OCImporter)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OCImporter;
  v6 = [(OCMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mData, a3);
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

- (void)setURL:(id)a3
{
  v5 = a3;
  if (self->mURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mURL, a3);
    v5 = v6;
  }
}

- (BOOL)isDocumentEncryptedUnsupportedVersionHelper:(BOOL *)a3 errorMessage:(id *)a4 readError:(BOOL *)a5
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
        v10 = [(OCDReader *)v9 decryptor];
        v11 = [v10 isReadProtectedUsingDefaultPassphrase];

        if ((v11 & 1) == 0)
        {
          *a3 = 0;
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
          *a3 = 1;
          if (a4)
          {
            *a4 = kErrorMessageUnsupportedEncryption;
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
    v13 = [(OCDReader *)self->mReader startError];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 localizedDescription];
      v16 = [TCInvalidFileFormatMessage messageText];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        *a5 = 1;
        v18 = [v14 localizedDescription];
        *a4 = [v18 copy];
      }
    }
  }

  return 0;
}

- (BOOL)isDocumentEncryptedUnsupportedVersion:(BOOL *)a3 errorMessage:(id *)a4
{
  v9 = 0;
  if ([(OCImporter *)self isDocumentEncryptedUnsupportedVersionHelper:a3 errorMessage:a4 readError:&v9])
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
  *a4 = 0;
  return [(OCImporter *)self isDocumentEncryptedUnsupportedVersionHelper:a3 errorMessage:a4 readError:&v9];
}

- (BOOL)setPassphrase:(id)a3
{
  v4 = a3;
  v5 = self->mReader;
  v6 = [(OCDReader *)v5 decryptor];
  v7 = [v6 verifyPassphrase:v4];

  if (v7)
  {
    [(OCImporter *)self setLastPasswordAttempted:v4];
  }

  return v7;
}

- (id)displayName
{
  v2 = [(OCDReader *)self->mReader fileName];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (void)finalizeWithDocumentState:(id)a3
{
  v4 = a3;
  [TCProgressContext createStageWithSteps:@"Background objects" takingSteps:100.0 name:10.0];
  v3 = [v4 backgroundThreadManager];
  [v3 waitUntilComplete];

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

+ (BOOL)URLIsXML:(id)a3
{
  v4 = [a3 pathExtension];
  v5 = [v4 lowercaseString];

  v6 = [a1 xmlPathExtensions];
  LOBYTE(a1) = [v6 indexOfObject:v5] != 0x7FFFFFFFFFFFFFFFLL;

  return a1;
}

+ (Class)readerClassForURL:(id)a3
{
  v4 = a3;
  if ([a1 URLIsXML:v4])
  {
    v5 = [a1 xmlReaderClass];
  }

  else
  {
    v5 = [a1 binaryReaderClass];
  }

  v6 = v5;
  v7 = v5;

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
  v3 = [(OCImporter *)self isXML];
  v4 = [(OCImporter *)self tryAlternateReader];
  v5 = objc_opt_class();
  if (v3 == v4)
  {
    v6 = [v5 binaryReaderClass];
  }

  else
  {
    v6 = [v5 xmlReaderClass];
  }

  return v6;
}

@end