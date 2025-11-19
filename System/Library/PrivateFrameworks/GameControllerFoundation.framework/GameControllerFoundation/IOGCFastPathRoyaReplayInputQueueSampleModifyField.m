@interface IOGCFastPathRoyaReplayInputQueueSampleModifyField
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleModifyField

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleModifyField_block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  LODWORD(v6) = *(*a3 + 9);
  if (*(*a3 + 9))
  {
    v7 = 0;
    v8 = 4;
    do
    {
      if (v5[v8] == v5[1])
      {
        if ((*(*(a1 + 32) + 16))())
        {
          v9 = &v5[v8];
          goto LABEL_16;
        }

        v5 = *a3;
      }

      ++v7;
      v6 = *(v5 + 9);
      v8 += 6;
    }

    while (v7 < v6);
    if (!*(v5 + 9))
    {
      goto LABEL_11;
    }

    v9 = v5 + 4;
    v10 = *(v5 + 9);
    while (*v9 == v5[1])
    {
      v9 += 6;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 2 * v6;
    v12 = v6 + 16;
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = objc_opt_class();
    Instance = class_createInstance(v14, 48 * v13);
    Instance[9] = v13;
    Instance[8] = *(*a3 + 8);
    *(Instance + 1) = *(*a3 + 1);
    *(Instance + 3) = *(*a3 + 3);
    *(Instance + 5) = *(*a3 + 5);
    memcpy(Instance + 16, *a3 + 32, 48 * *(*a3 + 9));

    *a3 = Instance;
    v9 = &Instance[24 * Instance[9] - 8];
  }

LABEL_16:
  result = (*(*(a1 + 40) + 16))();
  if (!result)
  {
    *v9 = *(*a3 + 1);
  }

  return result;
}

@end