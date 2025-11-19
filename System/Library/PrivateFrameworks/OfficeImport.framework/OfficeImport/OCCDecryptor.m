@interface OCCDecryptor
+ (id)agileDescriptorNamespace;
+ (id)agilePasswordKeyEncryptorNamespace;
+ (id)allocTempFileWithBase:(id)a3 outFilename:(id *)a4 tempDirectory:(id *)a5;
- (BOOL)decrypt;
- (BOOL)decryptIntoOutputFile;
- (BOOL)isReadProtectedUsingDefaultPassphrase;
- (BOOL)verifyPassphrase:(id)a3;
- (OCCDecryptor)initWithStreamer:(OCCStreamer *)a3;
- (void)dealloc;
- (void)deleteOutputFile;
@end

@implementation OCCDecryptor

- (void)dealloc
{
  [(OCCDecryptor *)self deleteOutputFile];
  mStreamer = self->mStreamer;
  if (mStreamer)
  {
    (*(mStreamer->var0 + 1))(mStreamer);
  }

  v4.receiver = self;
  v4.super_class = OCCDecryptor;
  [(OCCDecryptor *)&v4 dealloc];
}

- (OCCDecryptor)initWithStreamer:(OCCStreamer *)a3
{
  v10.receiver = self;
  v10.super_class = OCCDecryptor;
  v4 = [(OCCDecryptor *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->mStreamer = a3;
    var2 = a3->var2;
    if (var2)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:var2];
      mBaseStringForOutputFilename = v5->mBaseStringForOutputFilename;
      v5->mBaseStringForOutputFilename = v7;
    }
  }

  return v5;
}

- (BOOL)isReadProtectedUsingDefaultPassphrase
{
  v3 = (*(self->mStreamer->var0 + 2))(self->mStreamer, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [(OCCDecryptor *)self verifyPassphrase:v4];

  return v5;
}

- (void)deleteOutputFile
{
  mOutputFilename = self->mOutputFilename;
  if (mOutputFilename)
  {
    TCRemoveFileSecurely(mOutputFilename);
    v4 = self->mOutputFilename;
    self->mOutputFilename = 0;
  }

  mTempDirectory = self->mTempDirectory;
  if (mTempDirectory)
  {
    self->mTempDirectory = 0;
  }
}

- (BOOL)decrypt
{
  v3 = objc_autoreleasePoolPush();
  mBaseStringForOutputFilename = self->mBaseStringForOutputFilename;
  if (mBaseStringForOutputFilename)
  {
    v5 = mBaseStringForOutputFilename;
  }

  else
  {
    v5 = @"temp.tmp";
  }

  v13 = 0;
  v14 = 0;
  v6 = [objc_opt_class() allocTempFileWithBase:v5 outFilename:&v14 tempDirectory:&v13];
  v7 = v14;
  v8 = v14;
  v9 = v13;
  v10 = v13;
  objc_storeStrong(&self->mOutputFilename, v7);
  objc_storeStrong(&self->mTempDirectory, v9);
  if (v6)
  {
    [v6 closeFile];
    v11 = [(OCCDecryptor *)self decryptIntoOutputFile];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v11;
}

- (BOOL)verifyPassphrase:(id)a3
{
  var1 = self->mStreamer->var1;
  v4 = [a3 getDataUsingOfficeCryptographicEncoding];
  LOBYTE(var1) = OCCCryptoKey::verifyPassphrase(var1, [v4 bytes], objc_msgSend(v4, "length"));

  return var1;
}

- (BOOL)decryptIntoOutputFile
{
  v3 = fopen([(NSString *)self->mOutputFilename UTF8String], "w+b");
  if (v3)
  {
    v4 = v3;
    v5 = (*(self->mStreamer->var0 + 4))(self->mStreamer, v3);
    fclose(v4);
    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (id)allocTempFileWithBase:(id)a3 outFilename:(id *)a4 tempDirectory:(id *)a5
{
  v7 = a3;
  v8 = [v7 pathExtension];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];
  v12 = [v9 stringWithFormat:@"%@.XXXXXX.%@", v11, v8];

  v29 = 0;
  v13 = [[OITSUTemporaryDirectory alloc] initWithError:&v29];
  v14 = v29;
  v15 = v14;
  if (v13)
  {
    v16 = [(OITSUTemporaryDirectory *)v13 path];
    v17 = [v16 stringByAppendingPathComponent:v12];

    if (a5)
    {
      v18 = v13;
      *a5 = v13;
    }

    v19 = [(NSString *)v17 fileSystemRepresentation];
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    if (![v20 fileExistsAtPath:v17] || (TCRemoveFileSecurely(v17) & 1) != 0)
    {
      if (v19)
      {
        v28 = a4;
        v21 = strlen(v19);
        v22 = malloc_type_malloc(v21 + 1, 0x100004077774924uLL);
        v23 = v22;
        if (v22)
        {
          strcpy(v22, v19);
          v24 = mkstemps(v23, [v8 length] + 1);
          if (v24 != -1)
          {
            v25 = [MEMORY[0x277CCAA00] defaultManager];
            *v28 = [v25 stringWithFileSystemRepresentation:v23 length:strlen(v23)];

            free(v23);
            v26 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v24];
LABEL_14:

            goto LABEL_15;
          }

          free(v23);
        }
      }

      else
      {
        NSLog(@"[TSUTemporaryDirectory] Temporary file system representation is null");
      }
    }

    v26 = 0;
    goto LABEL_14;
  }

  NSLog(@"[TSUTemporaryDirectory] Could not create temporary directory : %@", v14);
  v26 = 0;
LABEL_15:

  return v26;
}

+ (id)agileDescriptorNamespace
{
  v2 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/2006/encryption"];

  return v2;
}

+ (id)agilePasswordKeyEncryptorNamespace
{
  v2 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/2006/keyEncryptor/password"];

  return v2;
}

@end