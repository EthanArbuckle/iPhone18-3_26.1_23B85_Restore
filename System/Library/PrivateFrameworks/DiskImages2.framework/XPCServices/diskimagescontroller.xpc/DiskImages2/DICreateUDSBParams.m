@interface DICreateUDSBParams
+ (BOOL)checkExistingFileWithURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5;
- (DICreateUDSBParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateUDSBParams

- (DICreateUDSBParams)initWithURL:(id)a3 numBlocks:(unint64_t)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = DICreateUDSBParams;
  result = [(DICreateParams *)&v6 initWithURL:a3 numBlocks:a4 error:a5];
  if (result)
  {
    result->_sparseBundleBandSize = 0x4000000;
  }

  return result;
}

- (void)createDiskImageParamsXPC
{
  v3 = [SparseBundleBackendXPC alloc];
  v4 = [(DIBaseParams *)self inputURL];
  v6 = [(SparseBundleBackendXPC *)v3 initWithURL:v4 fileOpenFlags:514 bandSize:[(DICreateUDSBParams *)self sparseBundleBandSize]];

  v5 = [(DiskImageParamsXPC *)[DiskImageParamsSparseBundle_XPC alloc] initWithBackendXPC:v6];
  [(DIBaseParams *)self setDiskImageParamsXPC:v5];
}

+ (BOOL)checkExistingFileWithURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  if (!a4)
  {
    v9 = @"The requested URL is an existing regular file";
    v10 = 20;
LABEL_6:
    v8 = [DIError failWithPOSIXCode:v10 verboseInfo:v9 error:a5];
    goto LABEL_7;
  }

  if (![SparseBundleBackendXPC isSparseBundleWithURL:v7])
  {
    v9 = @"The requested URL is an existing non-sparsebundle folder";
    v10 = 17;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

@end