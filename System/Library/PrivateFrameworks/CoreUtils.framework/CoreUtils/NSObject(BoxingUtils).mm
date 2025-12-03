@interface NSObject(BoxingUtils)
- (__CFString)stringValueSafe:()BoxingUtils;
- (const)utf8ValueSafe:()BoxingUtils;
@end

@implementation NSObject(BoxingUtils)

- (const)utf8ValueSafe:()BoxingUtils
{
  v8 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    uTF8String = CFCopyCString(self, &v8);
    if (uTF8String)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
      free(uTF8String);
      if (!v6)
      {
        uTF8String = 0;
        goto LABEL_16;
      }

      uTF8String = [v6 UTF8String];
      if (uTF8String)
      {
        v8 = 0;
      }

      else
      {
        v8 = -6700;
      }
    }

    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  uTF8String = [(__CFString *)self UTF8String];
  if (uTF8String)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    goto LABEL_12;
  }

LABEL_16:
  v8 = -6700;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (uTF8String)
  {
    return uTF8String;
  }

  else
  {
    return "";
  }
}

- (__CFString)stringValueSafe:()BoxingUtils
{
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    if (selfCopy)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v9 = CFCopyCString(self, &v11);
  if (v9)
  {
    v10 = v9;
    selfCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    free(v10);
    if (selfCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = -6700;
    goto LABEL_4;
  }

  selfCopy = 0;
LABEL_4:
  if (a3)
  {
    *a3 = v11;
  }

  v6 = &stru_1F068B090;
  if (selfCopy)
  {
    v6 = selfCopy;
  }

  v7 = v6;

  return v7;
}

@end