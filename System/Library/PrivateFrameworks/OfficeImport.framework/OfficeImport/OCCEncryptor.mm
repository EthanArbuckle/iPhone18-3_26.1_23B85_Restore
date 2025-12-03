@interface OCCEncryptor
+ (id)allocTempFileWithBase:(id)base filename:(id *)filename;
- (BOOL)encrypt;
- (BOOL)encryptIntoOutputFile;
- (OCCEncryptor)initWithStreamer:(OCCStreamer *)streamer;
- (void)dealloc;
@end

@implementation OCCEncryptor

- (void)dealloc
{
  mStreamer = self->mStreamer;
  if (mStreamer)
  {
    (*(mStreamer->var0 + 1))(mStreamer, a2);
  }

  v4.receiver = self;
  v4.super_class = OCCEncryptor;
  [(OCCEncryptor *)&v4 dealloc];
}

- (OCCEncryptor)initWithStreamer:(OCCStreamer *)streamer
{
  v10.receiver = self;
  v10.super_class = OCCEncryptor;
  v4 = [(OCCEncryptor *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->mStreamer = streamer;
    var2 = streamer->var2;
    if (var2)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:var2];
      mOutputFilename = v5->mOutputFilename;
      v5->mOutputFilename = v7;
    }
  }

  return v5;
}

- (BOOL)encrypt
{
  v3 = objc_autoreleasePoolPush();
  LOBYTE(self) = [(OCCEncryptor *)self encryptIntoOutputFile];
  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)encryptIntoOutputFile
{
  v3 = fopen([(NSString *)self->mOutputFilename UTF8String], "w+b");
  if (v3)
  {
    v4 = v3;
    v5 = (*(self->mStreamer->var0 + 5))(self->mStreamer, v3);
    fclose(v4);
    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (id)allocTempFileWithBase:(id)base filename:(id *)filename
{
  v5 = MEMORY[0x277CCACA8];
  lastPathComponent = [base lastPathComponent];
  v7 = [v5 stringWithFormat:@"%@.XXXXXX", lastPathComponent];

  v8 = NSTemporaryDirectory();
  v9 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];

    v8 = v10;
  }

  v11 = [v8 stringByAppendingPathComponent:v7];
  fileSystemRepresentation = [(NSString *)v11 fileSystemRepresentation];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v11] && (TCRemoveFileSecurely(v11) & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = strlen(fileSystemRepresentation);
  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v17 = strcpy(v15, fileSystemRepresentation);
  v18 = mkstemp(v17);
  if (v18 == -1)
  {
    free(v16);
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  *filename = [defaultManager2 stringWithFileSystemRepresentation:v16 length:strlen(v16)];

  free(v16);
  v20 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v18];
LABEL_10:

  return v20;
}

@end