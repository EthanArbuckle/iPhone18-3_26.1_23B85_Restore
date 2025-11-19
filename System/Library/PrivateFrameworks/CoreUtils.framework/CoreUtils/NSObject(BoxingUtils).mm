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
    v5 = CFCopyCString(a1, &v8);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      free(v5);
      if (!v6)
      {
        v5 = 0;
        goto LABEL_16;
      }

      v5 = [v6 UTF8String];
      if (v5)
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

  v5 = [(__CFString *)a1 UTF8String];
  if (v5)
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
  if (v5)
  {
    return v5;
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
    v5 = a1;
    if (v5)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v9 = CFCopyCString(a1, &v11);
  if (v9)
  {
    v10 = v9;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    free(v10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = -6700;
    goto LABEL_4;
  }

  v5 = 0;
LABEL_4:
  if (a3)
  {
    *a3 = v11;
  }

  v6 = &stru_1F068B090;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

@end