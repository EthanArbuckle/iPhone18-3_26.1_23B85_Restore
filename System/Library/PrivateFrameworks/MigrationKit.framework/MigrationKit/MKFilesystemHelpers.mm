@interface MKFilesystemHelpers
+ (BOOL)registerFilesystemBarrierAtURL:(id)l error:(id *)error;
@end

@implementation MKFilesystemHelpers

+ (BOOL)registerFilesystemBarrierAtURL:(id)l error:(id *)error
{
  v5 = open([l fileSystemRepresentation], 0);
  if (v5 < 0)
  {
    if (error)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v9 = v8;
      result = 0;
      *error = v8;
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    close(v6);
  }

  return 0;
}

@end