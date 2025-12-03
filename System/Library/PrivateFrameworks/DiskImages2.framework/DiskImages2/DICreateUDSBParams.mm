@interface DICreateUDSBParams
+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error;
- (DICreateUDSBParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateUDSBParams

- (DICreateUDSBParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error
{
  v6.receiver = self;
  v6.super_class = DICreateUDSBParams;
  result = [(DICreateParams *)&v6 initWithURL:l numBlocks:blocks error:error];
  if (result)
  {
    result->_sparseBundleBandSize = 0x4000000;
  }

  return result;
}

- (void)createDiskImageParamsXPC
{
  v3 = [SparseBundleBackendXPC alloc];
  inputURL = [(DIBaseParams *)self inputURL];
  v6 = [(SparseBundleBackendXPC *)v3 initWithURL:inputURL fileOpenFlags:514 bandSize:[(DICreateUDSBParams *)self sparseBundleBandSize]];

  v5 = [(DiskImageParamsXPC *)[DiskImageParamsSparseBundle_XPC alloc] initWithBackendXPC:v6];
  [(DIBaseParams *)self setDiskImageParamsXPC:v5];
}

+ (BOOL)checkExistingFileWithURL:(id)l isDirectory:(BOOL)directory error:(id *)error
{
  lCopy = l;
  if (!directory)
  {
    v9 = @"The requested URL is an existing regular file";
    v10 = 20;
LABEL_6:
    v8 = [DIError failWithPOSIXCode:v10 verboseInfo:v9 error:error];
    goto LABEL_7;
  }

  if (![SparseBundleBackendXPC isSparseBundleWithURL:lCopy])
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