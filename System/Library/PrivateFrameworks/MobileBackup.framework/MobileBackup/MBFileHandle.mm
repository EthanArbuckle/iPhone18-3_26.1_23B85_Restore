@interface MBFileHandle
- (BOOL)readFromPath:(id)a3 error:(id *)a4;
@end

@implementation MBFileHandle

- (BOOL)readFromPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = open([v6 fileSystemRepresentation], 256);
  if (v7 < 0)
  {
    if (a4)
    {
      [MBError posixErrorWithPath:v6 format:@"open error"];
      *a4 = v10 = 0;
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

      if ([(MBFileHandle *)self writeWithBytes:v12 length:v9 error:a4]< 0)
      {
        goto LABEL_5;
      }
    }

    if (v9)
    {
      if (!a4)
      {
LABEL_5:
        v10 = 0;
        goto LABEL_13;
      }

      [MBError posixErrorWithPath:v6 format:@"read error"];
      *a4 = v10 = 0;
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