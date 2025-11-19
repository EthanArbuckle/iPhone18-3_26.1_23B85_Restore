@interface FCFetchGroup
- (id)initWithKeys:(void *)a3 context:(char)a4 shouldFilter:(void *)a5 qualityOfService:(void *)a6 relativePriority:(void *)a7 completionQueue:(void *)a8 completion:;
- (int64_t)comparePriority:(id)a3;
- (void)fireCompletion;
@end

@implementation FCFetchGroup

- (id)initWithKeys:(void *)a3 context:(char)a4 shouldFilter:(void *)a5 qualityOfService:(void *)a6 relativePriority:(void *)a7 completionQueue:(void *)a8 completion:
{
  v15 = a2;
  v16 = a3;
  v17 = a7;
  v18 = a8;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = FCFetchGroup;
    a1 = objc_msgSendSuper2(&v27, sel_init);
    if (a1)
    {
      v19 = [v15 copy];
      v20 = a1[2];
      a1[2] = v19;

      objc_storeStrong(a1 + 3, a3);
      *(a1 + 8) = a4;
      v21 = 1;
      a1[4] = a5;
      a1[5] = a6;
      if (a5 != 25 && a5 != 33)
      {
        v21 = a6 == 1;
      }

      *(a1 + 9) = v21;
      objc_storeStrong(a1 + 7, a7);
      v22 = _Block_copy(v18);
      v23 = a1[8];
      a1[8] = v22;

      v24 = [MEMORY[0x1E695DF00] date];
      v25 = a1[9];
      a1[9] = v24;
    }
  }

  return a1;
}

- (void)fireCompletion
{
  if (a1)
  {
    v2 = [a1 completionQueue];
    if (v2)
    {
      v3 = v2;
      v4 = [a1 completion];

      if (v4)
      {
        queue = [a1 completionQueue];
        v5 = [a1 completion];
        dispatch_async(queue, v5);
      }
    }
  }
}

- (int64_t)comparePriority:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    relativePriority = self->_relativePriority;
    if (v4)
    {
      v7 = v4[5];
      if (relativePriority == v7)
      {
        if (self->_isUserFacing)
        {
          if ((*(v4 + 9) & 1) == 0)
          {
LABEL_6:
            v8 = -1;
            goto LABEL_19;
          }

LABEL_18:
          v11 = [(FCFetchGroup *)self requestDate];
          v12 = [v5 requestDate];
          v8 = [v11 compare:v12];

          goto LABEL_19;
        }

LABEL_10:
        if (*(v4 + 9))
        {
          v8 = 1;
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!relativePriority)
      {
        if (self->_isUserFacing)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v7 = v4[5];
    if (!v7)
    {
      goto LABEL_10;
    }

    relativePriority = 0;
  }

  v9 = v7 < relativePriority;
  v10 = v7 > relativePriority;
  if (v9)
  {
    v8 = -1;
  }

  else
  {
    v8 = v10;
  }

LABEL_19:

  return v8;
}

@end