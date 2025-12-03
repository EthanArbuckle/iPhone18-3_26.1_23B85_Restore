@interface BlankDiskImageCreator
- (BOOL)createImageWithNumBlocks:(unint64_t)blocks error:(id *)error;
- (BlankDiskImageCreator)initWithURL:(id)l error:(id *)error;
@end

@implementation BlankDiskImageCreator

- (BlankDiskImageCreator)initWithURL:(id)l error:(id *)error
{
  v5.receiver = self;
  v5.super_class = BlankDiskImageCreator;
  return [(BaseDiskImageCreator *)&v5 initWithURL:l defaultFormat:1 error:error];
}

- (BOOL)createImageWithNumBlocks:(unint64_t)blocks error:(id *)error
{
  if ([(BaseDiskImageCreator *)self imageFormat]== 1 || [(BaseDiskImageCreator *)self imageFormat]== 9 || [(BaseDiskImageCreator *)self imageFormat]== 2)
  {
    [(BaseDiskImageCreator *)self setNumBlocks:blocks];
    v7 = [(BaseDiskImageCreator *)self createEmptyImageWithError:error];
    if (v7)
    {
      if (![(BaseDiskImageCreator *)self fileSystem]|| ([(BaseDiskImageCreator *)self formatImageWithCreateParams:v7 error:error], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = [(BaseDiskImageCreator *)self ejectWithError:error], v8, v9))
      {
        error = 1;
LABEL_13:

        goto LABEL_14;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [(BaseDiskImageCreator *)self URL];
      [defaultManager removeItemAtURL:v12 error:0];
    }

    error = 0;
    goto LABEL_13;
  }

  error = [DIError failWithPOSIXCode:22 verboseInfo:@"Only RAW error:ASIF and UDSB formats are supported for new blank images", error];
LABEL_14:
  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
  return error;
}

@end