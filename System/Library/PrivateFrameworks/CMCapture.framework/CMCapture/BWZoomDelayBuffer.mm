@interface BWZoomDelayBuffer
- (_DWORD)initWithMaxZoomDelay:(int)delay currentZoomDelay:;
- (uint64_t)addZoomRequest:(uint64_t)request;
- (uint64_t)updateZoomDelay:(uint64_t)result;
- (uint64_t)zoomRequestForISPAppliedZoomFactor:(float)factor earlySwitchOverScaleFactorForZoomIn:;
- (void)dealloc;
@end

@implementation BWZoomDelayBuffer

- (void)dealloc
{
  free(self->_zoomRequestBuffer);
  v3.receiver = self;
  v3.super_class = BWZoomDelayBuffer;
  [(BWZoomDelayBuffer *)&v3 dealloc];
}

- (_DWORD)initWithMaxZoomDelay:(int)delay currentZoomDelay:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = BWZoomDelayBuffer;
  v5 = objc_msgSendSuper2(&v16, sel_init);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v5[5] = a2;
  v5[6] = delay;
  v5[7] = 2;
  v7 = malloc_type_malloc(16 * (a2 + 1), 0x10000408B6DE1C6uLL);
  *(v6 + 1) = v7;
  if (!v7)
  {

    return 0;
  }

  v8 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  do
  {
    v14 = &v7[16 * v8];
    *v14 = _D0;
    *(v14 + 2) = 0;
    v14[12] = 0;
    ++v8;
  }

  while (v8 <= v6[5]);
  return v6;
}

- (uint64_t)updateZoomDelay:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2 >= a2)
    {
      if (v2 > a2)
      {
        LODWORD(v6) = *(result + 16);
        LODWORD(v7) = *(result + 24);
        do
        {
          if (v6 < v7)
          {
            v8 = 16 * v6;
            v6 = v6;
            do
            {
              ++v6;
              *(*(result + 8) + v8) = *(*(result + 8) + v8 + 16);
              v7 = *(result + 24);
              v8 += 16;
            }

            while (v6 < v7);
            LODWORD(v6) = *(result + 16);
          }

          LODWORD(v7) = v7 - 1;
          *(result + 24) = v7;
          if (v6 > v7)
          {
            LODWORD(v6) = 0;
            *(result + 16) = 0;
          }
        }

        while (v7 > a2);
      }
    }

    else
    {
      v3 = *(result + 20);
      if (v3 >= a2)
      {
        v3 = a2;
      }

      if (v2 + 1 < v3 + 1)
      {
        v4 = 16 * v2 + 16;
        v5 = v3 - v2;
        do
        {
          *(*(result + 8) + v4) = *(*(result + 8) + 16 * *(result + 24));
          v4 += 16;
          --v5;
        }

        while (v5);
      }

      *(result + 24) = v3;
    }
  }

  return result;
}

- (uint64_t)addZoomRequest:(uint64_t)request
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = v3 - 1;
    }

    else
    {
      v4 = *(result + 24);
    }

    v5 = *(result + 8);
    v6 = *(v5 + 16 * v4);
    v7 = (v5 + 16 * v3);
    *v7 = a2;
    v7[1] = request;
    v8 = *(result + 16);
    v9 = *(result + 24);
    v10 = *(result + 28);
    if (v8 + 1 <= v9)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = 0;
    }

    *(result + 16) = v11;
    if (v10 == 2 && v6 > *&a2)
    {
      if (*(result + 32) == 2 && v9 != 1)
      {
        v16 = 0;
        do
        {
          *(*(result + 8) + 16 * v11) = *(*(result + 8) + 16 * v4);
          v17 = *(result + 24);
          if (v11 + 1 <= v17)
          {
            ++v11;
          }

          else
          {
            v11 = 0;
          }

          ++v16;
        }

        while (v16 < v17 - 1);
      }

      v14 = 1;
      goto LABEL_29;
    }

    if (v10 == 1 && v6 < *&a2)
    {
      v14 = 2;
LABEL_29:
      *(result + 28) = v14;
    }
  }

  return result;
}

- (uint64_t)zoomRequestForISPAppliedZoomFactor:(float)factor earlySwitchOverScaleFactorForZoomIn:
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = v3 - 1;
    }

    else
    {
      v4 = *(result + 24);
    }

    v5 = *(result + 8);
    v6 = *(result + 32);
    if (*(result + 28) == 2)
    {
      if (v6 && (v6 != 2 || (*(v5 + 16 * v4) / factor) < a2))
      {
        v4 = *(result + 16);
      }
    }

    else if (v6)
    {
      v4 = *(result + 16);
    }

    return *(v5 + 16 * v4);
  }

  return result;
}

@end