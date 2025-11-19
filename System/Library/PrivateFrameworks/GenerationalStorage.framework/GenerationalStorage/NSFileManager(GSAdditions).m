@interface NSFileManager(GSAdditions)
- (id)gs_createTemporarySubdirectoryOfItem:()GSAdditions withTemplate:error:;
@end

@implementation NSFileManager(GSAdditions)

- (id)gs_createTemporarySubdirectoryOfItem:()GSAdditions withTemplate:error:
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = open(".", 256);
  if ((v9 & 0x80000000) != 0 && *__error() != 1)
  {
    v13 = 0;
    v11 = -1;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = open([v7 fileSystemRepresentation], 0);
  v11 = v10;
  if ((v10 & 0x80000000) == 0 && (MEMORY[0x253054EB0](v10) & 0x80000000) == 0)
  {
    if (([v8 getFileSystemRepresentation:v16 maxLength:1024] & 1) == 0)
    {
      v13 = 0;
      *__error() = 63;
      if (a5)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (mkdtemp(v16))
    {
      MEMORY[0x253054EB0](v9);
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
      v13 = [v7 stringByAppendingPathComponent:v12];

      if (!a5)
      {
        goto LABEL_13;
      }

LABEL_12:
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      goto LABEL_13;
    }
  }

  v13 = 0;
  if (a5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v11 >= 1)
  {
    close(v11);
  }

  if (v9 >= 1)
  {
    close(v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end