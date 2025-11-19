@interface IsDictionaryWithKeyStringAndValueArrayOfString
@end

@implementation IsDictionaryWithKeyStringAndValueArrayOfString

void ___IsDictionaryWithKeyStringAndValueArrayOfString_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v12 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (MIArrayContainsOnlyClass(v10))
  {
    goto LABEL_20;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
LABEL_18:
    MOLogWrite();
  }

LABEL_19:
  *a4 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_20:
}

@end