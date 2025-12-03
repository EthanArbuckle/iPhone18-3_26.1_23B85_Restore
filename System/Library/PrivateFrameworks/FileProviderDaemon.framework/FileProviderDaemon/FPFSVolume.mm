@interface FPFSVolume
+ (id)eventStreamUUIDForDevice:(int)device;
- (BOOL)setupForPath:(id)path error:(id *)error;
- (id)freeSize;
- (id)getFSEventStreamConfigWithError:(id *)error;
- (id)totalSize;
@end

@implementation FPFSVolume

- (BOOL)setupForPath:(id)path error:(id *)error
{
  pathCopy = path;
  [path fileSystemRepresentation];
  v7 = fpfs_open();
  v8 = v7;
  if (error && v7 < 0)
  {
    *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  return v8 >= 0;
}

uint64_t __33__FPFSVolume_setupForPath_error___block_invoke(uint64_t a1)
{
  v11 = 0;
  v10 = xmmword_1CF9F4C58;
  v2 = *(a1 + 32) + 8;
  if ((fstatfs_ext() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  if ((v4 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  if (v4)
  {
    v5 = __error();
    v6 = 30;
    goto LABEL_10;
  }

  if ((getattrlist((v3 + 96), &v10, v8, 0x28uLL, 0x21u) & 0x80000000) == 0)
  {
    if ((~DWORD2(v8[0]) & 0x180000) == 0 && (~HIDWORD(v8[0]) & 0x90000) == 0)
    {
      result = 0;
      *(*(a1 + 32) + 2176) = DWORD1(v8[0]);
      return result;
    }

LABEL_3:
    v5 = __error();
    v6 = 19;
LABEL_10:
    *v5 = v6;
  }

  return 0xFFFFFFFFLL;
}

- (id)freeSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  mountPath = [(FPFSVolume *)self mountPath];
  v5 = [defaultManager attributesOfFileSystemForPath:mountPath error:0];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A3C0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)totalSize
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  mountPath = [(FPFSVolume *)self mountPath];
  v5 = [defaultManager attributesOfFileSystemForPath:mountPath error:0];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A3D0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)eventStreamUUIDForDevice:(int)device
{
  v3 = FSEventsCopyUUIDForDevice(device);
  if (v3)
  {
    v4 = v3;
    v5 = CFUUIDCreateString(0, v3);
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
    CFRelease(v5);
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getFSEventStreamConfigWithError:(id *)error
{
  selfCopy = self;
  v4 = sub_1CF194514();

  return v4;
}

@end