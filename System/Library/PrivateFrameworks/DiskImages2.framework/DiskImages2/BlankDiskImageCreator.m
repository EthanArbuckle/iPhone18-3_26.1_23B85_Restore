@interface BlankDiskImageCreator
- (BOOL)createImageWithNumBlocks:(unint64_t)a3 error:(id *)a4;
- (BlankDiskImageCreator)initWithURL:(id)a3 error:(id *)a4;
@end

@implementation BlankDiskImageCreator

- (BlankDiskImageCreator)initWithURL:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = BlankDiskImageCreator;
  return [(BaseDiskImageCreator *)&v5 initWithURL:a3 defaultFormat:1 error:a4];
}

- (BOOL)createImageWithNumBlocks:(unint64_t)a3 error:(id *)a4
{
  if ([(BaseDiskImageCreator *)self imageFormat]== 1 || [(BaseDiskImageCreator *)self imageFormat]== 9 || [(BaseDiskImageCreator *)self imageFormat]== 2)
  {
    [(BaseDiskImageCreator *)self setNumBlocks:a3];
    v7 = [(BaseDiskImageCreator *)self createEmptyImageWithError:a4];
    if (v7)
    {
      if (![(BaseDiskImageCreator *)self fileSystem]|| ([(BaseDiskImageCreator *)self formatImageWithCreateParams:v7 error:a4], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = [(BaseDiskImageCreator *)self ejectWithError:a4], v8, v9))
      {
        v10 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [(BaseDiskImageCreator *)self URL];
      [v11 removeItemAtURL:v12 error:0];
    }

    v10 = 0;
    goto LABEL_13;
  }

  v10 = [DIError failWithPOSIXCode:22 verboseInfo:@"Only RAW error:ASIF and UDSB formats are supported for new blank images", a4];
LABEL_14:
  [(BaseDiskImageCreator *)self setTemporaryPassphrase:0];
  return v10;
}

@end