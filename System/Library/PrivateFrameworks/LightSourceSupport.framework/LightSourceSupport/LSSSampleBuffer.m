@interface LSSSampleBuffer
- (LSSSampleBuffer)init;
- (__n128)intervalContaining:(double)a3@<D0>;
- (uint64_t)removeStartingAt:(uint64_t)result;
- (void)append:(void *)result;
@end

@implementation LSSSampleBuffer

- (LSSSampleBuffer)init
{
  v3.receiver = self;
  v3.super_class = LSSSampleBuffer;
  return [(LSSSampleBuffer *)&v3 init];
}

- (uint64_t)removeStartingAt:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 3088);
    v3 = *(result + 3096);
    v4 = result + 16;
    for (i = v2; ; ++i)
    {
      v6 = i + 1;
      if (i + 1 >= v3)
      {
        break;
      }

      v7 = *(v4 + 96 * (i & 0x1F));
      if (v7 > *(v4 + 96 * (v6 & 0x1F)))
      {
        [LSSSampleBuffer removeStartingAt:];
      }
    }

    if (v2 != v3)
    {
      while (*(v4 + 96 * (v2 & 0x1F)) < a2)
      {
        if (v3 == ++v2)
        {
          v2 = *(result + 3096);
          break;
        }
      }
    }

    *(result + 3096) = v2;
  }

  return result;
}

- (__n128)intervalContaining:(double)a3@<D0>
{
  if (!a1)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 3088);
  v4 = *(a1 + 3096);
  v5 = a1 + 16;
  v6 = v3;
  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v4)
    {
      break;
    }

    v8 = *(v5 + 96 * (v6++ & 0x1F));
    if (v8 > *(v5 + 96 * (v7 & 0x1F)))
    {
      [LSSSampleBuffer intervalContaining:];
    }
  }

  v9 = *(a1 + 3088);
  while (1)
  {
    v10 = v9 + 1;
    if (v9 + 1 >= v4)
    {
      break;
    }

    v11 = *(v5 + 96 * (v9++ & 0x1F));
    if (v11 > *(v5 + 96 * (v10 & 0x1F)))
    {
      [LSSSampleBuffer removeStartingAt:];
    }
  }

  if (v3 == v4)
  {
    goto LABEL_16;
  }

  v12 = *(a1 + 3088);
  while (*(v5 + 96 * (v12 & 0x1F)) < a3)
  {
    if (v4 == ++v12)
    {
      v12 = *(a1 + 3096);
      break;
    }
  }

  if (v12 == v3)
  {
LABEL_16:
    result.n128_u64[0] = 0;
    a2[11] = 0u;
    a2[12] = 0u;
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    v14 = (v5 + 96 * ((v12 - 1) & 0x1F));
    v15 = v14[3];
    a2[2] = v14[2];
    a2[3] = v15;
    v16 = v14[5];
    a2[4] = v14[4];
    a2[5] = v16;
    v17 = v14[1];
    *a2 = *v14;
    a2[1] = v17;
    if (v12 == v4)
    {
      result.n128_u64[0] = 0;
      a2[10] = 0u;
      a2[11] = 0u;
      a2[8] = 0u;
      a2[9] = 0u;
      a2[6] = 0u;
      a2[7] = 0u;
      *(a2 + 24) = 1;
    }

    else
    {
      v18 = v5 + 96 * (v12 & 0x1F);
      v19 = *(v18 + 48);
      a2[8] = *(v18 + 32);
      a2[9] = v19;
      v20 = *(v18 + 80);
      a2[10] = *(v18 + 64);
      a2[11] = v20;
      result = *v18;
      v21 = *(v18 + 16);
      a2[6] = *v18;
      a2[7] = v21;
      *(a2 + 24) = 2;
    }
  }

  return result;
}

- (void)append:(void *)result
{
  if (result)
  {
    v2 = result[387];
    v3 = result[386];
    if (v2 - v3 == 32)
    {
      result[386] = v3 + 1;
    }

    result[387] = v2 + 1;
    return memcpy(&result[12 * (v2 & 0x1F) + 2], a2, 0x60uLL);
  }

  return result;
}

@end