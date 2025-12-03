@interface NSString(CommonBRPathAdditions)
+ (char)br_pathWithFileSystemRepresentation:()CommonBRPathAdditions;
- (id)br_stringByDeletingPathBounceNo:()CommonBRPathAdditions andPathExtension:;
@end

@implementation NSString(CommonBRPathAdditions)

- (id)br_stringByDeletingPathBounceNo:()CommonBRPathAdditions andPathExtension:
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v8 = _extensionInFilename(fileSystemRepresentation, 0);
  v9 = v8;
  if (a4)
  {
    if (v8)
    {
      *a4 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v8];
      goto LABEL_5;
    }

    *a4 = 0;
LABEL_8:
    v11 = strlen(fileSystemRepresentation);
    v10 = 1;
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = 0;
  v11 = &v9[~fileSystemRepresentation];
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_9:
  v12 = 1 - v11;
  v13 = &fileSystemRepresentation[v11];
  while ((*(v13 - 1) - 48) <= 9)
  {
    ++v12;
    --v13;
    if (v12 == 1)
    {
      goto LABEL_15;
    }
  }

  if (*(v13 - 1) != 32 || *v13 == 48)
  {
LABEL_15:
    v14 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = -v12;
  *__error() = 0;
  v20 = strtoll(v13, 0, 10);
  v21 = *__error() == 0;
  v22 = v20 > 1;
  v23 = !v21 || !v22;
  if (v21 && v22)
  {
    v14 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (!v23)
  {
    v11 = v19;
  }

  if (a3)
  {
LABEL_16:
    *a3 = v14;
  }

LABEL_17:
  if (a4)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    if (fileSystemRepresentation[v11])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      selfCopy = [defaultManager stringWithFileSystemRepresentation:fileSystemRepresentation length:v11];
    }

    else
    {
      selfCopy = self;
    }
  }

  else
  {
    v24 = 0;
    asprintf(&v24, "%.*s.%s", v11, fileSystemRepresentation, v9);
    selfCopy = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v24];
    free(v24);
  }

  return selfCopy;
}

+ (char)br_pathWithFileSystemRepresentation:()CommonBRPathAdditions
{
  v3 = a3;
  if (a3)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [defaultManager stringWithFileSystemRepresentation:v3 length:strlen(v3)];
  }

  return v3;
}

@end