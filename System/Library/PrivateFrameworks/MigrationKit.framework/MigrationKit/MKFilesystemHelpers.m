@interface MKFilesystemHelpers
+ (BOOL)registerFilesystemBarrierAtURL:(id)a3 error:(id *)a4;
@end

@implementation MKFilesystemHelpers

+ (BOOL)registerFilesystemBarrierAtURL:(id)a3 error:(id *)a4
{
  v5 = open([a3 fileSystemRepresentation], 0);
  if (v5 < 0)
  {
    if (a4)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v9 = v8;
      result = 0;
      *a4 = v8;
      return result;
    }
  }

  else
  {
    v6 = v5;
    if ((fcntl(v5, 85) & 0x80000000) == 0)
    {
      close(v6);
      return 1;
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    close(v6);
  }

  return 0;
}

@end