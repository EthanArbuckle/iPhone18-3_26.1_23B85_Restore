@interface DiskImageParamsRAM_XPC
- (DiskImageParamsRAM_XPC)initWithURL:(id)l error:(id *)error;
- (unique_ptr<DiskImage,)createSinkDiskImage;
- (void)setBlockSize:(unint64_t)size;
@end

@implementation DiskImageParamsRAM_XPC

- (DiskImageParamsRAM_XPC)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  host = [lCopy host];

  if (host && ([lCopy host], v8 = objc_claimAutoreleasedReturnValue(), v9 = +[DIHelpers numBlocksWithSizeStr:blockSize:](DIHelpers, "numBlocksWithSizeStr:blockSize:", v8, 512), v8, v9))
  {
    v10 = [[RamXPC alloc] initWithSize:v9 << 9];
    v16.receiver = self;
    v16.super_class = DiskImageParamsRAM_XPC;
    v11 = [(DiskImageParamsXPC *)&v16 initWithBackendXPC:v10];
    if (v11)
    {
      host2 = [lCopy host];
      ramSizeStr = v11->_ramSizeStr;
      v11->_ramSizeStr = host2;
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = [DIError nilWithPOSIXCode:22 description:@"Malformed ram URL error:expected to be ram://<?? | ??b | ??k | ??m | ??g | ??t>", error];
  }

  return selfCopy;
}

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  [backendXPC createRamBackend];
  v5.receiver = self;
  v5.super_class = DiskImageParamsRAM_XPC;
  [(DiskImageParamsRaw_XPC *)&v5 createSinkDiskImage];

  return v4;
}

- (void)setBlockSize:(unint64_t)size
{
  ramSizeStr = [(DiskImageParamsRAM_XPC *)self ramSizeStr];
  v6 = [DIHelpers numBlocksWithSizeStr:ramSizeStr blockSize:size];

  v7 = [[RamXPC alloc] initWithSize:v6 * size];
  [(DiskImageParamsXPC *)self setBackendXPC:v7];

  v8.receiver = self;
  v8.super_class = DiskImageParamsRAM_XPC;
  [(DiskImageParamsXPC *)&v8 setBlockSize:size];
}

@end