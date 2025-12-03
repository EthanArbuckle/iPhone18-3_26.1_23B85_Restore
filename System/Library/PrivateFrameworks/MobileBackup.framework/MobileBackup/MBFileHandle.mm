@interface MBFileHandle
- (BOOL)readFromPath:(id)path error:(id *)error;
@end

@implementation MBFileHandle

- (BOOL)readFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = open([pathCopy fileSystemRepresentation], 256);
  if (v7 < 0)
  {
    if (error)
    {
      [MBError posixErrorWithPath:pathCopy format:@"open error"];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = v7;
    while (1)
    {
      v9 = read(v8, v12, 0x1000uLL);
      if (v9 < 1)
      {
        break;
      }

      if ([(MBFileHandle *)self writeWithBytes:v12 length:v9 error:error]< 0)
      {
        goto LABEL_5;
      }
    }

    if (v9)
    {
      if (!error)
      {
LABEL_5:
        v10 = 0;
        goto LABEL_13;
      }

      [MBError posixErrorWithPath:pathCopy format:@"read error"];
      *error = v10 = 0;
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    close(v8);
  }

  return v10;
}

@end