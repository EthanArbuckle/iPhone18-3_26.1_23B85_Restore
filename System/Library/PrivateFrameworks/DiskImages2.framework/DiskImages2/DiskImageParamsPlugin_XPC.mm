@interface DiskImageParamsPlugin_XPC
- (BOOL)setBlockSize:(unint64_t)size error:(id *)error;
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsPlugin_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  [(DiskImageParamsXPC *)self backendXPC];
  [objc_claimAutoreleasedReturnValue() pluginHeader];
  operator new();
}

- (unint64_t)numBlocks
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v3 = (*(*[backendXPC pluginHeader] + 16))();

  return v3;
}

- (BOOL)setBlockSize:(unint64_t)size error:(id *)error
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v7 = (*(*[backendXPC pluginHeader] + 8))() == size || +[DIError failWithPOSIXCode:description:error:](DIError, "failWithPOSIXCode:description:error:", 22, @"Invalid block size for image", error);

  return v7;
}

@end